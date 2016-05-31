# -*- coding: utf-8 -*-
"""
---
"""

import os
import sys
from copy import copy, deepcopy
from ctypes import c_int8
import random
import json
import operator
from new import classobj

import configuration

from util.io import BinaryIO
import labels
from labels import line_has_label
import interval_map

from lists.pokemonnamelist import PokemonNameList
from lists.movenamelist import MoveNameList
from lists.itemnamelist import ItemNameList
from lists.abilitynamelist import AbilityNameList
from lists.typelist import TypeList


def GetPokemonName(species):
    if species <= 493:
        return PokemonNameList[species].upper()
    else:
        return PokemonNameList[0].upper()


def GetMoveName(move):
    if move <= 467:
        return MoveNameList[move]
    else:
        return MoveNameList[0]


def GetItemName(item):
    if item <= 536:
        return ItemNameList[item]
    else:
        return ItemNameList[0]


def GetAbilityName(ability):
    if ability <= 123:
        return AbilityNameList[ability]
    else:
        return AbilityNameList[0]


def GetTypeName(type):
    if type <= 17:
        return TypeList[type]
    else:
        return TypeList[0]


def GetTrainerName(item):
    if item == 0:
        return "Defender" #"PlayerPkmn"
    elif item == 1:
        return "Attacker" # "AIPkmn"
    elif item == 2:
        return "Defender2nd" # "Player2ndPkmn"
    elif item == 3:
        return "Attacker2nd" # "AI2ndPkmn"
    else:
        return str(item)


