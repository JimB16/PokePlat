# -*- coding: utf-8 -*-
"""
---
"""

import os
import sys
from new import classobj

import configuration

from util.io import BinaryIO
import labels
from labels import line_has_label
import interval_map

from lists.abilitynamelist import AbilityNameList


def GetAbilityName(ability):
    if ability <= 123:
        return AbilityNameList[ability]
    else:
        return AbilityNameList[0]


# all_new_labels is a temporary replacement for all_labels,
# at least until the two approaches are merged in the code base.
all_new_labels = []

filename = ""

class Label:
    """
    Every object in script_parse_table is given a label.

    This label is simply a way to keep track of what objects have
    been previously written to file.
    """
    def __init__(self, name=None, address=None, line_number=None, object=None, is_in_file=None, address_is_in_file=None, add_to_globals=True):
        assert address != None, "need an address"
        #assert is_valid_address(address), "address must be valid"
        assert object != None, "need an object to relate with"

        self.address = address
        self.object = object

        # label might not be in the file yet
        self.line_number = line_number

        self.is_in_file = is_in_file

        self.address_is_in_file = address_is_in_file

        if name == None:
            name = object.base_label + "_" + hex(object.address)

        self.name = name

        if add_to_globals:
            all_new_labels.append(self)

    def check_is_in_file(self):
        """
        This method checks if the label appears in the file based on the
        entries to the Asm.parts list.
        """
        new_asm = load_asm2()
        is_in_file = new_asm.is_label_name_in_file(self.name)
        self.is_in_file = is_in_file
        return is_in_file

    def check_address_is_in_file(self):
        """
        Checks if the address is in use by another label.
        """
        new_asm = load_asm2()
        self.address_is_in_file = new_asm.does_address_have_label(self.address)
        return self.address_is_in_file

    def old_check_address_is_in_file(self):
        """
        Checks whether or not the address of the object is already in the file.
        This might happen if the label name is different but the address is the
        same. Another scenario is that the label is already used, but at a
        different address.

        This method works by looking at the INCBINs. When there is
        an INCBIN that covers this address in the file, then there
        is no label at this address yet (or there is, but we can
        easily add another label in front of the incbin or something),
        and when there is no INCBIN that has this address, then we
        know that something is already using this address.
        """
        if processed_incbins == {}:
            process_incbins()

        incbin = find_incbin_to_replace_for(self.address)

        if incbin == None:
            return True
        else:
            return False

    def make_label(self):
        """
        Generates a label name based on parents and self.object.
        """
        obj = self.object
        name = obj.make_label()
        return name


def insert_asm_incbins(asms):
	"""
	Insert baserom incbins between address gaps in asm lists.
	"""
	new_asms = []
	for i, asm in enumerate(asms):
		new_asms += [asm]
		if i + 1 < len(asms):
			last_address, next_address = asm[2], asms[i + 1][0]
			if last_address < next_address:
				new_asms += [generate_incbin_asm(last_address, next_address)]
	return new_asms

def generate_incbin_asm(start_address, end_address):
	"""
	Return baserom incbin text for an address range.

	Format: 'INCBIN "baserom/arm9.bin", {start}, {end} - {start}'
	"""
	if start_address == 0:
		incbin = (
			start_address,
			'\n.incbin "' + filename + '", 0x%x, 0x%x - 0x%x\n\n' % (
				start_address, end_address, start_address
			),
			end_address
		)
	else:
		incbin = (
			start_address,
			'\n.incbin "' + filename + '", 0x%x, 0x%x - 0x%x\n\n' % (
				start_address, end_address, start_address
			),
			end_address
		)
	return incbin


# ---- script_parse_table explanation ----
# This is an IntervalMap that keeps track of previously parsed scripts, texts
# and other objects. Anything that has a location in the ROM should be mapped
# to an interval (a range of addresses) in this structure. Each object that is
# assigned to an interval should implement attributes or methods like:
#   ATTRIBUTE/METHOD            EXPLANATION
#   label                       what the heck to call the object
#   address                     where it begins
#   to_asm()                    spit out asm (not including label)
# keys are intervals "500..555" of byte addresses for each script
# last byte is not inclusive(?) really? according to who??
# this is how to make sure scripts are not recalculated
script_parse_table = interval_map.IntervalMap()

all_labels = []

def get_label_for(address):
    """
    returns a label assigned to a particular address
    """
    global all_labels

    if address == None:
        return None
    if type(address) != int:
        raise Exception("get_label_for requires an integer address, got: " + str(type(address)))

    # the old way
    for thing in all_labels:
        #print(hex(thing["address"]) + " " + str(thing["label"]))
        if thing["address"] == address:
            return thing["label"]

    # the new way
    obj = script_parse_table[address]
    if obj:
        if hasattr(obj, "label"):
            return obj.label.name
        else:
            return "AlreadyParsedNoDefaultUnknownLabel_" + hex(address)

    return None


