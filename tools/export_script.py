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




#fin = open("./testio2.bin", "rb")
#fin = (BinaryIO.reader(fin.read())).adapter(fin)



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


def insert_asm_incbins(asms, fin):
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
				new_asms += [generate_incbin_asm2(last_address, next_address, fin)]
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

def generate_incbin_asm2(start_address, end_address, fin):
	"""
	Return baserom incbin text for an address range.

	Format: 'INCBIN "baserom/arm9.bin", {start}, {end} - {start}'
	"""
    # .readUInt32()
	address = start_address
	text = ""
	fin.seek(address)
	while address < end_address:
		text += ".byte " + hex(fin.readUInt8()) + " @ " + hex(address) + "\n"
		address += 1
	incbin = (
		start_address,
		text,
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
        self.parsed_address = fin.readInt32()
        #if self.parsed_address < 0:
        #    print('self.parsed_address: ' + str(self.parsed_address))
        self.parsed_address += fin.tell()
        #print('self.parsed_address: ' + hex(self.parsed_address))
        #self.parsed_address &= 0xffffffff
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
        #fin.seek(self.address+2)
        self.parsed_address = fin.readUInt32()
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

class MovementPointerLabelParam(MultiByteParam):
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
        self.parsed_address = fin.readUInt32()
        self.parsed_address += fin.tell()
        self.parsed_address &= 0xffffffff
        MultiByteParam.parse(self, fin, self.parsed_address)
        label_address = self.parsed_address
        self.base_label = 'Movement'
        label = '%s_%x' % (
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
            current_address = self.address+2
        else:
            current_address = self.address
        #output = self.macro_name + ", ".join([param.to_asm() for (key, param) in self.params.items()])
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
        self.last_address = current_address
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
            current_address = self.address+2
        else:
            current_address = self.address
        fin.seek(self.address)
        byte = fin.readUInt16() #ord(rom[self.address])
        if not self.override_byte_check and (not byte == self.id):
            raise Exception("byte ("+hex(byte)+") != self.id ("+hex(self.id)+")")
        if(byte == 0x235):
            print(hex(byte) + ":")
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
            if(byte == 0x235):
                print(hex(obj.size))
            i += 1
        #self.last_address = current_address
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
		
		
class SingleHWordDecimalParam():
    size = 2
    should_be_decimal = True
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
		
		
class FurnitureHWordParam():
    size = 2
    should_be_decimal = False
    byte_type = "db"
    bytes = []

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
		self.byte = fin.readUInt16()
		print("self.byte: " + hex(self.byte))
		# 0 = 1, 1 = 3, 2 = 0, 3 = 3, 4 = 2, 5 = 3, 6 = 1
		if (self.byte == 0) or (self.byte == 6):
			self.bytes = [fin.readUInt16()]
		elif (self.byte == 4):
			self.bytes = [fin.readUInt16()]
			self.bytes += [fin.readUInt16()]
		elif (self.byte == 1) or (self.byte == 3) or (self.byte == 5):
			self.bytes = [fin.readUInt16()]
			self.bytes += [fin.readUInt16()]
			self.bytes += [fin.readUInt16()]
		self.size += 2*len(self.bytes)

    def get_dependencies(self, recompute=False, global_dependencies=set()):
        return []

    def to_asm(self):
        out = hex(self.byte)
        for b in self.bytes:
            out += ", " + hex(b)
        return out

    @staticmethod
    def from_asm(value):
        return value
		
		
class Cmd23eHWordParam():
    size = 2
    should_be_decimal = False
    byte_type = "db"
    bytes = []

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
		self.byte = fin.readUInt16()
		print("self.byte: " + hex(self.byte))
		# 0 = 0, 1 = 1, 2 = 1, 3 = 1, 4 = 0, 5 = 2, 6 = 2, 7 = 0, 8 = 0
		if (self.byte == 1) or (self.byte == 2) or (self.byte == 3):
			self.bytes = [fin.readUInt16()]
		elif (self.byte == 5) or (self.byte == 6):
			self.bytes = [fin.readUInt16()]
			self.bytes += [fin.readUInt16()]
		self.size += 2*len(self.bytes)

    def get_dependencies(self, recompute=False, global_dependencies=set()):
        return []

    def to_asm(self):
        out = hex(self.byte)
        for b in self.bytes:
            out += ", " + hex(b)
        return out

    @staticmethod
    def from_asm(value):
        return value
		
		
class Cmd21dHWordParam():
    size = 2
    should_be_decimal = False
    byte_type = "db"
    bytes = []

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
		self.byte = fin.readUInt16()
		print("self.byte: " + hex(self.byte))
		# 0 = 2, 1 = 2, 2 = 2, 3 = 2, 4 = 1, 5 = 1, 6 = 0
		if (self.byte == 4) or (self.byte == 5):
			self.bytes = [fin.readUInt16()]
		elif (self.byte == 0) or (self.byte == 1) or (self.byte == 2) or (self.byte == 3):
			self.bytes = [fin.readUInt16()]
			self.bytes += [fin.readUInt16()]
		self.size += 2*len(self.bytes)

    def get_dependencies(self, recompute=False, global_dependencies=set()):
        return []

    def to_asm(self):
        out = hex(self.byte)
        for b in self.bytes:
            out += ", " + hex(b)
        return out

    @staticmethod
    def from_asm(value):
        return value
		
		
class Cmd1cfHWordParam():
    size = 1
    should_be_decimal = False
    byte_type = "db"
    bytes = []

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
		self.byte = fin.readUInt8()
		print("self.byte: " + hex(self.byte))
		# 0 = 2, 1 = 2, 2 = 2, 3 = 2, 4 = 1, 5 = 1, 6 = 0
		if (self.byte == 2):
			self.bytes = [fin.readUInt16()]
		self.size += 2*len(self.bytes)

    def get_dependencies(self, recompute=False, global_dependencies=set()):
        return []

    def to_asm(self):
        out = hex(self.byte)
        for b in self.bytes:
            out += ", " + hex(b)
        return out

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
		self.byte = fin.readUInt32() #ord(rom[self.address])

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


class SingleCallStandardParam():
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
		self.byte = fin.readUInt16()

    def get_dependencies(self, recompute=False, global_dependencies=set()):
        return []

    def to_asm(self):
        if self.byte == 0x7e3:
            return str("StdFunc_PkmnMarket")
        if not self.should_be_decimal:
            return hex(self.byte)
        else:
            return str(self.byte)

    @staticmethod
    def from_asm(value):
        return value

		
music_commands = {
    0x00: ["Nop0"],
    0x01: ["Nop1"],
    0x02: ["End"],
    0x03: ["Return2", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x04: ["Cmd_4", ["unknown", SingleByteParam], ["unknown", SingleByteParam]],
    0x05: ["Cmd_5", ["unknown", SingleByteParam], ["unknown", SingleWordParam]],
    0x06: ["Cmd_6", ["unknown", SingleByteParam], ["unknown", SingleWordParam]],
    0x07: ["Cmd_7", ["unknown", SingleWordParam], ["unknown", SingleByteParam]],
    0x08: ["Cmd_8", ["unknown", SingleWordParam], ["unknown", SingleByteParam]],
    0x09: ["Cmd_9", ["unknown", SingleByteParam], ["unknown", SingleByteParam]],
    0x0a: ["Cmd_a", ["unknown", SingleByteParam], ["unknown", SingleByteParam]],
#    0x0a: ["Cmd_a", ["unknown", SingleWordParam], ["unknown", SingleWordParam]],
    0x0b: ["Cmd_b", ["unknown", SingleByteParam], ["unknown", SingleByteParam]],
    0x0c: ["Cmd_c", ["unknown", SingleByteParam], ["unknown", SingleByteParam]],
    0x0d: ["Cmd_d", ["unknown", SingleByteParam], ["unknown", SingleWordParam]],
    0x0e: ["Cmd_e", ["unknown", SingleWordParam], ["unknown", SingleByteParam]],
    0x0f: ["Cmd_f", ["unknown", SingleWordParam], ["unknown", SingleByteParam]],
    0x10: ["Cmd_10", ["unknown", SingleWordParam], ["unknown", SingleWordParam]],
    0x11: ["If", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x12: ["If2", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x13: ["Cmd_13", ["unknown", SingleHWordParam]],
    0x14: ["CallStandard", ["unknown", SingleCallStandardParam]],
    0x15: ["ExitStandard"],
    0x16: ["Jump", ["address", PointerLabelParam]],
    0x17: ["Cmd_17", ["unknown", SingleByteParam], ["unknown", SingleWordParam]],
    0x18: ["Cmd_18", ["unknown", SingleByteParam], ["unknown", SingleWordParam]],
    0x19: ["Cmd_19", ["unknown", SingleByteParam], ["unknown", SingleWordParam]],
    0x1a: ["Call", ["address", CallPointerLabelParam]],
    0x1b: ["Return"],
    0x1c: ["CompareLastResultJump", ["unknown", SingleByteParam], ["address", PointerLabelParam]],
    0x1d: ["CompareLastResultCall", ["unknown", SingleByteParam], ["address", PointerLabelParam]],
    0x1e: ["SetFlag", ["unknown", SingleHWordParam]],
    0x1f: ["ClearFlag", ["unknown", SingleHWordParam]],
    0x20: ["CheckFlag", ["unknown", SingleHWordParam]],
    0x21: ["Cmd_21", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x22: ["Cmd_22", ["unknown", SingleHWordParam]],
    0x23: ["SetTrainerId", ["unknown", SingleHWordParam]],
    0x24: ["Cmd_24", ["unknown", SingleHWordParam]],
    0x25: ["ClearTrainerId", ["unknown", SingleHWordParam]],
    0x26: ["SetValue", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x27: ["CopyValue", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x28: ["SetVar", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x29: ["CopyVar", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2a: ["Cmd_2a", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2b: ["Message2", ["unknown", SingleByteParam]],
    0x2c: ["Message", ["unknown", SingleByteParam]],
    0x2d: ["Message3", ["unknown", SingleHWordParam]],
    0x2e: ["Message4", ["unknown", SingleHWordParam]],
    0x2f: ["Message5", ["unknown", SingleByteParam]],
    0x30: ["Cmd_30"],
    0x31: ["WaitButton"],
    0x32: ["Cmd_32"],
    0x33: ["Cmd_33"],
    0x34: ["CloseMsgOnKeyPress"],
    0x35: ["FreezeMessageBox"],
    0x36: ["CallMessageBox", ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x37: ["ColorMsgBox", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x38: ["TypeMessageBox", ["unknown", SingleByteParam]],
    0x39: ["NoMapMessageBox"],
    0x3a: ["CallTextMsgBox", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x3b: ["StoreMenuStatus", ["unknown", SingleHWordParam]],
    0x3c: ["ShowMenu"],
    0x3d: ["Cmd_3d", ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleByteParam]],
    0x3e: ["YesNoBox", ["unknown", SingleHWordParam]],
    0x3f: ["WaitFor"],
    0x40: ["Multi", ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x41: ["Multi2", ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x42: ["Cmd_42", ["unknown", SingleByteParam], ["unknown", SingleByteParam]],
    0x43: ["CloseMulti"],
    0x44: ["Multi3", ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x45: ["Multi4", ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x46: ["TxtMsgScrpMulti", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x47: ["CloseMulti4"],
    0x48: ["MultiRow", ["unknown", SingleByteParam]],
    0x49: ["PlayFanfare", ["unknown", SingleHWordParam]],
    0x4a: ["PlayFanfare2", ["unknown", SingleHWordParam]],
    0x4b: ["WaitFanfare", ["unknown", SingleHWordParam]],
    0x4c: ["PlayCry", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x4d: ["WaitCry"],
    0x4e: ["Soundfr", ["unknown", SingleHWordParam]],
    0x4f: ["Cmd_4f"],
    0x50: ["PlaySound", ["unknown", SingleHWordParam]],
    0x51: ["Stop", ["unknown", SingleHWordParam]],
    0x52: ["Restart"],
    0x53: ["Cmd_53", ["unknown", SingleHWordParam]],
    0x54: ["SwitchMusic", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x55: ["StoreSayingLearned", ["unknown", SingleHWordParam]],
    0x56: ["Cmd_56", ["unknown", SingleByteParam], ["unknown", SingleByteParam]],
    0x57: ["PlaySound2", ["unknown", SingleHWordParam]],
    0x58: ["Cmd_58", ["unknown", SingleByteParam]],
    0x59: ["CheckSayingLearned", ["unknown", SingleHWordParam]],
    0x5a: ["SwithMusic2", ["unknown", SingleHWordParam]],
    0x5b: ["ActMicrophone"],
    0x5c: ["DeactMicrophone"],
    0x5d: ["Cmd_5d"],
    0x5e: ["ApplyMovement", ["unknown", SingleHWordParam], ["address", MovementPointerLabelParam]],
    0x5f: ["WaitMovement"],
    0x60: ["LockAll"],
    0x61: ["ReleaseAll"],
    0x62: ["Lock", ["unknown", SingleHWordParam]],
    0x63: ["Release", ["unknown", SingleHWordParam]],
    0x64: ["AddPeople", ["unknown", SingleHWordParam]],
    0x65: ["RemovePeople", ["unknown", SingleHWordParam]],
    0x66: ["LockCam", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x67: ["ZoomCam"],
    0x68: ["FacePlayer"],
    0x69: ["CheckSpritePosition", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x6a: ["CheckIdSpritePosition", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x6b: ["CheckPersonPosition", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x6c: ["ContinueFollow", ["unknown", SingleHWordParam], ["unknown", SingleByteParam]],
    0x6d: ["FollowHero", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x6e: ["StopFollowHero"],
    0x6f: ["GiveMoney", ["unknown", SingleWordParam]],
    0x70: ["TakeMoney", ["unknown", SingleWordParam]],
    0x71: ["CheckMoney", ["unknown", SingleHWordParam], ["unknown", SingleWordParam]],
    0x72: ["ShowMoney", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x73: ["HideMoney"],
    0x74: ["UpdateMoney"],
    0x75: ["ShowCoins", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x76: ["HideCoins"],
    0x77: ["UpdateCoins"],
    0x78: ["CheckCoins", ["unknown", SingleHWordParam]],
    0x79: ["GiveCoins", ["unknown", SingleHWordParam]],
    0x7a: ["TakeCoins", ["unknown", SingleHWordParam]],
    0x7b: ["TakeItem", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x7c: ["GiveItem", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x7d: ["CheckStoreItem", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x7e: ["CheckItem", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x7f: ["StoreItemTaken", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x80: ["StoreItemType", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x81: ["Cmd_81"],
    0x82: ["Cmd_82"],
    0x83: ["SendItemType1", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x84: ["Cmd_84", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x85: ["CheckUndergroundPcStatus", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x86: ["Cmd_86", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x87: ["SendItemType2", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x88: ["Cmd_88", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x89: ["Cmd_89", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x8a: ["Cmd_8a", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x8b: ["Cmd_8b", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x8c: ["Cmd_8c", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x8d: ["Cmd_8d", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x8e: ["Cmd_8e", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x8f: ["SendItemType3", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x90: ["Cmd_90", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x91: ["Cmd_91", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x92: ["Cmd_92", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x93: ["CheckPokemonParty", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x94: ["StorePokemonParty", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x95: ["SetPokemonPartyStored", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x96: ["GivePokemon", ["PkmnID", SingleHWordParam], ["Level", SingleHWordParam], ["Item", SingleHWordParam], ["ReturnValue", SingleHWordParam]],
    0x97: ["GiveEgg", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x98: ["Cmd_98", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x99: ["CheckMove", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x9a: ["CheckPlaceStored", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x9b: ["Cmd_9b", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x9c: ["Cmd_9c"],
    0x9d: ["Cmd_9d"],
    0x9e: ["Cmd_9e"],
    0x9f: ["Cmd_9f"],
    0xa0: ["Cmd_a0"],
    0xa1: ["CallEnd"],
    0xa2: ["Cmd_A2"],
    0xa3: ["Wfc_"],
    0xa4: ["Cmd_a4", ["unknown", SingleHWordParam]],
    0xa5: ["Interview"],
    0xa6: ["DressPokemon", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0xa7: ["DisplayDressedPokemon", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0xa8: ["DisplayContestPokemon", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0xa9: ["OpenBallCapsule"],
    0xaa: ["OpenSinnohMaps"],
    0xab: ["OpenPcFunction", ["unknown", SingleByteParam]],
    0xac: ["DrawUnion"],
    0xad: ["TrainerCaseUnion"],
    0xae: ["TradeUnion"],
    0xaf: ["RecordMixingUnion"],
    0xb0: ["EndGame"],
    0xb1: ["HallFameAnm"],
    0xb2: ["StoreWfcStatus", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0xb3: ["StartWfc", ["unknown", SingleHWordParam]],
    0xb4: ["ChooseStarter"],
    0xb5: ["BattleStarter"],
    0xb6: ["BattleId", ["unknown", SingleHWordParam]],
    0xb7: ["SetVarBattle", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0xb8: ["CheckBattleType", ["unknown", SingleHWordParam]],
    0xb9: ["SetVarBattle2", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0xba: ["ChoosePlayerName", ["unknown", SingleHWordParam]],
    0xbb: ["ChoosePokeNick", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0xbc: ["FadeScreen", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0xbd: ["ResetScreen"],
    0xbe: ["Warp", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0xbf: ["RockClimbAnimation", ["unknown", SingleHWordParam]],
    0xc0: ["SurfAnimation", ["unknown", SingleHWordParam]],
    0xc1: ["WaterfallAnimation", ["unknown", SingleHWordParam]],
    0xc2: ["FlyAnimation", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0xc3: ["FlashAnimation"],
    0xc4: ["DefogAnimation"],
    0xc5: ["PrepHmEffect", ["unknown", SingleHWordParam]],
    0xc6: ["Tuxedo"],
    0xc7: ["CheckBike", ["unknown", SingleHWordParam]],
    0xc8: ["RideBike", ["unknown", SingleByteParam]],
    0xc9: ["RideBike2", ["unknown", SingleByteParam]],
    0xca: ["CheckGivePokeHiroAnm", ["unknown", SingleHWordParam]],
    0xcb: ["GivePokeHiroAnm", ["unknown", SingleHWordParam]],
    0xcc: ["StopGivePokeHiroAnm"],
    0xcd: ["SetVarHero", ["unknown", SingleByteParam]],
    0xce: ["SetVariableRival", ["unknown", SingleByteParam]],
    0xcf: ["SetVarAlter", ["unknown", SingleByteParam]],
    0xd0: ["SetVarPoke", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0xd1: ["SetVarItem", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0xd2: ["SetVarItemNum", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0xd3: ["SetVarAtkItem", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0xd4: ["SetVarAtk", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0xd5: ["SetVariableNumber", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0xd6: ["SetVarPokeNick", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0xd7: ["SetVarObj", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0xd8: ["SetVarTrainer", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0xd9: ["SetVarWiFiSprite", ["unknown", SingleByteParam]],
    0xda: ["SetVarPokeStored", ["unknown", SingleByteParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleByteParam]],
    0xdb: ["SetVarStrHero", ["unknown", SingleByteParam]],
    0xdc: ["SetVarStrRival", ["unknown", SingleByteParam]],
    0xdd: ["SetVarStrAlter", ["unknown", SingleByteParam]],
    0xde: ["StoreStarter", ["unknown", SingleHWordParam]],
    0xdf: ["Cmd_df", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0xe0: ["SetVarItemStored", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0xe1: ["SetVarItemStored2", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0xe2: ["SetVarSwarmPoke", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0xe3: ["CheckSwarmPoke", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0xe4: ["StartBattleAnalysis", ["unknown", SingleHWordParam]],
    0xe5: ["TrainerBattle", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0xe6: ["EndtrainerBattle", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0xe7: ["TrainerBattleStored", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0xe8: ["TrainerBattleStored2", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0xe9: ["CheckTrainerStatus", ["unknown", SingleHWordParam]],
    0xea: ["StoreLeagueTrainer", ["unknown", SingleHWordParam]],
    0xeb: ["LostGoPc"],
    0xec: ["CheckTrainerLost", ["unknown", SingleHWordParam]],
    0xed: ["CheckTrainerStatus2", ["unknown", SingleHWordParam]],
    0xee: ["StorePokePartyDefeated", ["unknown", SingleHWordParam]],
    0xef: ["Cmd_ef"],
    0xf0: ["Cmd_f0"],
    0xf1: ["Cmd_f1", ["unknown", SingleWordParam]],
    0xf2: ["ChsFriend", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0xf3: ["WireBattleWait", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0xf4: ["Cmd_f4", ["unknown", SingleHWordParam]],
    0xf5: ["Cmd_f5", ["unknown", SingleHWordParam]],
    0xf6: ["Cmd_f6"],
    0xf7: ["Pokecontest"],
    0xf8: ["StartOvation", ["unknown", SingleHWordParam]],
    0xf9: ["StopOvation", ["unknown", SingleHWordParam]],
    0xfa: ["Cmd_fa", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0xfb: ["Cmd_fb", ["unknown", SingleHWordParam]],
    0xfc: ["Cmd_fc", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0xfd: ["SetvarOtherEntry", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0xfe: ["Cmd_fe", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0xff: ["SetvatHiroEntry", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x100: ["Cmd_100"],
    0x101: ["BlackFlashEffect"],
    0x102: ["SetvarTypeContest", ["unknown", SingleHWordParam]],
    0x103: ["SetvarRankContest", ["unknown", SingleHWordParam]],
    0x104: ["Cmd_104", ["unknown", SingleHWordParam]],
    0x105: ["Cmd_105", ["unknown", SingleHWordParam]],
    0x106: ["Cmd_106", ["unknown", SingleHWordParam]],
    0x107: ["Cmd_107", ["unknown", SingleHWordParam]],
    0x108: ["StorePeopleIdContest", ["unknown", SingleHWordParam]],
    0x109: ["Cmd_109", ["unknown", SingleHWordParam]],
    0x10a: ["SetvatHiroEntry2", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x10b: ["ActPeopleContest", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x10c: ["Cmd_10c", ["unknown", SingleHWordParam]],
    0x10d: ["Cmd_10d", ["unknown", SingleHWordParam]],
    0x10e: ["Cmd_10e", ["unknown", SingleHWordParam]],
    0x10f: ["Cmd_10f", ["unknown", SingleHWordParam]],
    0x110: ["Cmd_110", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x111: ["FlashContest", ["unknown", SingleHWordParam]],
    0x112: ["EndFlash"],
    0x113: ["CarpetAnm"],
    0x114: ["Cmd_114"],
    0x115: ["Cmd_115", ["unknown", SingleHWordParam]],
    0x116: ["ShowLnkCntRecord"],
    0x117: ["Cmd_117"],
    0x118: ["Cmd_118"],
    0x119: ["StorePokerus", ["unknown", SingleHWordParam]],
    0x11a: ["Cmd_11a", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x11b: ["WarpMapElevator", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x11c: ["CheckFloor", ["unknown", SingleHWordParam]],
    0x11d: ["StartLift", ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x11e: ["StoreSinPokemonSeen", ["unknown", SingleHWordParam]],
    0x11f: ["Cmd_11f", ["unknown", SingleHWordParam]],
    0x120: ["StoreTotPokemonSeen", ["unknown", SingleHWordParam]],
    0x121: ["StoreNatPokemonSeen", ["unknown", SingleHWordParam]],
    0x122: ["Cmd_122"],
    0x123: ["SetVarTextPokedex", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x124: ["WildBattle", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x125: ["StarterBattle", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x126: ["ExplanationBattle"],
    0x127: ["HoneyTreeBattle"],
    0x128: ["CheckIfHoneySlathered", ["unknown", SingleHWordParam]],
    0x129: ["RandomBattle"],
    0x12a: ["StopRandomBattle"],
    0x12b: ["WriteAutograph"],
    0x12c: ["StoreSaveData", ["unknown", SingleHWordParam]],
    0x12d: ["CheckSaveData", ["unknown", SingleHWordParam]],
    0x12e: ["CheckDress", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x12f: ["CheckContestWin", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x130: ["StorePhotoName", ["unknown", SingleHWordParam]],
    0x131: ["GivePoketch"],
    0x132: ["CheckPtchAppl", ["unknown", SingleHWordParam]],
    0x133: ["ActPktchAppl", ["unknown", SingleHWordParam]],
    0x134: ["StorePoketchApp", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x135: ["FriendBT", ["unknown", SingleHWordParam]],
    0x136: ["FriendBT2"],
    0x137: ["Cmd_137", ["unknown", SingleHWordParam]],
    0x138: ["Cmd_138", ["unknown", SingleHWordParam]],
    0x139: ["OpenUnionFunction2", ["unknown", SingleHWordParam]],
    0x13a: ["StartUnion"],
    0x13b: ["LinkClosed"],
    0x13c: ["SetUnionFunctionId", ["unknown", SingleHWordParam]],
    0x13d: ["CloseUnionFunction"],
    0x13e: ["CloseUnionFunction2"],
    0x13f: ["SetVarUnionMessage", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x140: ["StoreYourDecisionUnion", ["unknown", SingleHWordParam]],
    0x141: ["StoreOtherDecisionUnion", ["unknown", SingleHWordParam]],
    0x142: ["Cmd_142"],
    0x143: ["CheckOtherDecisionUnion", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x144: ["StoreYourDecisionUnion2", ["unknown", SingleHWordParam]],
    0x145: ["StoreOtherDecisionUnion2", ["unknown", SingleHWordParam]],
    0x146: ["CheckOtherDecisionUnion2", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x147: ["Pokemart", ["unknown", SingleHWordParam]],
    0x148: ["Pokemart1", ["unknown", SingleHWordParam]],
    0x149: ["Pokemart2", ["unknown", SingleHWordParam]],
    0x14a: ["Pokemart3", ["unknown", SingleHWordParam]],
    0x14b: ["DefeatGoPokecenter"],
    0x14c: ["ActBike", ["unknown", SingleHWordParam]],
    0x14d: ["CheckGender", ["unknown", SingleHWordParam]],
    0x14e: ["HealPokemon"],
    0x14f: ["DeactWireless"],
    0x150: ["DeleteEntry"],
    0x151: ["Cmd_151"],
    0x152: ["UndergroundId", ["unknown", SingleHWordParam]],
    0x153: ["UnionRoom"],
    0x154: ["OpenWiFiSprite"],
    0x155: ["StoreWiFiSprite", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x156: ["ActWiFiSprite", ["unknown", SingleHWordParam]],
    0x157: ["Cmd_157", ["unknown", SingleHWordParam]],
    0x158: ["ActivatePokedex"],
    0x159: ["Cmd_159", ["unknown", SingleHWordParam]],
    0x15a: ["GiveRunningShoes"],
    0x15b: ["CheckBadge", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x15c: ["EnableBadge", ["unknown", SingleHWordParam]],
    0x15d: ["DisableBadge", ["unknown", SingleHWordParam]],
    0x15e: ["Cmd_15e", ["unknown", SingleHWordParam]],
    0x15f: ["Cmd_15f"],
    0x160: ["CheckFollow", ["unknown", SingleHWordParam]],
    0x161: ["StartFollow"],
    0x162: ["StopFollow"],
    0x163: ["Cmd_163", ["unknown", SingleHWordParam]],
    0x164: ["Cmd_164"],
    0x165: ["Cmd_165"],
    0x166: ["Cmd_166", ["unknown", SingleHWordParam]],
    0x167: ["Cmd_167"],
    0x168: ["PrepareDoorAnimation", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleByteParam]],
    0x169: ["WaitAction", ["unknown", SingleByteParam]],
    0x16a: ["WaitClose", ["unknown", SingleByteParam]],
    0x16b: ["OpenDoor", ["unknown", SingleByteParam]],
    0x16c: ["CloseDoor", ["unknown", SingleByteParam]],
    0x16d: ["ActDcareFunction"],
    0x16e: ["StorePDCareNum", ["unknown", SingleHWordParam]],
    0x16f: ["PastoriaCityFunction"],
    0x170: ["PastoriaCityFunction2"],
    0x171: ["HearthromeGymFunction"],
    0x172: ["HearthromeGymFunction2"],
    0x173: ["CanalaveGymFunction"],
    0x174: ["VeilstoneGymFunction"],
    0x175: ["SunishoreGymFunction", ["unknown", SingleByteParam]],
    0x176: ["SunishoreGymFunction2", ["unknown", SingleByteParam]],
    0x177: ["CheckPartyNumber", ["unknown", SingleHWordParam]],
    0x178: ["OpenBerryPouch", ["unknown", SingleByteParam]],
    0x179: ["Cmd_179", ["unknown", SingleHWordParam]],
    0x17a: ["Cmd_17a", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x17b: ["Cmd_17b", ["unknown", SingleByteParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x17c: ["SetNaturePokemon", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x17d: ["Cmd_17d", ["unknown", SingleHWordParam]],
    0x17e: ["Cmd_17e", ["unknown", SingleHWordParam]],
    0x17f: ["Cmd_17f", ["unknown", SingleHWordParam]],
    0x180: ["Cmd_180", ["unknown", SingleHWordParam]],
    0x181: ["Cmd_181", ["unknown", SingleHWordParam]],
    0x182: ["CheckDeoxis", ["unknown", SingleHWordParam]],
    0x183: ["Cmd_183", ["unknown", SingleHWordParam]],
    0x184: ["Cmd_184", ["unknown", SingleHWordParam]],
    0x185: ["Cmd_185"],
    0x186: ["ChangeOwPosition", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x187: ["SetOwPosition", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x188: ["ChangeOwMovement", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x189: ["ReleaseOw", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x18a: ["SetTilePassable", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x18b: ["SetTileLocked", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x18c: ["SetOwsFollow", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x18d: ["ShowClockSave"],
    0x18e: ["HideClockSave"],
    0x18f: ["Cmd_18f", ["unknown", SingleHWordParam]],
    0x190: ["SetSaveData", ["unknown", SingleHWordParam]],
    0x191: ["ChsPokemenu"],
    0x192: ["ChsPokemenu2"],
    0x193: ["StorePokeMenu2", ["unknown", SingleHWordParam]],
    0x194: ["ChsPokeContest", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x195: ["StorePokeContest", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x196: ["ShowPokeInfo", ["unknown", SingleHWordParam]],
    0x197: ["StorePokeMove", ["unknown", SingleHWordParam]],
    0x198: ["CheckPokeEgg", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x199: ["ComparePokeNick", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x19a: ["CheckPartyNumberUnion", ["unknown", SingleHWordParam]],
    0x19b: ["CheckPokePartyHealth", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x19c: ["CheckPokePartyNumDCare", ["unknown", SingleHWordParam]],
    0x19d: ["CheckEggUnion", ["unknown", SingleHWordParam]],
    0x19e: ["UndergroundFunction", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x19f: ["UndergroundFunction2", ["unknown", SingleHWordParam]],
    0x1a0: ["UndergroundStart"],
    0x1a1: ["Cmd_1a1", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x1a2: ["Cmd_1a2", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x1a3: ["TakeMoneyDCare", ["unknown", SingleHWordParam]],
    0x1a4: ["TakePokemonDCare", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1a5: ["Cmd_1a5", ["unknown", SingleHWordParam]],
    0x1a6: ["Cmd_1a6"],
    0x1a7: ["Cmd_1a7"],
    0x1a8: ["ActEggDayCMan"],
    0x1a9: ["DeactEggDayCMan"],
    0x1aa: ["SetVarPokeAndMoneyDCare", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1ab: ["CheckMoneyDCare", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1ac: ["EggAnm"],
    0x1ad: ["Cmd_1a5", ["unknown", SingleHWordParam]],
    0x1ae: ["SetVarPokeAndLevelDCare", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1af: ["SetVarPokeChosenDCare", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1b0: ["GivePokeDCare", ["unknown", SingleHWordParam]],
    0x1b1: ["AddPeople2", ["unknown", SingleHWordParam]],
    0x1b2: ["RemovePeople2", ["unknown", SingleHWordParam]],
    0x1b3: ["MailBox"],
    0x1b4: ["CheckMail", ["unknown", SingleHWordParam]],
    0x1b5: ["ShowRecordList", ["unknown", SingleHWordParam]],
    0x1b6: ["CheckTime", ["unknown", SingleHWordParam]],
    0x1b7: ["CheckIdPlayer", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1b8: ["RandomTextStored", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1b9: ["StoreHappyPoke", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1ba: ["StoreHappyStatus", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1bb: ["Cmd_1bb", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1bc: ["SetVarDataDayCare", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1bd: ["CheckFacePosition", ["unknown", SingleHWordParam]],
    0x1be: ["StorePokeDCareLove", ["unknown", SingleHWordParam]],
    0x1bf: ["CheckStatusSolaceonEvent", ["unknown", SingleHWordParam]],
    0x1c0: ["CheckPokeParty", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1c1: ["CopyPokeHeight", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1c2: ["SetvarPokeHeight", ["unknown", SingleHWordParam]],
    0x1c3: ["ComparePokeHeight", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1c4: ["CheckPokeHeight", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1c5: ["ShowMoveInfo"],
    0x1c6: ["StorePokeDelete", ["unknown", SingleHWordParam]],
    0x1c7: ["StoreMoveDelete", ["unknown", SingleHWordParam]],
    0x1c8: ["CheckMoveNumDelete", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1c9: ["StoreDeleteMove", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1ca: ["CheckDeleteMove", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1cb: ["SetvarMoveDelete", ["unknown", SingleByteParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1cc: ["Cmd_1cc"],
    0x1cd: ["DeActivateLeader", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1ce: ["Cmd_1ce"],
    0x1cf: ["HmFunctions", ["unknown", Cmd1cfHWordParam]],
    0x1d0: ["FlashDuration", ["unknown", SingleByteParam]],
    0x1d1: ["DefogDuration", ["unknown", SingleByteParam]],
    0x1d2: ["GiveAccessories", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1d3: ["CheckAccessories", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1d4: ["Cmd_1d4", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1d5: ["GiveAccessories2", ["unknown", SingleHWordParam]],
    0x1d6: ["CheckAccessories2", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1d7: ["Berrypoffin", ["unknown", SingleHWordParam]],
    0x1d8: ["SetVarBTowerChs", ["unknown", SingleHWordParam]],
    0x1d9: ["BattleRmResult", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1da: ["ActivateBTower"],
    0x1db: ["StoreBTowerData", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1dc: ["CloseBTower"],
    0x1dd: ["CallBTowerFunctions", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1de: ["RandomTeamBTower", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1df: ["StorePrizeNumBTower", ["unknown", SingleHWordParam]],
    0x1e0: ["StorePeopleIdBTower", ["unknown", SingleHWordParam]],
    0x1e1: ["CallBTowerWireFunction", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1e2: ["StorePChosenWireBTower", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1e3: ["StoreRankDataWireBTower", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1e4: ["Cmd_1e4", ["unknown", SingleHWordParam]],
    0x1e5: ["RandomEvent", ["unknown", SingleHWordParam]],
    0x1e6: ["Cmd_1e6", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1e7: ["Cmd_1e7", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleByteParam]],
    0x1e8: ["CheckSinPokedex", ["unknown", SingleHWordParam]],
    0x1e9: ["CheckNatPokedex", ["unknown", SingleHWordParam]],
    0x1ea: ["ShowSinSheet"],
    0x1eb: ["ShowNatSheet"],
    0x1ec: ["Cmd_1ec"],
    0x1ed: ["StoreTrophyPokemon", ["unknown", SingleHWordParam]],
    0x1ee: ["Cmd_1ee", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1ef: ["Cmd_1ef", ["unknown", SingleHWordParam]],
    0x1f0: ["Cmd_1f0", ["unknown", SingleHWordParam]],
    0x1f1: ["CheckActFossil", ["unknown", SingleHWordParam]],
    0x1f2: ["Cmd_1f2"],
    0x1f3: ["Cmd_1f3"],
    0x1f4: ["CheckItemChosen", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1f5: ["CompareItemPokeFossil", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1f6: ["CheckPokeLevel", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1f7: ["CheckPokemonPoisoned", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1f8: ["PreWfc"],
    0x1f9: ["StoreFurniture", ["unknown", SingleHWordParam]],
    0x1fa: ["Cmd_1fa", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1fb: ["CopyFurniture", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1fc: ["Cmd_1fc", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1fd: ["Cmd_1fd", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x1fe: ["SetBCastleFunctionId", ["unknown", SingleByteParam]],
    0x1ff: ["BCastleFunctReturn", ["unknown", SingleByteParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleByteParam]],
    0x200: ["Cmd_200", ["unknown", SingleHWordParam]],
    0x201: ["CheckEffectHm", ["unknown", SingleHWordParam]],
    0x202: ["GreatMarshFunction", ["unknown", SingleByteParam]],
    0x203: ["BattlePokeColosseum", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x204: ["WarpLastElevator"],
    0x205: ["OpenGeoNet"],
    0x206: ["Gmbynocule"],
    0x207: ["StorePokeColosseumLost", ["unknown", SingleHWordParam]],
    0x208: ["Pokepic", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x209: ["Hidepic"],
    0x20a: ["Cmd_20a", ["unknown", SingleHWordParam]],
    0x20b: ["Cmd_20b"],
    0x20c: ["Cmd_20c"],
    0x20d: ["SetvarMtCoronet", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x20e: ["Cmd_20e"],
    0x20f: ["CheckQuicTrineCoordinates", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x210: ["SetvarQuickTrainCoordinates", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x211: ["MoveTrainAnm", ["unknown", SingleByteParam]],
    0x212: ["StorePokeNature", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x213: ["CheckPokeNature", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x214: ["RandomHallowes", ["unknown", SingleHWordParam]],
    0x215: ["StartAmity"],
    0x216: ["Cmd_216", ["unknown", SingleHWordParam]],
    0x217: ["Cmd_217", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x218: ["ChsRSPoke", ["unknown", SingleHWordParam]],
    0x219: ["SetSPoke", ["unknown", SingleHWordParam]],
    0x21a: ["CheckSPoke", ["unknown", SingleHWordParam]],
    0x21b: ["Cmd_21b"],
    0x21c: ["ActSwarmPoke", ["unknown", SingleByteParam]],
    0x21d: ["Cmd_21d", ["unknown", Cmd21dHWordParam]],
    0x21e: ["Cmd_21e"],
    0x21f: ["CheckMoveRemember", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x220: ["Cmd_220"],
    0x221: ["StorePokeRemember", ["unknown", SingleHWordParam]],
    0x222: ["Cmd_222"],
    0x223: ["StoreRememberMove", ["unknown", SingleHWordParam]],
    0x224: ["CopyMoveRemember", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x225: ["StoreMoveRemember", ["unknown", SingleHWordParam]],
    0x226: ["SetTradeId", ["unknown", SingleByteParam]],
    0x227: ["Cmd_227", ["unknown", SingleHWordParam]],
    0x228: ["CheckPokeTrade", ["unknown", SingleHWordParam]],
    0x229: ["TradeChsPoke", ["unknown", SingleHWordParam]],
    0x22a: ["StopTrade"],
    0x22b: ["Cmd_22b"],
    0x22c: ["CloseOakAssistantEvent"],
    0x22d: ["CheckNatPokedexStatus", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x22e: ["Cmd_22e", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x22f: ["CheckRibbonNumber", ["unknown", SingleHWordParam]],
    0x230: ["CheckRibbon", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x231: ["GiveRibbon", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x232: ["SetvarRibbon", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x233: ["CheckHappyRibbon", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x234: ["CheckPokemart", ["unknown", SingleHWordParam]],
    0x235: ["CheckFurniture", ["unknown", FurnitureHWordParam]],
    0x236: ["Cmd_236", ["unknown", SingleHWordParam]],
    0x237: ["CheckPhraseBoxInput", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x238: ["CheckStatusPhraseBox", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x239: ["Deciderules", ["unknown", SingleHWordParam]],
    0x23a: ["CheckFootStep", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x23b: ["HealpcAnm", ["unknown", SingleHWordParam]],
    0x23c: ["StoreElevatorDirection", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x23d: ["ShipAnm", ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x23e: ["Cmd_23e", ["unknown", Cmd23eHWordParam]],
    0x23f: ["Cmd_23f"],
    0x240: ["Cmd_240"],
    0x241: ["Cmd_241"],
    0x242: ["Cmd_242"],
    0x243: ["StorePhraseBox1W", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x244: ["StorePhraseBox2W", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x245: ["SetvarPhraseBox1W", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x246: ["StoreMtCoronet", ["unknown", SingleHWordParam]],
    0x247: ["CheckFirstPokeParty", ["unknown", SingleHWordParam]],
    0x248: ["CheckPokeType", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x249: ["CheckPhraseBoxImput2", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x24a: ["StoreUndTime", ["unknown", SingleHWordParam]],
    0x24b: ["PrpPcAnm", ["unknown", SingleByteParam]],
    0x24c: ["PcOpnAnm", ["unknown", SingleByteParam]],
    0x24d: ["PcClsAnm", ["unknown", SingleByteParam]],
    0x24e: ["CheckLotoNumber", ["unknown", SingleHWordParam]],
    0x24f: ["CompareLotoNumber", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x250: ["Cmd_250"],
    0x251: ["SetvarIdPokeBoxes", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x252: ["CheckBoxesNumber", ["unknown", SingleHWordParam]],
    0x253: ["StopGreatMarsh", ["unknown", SingleHWordParam]],
    0x254: ["CheckPokeCatchingShow", ["unknown", SingleHWordParam]],
    0x255: ["CloseCatchingShow"],
    0x256: ["CheckCatchingShowRecords", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x257: ["SprtSave"],
    0x258: ["RetSprtSave"],
    0x259: ["ElevLgAnm"],
    0x25a: ["CheckElevLgAnm", ["unknown", SingleHWordParam]],
    0x25b: ["ElevIrAnm"],
    0x25c: ["StopElevAnm"],
    0x25d: ["CheckElevPosition", ["unknown", SingleHWordParam]],
    0x25e: ["GalactAnm"],
    0x25f: ["GalactAnm2"],
    0x260: ["MainEvent", ["unknown", SingleHWordParam]],
    0x261: ["CheckAccessories3", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x262: ["ActDeoxisFormChange", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x263: ["ChangeFormDeoxis", ["unknown", SingleHWordParam]],
    0x264: ["CheckCoombeEvent", ["unknown", SingleHWordParam]],
    0x265: ["ActContestMap"],
    0x266: ["Cmd_266"],
    0x267: ["Pokecasino", ["unknown", SingleHWordParam]],
    0x268: ["CheckTime2", ["unknown", SingleHWordParam]],
    0x269: ["RegigigasAnm", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x26a: ["CresseliaAnm", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x26b: ["CheckRegi", ["unknown", SingleHWordParam]],
    0x26c: ["CheckMassage", ["unknown", SingleHWordParam]],
    0x26d: ["Unownmsgbox", ["unknown", SingleHWordParam]],
    0x26e: ["CheckPCatchingShow", ["unknown", SingleHWordParam]],
    0x26f: ["Cmd_26f"],
    0x270: ["ShayminAnm", ["unknown", SingleHWordParam], ["unknown", SingleByteParam]],
    0x271: ["Thanknameins", ["unknown", SingleHWordParam]],
    0x272: ["SetvarShaymin", ["unknown", SingleByteParam]],
    0x273: ["SetvarAccessories2", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x274: ["Cmd_274", ["unknown", SingleHWordParam], ["unknown", SingleWordParam]],
    0x275: ["CheckRecordCasino", ["unknown", SingleHWordParam]],
    0x276: ["CheckCoinsCasino", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x277: ["SrtRandomNum", ["unknown", SingleHWordParam]],
    0x278: ["CheckPokeLevel2", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x279: ["Cmd_279", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x27a: ["LgCstlView"],
    0x27b: ["Cmd_27b"],
    0x27c: ["SetvarAmityPokemon", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x27d: ["Cmd_27d", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x27e: ["CheckFirstTimeVShop", ["unknown", SingleHWordParam]],
    0x27f: ["Cmd_27f", ["unknown", SingleHWordParam]],
    0x280: ["SetvarIdNumber", ["unknown", SingleByteParam], ["unknown", SingleHWordParam], ["unknown", SingleByteParam], ["unknown", SingleByteParam]],
    0x281: ["Cmd_281", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x282: ["SetvarUnk", ["unknown", SingleHWordParam]],
    0x283: ["Cmd_283", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x284: ["CheckRuinManiac", ["unknown", SingleHWordParam]],
    0x285: ["CheckTurnBack", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x286: ["CheckUgPeopleNum", ["unknown", SingleHWordParam]],
    0x287: ["CheckUgFossilNum", ["unknown", SingleHWordParam]],
    0x288: ["CheckUgTrapsNum", ["unknown", SingleHWordParam]],
    0x289: ["CheckPoffinItem", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x28a: ["CheckPoffinCaseStatus", ["unknown", SingleHWordParam]],
    0x28b: ["UnkFunct2", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x28c: ["Pokepartypic", ["unknown", SingleHWordParam]],
    0x28d: ["ActLearning"],
    0x28e: ["SetSoundLearning", ["unknown", SingleHWordParam]],
    0x28f: ["CheckFirstTimeChampion", ["unknown", SingleHWordParam]],
    0x290: ["ChoosePokeDCare", ["unknown", SingleHWordParam]],
    0x291: ["StorePokeDCare", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x292: ["Cmd_292", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x293: ["CheckMasterRank", ["unknown", SingleHWordParam]],
    0x294: ["ShowBPntsbox", ["unknown", SingleByteParam], ["unknown", SingleByteParam]],
    0x295: ["HideBPointsbox"],
    0x296: ["UpdateBPointsbox"],
    0x297: ["Cmd_297", ["unknown", SingleHWordParam]],
    0x298: ["Cmd_298", ["unknown", SingleHWordParam]],
    0x299: ["TakeBPoints", ["unknown", SingleHWordParam]],
    0x29a: ["CheckBPoints", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x29b: ["Cmd_29b", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x29c: ["Cmd_29c", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x29d: ["ChoiceMulti", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x29e: ["HmEffect", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x29f: ["CmrBmpEffect", ["unknown", SingleHWordParam]],
    0x2a0: ["DoubleBattle", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2a1: ["Applymovement2", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2a2: ["Cmd_2a2", ["unknown", SingleHWordParam]],
    0x2a3: ["StoreActHeroFriendCode", ["unknown", SingleHWordParam]],
    0x2a4: ["StoreActOtherFriendCode", ["unknown", SingleHWordParam]],
    0x2a5: ["TradeChosenPoke"],
    0x2a6: ["ChsPrizeCasino", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2a7: ["CheckPlate", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2a8: ["TakeCoinsCasino", ["unknown", SingleHWordParam]],
    0x2a9: ["CheckCoinsCasino2", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2aa: ["ComparePhraseBoxImput", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2ab: ["StoreSealNum", ["unknown", SingleHWordParam]],
    0x2ac: ["ActMisteryGift"],
    0x2ad: ["CheckFollowBattle", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2ae: ["Cmd_2ae", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2af: ["Cmd_2af", ["unknown", SingleHWordParam]],
    0x2b0: ["Cmd_2b0"],
    0x2b1: ["Cmd_2b1"],
    0x2b2: ["Cmd_2b2"],
    0x2b3: ["SetvarSealRandom", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x2b4: ["Cmd_2b4"],
    0x2b5: ["DarkraiFunction", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2b6: ["Cmd_2b6", ["unknown", SingleHWordParam], ["unknown", SingleByteParam]],
    0x2b7: ["StorePokeNumParty", ["unknown", SingleHWordParam]],
    0x2b8: ["StorePokeNickname", ["unknown", SingleHWordParam]],
    0x2b9: ["CloseMultiUnion"],
    0x2ba: ["CheckBattleUnion", ["unknown", SingleHWordParam]],
    0x2bb: ["Cmd_2bb"],
    0x2bc: ["CheckWildBattle2", ["unknown", SingleHWordParam]],
    0x2bd: ["WildBattle2", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2be: ["StoreTrainerCardStar", ["unknown", SingleHWordParam]],
    0x2bf: ["Bikeride"],
    0x2c0: ["Cmd_2c0", ["unknown", SingleHWordParam]],
    0x2c1: ["ShowSavebox"],
    0x2c2: ["HideSavebox"],
    0x2c3: ["Cmd_2c3", ["unknown", SingleByteParam]],
    0x2c4: ["ShowBTowerSome", ["unknown", SingleByteParam]],
    0x2c5: ["DeleteSavesBFactory", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2c6: ["SpinTradeUnion"],
    0x2c7: ["CheckVersionGame", ["unknown", SingleHWordParam]],
    0x2c8: ["ShowBArcadeRecors", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2c9: ["EternaGymAnm"],
    0x2ca: ["FlorarClckAnm"],
    0x2cb: ["CheckPokeParty2", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2cc: ["CheckPokeCastle", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2cd: ["ActTeamGalacticEvents", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x2ce: ["Cmd_2ce", ["unknown", SingleByteParam]],
    0x2cf: ["ChooseWirePokeBCastle", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2d0: ["Cmd_2d0", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2d1: ["Cmd_2d1", ["unknown", SingleHWordParam]],
    0x2d2: ["Cmd_2d2", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2d3: ["Cmd_2d3", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2d4: ["Cmd_2d4", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2d5: ["Cmd_2d5", ["unknown", SingleHWordParam]],
    0x2d6: ["Cmd_2d6"],
    0x2d7: ["Cmd_2d7", ["unknown", SingleHWordParam]],
    0x2d8: ["Cmd_2d8", ["unknown", SingleByteParam]],
    0x2d9: ["Cmd_2d9", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2da: ["Cmd_2da", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2db: ["Cmd_2db", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2dc: ["Cmd_2dc", ["unknown", SingleHWordParam]],
    0x2dd: ["Cmd_2dd", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2de: ["Cmd_2de", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2df: ["Cmd_2df", ["unknown", SingleHWordParam]],
    0x2e0: ["Cmd_2e0", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2e1: ["Cmd_2e1", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2e2: ["Cmd_2e2"],
    0x2e3: ["Cmd_2e3"],
    0x2e4: ["Cmd_2e4", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2e5: ["Cmd_2e5", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2e6: ["Cmd_2e6", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2e7: ["Cmd_2e7", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2e8: ["Cmd_2e8", ["unknown", SingleHWordParam]],
    0x2e9: ["Cmd_2e9", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2ea: ["Cmd_2ea", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2eb: ["Cmd_2eb", ["unknown", SingleHWordParam]],
    0x2ec: ["Cmd_2ec", ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2ed: ["Cmd_2ed"],
    0x2ee: ["Cmd_2ee", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    
    0x2f0: ["Cmd_2f0"],

    0x2f2: ["Cmd_2f2"],
    0x2f3: ["Cmd_2f3", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x2f4: ["Cmd_2f4", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2f5: ["Cmd_2f5", ["unknown", SingleByteParam], ["unknown", SingleWordParam], ["unknown", SingleByteParam], ["unknown", SingleByteParam]],
    0x2f6: ["Cmd_2f6", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2f7: ["Cmd_2f7", ["unknown", SingleHWordParam]],
    0x2f8: ["Cmd_2f8"],
    0x2f9: ["Cmd_2f9", ["unknown", SingleHWordParam]],
    0x2fa: ["Cmd_2fa", ["unknown", SingleHWordParam]],
    0x2fb: ["Cmd_2fb"],
    0x2fc: ["Cmd_2fc", ["unknown", SingleHWordParam]],
    0x2fd: ["Cmd_2fd", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x2fe: ["Cmd_2fe", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x2ff: ["Cmd_2ff", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x300: ["Cmd_300"],
    0x301: ["Cmd_301", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x302: ["Cmd_302", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x303: ["Cmd_303", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x304: ["Cmd_304", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x305: ["Cmd_305", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x306: ["Cmd_306", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x307: ["Cmd_307", ["unknown", SingleHWordParam]],
    0x308: ["Cmd_308", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x309: ["Cmd_309"],
    0x30a: ["Cmd_30a", ["unknown", SingleHWordParam]],
    0x30b: ["Cmd_30b"],
    0x30c: ["Cmd_30c"],
    0x30d: ["Cmd_30d", ["unknown", SingleHWordParam]],
    0x30e: ["Cmd_30e", ["unknown", SingleHWordParam]],
    0x30f: ["Cmd_30f", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x310: ["Cmd_310"],
    0x311: ["Cmd_311", ["unknown", SingleHWordParam]],
    0x312: ["Cmd_312", ["unknown", SingleHWordParam]],
    0x313: ["Cmd_313", ["unknown", SingleHWordParam]],
    0x314: ["Cmd_314", ["unknown", SingleHWordParam]],
    0x315: ["Cmd_315", ["unknown", SingleHWordParam]],
    0x316: ["Cmd_316"],
    0x317: ["Cmd_317", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x318: ["Cmd_318", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x319: ["Cmd_319", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x31a: ["Cmd_31a", ["unknown", SingleHWordParam]],
    0x31b: ["Cmd_31b", ["unknown", SingleHWordParam]],
    0x31c: ["Cmd_31c", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x31d: ["Cmd_31d", ["unknown", SingleHWordParam]],
    0x31e: ["Cmd_31e", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x31f: ["Cmd_31f"],
    0x320: ["Cmd_320"],
    0x321: ["Cmd_321", ["unknown", SingleHWordParam]],
    0x322: ["Cmd_322"],
    0x323: ["Cmd_323", ["unknown", SingleHWordParam]],
    0x324: ["Cmd_324", ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleByteParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x325: ["Cmd_325", ["unknown", SingleHWordParam]],
    0x326: ["Cmd_326", ["unknown", SingleHWordParam]],
    0x327: ["Cmd_327", ["unknown", SingleHWordParam]],
    0x328: ["Cmd_328", ["unknown", SingleHWordParam]],
    0x329: ["Cmd_329", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x32a: ["Cmd_32a", ["unknown", SingleHWordParam]],
    0x32b: ["Cmd_32b", ["unknown", SingleHWordParam]],
    0x32c: ["Cmd_32c", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x32d: ["Cmd_32d"],
    0x32e: ["Cmd_32e"],
    0x32f: ["Cmd_32f", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x330: ["Cmd_330"],
    0x331: ["Cmd_331"],
    0x332: ["Cmd_332"],
    0x333: ["Cmd_333", ["unknown", SingleHWordParam]],
    0x334: ["Cmd_334", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x335: ["Cmd_335", ["unknown", SingleHWordParam], ["unknown", SingleWordParam]],
    0x336: ["Cmd_336", ["unknown", SingleHWordParam]],
    0x337: ["Cmd_337", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x338: ["Cmd_338"],
    0x339: ["Cmd_339"],
    0x33a: ["Cmd_33a", ["unknown", SingleByteParam]],
    0x33b: ["Cmd_33b", ["unknown", SingleByteParam]],
    0x33c: ["Cmd_33c", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x33d: ["Cmd_33d", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x33e: ["Cmd_33e", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x33f: ["Cmd_33f", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x340: ["Cmd_340", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x341: ["Cmd_341", ["unknown", SingleHWordParam], ["unknown", SingleHWordParam]],
    0x342: ["Cmd_342", ["unknown", SingleByteParam]],
    0x343: ["Cmd_343", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x344: ["Cmd_344", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x345: ["Cmd_345", ["unknown", SingleByteParam], ["unknown", SingleHWordParam]],
    0x346: ["Cmd_346", ["unknown", SingleByteParam]],
    0x347: ["Cmd_347", ["unknown", SingleByteParam], ["unknown", SingleByteParam]],
}

music_command_enders = [
	"End",
    "Jump",
    "Return",
    #"Cmd_2f5",
]

def create_music_command_classes(debug=False):
    klasses = []
    for (byte, cmd) in music_commands.items():
        cmd_name = cmd[0].replace(" ", "_")
        params = {
            "id": byte,
            "size": 2,
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

		
movement_commands = {
    0x0: ["SeeUp", ["unknown", SingleHWordParam]],
    0x1: ["SeeDown", ["unknown", SingleHWordParam]],
    0x2: ["SeeLeft", ["unknown", SingleHWordParam]],
    0x3: ["SeeRight", ["unknown", SingleHWordParam]],
    0x4: ["WalkUpSlow", ["unknown", SingleHWordParam]],
    0x5: ["WalkDownSlow", ["unknown", SingleHWordParam]],
    0x6: ["WalkLeftSlow", ["unknown", SingleHWordParam]],
    0x7: ["WalkRightSlow", ["unknown", SingleHWordParam]],
    0x8: ["WalkUp", ["unknown", SingleHWordParam]],
    0x9: ["WalkDown", ["unknown", SingleHWordParam]],
    0xa: ["WalkLeft", ["unknown", SingleHWordParam]],
    0xb: ["WalkRight", ["unknown", SingleHWordParam]],
    0xc: ["WalkUpFast", ["unknown", SingleHWordParam]],
    0xd: ["WalkDownFast", ["unknown", SingleHWordParam]],
    0xe: ["WalkLeftFast", ["unknown", SingleHWordParam]],
    0xf: ["WalkRightFast", ["unknown", SingleHWordParam]],
    0x10: ["WalkUpVeryFast ", ["unknown", SingleHWordParam]],
    0x11: ["WalkDownVeryFast ", ["unknown", SingleHWordParam]],
    0x12: ["WalkLeftVeryFast", ["unknown", SingleHWordParam]],
    0x13: ["WalkRightVeryFast", ["unknown", SingleHWordParam]],
    0x14: ["RunUp", ["unknown", SingleHWordParam]],
    0x15: ["RunDown", ["unknown", SingleHWordParam]],
    0x16: ["RunLeft", ["unknown", SingleHWordParam]],
    0x17: ["RunRight", ["unknown", SingleHWordParam]],
    0x18: ["MoveUpSlow", ["unknown", SingleHWordParam]],
    0x19: ["MoveDownSlow", ["unknown", SingleHWordParam]],
    0x1a: ["MoveLeftSlow", ["unknown", SingleHWordParam]],
    0x1b: ["MoveRightSlow", ["unknown", SingleHWordParam]],
    0x1c: ["MoveUp", ["unknown", SingleHWordParam]],
    0x1d: ["MoveDown", ["unknown", SingleHWordParam]],
    0x1e: ["MoveLeft", ["unknown", SingleHWordParam]],
    0x1f: ["MoveRight", ["unknown", SingleHWordParam]],
    0x20: ["MoveUpFast", ["unknown", SingleHWordParam]],
    0x21: ["MoveDownFast", ["unknown", SingleHWordParam]],
    0x22: ["MoveLeftFast", ["unknown", SingleHWordParam]],
    0x23: ["MoveRightFast", ["unknown", SingleHWordParam]],
    0x24: ["MoveUpVeryFast", ["unknown", SingleHWordParam]],
    0x25: ["MoveDownVeryFast", ["unknown", SingleHWordParam]],
    0x26: ["MoveLeftVeryFast", ["unknown", SingleHWordParam]],
    0x27: ["MoveRightVeryFast", ["unknown", SingleHWordParam]],
    0x28: ["Move_28", ["unknown", SingleHWordParam]],
    0x29: ["Move_29", ["unknown", SingleHWordParam]],
    0x2a: ["Move_2a", ["unknown", SingleHWordParam]],
    0x2b: ["Move_2b", ["unknown", SingleHWordParam]],
    0x2c: ["JumpFacingUpSlow", ["unknown", SingleHWordParam]],
    0x2d: ["JumpFacingDownSlow", ["unknown", SingleHWordParam]],
    0x2e: ["JumpFacingLeftSlow", ["unknown", SingleHWordParam]],
    0x2f: ["JumpFacingRightSlow", ["unknown", SingleHWordParam]],
    0x30: ["JumpFacingUp", ["unknown", SingleHWordParam]],
    0x31: ["JumpFacingDown", ["unknown", SingleHWordParam]],
    0x32: ["JumpFacingLeft", ["unknown", SingleHWordParam]],
    0x33: ["JumpFacingRight", ["unknown", SingleHWordParam]],
    0x34: ["JumpUpOne", ["unknown", SingleHWordParam]],
    0x35: ["JumpDownOne", ["unknown", SingleHWordParam]],
    0x36: ["JumpLeftOne", ["unknown", SingleHWordParam]],
    0x37: ["JumpRightOne", ["unknown", SingleHWordParam]],
    0x38: ["JumpUpTwo", ["unknown", SingleHWordParam]],
    0x39: ["JumpDownTwo", ["unknown", SingleHWordParam]],
    0x3a: ["JumpLeftTwo", ["unknown", SingleHWordParam]],
    0x3b: ["JumpRightTwo", ["unknown", SingleHWordParam]],
    0x3c: ["Move_3c", ["unknown", SingleHWordParam]],
    0x3d: ["Move_3d", ["unknown", SingleHWordParam]],
    0x3e: ["Move_3e", ["unknown", SingleHWordParam]],
    0x3f: ["Move_3f", ["unknown", SingleHWordParam]],
    0x40: ["Move_40", ["unknown", SingleHWordParam]],
    0x41: ["Move_41", ["unknown", SingleHWordParam]],
    0x42: ["Move_42", ["unknown", SingleHWordParam]],
    0x43: ["Move_43", ["unknown", SingleHWordParam]],
    0x44: ["Move_44", ["unknown", SingleHWordParam]],
    0x45: ["WaitDisappear", ["unknown", SingleHWordParam]],
    0x46: ["Move_46", ["unknown", SingleHWordParam]],
    0x47: ["Move_47", ["unknown", SingleHWordParam]],
    0x48: ["Move_48", ["unknown", SingleHWordParam]],
    0x49: ["Move_49", ["unknown", SingleHWordParam]],
    0x4a: ["Move_4a", ["unknown", SingleHWordParam]],
    0x4b: ["Exclamation", ["unknown", SingleHWordParam]],
    0x4c: ["PauseWalkUpSlow", ["unknown", SingleHWordParam]],
    0x4d: ["PauseWalkDownSlow", ["unknown", SingleHWordParam]],
    0x4e: ["PauseWalkLeftSlow", ["unknown", SingleHWordParam]],
    0x4f: ["PauseWalkRightSlow", ["unknown", SingleHWordParam]],
    0x50: ["PauseWalkUp", ["unknown", SingleHWordParam]],
    0x51: ["PauseWalkDown", ["unknown", SingleHWordParam]],
    0x52: ["PauseWalkLeft", ["unknown", SingleHWordParam]],
    0x53: ["PauseWalkRight", ["unknown", SingleHWordParam]],
    0x54: ["PauseHoverUp", ["unknown", SingleHWordParam]],
    0x55: ["PauseHoverDown", ["unknown", SingleHWordParam]],
    0x56: ["PauseHoverLeft", ["unknown", SingleHWordParam]],
    0x57: ["PauseHoverRight", ["unknown", SingleHWordParam]],
    0x58: ["PauseReverseUp", ["unknown", SingleHWordParam]],
    0x59: ["PauseReverseDown", ["unknown", SingleHWordParam]],
    0x5a: ["PauseReverseLeft", ["unknown", SingleHWordParam]],
    0x5b: ["PauseReverseRight", ["unknown", SingleHWordParam]],
    0x5c: ["PauseJumpLeftOne", ["unknown", SingleHWordParam]],
    0x5d: ["PauseJumpRightOne", ["unknown", SingleHWordParam]],
    0x5e: ["PauseJumpLeftTwo", ["unknown", SingleHWordParam]],
    0x5f: ["PauseJumpRightTwo", ["unknown", SingleHWordParam]],
    0x60: ["Move_60", ["unknown", SingleHWordParam]],
    
    0x64: ["Move_64", ["unknown", SingleHWordParam]],
    0x65: ["Move_65", ["unknown", SingleHWordParam]],
    0x66: ["Move_66", ["unknown", SingleHWordParam]],
    
    0x68: ["Move_68", ["unknown", SingleHWordParam]],
    
    0x6a: ["Move_6a", ["unknown", SingleHWordParam]],
    0x6b: ["Move_6b", ["unknown", SingleHWordParam]],
    
    0x75: ["Move_75", ["unknown", SingleHWordParam]],
    0x76: ["Move_76", ["unknown", SingleHWordParam]],
    0x77: ["Move_77", ["unknown", SingleHWordParam]],
    
    0x99: ["Move_99", ["unknown", SingleHWordParam]],
    
    0xfe: ["EndMovement", ["unknown", SingleHWordParam]],
}

movement_command_enders = [
	"EndMovement",
]

def create_movement_command_classes(debug=False):
    klasses = []
    for (byte, cmd) in movement_commands.items():
        cmd_name = cmd[0].replace(" ", "_")
        params = {
            "id": byte,
            "size": 2,
            "end": cmd[0] in movement_command_enders,
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

movement_classes = create_movement_command_classes()


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
			cmd = fin.readUInt16()

			class_ = self.get_sound_class(cmd)(fin, address=self.address, channel=self.channel)

			asm = class_.to_asm()

			adress_offset = 0
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
				elif (param['class'] == MovementPointerLabelParam):
					label_address = class_.params[key].parsed_address
					label = 'Movement_%x' % (
						label_address
					)
					self.labels += [generate_label_asm(label, label_address)]
					asm = asm.replace(
						'$%x' % (label_address),
						label
					)
				elif (param['class'] == FurnitureHWordParam):
					print("FurnitureHWordParam.size: " + hex(class_.params[key].size))
					adress_offset = class_.params[key].size - 2
				elif (param['class'] == Cmd23eHWordParam):
					print("Cmd23eHWordParam.size: " + hex(class_.params[key].size))
					adress_offset = class_.params[key].size - 2
				elif (param['class'] == Cmd21dHWordParam):
					print("Cmd21dHWordParam.size: " + hex(class_.params[key].size))
					adress_offset = class_.params[key].size - 2
				elif (param['class'] == Cmd1cfHWordParam):
					print("Cmd1cfHWordParam.size: " + hex(class_.params[key].size))
					adress_offset = class_.params[key].size - 1


			self.output += [(self.address, '\t' + asm, self.address + class_.size + adress_offset)]
			self.address += class_.size + adress_offset

			if(cmd == 0x235):
				print(hex(cmd) + ": " + hex(class_.size))
            
			done = class_.end
			# infinite loops are enders
			if class_.macro_name == 'loopchannel':
				if class_.params[0].byte == 0:
					done = True

		self.output += [(self.address, '@ %x\n' % self.address, self.address)]

		# parse any other branches too
		self.labels = list(set(self.labels))
		for address, asm, last_address in self.labels:
			if (
				#address >= self.address
				#and (address, asm, last_address) not in self.used_labels
				(address, asm, last_address) not in self.used_labels
			):

				self.used_labels += [(address, asm, last_address)]
				#print(asm)
				if asm.find("Movement") == -1:
					sub = Channel(
						fin,
						address=address,
						channel=self.channel,
						base_label=self.base_label,
						label=asm.split(':')[0],
						used_labels=self.used_labels,
						sfx=self.sfx,
					)
				else:
					sub = MovementChannel(
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


class MovementChannel:
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
			cmd = fin.readUInt16()

			class_ = self.get_movement_class(cmd)(fin, address=self.address, channel=self.channel)

			asm = class_.to_asm()

			# label any jumps or calls
			for key, param in class_.param_types.items():
				if param['class'] == PointerLabelParam:
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
				elif param['class'] == CallPointerLabelParam:
					label_address = class_.params[key].parsed_address
					label = 'Function_%x' % (
						label_address
					)
					self.labels += [generate_label_asm(label, label_address)]
					asm = asm.replace(
						'$%x' % (label_address),
						label
					)
				elif (param['class'] == MovementPointerLabelParam):
					label_address = class_.params[key].parsed_address
					label = 'Movement_%x' % (
						label_address
					)
					self.labels += [generate_label_asm(label, label_address)]
					asm = asm.replace(
						'$%x' % (label_address),
						label
					)

			self.output += [(self.address, '\t' + asm, self.address + class_.size)]
			self.address += class_.size

			done = class_.end
			#done = True # ToDo remove
			# infinite loops are enders
			if class_.macro_name == 'loopchannel':
				if class_.params[0].byte == 0:
					done = True

		self.output += [(self.address, '@ %x\n' % self.address, self.address)]

		# parse any other branches too
		self.labels = list(set(self.labels))
		for address, asm, last_address in self.labels:
			if (
				address >= self.address
				and (address, asm, last_address) not in self.used_labels
                and asm.find("Movement") == -1
			):

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

	def get_movement_class(self, i):
		for class_ in movement_classes:
			if class_.id == i:
				return class_
		raise NameError('Unknown MovementCmd: ' + hex(i))
        
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
		current_channel = 0
		while 1:
			fin.seek(self.address)
			word = fin.readUInt32()
			if(word & 0xffff) == 0xfd13:
				self.num_channels = current_channel
				break
			address = word + fin.tell()
			self.address += 4
			channel = Channel(fin, address, current_channel, self.base_label, self.sfx, label='%s_%d' % (self.base_label, current_channel+1))
			self.channels += [(current_channel, channel)]
			self.labels += channel.labels
			current_channel += 1


	def make_header(self):
		asms = []
        
		text = ".include \"source/macros_asm.s\""
		text += '\n\n'
		#text += '.text\n\n'
		asms += [(-2, text, 0)]

		for i, (num, channel) in enumerate(self.channels):
			address = self.start_address + i * 4
			text = '\tscript %s_%d' % (self.base_label, num+1)
			asms += [(address, text, address + 4)]
		address = self.start_address + (self.num_channels) * 4
		text = '\t.hword 0xfd13'
		asms += [(address, text, address + 2)]
		self.address += 2

		comment_text = '@ %x\n' % self.address
		asms += [(self.address, comment_text, self.address)]
		return asms


	def parse(self, fin):
		self.parse_header(fin)

		asms = []

		asms += [generate_label_asm(self.base_label, self.start_address)]
		asms += self.make_header()

		for num, channel in self.channels:
			asms += channel.output

		asms = sort_asms(asms)
		_, _, self.last_address = asms[-1]
		asms += [(self.last_address,'@ %x\n' % self.last_address, self.last_address)]

		self.asms += asms


	def to_asm(self, fin, labels=[]):
		"""insert outside labels here"""
		asms = self.asms

		# Incbin trailing commands that didnt get picked up
		asms = insert_asm_incbins(asms, fin)

		for label in self.labels + labels:
			if self.start_address <= label[0] < self.last_address:
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
		#sound_at = read_bank_address_pointer(origin + i * 3)
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
				#sound.asms += [(next_address, 'end', next_address)]

		output = sound.to_asm(fin, labels) + '\n'
		#filename = name.lower() + '.asm'
		#filename = '.s'
		outputs += [('.s', output)]
	size = os.path.getsize(filename)
	#sounds[0].asms += [(size, 'end' + str(size), size)]

	return outputs
        
        

def export_sounds(fin, origin, names, path, output_folder, base_label='Sound_'):
	for filename, output in dump_sounds(fin, origin, names, base_label):
		head, tail = os.path.split(path)
		#with open(os.path.join(path.replace(".bin", "") + filename), 'w') as out:
		with open(os.path.join(output_folder + tail.replace(".bin", ".s")), 'w') as out:
			out.write(output)
        
# code from PPRE/script.py

class PkmnScript(object):
    """
    GBC disassembler
    """

    def __init__(self, config):
        """
        Setup the class instance.
        """
        self.config = config
        
        self.offsets = []
        self.scripts = []
        
        self.script_start = 1  # First script ID. Scripts are 1-indexed
        self.function_start = 1  # First function ID


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
        fin.seek(offset)
        num = fin.readUInt32()
        while 1:
            if (num & 0xffff) != 0xfd13:
                abs_offset = num+fin.tell()
                self.offsets.append(abs_offset)
            else:
                break
            offset += 4
            if (offset+4) > filesize:
                return (output, offset)
            fin.seek(offset)
            num = fin.readUInt32()
        headerEnd = offset - 3
        
        output = "offsets: "
        for i in self.offsets:
            output += hex(i) + " "
        print(output)
        
        
        
        #filenameout = filename.replace(".bin", "_01.script")
        #if not os.path.exists(os.path.dirname(filenameout)):
        #    os.makedirs(os.path.dirname(filenameout))        
        #fout = open(filenameout, "rb+")
        #fout = (BinaryIO.reader(fout.read())).adapter(fout)
        #fout.seek(0)
        
        #offset = headerEnd
        #fin.seek(0)
        #offset2 = fin.readUInt32() + headerEnd
        #while offset < offset2:
        #    offset += 1
        #    fin.seek(offset)
        #    num = fin.readUInt8()
        #    fout.write(bytearray([num]))
        
        song_names = [
            '']
        
        export_sounds(fin, 0x0, song_names, filename, output_folder, 'Script')
    
        return (output, offset)

        
def get_script_macros():
    output = "test\n"
    
    for (byte, cmd) in music_commands.items():
        cmd_name = cmd[0].replace(" ", "_")
        
        output += ".macro " + cmd_name + "\n"
        output += ".hword " + hex(byte) + "\n"
        
        params = {
            "id": byte,
            "size": 2,
            "end": cmd[0] in music_command_enders,
            "macro_name": cmd[0]
        }
        params["param_types"] = {}
        if len(cmd) > 1:
            param_types = cmd[1:]
            for (i, each) in enumerate(param_types):
                thing = {"name": each[0], "class": each[1]}
                params["param_types"][i] = thing
                params["size"] += thing["class"].size
                if thing["class"].size == 1:
                    output += ".byte"
                elif thing["class"].size == 2:
                    output += ".hword"
                elif thing["class"].size == 4:
                    output += ".word"
                output += " " + "@ " + each[0] + "\n"
        klass_name = cmd_name+"Command"
        klass = classobj(klass_name, (Command,), params)
        globals()[klass_name] = klass
        
        output += ".endm\n\n"

    with open("script_macros_AUTO.s", 'w') as out:
        out.write(output)


if __name__ == "__main__":
    conf = configuration.Config()
    script = PkmnScript(conf)
    
    filename = sys.argv[1]
    
    if filename == "-d":
        get_script_macros()
    else:
        output_folder = sys.argv[2]
        if not os.path.exists(os.path.dirname(output_folder)):
            os.makedirs(os.path.dirname(output_folder))

        script.extract_scripts(filename, output_folder)[0]