def GetStatusLevelName(item):
    #if item == 0:
    #    return "0"
    #elif item == 5:
    #    return "ATK_LEVEL"
    #else:
    #    return str(item)
    return hex(item)



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

        # -- These were some old attempts to check whether the label
        # -- was already in use. They work, but the other method is
        # -- better.
        #
        # check if the label is in the file already
        # check if the address of this label is already in use

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
        # assert new_asm != None, "new_asm should be an instance of Asm"
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
			#last_address -= input_file.GetBaseAddress()
			#if i == 0:
			#	next_address -= input_file.GetBaseAddress()
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
			#'\n.incbin "' + filename + baserom/arm9.bin", 0x%x, 0x%x - 0x%x\n\n' % (
			'\n.incbin "' + filename + '", 0x%x, 0x%x - 0x%x\n\n' % (
				start_address, end_address, start_address
			),
			end_address
		)
	#elif (end_address-start_address) == 2 and (start_address & 1) == 0:
	#	incbin = (
	#		start_address,
	#		'\n.align 2, 0\n',
	#		end_address
	#	)
	else:
		incbin = (
			start_address,
			#'\n.incbin "baserom/arm9.bin", 0x%x, 0x%x - 0x%x\n\n' % (
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


Value35c = 0
Ability35c = 1

class MultiByteParam():
    """or MultiByte(CommandParam)"""
    size = 4
    should_be_decimal = False
    byte_type = "dw"

    def __init__(self, fin, *args, **kwargs):
        self.prefix = "$" # default.. feel free to set 0x in kwargs
        for (key, value) in kwargs.items():
            setattr(self, key, value)
        # check address
        if not hasattr(self, "address") or self.address == None:
            raise Exception("an address is a requirement")
        #elif not is_valid_address(self.address):
        #    raise Exception("address must be valid")
        # check size
        if not hasattr(self, "size") or self.size == None:
            raise Exception("don't know how many bytes to read (size)")
        self.parse(fin)

    def parse(self, fin, address):
        self.bytes = address
        self.parsed_number = address

    def get_dependencies(self, recompute=False, global_dependencies=set()):
        return []

    # you won't actually use this to_asm because it's too generic
    #def to_asm(self): return ", ".join([(self.prefix+"%.2x")%x for x in self.bytes])
    def to_asm(self):
        if not self.should_be_decimal:
            return self.prefix+"".join([("%.2x")%x for x in reversed(self.bytes)])
        elif self.should_be_decimal:
            decimal = int("0x"+"".join([("%.2x")%x for x in reversed(self.bytes)]), 16)
            return str(decimal)

    @staticmethod
    def from_asm(value):
        return value


class PointerLabelParam(MultiByteParam):
    # default size is 4 bytes
    default_size = 4
    size = 4
    force = False
    debug = False

    def __init__(self, fin, *args, **kwargs):
        self.dependencies = None
        if self.size > 5:
            raise Exception("param size is too large")
        # continue instantiation.. self.bank will be set down the road
        MultiByteParam.__init__(self, fin, *args, **kwargs)

    def parse(self, fin):
        #fin.seek(self.address+2)
        self.parsed_address = fin.readUInt32() * 4
        self.parsed_address += fin.tell()
        self.parsed_address &= 0xffffffff
        MultiByteParam.parse(self, fin, self.parsed_address)
        label_address = self.parsed_address
        self.base_label = 'Script'
        label = '%s_branch_%x' % (
            self.base_label,
            label_address
            )
        l = {'address':label_address, 'label':label}
        all_labels.append(l)

    def get_dependencies(self, recompute=False, global_dependencies=set()):
        dependencies = []
        if self.parsed_address == self.address:
            return dependencies
        if self.dependencies != None and not recompute:
            global_dependencies.update(self.dependencies)
            return self.dependencies
        thing = script_parse_table[self.parsed_address]
        if thing and thing.address == self.parsed_address and not (thing is self):
            #if self.debug:
            #    print "parsed address is: " + hex(self.parsed_address) + " with label: " + thing.label.name + " of type: " + str(thing.__class__)
            dependencies.append(thing)
            if not thing in global_dependencies:
                global_dependencies.add(thing)
                more = thing.get_dependencies(recompute=recompute, global_dependencies=global_dependencies)
                dependencies.extend(more)
        self.dependencies = dependencies
        return dependencies

    def to_asm(self):
        # we pass bank= for whether or not to include a bank byte when reading
        #.. it's not related to caddress
        caddress = None
        if not (hasattr(self, "parsed_address") and self.parsed_address != None):
            caddress = self.parsed_address
        else:
            caddress = self.parsed_address
        label = get_label_for(caddress)
        pointer_part = label # use the label, if it is found
        #print("label " + str(pointer_part) + " " + str(label))

        # check that the label actually points to the right place
        #result = script_parse_table[caddress]
        #print("label " + hex(caddress) + " " + str(result))
        #if result != None and hasattr(result, "label"):
        #    if result.label.name != label:
        #        label = None
        #    elif result.address != caddress:
        #        label = None
        #elif result != None:
        #    label = None

        # setup output bytes if the label was not found
        if not label:
            lo = self.bytes
            hi = 0x0
            pointer_part = "{0}{1:02x}{2:02x}".format(self.prefix, hi, lo)
        if label: return label

        return pointer_part # this could be the same as label


class CallPointerLabelParam(MultiByteParam):
    # default size is 4 bytes
    default_size = 4
    size = 4
    force = False
    debug = False

    def __init__(self, fin, *args, **kwargs):
        self.dependencies = None
        if self.size > 5:
            raise Exception("param size is too large")
        # continue instantiation.. self.bank will be set down the road
        MultiByteParam.__init__(self, fin, *args, **kwargs)

    def parse(self, fin):
        self.parsed_address = fin.readUInt32() * 4
        self.parsed_address += fin.tell()
        self.parsed_address &= 0xffffffff
        MultiByteParam.parse(self, fin, self.parsed_address)
        label_address = self.parsed_address
        label = 'Function_%x' % (
            label_address
            )
        l = {'address':label_address, 'label':label}
        all_labels.append(l)

    def get_dependencies(self, recompute=False, global_dependencies=set()):
        dependencies = []
        if self.parsed_address == self.address:
            return dependencies
        if self.dependencies != None and not recompute:
            global_dependencies.update(self.dependencies)
            return self.dependencies
        thing = script_parse_table[self.parsed_address]
        if thing and thing.address == self.parsed_address and not (thing is self):
            #if self.debug:
            #    print "parsed address is: " + hex(self.parsed_address) + " with label: " + thing.label.name + " of type: " + str(thing.__class__)
            dependencies.append(thing)
            if not thing in global_dependencies:
                global_dependencies.add(thing)
                more = thing.get_dependencies(recompute=recompute, global_dependencies=global_dependencies)
                dependencies.extend(more)
        self.dependencies = dependencies
        return dependencies

    def to_asm(self):
        # we pass bank= for whether or not to include a bank byte when reading
        #.. it's not related to caddress
        caddress = None
        if not (hasattr(self, "parsed_address") and self.parsed_address != None):
            caddress = self.parsed_address
        else:
            caddress = self.parsed_address
        label = get_label_for(caddress)
        pointer_part = label # use the label, if it is found
        #print("label " + str(pointer_part) + " " + str(label))

        # setup output bytes if the label was not found
        if not label:
            lo = self.bytes
            hi = 0x0
            pointer_part = "{0}{1:02x}{2:02x}".format(self.prefix, hi, lo)
        if label: return label

        return pointer_part # this could be the same as label

        

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
		#not line_has_label(asm),
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
    """
    Note: when dumping to asm, anything in script_parse_table that directly
    inherits Command should not be .to_asm()'d.
    """
    # use this when the "byte id" doesn't matter
    # .. for example, a non-script command doesn't use the "byte id"
    override_byte_check = True
    is_rgbasm_macro = False
    base_label = "UnseenLabel_"

    def __init__(self, fin, address=None, *pargs, **kwargs):
        """params:
        address     - where the command starts
        force       - whether or not to force the script to be parsed (default False)
        debug       - are we in debug mode? default False
        map_group
        map_id
        """
        defaults = {"force": False, "debug": False, "map_group": None, "map_id": None}
        #if not is_valid_address(address):
        #    raise Exception("address is invalid")
        # set up some variables
        self.address = address
        self.last_address = None
        # setup the label based on base_label if available
        label = self.base_label + hex(self.address)
        self.label = Label(name=label, address=address, object=self)
        # params are where this command's byte parameters are stored
        self.params = {}
        self.dependencies = None
        # override default settings
        defaults.update(kwargs)
        # set everything
        for (key, value) in defaults.items():
            setattr(self, key, value)
        # but also store these kwargs
        self.args = defaults
        # start parsing this command's parameter bytes
        self.parse(fin)

    def get_dependencies(self, recompute=False, global_dependencies=set()):
        dependencies = []
        #if self.dependencies != None and not recompute:
        #    global_dependencies.update(self.dependencies)
        #    return self.dependencies
        for (key, param) in self.params.items():
            if hasattr(param, "get_dependencies") and param != self:
                deps = param.get_dependencies(recompute=recompute, global_dependencies=global_dependencies)
                if deps != None and not self in deps:
                    dependencies.extend(deps)
        self.dependencies = dependencies
        return dependencies

    def to_asm(self):
        global Value35c
        global Ability35c
    
        # start with the rgbasm macro name for this command
        output = ""
        #if len(self.macro_name) > 0 and self.macro_name[0].isdigit():
        #    output += "_"
        output += self.macro_name
        # return if there are no params
        if len(self.param_types.keys()) == 0:
            return output
        # first one will have no prefixing comma
        first = True
        # start reading the bytes after the command byte
        if not self.override_byte_check:
            current_address = self.address+1
        else:
            current_address = self.address
        #output = self.macro_name + ", ".join([param.to_asm() for (key, param) in self.params.items()])
        
        if self.macro_name == "AI_GetAbility":
            Value35c = Ability35c
        elif ((self.macro_name == "AI_If35cEq") or (self.macro_name == "AI_If35cNe")):
            Value35c = Value35c
        elif (self.macro_name == "AI_GetRoundNr"):
            Value35c = 0
        else:
            Value35c = 0
        
        # add each param
        for (key, param) in self.params.items():
            name = param.name
            # the first param shouldn't have ", " prefixed
            if first:
                output += " "
                first = False
            # but all other params should
            else: output += ", "
            # now add the asm-compatible param string
            output += param.to_asm()
            current_address += param.size
        
        #for param_type in self.param_types:
        #    name = param_type["name"]
        #    klass = param_type["klass"]
        #    # create an instance of this type
        #    # tell it to begin parsing at this latest byte
        #    obj = klass(address=current_address)
        #    # the first param shouldn't have ", " prefixed
        #    if first: first = False
        #    # but all other params should
        #    else: output += ", "
        #    # now add the asm-compatible param string
        #    output += obj.to_asm()
        #    current_address += obj.size
        return output

    def parse(self, fin):
        # id, size (inclusive), param_types
        #param_type = {"name": each[1], "class": each[0]}
        if not self.override_byte_check:
            current_address = self.address+1
        else:
            current_address = self.address
        fin.seek(self.address)
        byte = fin.readUInt32() #ord(rom[self.address])
        if not self.override_byte_check and (not byte == self.id):
            raise Exception("byte ("+hex(byte)+") != self.id ("+hex(self.id)+")")
        i = 0
        for (key, param_type) in self.param_types.items():
            name = param_type["name"]
            klass = param_type["class"]
            # make an instance of this class, like SingleByteParam()
            # or ItemLabelByte.. by making an instance, obj.parse() is called
            obj = klass(fin, address=current_address, name=name, parent=self, **dict([(k,v) for (k, v) in self.args.items() if k not in ["parent"]]))
            # save this for later
            self.params[i] = obj
            # increment our counters
            current_address += obj.size
            i += 1
        self.last_address = current_address
        return True


class SingleByteParam():
    """or SingleByte(CommandParam)"""
    size = 1
    should_be_decimal = False
    byte_type = "db"

    def __init__(self, fin, *args, **kwargs):
        for (key, value) in kwargs.items():
            setattr(self, key, value)
        # check address
        if not hasattr(self, "address"):
            raise Exception("an address is a requirement")
        elif self.address == None:
            raise Exception("address must not be None")
       # elif not is_valid_address(self.address):
       #     raise Exception("address must be valid")
        # check size
        if not hasattr(self, "size") or self.size == None:
            raise Exception("size is probably 1?")
        # parse bytes from ROM
        self.parse(fin)

    def parse(self, fin):
		#fin.seek(self.address)
		self.byte = fin.readUInt8() #ord(rom[self.address])

    def get_dependencies(self, recompute=False, global_dependencies=set()):
        return []

    def to_asm(self):
        if not self.should_be_decimal:
            return hex(self.byte)
        else:
            return str(self.byte)

    @staticmethod
    def from_asm(value):
        return value
		
		
class SingleHWordParam():
    size = 2
    should_be_decimal = False
    byte_type = "db"

    def __init__(self, fin, *args, **kwargs):
        for (key, value) in kwargs.items():
            setattr(self, key, value)
        # check address
        if not hasattr(self, "address"):
            raise Exception("an address is a requirement")
        elif self.address == None:
            raise Exception("address must not be None")
       # elif not is_valid_address(self.address):
       #     raise Exception("address must be valid")
        # check size
        if not hasattr(self, "size") or self.size == None:
            raise Exception("size is probably 1?")
        # parse bytes from ROM
        self.parse(fin)

    def parse(self, fin):
		#fin.seek(self.address)
		self.byte = fin.readUInt16() #ord(rom[self.address])

    def get_dependencies(self, recompute=False, global_dependencies=set()):
        return []

    def to_asm(self):
        if not self.should_be_decimal:
            return hex(self.byte)
        else:
            return str(self.byte)

    @staticmethod
    def from_asm(value):
        return value


		
class SingleWordParam():
    size = 4
    should_be_decimal = False
    byte_type = "db"

    def __init__(self, fin, *args, **kwargs):
        for (key, value) in kwargs.items():
            setattr(self, key, value)
        # check address
        if not hasattr(self, "address"):
            raise Exception("an address is a requirement")
        elif self.address == None:
            raise Exception("address must not be None")
       # elif not is_valid_address(self.address):
       #     raise Exception("address must be valid")
        # check size
        if not hasattr(self, "size") or self.size == None:
            raise Exception("size is probably 1?")
        # parse bytes from ROM
        self.parse(fin)

    def parse(self, fin):
		#fin.seek(self.address)
		self.byte = fin.readUInt32()

    def get_dependencies(self, recompute=False, global_dependencies=set()):
        return []

    def to_asm(self):
        global Value35c
        global Ability35c

        if Value35c == Ability35c:
            return GetAbilityName(self.byte)
        elif not self.should_be_decimal:
            return hex(self.byte)
        else:
            return str(self.byte)

    @staticmethod
    def from_asm(value):
        return value


		
class SingleWordDecimalParam():
    size = 4
    should_be_decimal = False
    byte_type = "db"

    def __init__(self, fin, *args, **kwargs):
        for (key, value) in kwargs.items():
            setattr(self, key, value)
        # check address
        if not hasattr(self, "address"):
            raise Exception("an address is a requirement")
        elif self.address == None:
            raise Exception("address must not be None")
       # elif not is_valid_address(self.address):
       #     raise Exception("address must be valid")
        # check size
        if not hasattr(self, "size") or self.size == None:
            raise Exception("size is probably 1?")
        # parse bytes from ROM
        self.parse(fin)

    def parse(self, fin):
		self.byte = fin.readInt32()

    def get_dependencies(self, recompute=False, global_dependencies=set()):
        return []

    def to_asm(self):
        return str(self.byte)

    @staticmethod
    def from_asm(value):
        return value


		
class Function_224abec_Param():
    size = 8
    should_be_decimal = False
    byte_type = "db"

    def __init__(self, fin, *args, **kwargs):
        for (key, value) in kwargs.items():
            setattr(self, key, value)
        # check address
        if not hasattr(self, "address"):
            raise Exception("an address is a requirement")
        elif self.address == None:
            raise Exception("address must not be None")
       # elif not is_valid_address(self.address):
       #     raise Exception("address must be valid")
        # check size
        if not hasattr(self, "size") or self.size == None:
            raise Exception("size is probably 1?")
        # parse bytes from ROM
        self.parse(fin)

    def parse(self, fin):
		#fin.seek(self.address)
		self.byte = fin.readUInt32()
		self.byte2 = fin.readUInt32()

    def get_dependencies(self, recompute=False, global_dependencies=set()):
        return []

    def to_asm(self):
        if not self.should_be_decimal:
            return hex(self.byte) + ", " + hex(self.byte2)
        else:
            return str(self.byte) + ", " + str(self.byte2)

    @staticmethod
    def from_asm(value):
        return value


class Cmd20Param():
    size = 4
    should_be_decimal = False
    byte_type = "db"

    def __init__(self, fin, *args, **kwargs):
        for (key, value) in kwargs.items():
            setattr(self, key, value)
        # check address
        if not hasattr(self, "address"):
            raise Exception("an address is a requirement")
        elif self.address == None:
            raise Exception("address must not be None")
       # elif not is_valid_address(self.address):
       #     raise Exception("address must be valid")
        # check size
        if not hasattr(self, "size") or self.size == None:
            raise Exception("size is probably 1?")
        # parse bytes from ROM
        self.parse(fin)

    def parse(self, fin):
		#fin.seek(self.address)
		self.byte = fin.readUInt32()

    def get_dependencies(self, recompute=False, global_dependencies=set()):
        return []

    def to_asm(self):
        if self.byte == 0x0:
            return "Cmd20_Eq"
        elif self.byte == 0x1:
            return "Cmd32_Ne"
        elif self.byte == 0x2:
            return "Cmd32_Gt"
        elif self.byte == 0x3:
            return "Cmd32_Le"
        elif self.byte == 0x4:
            return "Cmd32_TstNe"
        elif self.byte == 0x5:
            return "Cmd32_TstEq"
        elif self.byte == 0x6:
            return "Cmd32_AndEq"
        elif not self.should_be_decimal:
            return hex(self.byte)
        else:
            return str(self.byte)

    @staticmethod
    def from_asm(value):
        return value


class Cmd32Param():
    size = 4
    should_be_decimal = False
    byte_type = "db"

    def __init__(self, fin, *args, **kwargs):
        for (key, value) in kwargs.items():
            setattr(self, key, value)
        # check address
        if not hasattr(self, "address"):
            raise Exception("an address is a requirement")
        elif self.address == None:
            raise Exception("address must not be None")
       # elif not is_valid_address(self.address):
       #     raise Exception("address must be valid")
        # check size
        if not hasattr(self, "size") or self.size == None:
            raise Exception("size is probably 1?")
        # parse bytes from ROM
        self.parse(fin)

    def parse(self, fin):
		#fin.seek(self.address)
		self.byte = fin.readUInt32()

    def get_dependencies(self, recompute=False, global_dependencies=set()):
        return []

    def to_asm(self):
        if self.byte == 0x7:
            return "Cmd32_Store"
        elif self.byte == 0x8:
            return "Cmd32_Add"
        elif self.byte == 0x9:
            return "Cmd32_Sub"
        elif self.byte == 0xa:
            return "Cmd32_Orr"
        elif self.byte == 0xb:
            return "Cmd32_Bic"
        elif not self.should_be_decimal:
            return hex(self.byte)
        else:
            return str(self.byte)

    @staticmethod
    def from_asm(value):
        return value


class MoveParam():
    size = 4
    should_be_decimal = False
    byte_type = "db"

    def __init__(self, fin, *args, **kwargs):
        for (key, value) in kwargs.items():
            setattr(self, key, value)
        # check address
        if not hasattr(self, "address"):
            raise Exception("an address is a requirement")
        elif self.address == None:
            raise Exception("address must not be None")
       # elif not is_valid_address(self.address):
       #     raise Exception("address must be valid")
        # check size
        if not hasattr(self, "size") or self.size == None:
            raise Exception("size is probably 1?")
        # parse bytes from ROM
        self.parse(fin)

    def parse(self, fin):
		#fin.seek(self.address)
		self.byte = fin.readUInt32() #ord(rom[self.address])

    def get_dependencies(self, recompute=False, global_dependencies=set()):
        return []

    def to_asm(self):
        return GetMoveName(self.byte).upper()

    @staticmethod
    def from_asm(value):
        return value


class TypeParam():
    size = 4
    should_be_decimal = False
    byte_type = "db"

    def __init__(self, fin, *args, **kwargs):
        for (key, value) in kwargs.items():
            setattr(self, key, value)
        # check address
        if not hasattr(self, "address"):
            raise Exception("an address is a requirement")
        elif self.address == None:
            raise Exception("address must not be None")
       # elif not is_valid_address(self.address):
       #     raise Exception("address must be valid")
        # check size
        if not hasattr(self, "size") or self.size == None:
            raise Exception("size is probably 1?")
        # parse bytes from ROM
        self.parse(fin)

    def parse(self, fin):
		#fin.seek(self.address)
		self.byte = fin.readUInt32() #ord(rom[self.address])

    def get_dependencies(self, recompute=False, global_dependencies=set()):
        return []

    def to_asm(self):
        return GetTypeName(self.byte).upper()

    @staticmethod
    def from_asm(value):
        return value


class TrainerParam():
    size = 4
    should_be_decimal = False
    byte_type = "db"

    def __init__(self, fin, *args, **kwargs):
        for (key, value) in kwargs.items():
            setattr(self, key, value)
        # check address
        if not hasattr(self, "address"):
            raise Exception("an address is a requirement")
        elif self.address == None:
            raise Exception("address must not be None")
       # elif not is_valid_address(self.address):
       #     raise Exception("address must be valid")
        # check size
        if not hasattr(self, "size") or self.size == None:
            raise Exception("size is probably 1?")
        # parse bytes from ROM
        self.parse(fin)

    def parse(self, fin):
		self.byte = fin.readUInt32()

    def get_dependencies(self, recompute=False, global_dependencies=set()):
        return []

    def to_asm(self):
        return GetTrainerName(self.byte).upper()

    @staticmethod
    def from_asm(value):
        return value


class StatusLevelParam():
    size = 4
    should_be_decimal = False
    byte_type = "db"

    def __init__(self, fin, *args, **kwargs):
        for (key, value) in kwargs.items():
            setattr(self, key, value)
        # check address
        if not hasattr(self, "address"):
            raise Exception("an address is a requirement")
        elif self.address == None:
            raise Exception("address must not be None")
       # elif not is_valid_address(self.address):
       #     raise Exception("address must be valid")
        # check size
        if not hasattr(self, "size") or self.size == None:
            raise Exception("size is probably 1?")
        # parse bytes from ROM
        self.parse(fin)

    def parse(self, fin):
		self.byte = fin.readUInt32()

    def get_dependencies(self, recompute=False, global_dependencies=set()):
        return []

    def to_asm(self):
        return GetStatusLevelName(self.byte).upper()

    @staticmethod
    def from_asm(value):
        return value

		
music_commands = {
    0xf: ["Cmd_f"],
    0x15: ["Cmd_15", ["unknown", Function_224abec_Param]],
    0x20: ["Cmd_20", ["unknown", Cmd20Param], ["unknown", SingleWordParam], ["unknown", SingleWordParam], ["unknown", PointerLabelParam]],
    0x26: ["Cmd_26"],
    0x32: ["Cmd_32", ["unknown", Cmd32Param], ["unknown", SingleWordParam], ["unknown", SingleWordParam]],
    0x39: ["Cmd_39", ["unknown", SingleWordParam], ["unknown", SingleWordParam], ["unknown", SingleWordParam]],
    0xa6: ["Cmd_a6", ["unknown", SingleWordParam], ["unknown", SingleWordParam], ["unknown", SingleWordParam], ["unknown", SingleWordParam]],
    0xa8: ["Cmd_a8", ["unknown", SingleWordParam], ["unknown", SingleWordParam]],
    0xde: ["Cmd_de"],
}

music_command_enders = [
	"Cmd_de",
]

def create_music_command_classes(debug=False):
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
                thing = {"name": each[0], "class": each[1]}
                params["param_types"][i] = thing
                if debug:
                    logging.debug("each is {0} and thing[class] is {1}".format(each, thing["class"]))
                params["size"] += thing["class"].size
        klass_name = cmd_name+"Command"
        klass = classobj(klass_name, (Command,), params)
        globals()[klass_name] = klass
        if klass.macro_name == "notetype":
            klass.allowed_lengths = [1, 2]
        elif klass.macro_name in ["togglenoise", "sfxtogglenoise"]:
            klass.allowed_lengths = [0, 1]
        klasses.append(klass)
    # later an individual klass will be instantiated to handle something
    return klasses

music_classes = create_music_command_classes()


class Channel:
	"""A sound channel data parser."""

	def __init__(self, fin, address, channel=1, base_label=None, sfx=False, label=None, used_labels=[]):
		self.start_address = address
		self.address = address
		self.channel = channel

		self.base_label = base_label
		if self.base_label == None:
			self.base_label = 'Sound_' + hex(self.start_address)

		self.label = label
		if self.label == None:
			self.label = self.base_label

		self.sfx = sfx

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

			class_ = self.get_sound_class(cmd)(fin, address=self.address, channel=self.channel)

			asm = class_.to_asm()

			# label any jumps or calls
			for key, param in class_.param_types.items():
				if (param['class'] == PointerLabelParam):
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

			self.output += [(self.address, '\t' + asm, self.address + class_.size)]
			self.address += class_.size

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
					channel=self.channel,
					base_label=self.base_label,
					label=asm.split(':')[0],
					used_labels=self.used_labels,
					sfx=self.sfx,
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
        
		return class_# Note


        
class Sound:
	"""
	Interprets a sound data header and its channel data.
	"""

	def __init__(self, fin, address, name='', sfx=False):
		self.start_address = address
		self.address = address
		self.sfx = sfx

		self.name = name
		self.base_label = 'Sound_%x' % self.start_address
		if self.name != '':
			self.base_label = self.name

		self.output = []
		self.labels = []
		self.asms = []
		self.parse(fin)


	def parse_header(self, fin):
		self.address = 0 # TODO
		self.channels = []
		self.num_channels = 0
		current_channel = 0
        
		address = 0
		channel = Channel(fin, address, current_channel, self.base_label, self.sfx, label='%s_%d' % (self.base_label, current_channel+1))
		self.channels += [(current_channel, channel)]
		self.labels += channel.labels
		current_channel += 1


	def make_header(self):
		asms = []
        
		text = ".include \"source/macros_asm_.s\""
		text += '\n\n'
		asms += [(-2, text, 0)]

		#comment_text = '@ %x\n' % self.address
		#asms += [(self.address, comment_text, self.address)]
		return asms


	def parse(self, fin):
		self.parse_header(fin)

		asms = []

		#asms += [generate_label_asm(self.base_label, self.start_address)]
		asms += self.make_header()

		for num, channel in self.channels:
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
			#if self.start_address <= label[0] < self.last_address:
			#	asms += [label]
			asms += [label]

		return '\n'.join(asm for address, asm, last_address in sort_asms(asms))
        
        
def dump_sounds(fin, origin, names, base_label='Sound_'):
	"""
	Dump sound data from a pointer table.
	"""

	# Some songs share labels.
	# Do an extra pass to grab shared labels before writing output.

	sounds = []
	labels = []
	addresses = []
	for i, name in enumerate(names):
		sound_at = 0
		sound = Sound(fin, sound_at, base_label + name)
		sounds += [sound]
		labels += sound.labels
		addresses += [sound_at]
	addresses.sort()

	outputs = []
	for i, name in enumerate(names):
		sound = sounds[i]

		# Place a dummy asm at the end to catch end-of-file incbins.
		index = addresses.index(sound.start_address)
		if index < len(addresses):
			next_address = addresses[index]
			max_command_length = 20
			if next_address - sound.last_address <= max_command_length:
				size = os.path.getsize(filename)
				sound.asms += [(size, '@ end_' + hex(size), size)]

		output = sound.to_asm(labels) + '\n'
		outputs += [('.s', output)]
	size = os.path.getsize(filename)

	return outputs
        
        

def export_sounds(fin, origin, names, path, output_folder, base_label='Sound_'):
	for filename, output in dump_sounds(fin, origin, names, base_label):
		head, tail = os.path.split(path)
		with open(os.path.join(output_folder + tail.replace(".bin", ".s")), 'w') as out:
			out.write(output)


class PkmnAI(object):
    """
    "Pkmn Gen4 AI"-disassembler
    """

    def __init__(self, config):
        """
        Setup the class instance.
        """
        self.config = config
        
        self.offsets = []
        self.scripts = []


    def extract_scripts(self, filename, output_folder, debug=False):
        self.offsets = []
        self.scripts = []
        self.functions = []
        self.func_map = {}  # {offset: [func, count]}
        output = ""
        
        print(filename)
        
        fin = open(os.path.join(self.config.path, filename), "rb+")
        fin = (BinaryIO.reader(fin.read())).adapter(fin)
        fin.seek(0)

        fin.seek(0, os.SEEK_END)
        filesize = fin.tell()
        
        
        offset = 0
        num = 0
        
        song_names = ['']
        
        export_sounds(fin, 0x0, song_names, filename, output_folder, 'Script')
        
        return (output, offset)


if __name__ == "__main__":
    conf = configuration.Config()
    script = PkmnAI(conf)
    
    filename = sys.argv[1]
    output_folder = sys.argv[2]
    if not os.path.exists(os.path.dirname(output_folder)):
        os.makedirs(os.path.dirname(output_folder))

    script.extract_scripts(filename, output_folder)[0]