class PointerLabelParam():
    size = 4

    def __init__(self, fin, *args, **kwargs):
        self.parsed_address = fin.readUInt32() * 4
        self.parsed_address += fin.tell()
        self.parsed_address &= 0xffffffff
        label_address = self.parsed_address
        self.base_label = 'Script'
        label = '%s_branch_%x' % (
            self.base_label,
            label_address
            )
        l = {'address':label_address, 'label':label}
        all_labels.append(l)

    def to_asm(self):
        label = get_label_for(self.parsed_address)
        return label # this could be the same as label


class PointerLabelParam4():
    size = 4

    def __init__(self, fin, *args, **kwargs):
        self.parsed_address = fin.readUInt32() * 4
        self.parsed_address += fin.tell() + 4
        self.parsed_address &= 0xffffffff
        label_address = self.parsed_address
        self.base_label = 'Script'
        label = '%s_branch_%x' % (
            self.base_label,
            label_address
            )
        l = {'address':label_address, 'label':label}
        all_labels.append(l)

    def to_asm(self):
        label = get_label_for(self.parsed_address)
        return label # this could be the same as label


class PointerLabelParam8():
    size = 4

    def __init__(self, fin, *args, **kwargs):
        self.parsed_address = fin.readUInt32() * 4
        self.parsed_address += fin.tell() + 8
        self.parsed_address &= 0xffffffff
        label_address = self.parsed_address
        self.base_label = 'Script'
        label = '%s_branch_%x' % (
            self.base_label,
            label_address
            )
        l = {'address':label_address, 'label':label}
        all_labels.append(l)

    def to_asm(self):
        label = get_label_for(self.parsed_address)
        return label # this could be the same as label


class CallPointerLabelParam():
    size = 4

    def __init__(self, fin, *args, **kwargs):
        self.parsed_address = fin.readUInt32() * 4
        self.parsed_address += fin.tell()
        self.parsed_address &= 0xffffffff
        label_address = self.parsed_address
        label = 'Function_%x' % (
            label_address
            )
        l = {'address':label_address, 'label':label}
        all_labels.append(l)

    def to_asm(self):
        label = get_label_for(self.parsed_address)
        return label

        

def is_comment(asm):
	return asm.startswith('@')

def generate_label_asm(label, address):
	"""
	Return label definition text at a given address.

	Format: '{label}: @ {address}'
	"""
	label_text = '%s: @ %x' % (label, address)
	return (address, label_text, address)

def asm_sort(asm_def):
	"""
	Sort key for asm lists.

	Usage:
		list.sort(key=asm_sort)
		sorted(list, key=asm_sort)
	"""
	address, asm, last_address = asm_def
	return (
		address,
		last_address,
		not is_comment(asm),
		asm
	)

def sort_asms(asms):
	"""
	Sort and remove duplicates from an asm list.

	Format: [(address, asm, last_address), ...]
	"""
	asms = sorted(set(asms), key=asm_sort)
	trimmed = []
	address, last_address = None, None
	for asm in asms:
		if asm == (address, asm[1], last_address) and last_address - address:
			continue
		trimmed += [asm]
		address, last_address = asm[0], asm[2]
	return trimmed

class Command:
    base_label = "UnseenLabel_"

    def __init__(self, fin, address=None, *pargs, **kwargs):
        """params:
        address     - where the command starts
        """
        # set up some variables
        self.address = address
        self.last_address = None
        # setup the label based on base_label if available
        label = self.base_label + hex(self.address)
        self.label = Label(name=label, address=address, object=self)
        # params are where this command's byte parameters are stored
        self.params = {}
        # but also store these kwargs
        self.args = {}
        # start parsing this command's parameter bytes
        self.parse(fin)

    def to_asm(self):
        # start with the rgbasm macro name for this command
        output = ""
        output += self.macro_name
        # return if there are no params
        if len(self.param_types.keys()) == 0:
            return output
        # first one will have no prefixing comma
        first = True
        # start reading the bytes after the command byte
        current_address = self.address
        
        # add each param
        for (key, param) in self.params.items():
            # the first param shouldn't have ", " prefixed
            if first:
                output += " "
                first = False
            # but all other params should
            else: output += ", "
            # now add the asm-compatible param string
            output += param.to_asm()
            current_address += param.size
        
        return output

    def parse(self, fin):
        # id, size (inclusive), param_types
        #param_type = {"name": each[1], "class": each[0]}
        current_address = self.address
        fin.seek(self.address)
        byte = fin.readUInt32() #ord(rom[self.address])
        i = 0
        for (key, param_type) in self.param_types.items():
            klass = param_type["class"]
            # make an instance of this class, like SingleByteParam()
            # or ItemLabelByte.. by making an instance, obj.parse() is called
            obj = klass(fin, address=current_address, parent=self, **dict([(k,v) for (k, v) in self.args.items() if k not in ["parent"]]))
            # save this for later
            self.params[i] = obj
            # increment our counters
            current_address += obj.size
            i += 1
        self.last_address = current_address
        return True


class SingleWordParam():
    size = 4

    def __init__(self, fin, *args, **kwargs):
        self.byte = fin.readUInt32()

    def to_asm(self):
        return hex(self.byte)


class SingleWordDecimalParam():
    size = 4

    def __init__(self, fin, *args, **kwargs):
        self.byte = fin.readInt32()

    def to_asm(self):
        return str(self.byte)


class Function_224abec_Param():
    size = 8

    def __init__(self, fin, *args, **kwargs):
		#print("Multibytesize_0: " + str(self.size))
		self.byte = fin.readUInt32()
		self.byte2 = fin.readUInt32()
		self.byte3 = 0
		self.byte4 = 0
		self.byte5 = 0
		self.byte6 = 0
		self.byte7 = 0
		if (self.byte2 >= 1) and (self.byte2 < 9):
			self.byte3 = fin.readUInt32()
			self.size += 4
		elif (self.byte2 >= 9) and (self.byte2 < 0x1f):
			self.byte3 = fin.readUInt32()
			self.byte4 = fin.readUInt32()
			self.size += 8
		elif (self.byte2 >= 0x1f) and (self.byte2 < 0x34):
			self.byte3 = fin.readUInt32()
			self.byte4 = fin.readUInt32()
			self.byte5 = fin.readUInt32()
			self.size += 12
		elif (self.byte2 >= 0x34) and (self.byte2 < 0x3c):
			self.byte3 = fin.readUInt32()
			self.byte4 = fin.readUInt32()
			self.byte5 = fin.readUInt32()
			self.byte6 = fin.readUInt32()
			self.size += 16
		elif (self.byte2 == 0x3c):
			self.byte3 = fin.readUInt32()
			self.byte4 = fin.readUInt32()
			self.byte5 = fin.readUInt32()
			self.byte6 = fin.readUInt32()
			self.byte7 = fin.readUInt32()
			self.byte8 = fin.readUInt32()
			self.size += 24
		#print("Multibytesize: " + str(self.size))
		#else:
		#	self.size += 8

    def to_asm(self):
        if self.byte2 <= 0:
            return hex(self.byte) + ", " + hex(self.byte2)
        elif (self.byte2 >= 1) and (self.byte2 < 9):
            return hex(self.byte) + ", " + hex(self.byte2) + ", " + hex(self.byte3)
        elif (self.byte2 >= 9) and (self.byte2 < 0x1f):
            return hex(self.byte) + ", " + hex(self.byte2) + ", " + hex(self.byte3) + ", " + hex(self.byte4)
        elif (self.byte2 >= 0x1f) and (self.byte2 < 0x34):
            return hex(self.byte) + ", " + hex(self.byte2) + ", " + hex(self.byte3) + ", " + hex(self.byte4) + ", " + hex(self.byte5)
        elif (self.byte2 >= 0x34) and (self.byte2 < 0x3c):
            return hex(self.byte) + ", " + hex(self.byte2) + ", " + hex(self.byte3) + ", " + hex(self.byte4) + ", " + hex(self.byte5) + ", " + hex(self.byte6)
        elif (self.byte2 == 0x3c):
            return hex(self.byte) + ", " + hex(self.byte2) + ", " + hex(self.byte3) + ", " + hex(self.byte4) + ", " + hex(self.byte5) + ", " + hex(self.byte6) + ", " + hex(self.byte7) + ", " + hex(self.byte8)
        else:
            return hex(self.byte) + ", " + hex(self.byte2)
            #return "new_Function_224abec_Param_" + hex(self.byte2)


class VariableParam():
    size = 4

    def __init__(self, fin, *args, **kwargs):
        self.byte = fin.readUInt32()

    def to_asm(self):
        if self.byte == 0x0:
            return "Var_0"
        elif self.byte == 0x1:
            return "Var_1"
        elif self.byte == 0x2:
            return "Var_MoveEffect_SubSeq"
        elif self.byte == 0x3:
            return "Var_3"
        elif self.byte == 0x7:
            return "Var_Weather"
        elif self.byte == 0xe:
            return "Var_Damage"
        elif self.byte == 0xf:
            return "Var_NrOfPkmn"
        elif self.byte == 0x10:
            return "Var_TargetPkmn"
        elif self.byte == 0x19:
            return "Var_RoundNr"
        elif self.byte == 0x20:
            return "Var_StatusEffectDamage"
        elif self.byte == 0x22:
            return "Var_MoveEffectNr"
        elif self.byte == 0x24:
            return "Var_UsedItem"
        elif self.byte == 0x26:
            return "Var_WeatherCounter"
        elif self.byte == 0x2c:
            return "Var_DamageMultiplier"
        elif self.byte == 0x3e:
            return "Var_NrOfBattleTextPtrs"
        else:
            return hex(self.byte)


class Cmd5Param():
    size = 4

    def __init__(self, fin, *args, **kwargs):
        self.byte = fin.readUInt32()
        if self.byte == 0xa:
            self.byte2 = fin.readUInt32()
            self.byte3 = fin.readUInt32()
            self.size += 8

    def to_asm(self):
        if self.byte == 0xa:
            return hex(self.byte) + ", " + hex(self.byte2) + ", " + hex(self.byte3)
        else:
            return hex(self.byte)


class Cmd20Param():
    size = 4

    def __init__(self, fin, *args, **kwargs):
        self.byte = fin.readUInt32()

    def to_asm(self):
        if self.byte == 0x0:
            return "Eq"
        elif self.byte == 0x1:
            return "Ne"
        elif self.byte == 0x2:
            return "Gt"
        elif self.byte == 0x3:
            return "Le"
        elif self.byte == 0x4:
            return "TstNe"
        elif self.byte == 0x5:
            return "TstEq"
        elif self.byte == 0x6:
            return "AndEq"
        else:
            return hex(self.byte)


class Cmd32Param():
    size = 4

    def __init__(self, fin, *args, **kwargs):
        self.byte = fin.readUInt32()

    def to_asm(self):
        if self.byte == 0x7:
            return "Store"
        elif self.byte == 0x8:
            return "Add"
        elif self.byte == 0x9:
            return "Sub"
        elif self.byte == 0xa:
            return "Orr"
        elif self.byte == 0xb:
            return "Bic"
        else:
            return hex(self.byte)


music_commands = {
    0x0: ["Cmd_0"],
    0x1: ["Cmd_1", [SingleWordParam]],
    0x2: ["Cmd_2", [SingleWordParam]],
    0x3: ["Cmd_3", [SingleWordParam]],
    0x4: ["Cmd_4", [SingleWordParam]],
    0x5: ["Cmd_5", [Cmd5Param]],
    0x6: ["Cmd_6", [SingleWordParam]],
    #0x7: ["Cmd_7", [SingleWordParam], [SingleWordParam]],
    0x7: ["Cmd_7", [SingleWordParam], [SingleWordParam]],
    0x8: ["Cmd_8", [SingleWordParam]],
    0x9: ["Cmd_9", [SingleWordParam], [SingleWordParam]],
    0xa: ["Cmd_a"],
    0xb: ["Cmd_b", [SingleWordParam]],
    0xc: ["Cmd_c", [SingleWordParam]],
    0xd: ["Cmd_d", [SingleWordParam]],
    0xe: ["Cmd_e"],
    0xf: ["Cmd_f_CalcDamage"],
    0x10: ["Cmd_10_CalcDamage"],
    0x11: ["Cmd_11"],
    0x12: ["Cmd_12", [Function_224abec_Param]],
    0x13: ["Cmd_13", [Function_224abec_Param]],
    0x14: ["Cmd_14"],
    0x15: ["Cmd_15", [Function_224abec_Param]],
    0x16: ["Cmd_16", [SingleWordParam], [Function_224abec_Param]],
    0x17: ["Cmd_17", [SingleWordParam]],
    0x18: ["Cmd_18", [SingleWordParam], [SingleWordParam], [SingleWordParam]],
    0x19: ["Cmd_19", [SingleWordParam]],
    0x1a: ["Cmd_1a", [SingleWordParam]],
    0x1b: ["WhoGetsHPBarCleared", [SingleWordParam]],
    0x1c: ["Cmd_1c", [SingleWordParam]],
    0x1d: ["Cmd_1d"],
    0x1e: ["Cmd_1e", [SingleWordParam]],
    #0x1e: ["Cmd_1e"],
    0x1f: ["Cmd_1f", [SingleWordParam], [SingleWordParam]],
    0x20: ["JumpIf", [Cmd20Param], [VariableParam], [SingleWordParam], [PointerLabelParam]],
    0x21: ["JumpIfPkmnBattleData", [Cmd20Param], [SingleWordParam], [SingleWordParam], [SingleWordParam], [PointerLabelParam]],
    0x22: ["Cmd_22"],
    0x23: ["Cmd_23_LoadSubSeq", [SingleWordParam]],
    0x24: ["Cmd_24"],
    0x25: ["Cmd_25", [SingleWordParam]],
    #0x25: ["Cmd_25"],
    0x26: ["Cmd_26"],
    0x27: ["Cmd_27", [PointerLabelParam]],
    0x28: ["PkmnGainsExpPts"],
    0x29: ["Cmd_29"],
    0x2a: ["Cmd_2a_dummy", [SingleWordParam]],
    0x2b: ["Cmd_2b"],
    0x2c: ["Cmd_2c"],
    0x2d: ["Cmd_2d", [SingleWordParam]],
    0x2e: ["Cmd_2e", [PointerLabelParam]],
    0x2f: ["Cmd_2f_TryToCatchPkmn", [SingleWordParam]],
    0x30: ["Cmd_30_WaitFor"],
    0x31: ["Cmd_31", [SingleWordParam], [SingleWordParam]],
    0x32: ["Cmd_32", [Cmd32Param], [VariableParam], [SingleWordParam]],
    0x33: ["Cmd_33", [PointerLabelParam8], [PointerLabelParam4], [PointerLabelParam]],
    0x34: ["ChangePkmnBattleData", [SingleWordParam], [SingleWordParam], [SingleWordParam], [SingleWordParam]],
    0x36: ["Cmd_36", [SingleWordParam], [SingleWordParam]],
    0x37: ["Cmd_37", [SingleWordParam], [SingleWordParam], [SingleWordParam], [PointerLabelParam]],
    #0x38: ["Cmd_38", [SingleWordParam], [SingleWordParam]],
    0x38: ["Cmd_38"],
    0x39: ["Cmd_39", [SingleWordParam], [SingleWordParam], [SingleWordParam]],
    0x3a: ["Cmd_3a", [SingleWordParam], [SingleWordParam], [SingleWordParam], [SingleWordParam]],
    0x3b: ["Jump", [PointerLabelParam]],
    0x3c: ["AddNewScript", [SingleWordDecimalParam]],
    #0x3c: ["AddNewScript"],
    0x3d: ["Cmd_3d", [VariableParam]],
    0x3e: ["Cmd_3e"],
    0x3f: ["Cmd_3f"],
    0x40: ["Cmd_40", [SingleWordParam]],
    0x41: ["Cmd_41", [SingleWordParam]],
    0x42: ["Cmd_42", [SingleWordParam], [SingleWordParam]],
    0x43: ["Cmd_43", [SingleWordParam], [SingleWordParam]],
    0x44: ["Cmd_44"],
    0x45: ["Cmd_45", [SingleWordParam], [SingleWordParam]],
    0x46: ["Cmd_46", [SingleWordParam], [SingleWordParam], [SingleWordParam]],
    0x47: ["Cmd_47", [SingleWordParam], [VariableParam]],
    0x48: ["Cmd_48", [SingleWordParam]],
    0x49: ["Cmd_49", [SingleWordParam]],
    0x4a: ["Cmd_4a", [SingleWordParam]],
    0x4b: ["Cmd_4b", [SingleWordParam]],
    0x4c: ["Cmd_4c", [SingleWordParam]],
    0x4d: ["Cmd_4d", [PointerLabelParam]],
    0x4e: ["Cmd_4e", [SingleWordParam], [VariableParam], [SingleWordParam], [PointerLabelParam]],
    0x4f: ["Cmd_4f", [SingleWordParam], [VariableParam], [SingleWordParam], [SingleWordParam], [PointerLabelParam]],
    0x50: ["Cmd_50"],
    0x51: ["Cmd_51", [PointerLabelParam]],
    0x52: ["Cmd_52", [PointerLabelParam]],
    0x53: ["Cmd_53", [PointerLabelParam]],
    0x54: ["Cmd_54"],
    0x55: ["Cmd_55", [SingleWordParam], [SingleWordParam]],
    0x56: ["Cmd_56", [VariableParam], [SingleWordParam]],
    0x57: ["Cmd_57", [PointerLabelParam]],
    0x58: ["Cmd_58"],
    0x59: ["Cmd_59", [PointerLabelParam]],
    0x5a: ["Cmd_5a"],
    0x5b: ["Cmd_5b"],
    0x5c: ["Cmd_5c", [PointerLabelParam]],
    0x5d: ["Cmd_5d", [PointerLabelParam]],
    0x5e: ["Cmd_5e", [PointerLabelParam]],
    0x5f: ["Cmd_5f", [SingleWordParam]],
    0x60: ["Cmd_60"],
    0x61: ["Cmd_61", [PointerLabelParam]],
    0x62: ["Cmd_62"],
    0x63: ["Cmd_63", [PointerLabelParam4], [PointerLabelParam]], # both should be pointers
    0x64: ["Cmd_64", [PointerLabelParam]],
    0x65: ["Cmd_65", [PointerLabelParam]],
    0x66: ["Cmd_66", [PointerLabelParam]],
    0x67: ["Cmd_67"],
    0x68: ["Cmd_68", [PointerLabelParam]],
    0x69: ["Cmd_69", [SingleWordParam], [PointerLabelParam]],
    0x6a: ["Cmd_6a", [PointerLabelParam]],
    0x6b: ["Cmd_6b", [VariableParam]],
    0x6c: ["Cmd_6c", [VariableParam], [PointerLabelParam]],
    0x6d: ["Cmd_6d", [SingleWordParam]],
    0x6e: ["Cmd_6e"],
    0x6f: ["Cmd_6f"],
    0x70: ["Cmd_70", [PointerLabelParam]],
    0x71: ["Cmd_71", [PointerLabelParam]],
    0x72: ["Cmd_72", [PointerLabelParam]],
    0x73: ["Cmd_73"],
    0x74: ["Cmd_74", [SingleWordParam], [SingleWordParam], [PointerLabelParam]],
    0x75: ["Cmd_75"],
    0x76: ["Cmd_76"],
    0x77: ["Cmd_77"],
    0x78: ["Cmd_78"],
    0x79: ["Cmd_79", [PointerLabelParam]],
    0x7a: ["Cmd_7a", [SingleWordParam], [SingleWordParam], [SingleWordParam], [PointerLabelParam]],
    0x7b: ["Cmd_7b", [PointerLabelParam]],
    0x7c: ["Cmd_7c"],
    0x7d: ["Cmd_7d"],
    0x7e: ["Cmd_7e", [PointerLabelParam]],
    0x7f: ["Cmd_7f", [PointerLabelParam4], [PointerLabelParam]],
    0x80: ["Cmd_80", [PointerLabelParam]],
    0x81: ["Cmd_81", [PointerLabelParam]],
    0x82: ["Cmd_82", [PointerLabelParam]],
    0x83: ["Cmd_83"],
    0x84: ["Cmd_84"],
    0x85: ["Cmd_85", [PointerLabelParam]],
    0x86: ["Cmd_86", [PointerLabelParam]],
    0x87: ["Cmd_87", [PointerLabelParam]],
    0x88: ["Cmd_88"],
    0x89: ["Cmd_89", [PointerLabelParam]],
    0x8a: ["Cmd_8a", [PointerLabelParam]],
    0x8b: ["Cmd_8b", [PointerLabelParam]],
    0x8c: ["Cmd_8c"],
    0x8d: ["Cmd_8d"],
    0x8e: ["Cmd_8e", [PointerLabelParam]],
    0x8f: ["Cmd_8f"],
    0x90: ["Cmd_90", [SingleWordParam], [SingleWordParam], [SingleWordParam], [PointerLabelParam]],
    0x91: ["Cmd_91", [SingleWordParam], [SingleWordParam], [SingleWordParam]],
    0x92: ["Cmd_92"],
    0x93: ["Cmd_93", [PointerLabelParam]],
    0x94: ["Cmd_94"],
    0x95: ["Cmd_95"],
    0x96: ["Cmd_96", [SingleWordParam]],
    0x97: ["Cmd_97", [PointerLabelParam]],
    0x98: ["Cmd_98", [PointerLabelParam]],
    0x99: ["Cmd_99"],
    0x9a: ["Cmd_9a", [PointerLabelParam]],
    0x9b: ["Cmd_9b", [SingleWordParam], [SingleWordParam], [SingleWordParam], [PointerLabelParam]],
    0x9c: ["Cmd_9c", [PointerLabelParam]],
    0x9d: ["Cmd_9d", [PointerLabelParam]],
    0x9e: ["Cmd_9e", [PointerLabelParam]],
    0x9f: ["Cmd_9f", [PointerLabelParam]],
    0xa0: ["Cmd_a0", [SingleWordParam], [SingleWordParam]],
    0xa1: ["Cmd_a1", [SingleWordParam], [SingleWordParam], [SingleWordParam], [PointerLabelParam]],
    0xa2: ["Cmd_a2", [SingleWordParam], [SingleWordParam], [PointerLabelParam]],
    0xa3: ["Cmd_a3"],
    0xa4: ["Cmd_a4"],
    0xa5: ["Cmd_a5", [SingleWordParam], [PointerLabelParam]],
    0xa6: ["Cmd_a6", [SingleWordParam], [SingleWordParam], [SingleWordParam], [PointerLabelParam]],
    0xa7: ["Cmd_a7", [SingleWordParam], [VariableParam]],
    0xa8: ["Cmd_a8", [SingleWordParam], [SingleWordParam]],
    0xa9: ["Cmd_a9", [PointerLabelParam]],
    0xaa: ["Cmd_aa"],
    0xab: ["Cmd_ab"],
    0xac: ["Cmd_ac", [PointerLabelParam]],
    0xad: ["Cmd_ad", [PointerLabelParam4], [PointerLabelParam]],
    0xae: ["Cmd_ae", [PointerLabelParam]],
    0xaf: ["Cmd_af", [SingleWordParam]],
    0xb0: ["Cmd_b0", [PointerLabelParam4], [PointerLabelParam]],
    0xb1: ["Cmd_b1"],
    0xb2: ["Cmd_b2", [PointerLabelParam]],
    0xb3: ["Cmd_b3"],
    0xb4: ["Cmd_b4", [SingleWordParam], [PointerLabelParam]],
    0xb5: ["Cmd_b5", [PointerLabelParam]],
    0xb6: ["Cmd_b6", [PointerLabelParam]],
    0xb7: ["LoadMoveData", [SingleWordParam]],
    0xb8: ["Cmd_b8", [SingleWordParam], [SingleWordParam], [SingleWordParam]],
    0xb9: ["Cmd_b9", [SingleWordParam]],
    0xba: ["Cmd_ba"],
    0xbb: ["Cmd_bb", [SingleWordParam]],
    0xbc: ["Cmd_bc", [SingleWordParam], [PointerLabelParam]],
    0xbd: ["Cmd_bd", [SingleWordParam]],
    0xbe: ["Cmd_be", [SingleWordParam]],
    0xbf: ["Cmd_bf", [SingleWordParam]],
    0xc0: ["Cmd_c0", [SingleWordParam]],
    0xc1: ["Cmd_c1"],
    0xc2: ["Cmd_c2"],
    0xc3: ["Cmd_c3", [SingleWordParam], [SingleWordParam], [SingleWordParam]],
    0xc4: ["Cmd_c4", [SingleWordParam]],
    0xc5: ["Cmd_c5", [PointerLabelParam]],
    0xc6: ["Cmd_c6", [SingleWordParam]],
    0xc7: ["Cmd_c7", [SingleWordParam]],
    0xc8: ["Cmd_c8", [SingleWordParam], [PointerLabelParam]],
    0xc9: ["Cmd_c9", [PointerLabelParam]],
    0xca: ["Cmd_ca", [SingleWordParam]],
    0xcb: ["Cmd_cb", [SingleWordParam]],
    0xcc: ["Cmd_cc", [PointerLabelParam]],
    0xcd: ["Cmd_cd"],
    0xce: ["Cmd_ce"],
    0xcf: ["Cmd_cf"],
    0xd0: ["Cmd_d0", [SingleWordParam]],
    0xd1: ["Cmd_d1", [SingleWordParam], [SingleWordParam]],
    0xd2: ["Cmd_d2", [SingleWordParam], [PointerLabelParam]],
    0xd3: ["Cmd_d3", [SingleWordParam]],
    0xd4: ["Cmd_d4", [SingleWordParam]],
    0xd5: ["Cmd_d5", [PointerLabelParam]],
    0xd6: ["Cmd_d6", [SingleWordParam]],
    0xd7: ["Cmd_d7", [SingleWordParam]],
    0xd8: ["Cmd_d8", [SingleWordParam], [SingleWordParam]],
    0xd9: ["Cmd_d9", [SingleWordParam]],
    0xda: ["Cmd_da", [SingleWordParam]],
    0xdb: ["Cmd_db", [SingleWordParam], [SingleWordParam]],
    0xdc: ["Cmd_dc", [SingleWordParam], [VariableParam], [SingleWordParam]],
    0xdd: ["Cmd_dd", [SingleWordParam]],
    0xde: ["end"],
}

music_command_enders = [
#	"Cmd_5",
#	"Cmd_7",
#	"Cmd_e",
#	"Cmd_1e",
	"Cmd_23_LoadSubSeq",
	"Cmd_24", # jump to "be_seq"
	"Cmd_25", # jump to "sub_seq" or "waza_seq"
#	"Cmd_63",
	"Jump",
	"end",
]

def create_music_command_classes():
    klasses = []
    for (byte, cmd) in music_commands.items():
        cmd_name = cmd[0].replace(" ", "_")
        params = {
            "id": byte,
            "size": 4,
            "end": cmd[0] in music_command_enders,
            "macro_name": cmd[0]
        }
        params["param_types"] = {}
        if len(cmd) > 1:
            param_types = cmd[1:]
            for (i, each) in enumerate(param_types):
                thing = {"class": each[0]}
                params["param_types"][i] = thing
                params["size"] += thing["class"].size
        klass_name = cmd_name+"Command"
        klass = classobj(klass_name, (Command,), params)
        globals()[klass_name] = klass
        klasses.append(klass)
    # later an individual klass will be instantiated to handle something
    return klasses

music_classes = create_music_command_classes()


class Channel:
	def __init__(self, fin, address, base_label=None, label=None, used_labels=[]):
		self.start_address = address
		self.address = address
		self.channel = 0

		self.base_label = base_label
		if self.base_label == None:
			self.base_label = 'Sound_' + hex(self.start_address)

		self.label = label
		if self.label == None:
			self.label = self.base_label

		self.used_labels = used_labels
		self.labels = []
		used_label = generate_label_asm(self.label, self.start_address)
		self.labels += [used_label]
		self.used_labels += [used_label]

		self.output = []
		self.parse(fin)

	def parse(self, fin):
		noise = False
		done = False
		while not done:
			fin.seek(self.address)
			cmd = fin.readUInt32()
			adress_offset = 0

			class_ = self.get_sound_class(cmd)(fin, address=self.address, channel=self.channel)

			asm = class_.to_asm()

			# label any jumps or calls
			for key, param in class_.param_types.items():
				if ((param['class'] == PointerLabelParam) or (param['class'] == PointerLabelParam4) or (param['class'] == PointerLabelParam8)):
					label_address = class_.params[key].parsed_address
					label = '%s_branch_%x' % (
						self.base_label,
						label_address
					)
					self.labels += [generate_label_asm(label, label_address)]
					asm = asm.replace(
						'$%x' % (label_address),
						label
					)
				elif (param['class'] == CallPointerLabelParam):
					label_address = class_.params[key].parsed_address
					label = 'Function_%x' % (
						label_address
					)
					self.labels += [generate_label_asm(label, label_address)]
					asm = asm.replace(
						'$%x' % (label_address),
						label
					)
					self.labels += [generate_label_asm(label, label_address)]
					asm = asm.replace(
						'$%x' % (label_address),
						label
					)
				elif (param['class'] == Function_224abec_Param):
					#print(hex(self.address) + ": Function_224abec_Param.size: " + hex(class_.params[key].size))
					adress_offset = class_.params[key].size - 8
				elif (param['class'] == Cmd5Param):
					#print("Cmd5Param.size: " + hex(class_.params[key].size))
					adress_offset = class_.params[key].size - 4

			self.output += [(self.address, '\t' + asm, self.address + class_.size + adress_offset)]
			self.address += class_.size + adress_offset
			#print(hex(self.address))

			done = class_.end
			# infinite loops are enders
			if class_.macro_name == 'loopchannel':
				if class_.params[0].byte == 0:
					done = True

		self.output += [(self.address, '@ %x\n' % self.address, self.address)]

		# parse any other branches too
		self.labels = list(set(self.labels))
		for address, asm, last_address in self.labels:
			if (address, asm, last_address) not in self.used_labels:

				self.used_labels += [(address, asm, last_address)]
				sub = Channel(
					fin,
					address=address,
					base_label=self.base_label,
					label=asm.split(':')[0],
					used_labels=self.used_labels
				)
				self.output += sub.output
				self.labels += sub.labels

	def to_asm(self):
		output = sort_asms(self.output + self.labels)
		text = ''
		for i, (address, asm, last_address) in enumerate(output):
			if line_has_label(asm):
				# dont print labels for empty chunks
				for (address_, asm_, last_address_) in output[i:]:
					if not line_has_label(asm_):
						text += '\n' + asm + '\n'
						break
			else:
				text += asm + '\n'
		text += '@ %x' % (last_address) + '\n'
		return text

	def get_sound_class(self, i):
		for class_ in music_classes:
			if class_.id == i:
				return class_
		raise NameError('Unknown Cmd: ' + hex(i) + ' at ' + hex(self.address))
        
		return class_


class Sound:
	def __init__(self, fin, name):
		self.base_label = name
		self.labels = []
		self.asms = []
		self.parse(fin)

	def parse_header(self, fin):
		self.channels = []
        
		channel = Channel(fin, 0, self.base_label, label='%s_%d' % (self.base_label, 1))
		self.channels += [channel]
		self.labels += channel.labels

	def make_header(self):
		text = ".include \"macros/script_seq.s\"\n\n"
		asms = [(-2, text, 0)]
		return asms

	def parse(self, fin):
		self.parse_header(fin)

		asms = []
		asms += self.make_header()

		for channel in self.channels:
			asms += channel.output

		asms = sort_asms(asms)
		_, _, self.last_address = asms[-1]
		asms += [(self.last_address,'@ %x\n' % self.last_address, self.last_address)]

		self.asms += asms

	def to_asm(self, labels=[]):
		"""insert outside labels here"""
		asms = self.asms

		# Incbin trailing commands that didnt get picked up
		asms = insert_asm_incbins(asms)

		for label in self.labels + labels:
			asms += [label]

		return '\n'.join(asm for address, asm, last_address in sort_asms(asms))


def dumb_scripts(fin, base_label):
	labels = []
	sound = Sound(fin, base_label)
	labels += sound.labels
	addresses = [0]

	# Place a dummy asm at the end to catch end-of-file incbins.
	index = addresses.index(0)
	if index < len(addresses):
		next_address = addresses[index]
		max_command_length = 4*10
		if next_address - sound.last_address <= max_command_length:
			size = os.path.getsize(filename)
			sound.asms += [(size, '@ ' + hex(size), size)]

	output = sound.to_asm(labels) + '\n'

	return output


def extract_scripts(filename, output_folder):
    output = ""
    
    print(filename)
    
    fin = open(os.path.join(configuration.Config().path, filename), "rb+")
    fin = (BinaryIO.reader(fin.read())).adapter(fin)
    
    output = dumb_scripts(fin, 'Script')
    head, tail = os.path.split(filename)
    with open(os.path.join(output_folder + tail.replace(".bin", ".s")), 'w') as out:
        out.write(output)
    
    return output


if __name__ == "__main__":
    filename = sys.argv[1]
    output_folder = sys.argv[2]
    if not os.path.exists(os.path.dirname(output_folder)):
        os.makedirs(os.path.dirname(output_folder))

    extract_scripts(filename, output_folder)
