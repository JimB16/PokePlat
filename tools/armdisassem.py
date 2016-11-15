# -*- coding: utf-8 -*-

import os
import sys
import time
from ctypes import c_int8
import operator
from new import classobj
from filehandler import FileHandler


input_file = FileHandler()


ARMFunctions = 0
ThumbFunctions = 0
InstructionSize = 0
UnknownSize = 0
def IncARMFunctions():
    global ARMFunctions
    ARMFunctions += 1
def IncThumbFunctions():
    global ThumbFunctions
    ThumbFunctions += 1
def IncInstructionSize(i):
    global InstructionSize
    InstructionSize += i
def IncUnknownSize(i):
    global UnknownSize
    UnknownSize += i

MaximumInstrMain = 4*30
MaximumInstrBranch = 4*100


all_labels = {0:'test'}
all_values = []
all_reljumps = []

def add_value(adr):
    #l = {'address':adr}
    all_values.append(adr)

def add_reljumps(adr, str):
    all_reljumps.append((adr, str))
    

def line_has_label(line):
    """returns True if the line has an asm label"""
    if not isinstance(line, str):
        raise Exception, "can't check this type of object"
    line = line.rstrip(" ").lstrip(" ")
    line = remove_quoted_text(line)
    if ";" in line:
        line = line.split(";")[0]
    if 0 <= len(line) <= 1:
        return False
    if ":" not in line:
        return False
    if line[0] == ";":
        return False
    if line[0] == "\"":
        return False
    return True

def remove_quoted_text(line):
    """get rid of content inside quotes
    and also removes the quotes from the input string"""
    while line.count("\"") % 2 == 0 and line.count("\"") > 0:
        first = line.find("\"")
        second = line.find("\"", first+1)
        line = line[0:first] + line[second+1:]
    while line.count("\'") % 2 == 0 and line.count("'") > 0:
        first = line.find("\'")
        second = line.find("\'", first+1)
        line = line[0:first] + line[second+1:]
    return line

def get_label_for(address):
    """
    returns a label assigned to a particular address
    """
    global all_labels

    #if address == None:
    #    return None
    #if type(address) != int:
    #    raise Exception("get_label_for requires an integer address, got: " + str(type(address)))

    #for thing in all_labels:
    #    if thing["address"] == address:
    #        return thing["label"]
    #if address in all_labels:
    #    return all_labels[int(address)]
        #return all_labels.get(address)
    #if address == 0x20e1f6c:
    #    print(str(address) + " " + str(all_labels.get(address)))
    return all_labels.get(address)

    #return None

def add_label(address, label):
    global all_labels
    #l = {'address':address, 'label':label}
    #all_labels.append(l)
    #l = {int(address):label}
    #all_labels.update(l)
    if all_labels.get(address) == None:
        all_labels[address] = label


def is_comment(asm):
	return asm.startswith('@')

def generate_label_asm(label, address, instrset):
	"""
	Return label definition text at a given address.

	Format: '{label}: @ {address}'
	"""
	label_text = '%s: @ %x :%s' % (label, address, instrset)
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
		not line_has_label(asm),
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
	if ((start_address & 2) != 0) & ((end_address-start_address) == 2) & (input_file.ReadHWord(start_address) == 0):
		incbin = (
			start_address,
			'\n.align 2, 0\n\n',
			end_address
		)
		return incbin
	if ((start_address & 2) != 0) & ((end_address-start_address) == 2) & (input_file.ReadHWord(start_address) == 0x46c0):
		incbin = (
			start_address,
			'\n.align 2\n\n',
			end_address
		)
		return incbin
	if start_address == 0:
		incbin = (
			start_address,
			'\n.incbin "' + input_file.GetFileName() + '", 0x%x, 0x%x - 0x%x\n\n' % (
				start_address, end_address-input_file.GetBaseAddress(), start_address
			),
			end_address
		)
		IncUnknownSize((end_address-input_file.GetBaseAddress()) - start_address)
	else:
		incbin = (
			start_address,
			'\n.incbin "' + input_file.GetFileName() + '", 0x%x, 0x%x - 0x%x\n\n' % (
				start_address-input_file.GetBaseAddress(), end_address, start_address
			),
			end_address
		)
		IncUnknownSize(end_address - start_address)
	return incbin


ShiftsString = [
"lsl","lsr","asr","ror","rrx"
]

RegisterStrings = [
"r0", "r1", "r2", "r3", "r4", "r5", "r6", "r7",
"r8", "r9", "r10", "r11", "r12",
"sp", # r13
"lr", # r14
"pc", # r15
]

ALUOpcodeStrings = [
"and", "eor", "sub", "rsb", "add", "adc", "sbc", "rsc",
"tst", "teq", "cmp", "cmn", "orr", "mov", "bic", "mvn",
]

ConditionStrings = [
"eq",
"ne",
"cs", # or hs
"cc", # or lo
"mi",
"pl",
"vs",
"vc",
"hi",
"ls",
"ge",
"lt",
"gt",
"le",
"", # al
"nv",
]

armMultLoadStoreStrings = [
  # non-stack
  "da","ia","db","ib",
  # stack store
  "ed","ea","fd","fa",
  # stack load
  "fa","fd","ea","ed"
]

class ConditionParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        return ConditionStrings[((self.word >> 28) & 0xf)]

class SParam1():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        output = ""
        
        if(self.word&1<<20):
            output = "s"
        
        return output

class RParam():
    word = 0
    RNr = 0

    def __init__(self, word, nr, *args, **kwargs):
        self.word = word
        self.RNr = nr

    def to_asm(self):
        output = ""
        
        nr = (self.word>>(self.RNr*4)) & 0xf
        output = RegisterStrings[nr]
        
        return output

class R2Param():
    word = 0
    RNr = 0

    def __init__(self, word, nr, *args, **kwargs):
        self.word = word
        self.RNr = nr

    def to_asm(self):        
        reg = (self.RNr*4)
        output = 'c' + str((self.word>>reg)&0xf)
        
        return output

class IParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        output = ""
        
        if self.word & (1<<25):
            imm = self.word & 0xff
            rot = (self.word & 0xf00) >> 7
            val = ((imm<<(32-rot)) | (imm>>rot)) & 0xffffffff
            if rot == 0:
                output = "#0x{:00x}".format(imm)
            else:
                output = "#" + str(imm) + ", " + str(rot) + " @ " + "#0x{:00x}".format(val)
        else:
            output = RegisterStrings[self.word & 0xf]
            shi = (self.word>>5) & 0x3
            sdw = (self.word>>7) & 0x1f
            if (sdw==0) & (shi==3):
                shi = 4
            if (sdw) | (self.word&0x10) | (shi):
                output += ", " + ShiftsString[shi]
                if (self.word&0x10):
                    output += " " + RegisterStrings[((self.word>>8)&15)]
                else:
                    if (sdw==0 & ( (shi==1) | (shi==2) )):
                        sdw = 32
                    if (shi != 4):
                        output += " #" + str(sdw)
        
        return output

        
class OParam():
    word = 0
    offset = 0
    dest = 0
    label = None
    label_instrset = "arm"

    def __init__(self, word, offset, *args, **kwargs):
        self.word = word
        self.offset = offset
        
        off = (self.word & 0xffffff)
        if off & 0x800000:
            off |= 0xff000000
        off = int(hex(off),16)
        if off > 0x7FFFFFFF:
            off -= 0x100000000
        off <<= 2
        
        
        if ((self.word>>25)&0x7f) == 0x7d: # blx imm (only ARM9)
            H = (self.word>>24)&0x1
            off += H*2
        
        self.dest = (self.offset+8+off)&0xffffffff # ADDRESS FIX
        
        if input_file.AdrInRange(self.dest):
            if(self.word & 0xfe000000) == 0xfa000000: # "blx%_ %o" # ARM9
                self.label_instrset = "thumb"
                label = 'Function_%x' % (self.dest)
                IncThumbFunctions()
            elif(self.word & 0x0f000000) == 0x0a000000: # "b%c%_ %o"
                label = 'branch_%x' % (self.dest)
            elif(self.word & 0x0f000000) == 0x0b000000: # "bl%c%_ %o"
                label = 'Function_%x' % (self.dest)
                IncARMFunctions()
            add_label(self.dest, label)
            
            self.label = self.dest
    
    def get_label(self):
        return (self.label, self.label_instrset)

    def to_asm(self):
        output = ""
        
        if input_file.AdrInRange(self.dest):
            label = get_label_for(self.dest)
        
            # setup output bytes if the label was not found
            if not label:
                output = "0x{:00x}".format(self.dest)
            if label: return label
        else:
            output = "0x{:00x}".format(self.dest)
        
        return output
        
class PParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        output = ""
        
        if self.word&(1<<22):
            output += "SPSR"
        else:
            output += "CPSR"
        if self.word & 0x00F00000:
            output += "_"
            if self.word & 0x00080000:
                output += "f"
            if self.word & 0x00040000:
                output += "s"
            if self.word & 0x00020000:
                output += "x"
            if self.word & 0x00010000:
                output += "c"
        
        return output
        
class BParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        output = ""
        
        if self.word&(1<<22):
            output += "b"
        
        return output
        
class TParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        output = ""
        
        if ((self.word&0x01200000)==0x00200000): # 1<<24 1<<21
            output += "t"
        
        return output
        
class AParam():
    word = 0
    offset = 0

    def __init__(self, word, offset, *args, **kwargs):
        self.word = word
        self.offset = offset

    def to_asm(self):
        output = ""
        
        if ((self.word&0x076f0000)==0x004f0000):
            output += "[#"
            adr = self.offset+8
            add = (self.word&15)|((self.word>>8)&0xf0)
            if ((self.word>>23) & 1) == 1:
                adr += add
            else:
                adr -= add
            output += hex(adr)
            output += "]"
            output += " (="
            output += "#"
            output += "debuggerReadMemory(adr)"
            output += ")"
        if ((self.word&0x072f0000)==0x050f0000):
            adr = self.offset+8
            if self.word&(1<<23):
                adr += self.word & 0xfff
            else:
                adr -= self.word & 0xfff
            
            add_value(adr)
        
            LoadedWord = input_file.ReadWord(adr)
            output += "[pc, #"
            if not (self.word&(1<<23)):
                output += "-"
            output += hex(self.word & 0xfff) + "]" + " @ " + "[" + hex(adr) + "]" + " (=" + hex(LoadedWord) + ")"
        else:
            reg = (self.word>>16)&0xf
            output += "[" + RegisterStrings[reg]
            if not (self.word&(1<<24)):
                output += "]"
            #if ( ((self.word&(1<<25)) & (self.word&(1<<26))) | ((not(self.word&(1<<22))) & (not(self.word&(1<<26)))) ):
            if ( (((self.word>>25)&0x3) == 0x3) | ((((self.word>>22) & 0x1) == 0) & (((self.word>>26) & 0x1) == 0)) ):
                output += ", "
                if (not(self.word&(1<<23))):
                    output += "-"
                output += RegisterStrings[self.word&0xf]
                shi = (self.word>>5)&3
                if (self.word&(1<<26)):
                    if ( ((self.word>>7)&0x1f) | (self.word&0x10) | (shi==1) | (shi==2)):
                        output += ", " + ShiftsString[shi]
                        if self.word & 0x10:
                            output += " " + RegisterStrings[(self.word>>8)&0xf]
                        else:
                            sdw = (self.word>>7)&0x1f
                            if (sdw==0 & ( (shi==1) | (shi==2) )):
                                sdw = 32
                            output += " #" + hex(sdw)
            else:
                off = 0
                if self.word & (1<<26):
                    off = self.word & 0xfff
                else:
                    off = (self.word&0xf)|((self.word>>4)&0xf0)
                if off:
                    output += ", #"
                    if (not(self.word&(1<<23))):
                        output += "-"
                    output += hex(off)
            if (self.word&(1<<24)):
                output += "]"
                if (self.word&(1<<21)):
                    output += "!"

        return output
        
class HParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word
        self.word = word

    def to_asm(self):
        output = ""
        
        if (self.word&(1<<6)):
            output += "s"
        if (self.word&(1<<5)):
            output += "h"
        else:
            output += "b"
        
        return output
        
class P2Param():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        output = "p" + str((self.word>>8)&0xf)
        return output
        
class N2Param():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        if(self.word&0x10):
            output = str((self.word>>21)&0x7)
        else:
            output = str((self.word>>20)&0xf)
        return output
        
class V2Param():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        val = (self.word>>5)&0x7
        output = ", " + str(val)
        return output
        
class MParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        output = ""
        
        if(((self.word>>16)&15)==13):
            if(self.word & 0x00100000):
                output += armMultLoadStoreStrings[8+((self.word>>23)&3)]
            else:
                output += armMultLoadStoreStrings[4+((self.word>>23)&3)]
        else:
            output += armMultLoadStoreStrings[(self.word>>23)&3]
        
        return output
        
class LParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        output = ""
        
        if(self.word&(1<<21)):
            output += "!"
        output += ", {"
        
        rlst = self.word&0xffff
        msk = 0
        not_first = 0
        while msk < 16:
            if (rlst&(1<<msk)):
                fr = msk
                while (rlst&(1<<msk)):
                    msk += 1
                to = msk-1
                if (not_first):
                    output += ","
                output += RegisterStrings[fr]
                if fr != to:
                    if (fr == (to-1)):
                        output += ","
                    else:
                        output += "-"
                    output += RegisterStrings[to]
                not_first = 1
            else:
                msk += 1
        output += "}"
        if(self.word&(1<<22)):
            output += "^"
        
        return output
        
class UParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        if (self.word&(1<<22)):
            output = "s"
        else:
            output = "u"
        return output
        
class QParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        output = hex(self.word&0xffffff)
        return output
        
class XParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        if (self.word&(1<<5)):
            output = "t"
        else:
            output = "b"
        return output
        
class YParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        if (self.word&(1<<6)):
            output = "t"
        else:
            output = "b"
        return output


# https://github.com/x3ro/VisualBoyAdvance/blob/master/src/armdis.cpp
armOpcodes = [
# Undefined
[0x0e000010, 0x06000010, "[ undefined ]"],
# Branch instructions
[0x0ff000f0, 0x01200010, "bx%c%_ %r0"],
[0x0ff000f0, 0x01200030, "blx%c%_ %r0"], # ARM9
[0xfe000000, 0xfa000000, "blx%_ %o"], # ARM9
[0x0f000000, 0x0a000000, "b%c%_ %o"],
[0x0f000000, 0x0b000000, "bl%c%_ %o"],
[0x0f000000, 0x0f000000, "swi%c%_ %q"],
# PSR transfer
[0x0fbf0fff, 0x010f0000, "mrs%c%_ %r3, %p"],
[0x0db0f000, 0x0120f000, "msr%c%_ %p, %i"],
# Multiply instructions
[0x0fe000f0, 0x00000090, "mul%c%s%_ %r4, %r0, %r2"],
[0x0fe000f0, 0x00200090, "mla%c%s%_ %r4, %r0, %r2, %r3"],
[0x0fa000f0, 0x00800090, "%umull%c%s%_ %r3, %r4, %r0, %r2"],
[0x0fa000f0, 0x00a00090, "%umlal%c%s%_ %r3, %r4, %r0, %r2"],

[0x0ff00090, 0x01000080, "smla%x%y%c%_ %r4, %r0, %r2, %r3"], # ARM9
[0x0ff000b0, 0x01200080, "smlaw%y%c%_ %r4, %r0, %r2, %r3"], # ARM9
[0x0ff000b0, 0x012000a0, "smulw%y%c%_ %r4, %r0, %r2"], # ARM9
[0x0ff00090, 0x01400080, "smlal%x%y%c%_ %r3, %r4, %r0, %r2"], # ARM9
[0x0ff00090, 0x01600080, "smul%x%y%c%_ %r4, %r0, %r2"], # ARM9
# Load/Store instructions
[0x0fb00ff0, 0x01000090, "swp%c%b%_ %r3, %r0, [%r4]"],
[0x0fb000f0, 0x01000090, "[ ??? ]"],
[0x0c100000, 0x04000000, "str%c%b%t%_ %r3, %a"],
[0x0c100000, 0x04100000, "ldr%c%b%t%_ %r3, %a"],
[0x0e100090, 0x00000090, "str%c%h%_ %r3, %a"],
[0x0e100090, 0x00100090, "ldr%c%h%_ %r3, %a"],
[0x0e100000, 0x08000000, "stm%c%m%_ %r4%l"],
[0x0e100000, 0x08100000, "ldm%c%m%_ %r4%l"],
# Special ARM9 Instructions
[0x0fff0ff0, 0x016f0f10, "clz%c%_ %r3, %r0"], # ARM9
# Data processing
[0x0de00000, 0x00000000, "and%c%s%_ %r3, %r4, %i"],
[0x0de00000, 0x00200000, "eor%c%s%_ %r3, %r4, %i"],
[0x0de00000, 0x00400000, "sub%c%s%_ %r3, %r4, %i"],
[0x0de00000, 0x00600000, "rsb%c%s%_ %r3, %r4, %i"],
[0x0de00000, 0x00800000, "add%c%s%_ %r3, %r4, %i"],
[0x0de00000, 0x00a00000, "adc%c%s%_ %r3, %r4, %i"],
[0x0de00000, 0x00c00000, "sbc%c%s%_ %r3, %r4, %i"],
[0x0de00000, 0x00e00000, "rsc%c%s%_ %r3, %r4, %i"],
[0x0de00000, 0x01000000, "tst%c%_ %r4, %i"],
[0x0de00000, 0x01200000, "teq%c%_ %r4, %i"],
[0x0de00000, 0x01400000, "cmp%c%_ %r4, %i"],
[0x0de00000, 0x01600000, "cmn%c%_ %r4, %i"],
[0x0de00000, 0x01800000, "orr%c%s%_ %r3, %r4, %i"],
[0x0de00000, 0x01a00000, "mov%c%s%_ %r3, %i"],
[0x0de00000, 0x01c00000, "bic%c%s%_ %r3, %r4, %i"],
[0x0de00000, 0x01e00000, "mvn%c%s%_ %r3, %i"],
# Coprocessor operations
[0x0f000010, 0x0e000000, "cdp%c%_ %P, %N, %r3, %R4, %R0%V"],
[0x0e100000, 0x0c000000, "stc%c%L%_ %P, %r3, %A"],
[0x0f100010, 0x0e000010, "mcr%c%_ %P, %N, %r3, %R4, %R0%V"],
[0x0f100010, 0x0e100010, "mrc%c%_ %P, %N, %r3, %R4, %R0%V"],
# Unknown
[0x00000000, 0x00000000, "[ ??? ]"],
]

class ARMInstruction():
    size = 4
    word = 0
    offset = 0
    label = None
    isend = False
    condition = ""
    label_instrset = "arm"

    def __init__(self, word, offset, *args, **kwargs):
        self.word = word
        self.offset = offset
    
    def get_label(self):
        return (self.label, self.label_instrset)
    
    def is_end(self):
        return self.isend

    def to_asm(self):
        output = ""
        
        for a,b,c in armOpcodes:
            if(self.word & a) == b:
                para = 0
                s = 0
                #for (prev, current, next) in zip(c[0::1], c[1::1], c[2::1]):
                #    print(prev +" " + current + " " + next)
                #for (prev, current) in zip([None] + c[:-1], c):
                #for s in range(len(c)):
                while s < len(c):
                    if c[s] == '%':
                        para = 1
                    elif (c[s] == '_') & (para == 1):
                        while len(output) < 7:
                            output += " "
                        para = 0
                    elif (c[s] == 'c') & (para == 1):
                        function = ConditionParam(self.word)
                        self.condition = function.to_asm()
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'r') & (para == 1):
                        s += 1
                        function = RParam(self.word, ord(c[s])-ord('0'))
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'o') & (para == 1):
                        function = OParam(self.word, self.offset)
                        output += function.to_asm()
                        self.label, self.label_instrset = function.get_label()
                        para = 0
                    elif (c[s] == 'p') & (para == 1):
                        function = PParam(self.word)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 's') & (para == 1):
                        function = SParam1(self.word)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'b') & (para == 1):
                        function = BParam(self.word)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 't') & (para == 1):
                        function = TParam(self.word)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'i') & (para == 1):
                        function = IParam(self.word)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'a') & (para == 1):
                        function = AParam(self.word, self.offset)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'h') & (para == 1):
                        function = HParam(self.word, self.offset)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'P') & (para == 1):
                        function = P2Param(self.word, self.offset)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'N') & (para == 1):
                        function = N2Param(self.word, self.offset)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'R') & (para == 1):
                        s += 1
                        function = R2Param(self.word, ord(c[s])-ord('0'))
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'V') & (para == 1):
                        function = V2Param(self.word, self.offset)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'm') & (para == 1):
                        function = MParam(self.word, self.offset)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'l') & (para == 1):
                        function = LParam(self.word, self.offset)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'u') & (para == 1):
                        function = UParam(self.word, self.offset)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'q') & (para == 1):
                        function = QParam(self.word, self.offset)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'x') & (para == 1):
                        function = XParam(self.word, self.offset)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'y') & (para == 1):
                        function = YParam(self.word, self.offset)
                        output += function.to_asm()
                        para = 0
                    else:
                        output += c[s]
                    s += 1
                    
                # ending of function, and so ending of disassembling
                if ((self.word & 0x0ff000f0) == 0x01200010): # bx-instruction
                    if self.condition == "":
                        self.isend = True
                if ((self.word & 0xff000000) == 0xea000000): # b-instruction
                    if self.condition == "":
                        self.isend = True
                if ((self.word & 0x0e100000) == 0x08100000): # ldm-instruction
                    if (self.condition == "") & ((self.word>>15) & 1):
                        self.isend = True
                if ((self.word & 0x0c10f000) == 0x0410f000): # ldr-instruction "ldr%c%b%t%_ %r3, %a"
                    if (self.condition == "") & ((self.word>>15) & 1):
                        self.isend = True
                if ((self.word & 0x0e10f090) == 0x0010f090): # ldr-instruction "ldr%c%h%_ %r3, %a"
                    if (self.condition == "") & ((self.word>>15) & 1):
                        self.isend = True
                break
        
        return output


"""
[0x0c10f000, 0x0410f000, "ldr%c%b%t%_ %r3, %a"],
[0x0e10f090, 0x0010f090, "ldr%c%h%_ %r3, %a"],
"""


class A2ThumbParam():
    size = 4
    word = 0
    offset = 0
    dest = 0
    label = None
    label_instrset = "thumb"
    instr = 0

    def __init__(self, word, offset, *args, **kwargs):
        self.word = word
        self.offset = offset
        
        nopcode = input_file.ReadHWord(self.offset+2)
        self.instr = (nopcode>>11) & 0x1f
        add = self.word&0x7ff
        if add & 0x400:
            add |= 0xfff800
        add = (add<<12)|((nopcode&0x7ff)<<1)
        self.dest = (self.offset+4+add)&0xfffffffc # ADDRESS FIX
        
        if input_file.AdrInRange(self.dest):
            if self.instr == 0x1f: # bl-instruction
                label = 'Function_%x' % (self.dest)
                add_label(self.dest, label)
                IncThumbFunctions()
            else: # blx-instruction
                self.dest = self.dest & 0xfffffffc
                label = 'Function_%x' % (self.dest)
                add_label(self.dest, label)
                self.label_instrset = "arm"
                IncARMFunctions()
        
            self.label = self.dest
    
    def get_label(self):
        return (self.label, self.label_instrset)

    def to_asm(self):
        output = ""
        
        if input_file.AdrInRange(self.dest):
            if self.instr == 0x1f:
                output += "      "
                
                label = get_label_for(self.dest)
                
                # setup output bytes if the label was not found
                if not label:
                    output += "0x{:00x}".format(self.dest)
                if label: return output + label
            else:
                label = get_label_for(self.dest)
                
                # setup output bytes if the label was not found
                if not label:
                    output += "x 0x{:00x}".format(self.dest)
                if label: return output + "x     "+ label
        else:
            if self.instr == 0x1f:
                output += "      "
                output += "0x{:00x}".format(self.dest)
            else:
                output += "x 0x{:00x}".format(self.dest)
        
        return output

    def get_size(self):
        return self.size

class LThumbParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        output = ""
        
        rlst = self.word & 0xff
        msk = 0
        not_first = 0
        while msk < 8:
            if rlst & (1<<msk):
                fr = msk
                while rlst & (1<<msk):
                    msk += 1
                to = msk-1
                if not_first:
                    output += ","
                output += RegisterStrings[fr]
                if fr != to:
                    if fr == (to-1):
                        output += ","
                    else:
                        output += "-"
                    output += RegisterStrings[to]
                not_first = 1
            else:
                msk += 1

        return output

class RThumbParam():
    word = 0
    RNr = 0

    def __init__(self, word, nr, *args, **kwargs):
        self.word = word
        self.RNr = nr

    def to_asm(self):        
        nr = (self.word>>(self.RNr)) & 0x7
        output = RegisterStrings[nr]
        return output

class O2ThumbParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):        
        output = "#" + hex(self.word&0xff)
        return output

class I2ThumbParam():
    word = 0
    offset = 0

    def __init__(self, word, offset, *args, **kwargs):
        self.word = word
        self.offset = offset

    def to_asm(self):
        adr = (self.offset&0xfffffffc)+4+((self.word&0xff)<<2)
        #output = "[#" + hex(adr) + "]"
        output = "[pc, #" + hex(((self.word&0xff)<<2)) + "]"
        val = input_file.ReadWord(adr)
        output += " @ " + hex(adr) + ", (=" + hex(val) + ")"
        add_value(adr)
        return output

class IThumbParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        output = "#" + hex((self.word>>6)&7)
        return output

class B2ThumbParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        output = ""
        if (self.word&(1<<12)):
            output = "b"
        return output

class BThumbParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        output = ""
        if (self.word&(1<<10)):
            output = "b"
        return output

class PThumbParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        output = "#"
        val = (self.word>>6)&0x1f
        #if (not(self.word&(1<<12))):
        if (((self.word>>12)&0x1) == 0):
            val <<= 2
        output += hex(val)
        return output

class AThumbParam():
    word = 0
    offset = 0
    dest = 0
    label = None

    def __init__(self, word, offset, *args, **kwargs):
        self.word = word
        self.offset = offset
        
        add = self.word&0x07ff
        if add&0x400:
            add |= 0xfffff800
        add <<= 1
        self.dest = (self.offset+4+add)&0xffffffff # ADDRESS FIX
        
        label = 'branch_%x' % (self.dest)
        add_label(self.dest, label)
        
        self.label = self.dest
    
    def get_label(self):
        return self.label

    def to_asm(self):
        output = ""
        
        label = get_label_for(self.dest)
        
        # setup output bytes if the label was not found
        if not label:
            output = "0x{:00x}".format(self.dest)
        if label: return label
        
        return output

class CThumbParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        output = ConditionStrings[(self.word>>8)&0xf]
        return output

class W2ThumbParam():
    word = 0
    offset = 0
    dest = 0
    label = None

    def __init__(self, word, offset, *args, **kwargs):
        self.word = word
        self.offset = offset
        
        add = self.word&0xff
        if add&0x80:
            add |= 0xffffff00
        self.dest = ((self.offset&0xfffffffe)+4+(add<<1))&0xffffffff # ADDRESS FIX
        
        label = 'branch_%x' % (self.dest)
        add_label(self.dest, label)
        
        self.label = self.dest
    
    def get_label(self):
        return self.label

    def to_asm(self):
        output = ""
        
        label = get_label_for(self.dest)
        
        # setup output bytes if the label was not found
        if not label:
            output = "0x{:00x}".format(self.dest)
        if label: return label
        
        return output

class OThumbParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        output = "#"
        val = (self.word>>6)&0x1f
        output += str(val)
        return output

class HThumbParam():
    word = 0
    a = ""
    b = ""

    def __init__(self, word, a, b, *args, **kwargs):
        self.word = word
        self.a = a
        self.b = b

    def to_asm(self):
        reg = (self.word>>(ord(self.a)-ord('0')))&7
        if (self.word&(1<<(ord(self.b)-ord('0')))):
            reg += 8;
        output = RegisterStrings[reg]
        return output

class SThumbParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        output = "#"
        if (self.word&(1<<7)):
            output += "-"
        output += hex((self.word&0x7f)<<2)
        return output

class WThumbParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        output = "#"
        output += hex((self.word&0xff)<<2)
        return output

class EThumbParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        output = "#"
        output += hex(((self.word>>6)&0x1f)<<1)
        return output

class MThumbParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        output = hex(self.word&0xff)
        return output

class ZThumbParam():
    word = 0

    def __init__(self, word, *args, **kwargs):
        self.word = word

    def to_asm(self):
        output = hex(self.word)
        return output


thumbOpcodes = [
# Undefined
[0x0e000010, 0x06000010, "[ undefined ]"],
# Format 1
[0xf800, 0x0000, "lsl%_ %r0, %r3, %o"],
[0xf800, 0x0800, "lsr%_ %r0, %r3, %o"],
[0xf800, 0x1000, "asr%_ %r0, %r3, %o"],
# Format 2
[0xfe00, 0x1800, "add%_ %r0, %r3, %r6"],
[0xfe00, 0x1a00, "sub%_ %r0, %r3, %r6"],
[0xffc0, 0x1c00, "mov%_ %r0, %r3"], # pseudo opcode: add %r0, %r3, #0
[0xfe3f, 0x1c00, ".hword%_ %z @ add%_ %r0, %r3, %i"], # ambiguity if %r0 == %r3 == r0
[0xfe3f, 0x1c09, ".hword%_ %z @ add%_ %r0, %r3, %i"], # ambiguity if %r0 == %r3 == r1
[0xfe3f, 0x1c12, ".hword%_ %z @ add%_ %r0, %r3, %i"], # ambiguity if %r0 == %r3 == r2
[0xfe3f, 0x1c1b, ".hword%_ %z @ add%_ %r0, %r3, %i"], # ambiguity if %r0 == %r3 == r3
[0xfe3f, 0x1c24, ".hword%_ %z @ add%_ %r0, %r3, %i"], # ambiguity if %r0 == %r3 == r4
[0xfe3f, 0x1c2d, ".hword%_ %z @ add%_ %r0, %r3, %i"], # ambiguity if %r0 == %r3 == r5
[0xfe3f, 0x1c36, ".hword%_ %z @ add%_ %r0, %r3, %i"], # ambiguity if %r0 == %r3 == r6
[0xfe3f, 0x1c3f, ".hword%_ %z @ add%_ %r0, %r3, %i"], # ambiguity if %r0 == %r3 == r7
[0xfe00, 0x1c00, "add%_ %r0, %r3, %i"],
[0xfe00, 0x1e00, ".hword%_ %z @ sub%_ %r0, %r3, %i"], # ambiguity if %r0 == %r3
# Format 3
[0xf800, 0x2000, "mov%_ %r8, %O"],
[0xf800, 0x2800, "cmp%_ %r8, %O"],
[0xf800, 0x3000, "add%_ %r8, %O"],
[0xf800, 0x3800, "sub%_ %r8, %O"],
# Format 4
[0xffc0, 0x4000, "and%_ %r0, %r3"],
[0xffc0, 0x4040, "eor%_ %r0, %r3"],
[0xffc0, 0x4080, "lsl%_ %r0, %r3"],
[0xffc0, 0x40c0, "lsr%_ %r0, %r3"],
[0xffc0, 0x4100, "asr%_ %r0, %r3"],
[0xffc0, 0x4140, "adc%_ %r0, %r3"],
[0xffc0, 0x4180, "sbc%_ %r0, %r3"],
[0xffc0, 0x41c0, "ror%_ %r0, %r3"],
[0xffc0, 0x4200, "tst%_ %r0, %r3"],
[0xffc0, 0x4240, "neg%_ %r0, %r3"],
[0xffc0, 0x4280, "cmp%_ %r0, %r3"],
[0xffc0, 0x42c0, "cmn%_ %r0, %r3"],
[0xffc0, 0x4300, "orr%_ %r0, %r3"],
[0xffc0, 0x4340, "mul%_ %r0, %r3"],
[0xffc0, 0x4380, "bic%_ %r0, %r3"],
[0xffc0, 0x43c0, "mvn%_ %r0, %r3"],
# Format 5
[0xff80, 0x4700, "bx%_ %h36"],
[0xff80, 0x4780, "blx%_ %h36"], # ARM9
[0xfcc0, 0x4400, "[ ??? ]"],
[0xff00, 0x4400, "add%_ %h07, %h36"],
[0xff00, 0x4500, "cmp%_ %h07, %h36"],
[0xff00, 0x4600, "mov%_ %h07, %h36"],
# Format 6
[0xf800, 0x4800, "ldr%_ %r8, %I"],
# Format 7
[0xfa00, 0x5000, "str%b%_ %r0, [%r3, %r6]"],
[0xfa00, 0x5800, "ldr%b%_ %r0, [%r3, %r6]"],
# Format 8
[0xfe00, 0x5200, "strh%_ %r0, [%r3, %r6]"],
[0xfe00, 0x5600, "ldsb%_ %r0, [%r3, %r6]"],
[0xfe00, 0x5a00, "ldrh%_ %r0, [%r3, %r6]"],
[0xfe00, 0x5e00, "ldsh%_ %r0, [%r3, %r6]"],
# Format 9
[0xe800, 0x6000, "str%B%_ %r0, [%r3, %p]"],
[0xe800, 0x6800, "ldr%B%_ %r0, [%r3, %p]"],
# Format 10
[0xf800, 0x8000, "strh%_ %r0, [%r3, %e]"],
[0xf800, 0x8800, "ldrh%_ %r0, [%r3, %e]"],
# Format 11
[0xf800, 0x9000, "str%_ %r8, [sp, %w]"],
[0xf800, 0x9800, "ldr%_ %r8, [sp, %w]"],
# Format 12
[0xf800, 0xa000, "add%_ %r8, pc, %w @ (=%K)"],
[0xf800, 0xa800, "add%_ %r8, sp, %w"],
# Format 13
[0xff00, 0xb000, "add%_ sp, %s"],
# Format 14
[0xffff, 0xb500, "push%_ {lr}"],  
[0xff00, 0xb400, "push%_ {%l}"],
[0xff00, 0xb500, "push%_ {%l,lr}"],
[0xffff, 0xbd00, "pop%_ {pc}"],
[0xff00, 0xbd00, "pop%_ {%l,pc}"],  
[0xff00, 0xbc00, "pop%_ {%l}"],
# Format 15
[0xf800, 0xc000, "stmia%_ %r8!, {%l}"],
[0xf800, 0xc800, "ldmia%_ %r8!, {%l}"],
# Format 17
[0xff00, 0xdf00, "swi%_ %m"],
# Format 16
[0xf000, 0xd000, "b%c%_ %W"],
# Format 18
[0xf800, 0xe000, "b%_ %a"],
# Format 19
[0xf800, 0xf000, "bl%A"],
[0xf800, 0xf800, "blh%_ %Z"],
[0xf800, 0xe800, "blxh%_ %Z"], # ARM9
[0xff00, 0xbe00, "bkpt%_ %O"],
# Unknown
[0x0000, 0x0000, "[ ??? ]"]
]

class ThumbInstruction():
    size = 2
    word = 0
    offset = 0
    label = None
    label_instrset = "thumb"
    isend = False
    condition = ""

    def __init__(self, word, offset, *args, **kwargs):
        self.word = word
        self.offset = offset
    
    def get_label(self):
        return (self.label, self.label_instrset)
    
    def is_end(self):
        return self.isend

    def to_asm(self):
        output = ""
        
        for a,b,c in thumbOpcodes:
            if(self.word & a) == b:
                para = 0
                s = 0
                while s < len(c):
                    if c[s] == '%':
                        para = 1
                    elif (c[s] == '_') & (para == 1):
                        while len(output) < 7:
                            output += " "
                        para = 0
                    elif (c[s] == 'A') & (para == 1):
                        function = A2ThumbParam(self.word, self.offset)
                        output += function.to_asm()
                        self.size = function.get_size()
                        self.label, self.label_instrset = function.get_label()
                        para = 0
                    elif (c[s] == 'l') & (para == 1):
                        function = LThumbParam(self.word)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'r') & (para == 1):
                        s += 1
                        function = RThumbParam(self.word, ord(c[s])-ord('0'))
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'O') & (para == 1):
                        function = O2ThumbParam(self.word)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'I') & (para == 1):
                        function = I2ThumbParam(self.word, self.offset)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'i') & (para == 1):
                        function = IThumbParam(self.word)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'b') & (para == 1):
                        function = BThumbParam(self.word)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'B') & (para == 1):
                        function = B2ThumbParam(self.word)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'p') & (para == 1):
                        function = PThumbParam(self.word)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'a') & (para == 1):
                        function = AThumbParam(self.word, self.offset)
                        output += function.to_asm()
                        self.label = function.get_label()
                        para = 0
                    elif (c[s] == 'c') & (para == 1):
                        function = CThumbParam(self.word)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'W') & (para == 1):
                        function = W2ThumbParam(self.word, self.offset)
                        output += function.to_asm()
                        self.label = function.get_label()
                        para = 0
                    elif (c[s] == 'o') & (para == 1):
                        function = OThumbParam(self.word)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'h') & (para == 1):
                        function = HThumbParam(self.word, c[s+1], c[s+2])
                        output += function.to_asm()
                        s += 2
                        para = 0
                    elif (c[s] == 's') & (para == 1):
                        function = SThumbParam(self.word)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'w') & (para == 1):
                        function = WThumbParam(self.word)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'e') & (para == 1):
                        function = EThumbParam(self.word)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'm') & (para == 1):
                        function = MThumbParam(self.word)
                        output += function.to_asm()
                        para = 0
                    elif (c[s] == 'z') & (para == 1):
                        function = ZThumbParam(self.word)
                        output += function.to_asm()
                        para = 0
                    else:
                        output += c[s]
                    s += 1
                if ((self.word & 0xf800) == 0xe000): # b-instruction
                    self.isend = True
                elif ((self.word & 0xff80) == 0x4700): # "bx%_ %h36"-instruction
                    self.isend = True
                elif ((self.word & 0xffff) == 0xbd00): # "pop%_ {pc}"-instruction
                    self.isend = True
                elif ((self.word & 0xff00) == 0xbd00): # "pop%_ {%l,pc}"-instruction
                    self.isend = True
                elif ((self.word & 0xff87) == 0x4487): # "add%_ %h07, %h36"-instruction (=add%_ pc, %h36)
                    self.isend = True
                break
        
        return output


class Channel:
	used_labels = []
    
	def __init__(self, address, NrOfInstr=1, instr_set="arm", label=None, used_labels=[]):
		self.start_address = address
		self.address = address
		self.NrOfInstr = NrOfInstr
		self.instr_set = instr_set

		self.label = label
		if self.label == None:
			self.label = 'Label_' + hex(self.start_address)

		self.used_labels = used_labels
		self.labels = []
		used_label = generate_label_asm(self.label, self.start_address, instr_set)
		self.labels += [used_label]
		self.used_labels += [used_label]

		self.output = []
		self.parse()

	def parse(self):
		done = False
		i = 0
		while not done:
            
			if self.instr_set == "arm":
				cmd = input_file.ReadWord(self.address)
				class_ = ARMInstruction(cmd, self.address)
			else:
				cmd = input_file.ReadHWord(self.address)
				class_ = ThumbInstruction(cmd, self.address)

			asm = class_.to_asm()

			label_address, instrset = class_.get_label()
			if label_address != None:
				label = get_label_for(label_address)
				self.labels += [generate_label_asm(label, label_address, instrset)]

			self.output += [(self.address, '\t' + asm, self.address + class_.size)]
			self.address += class_.size

			done = class_.is_end()

			i += 1
			if i >= self.NrOfInstr:
				done = True

		self.output += [(self.address, '@ 0x%x\n' % self.address, self.address)]

		# parse any other branches too
		self.labels = list(set(self.labels))
		for address, asm, last_address in self.labels:
			if (
				address >= 0#self.address
				and ((address, asm, last_address) not in self.used_labels)
			):
				self.used_labels += [(address, asm, last_address)]
				sub = Channel(
					address=address,
                    NrOfInstr=MaximumInstrBranch,
                    instr_set=asm.split(':')[2],
					label=asm.split(':')[0],
					used_labels=self.used_labels,
				)
				self.output += sub.output
				self.labels += sub.labels
				self.used_labels = sub.used_labels
        
		# get all pool values
		for adr in all_values:
			label = None
			val = input_file.ReadWord(adr)
			if input_file.AdrInRange(val):
				if (val & 1) == 1:
					label = get_label_for(val-1)
					if label != None:
						label += "+1"
				else:
					label = get_label_for(val)
			if label != None:
				self.output += [(adr, '.word ' + str(label) + ' @ =' + hex(val) + ", " + hex(adr), adr + 4)]
			else:
				self.output += [(adr, '.word ' + hex(val) + " @ " + hex(adr), adr + 4)]
        
		# get all reljumps
		for (adr, string) in all_reljumps:
				self.output += [(adr, string, adr + 2)]
                

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
		text += '@ ' + hex(last_address) + '\n'
		return text


        
class Code:
	"""
	Interprets code starting from a StartPoint.
	"""
	channels = 0

	def __init__(self, address, instr_set, name=''):
		self.start_address = address
		self.address = address
		self.instr_set = instr_set

		self.labels = []
		self.used_labels = []
		self.output = []
		self.asms = []
		self.parse()


	def parse_header(self):
		j = 0
		for i in range(len(self.address)):
			label_ = get_label_for(self.address[i])
			#print(hex(self.address[i]) + ": " + str(label_))
			#print(all_labels)
			if label_ == None:
				add_label(self.address[i], 'Function_%x' % (self.address[i]))
				self.channels = Channel(self.address[i], MaximumInstrMain, instr_set=self.instr_set[i], label='Function_%x' % (self.address[i]), used_labels=self.used_labels)
			else:
				self.channels = Channel(self.address[i], MaximumInstrMain, instr_set=self.instr_set[i], label=label_, used_labels=self.used_labels)
			self.output += self.channels.output
			self.labels += self.channels.labels
			self.used_labels = self.channels.used_labels
			j += 1
			if j == 5:
				self.output = sort_asms(self.output)
				j = 0


	def make_header(self):
		asms = []
        
		text = '.include "baserom/macros_asm.s"\n\n'
		text += '\n.text'
		text += '\n\n'
		asms += [(-1, text, 0)]

		return asms

	def progress_report(self):
		asms = []
        
		text = '/*\n'
		text += "Progress: " + str(UnknownSize) + " / " + str(input_file.GetFileSize()) + "\n"
		text += "          = " + "{:.9f}".format(float(UnknownSize)/float(input_file.GetFileSize())) + "\n"
		text += "ARMFunctions: " + str(ARMFunctions) + "\n"
		text += "ThumbFunctions: " + str(ThumbFunctions) + "\n"
		text += '*/\n\n'
		asms += [(-2, text, -1)]

		return asms

	def parse(self):
		self.parse_header()

		asms = []

		asms += self.make_header()

		asms += self.output

		asms += self.progress_report()

		asms = sort_asms(asms)
		_, _, self.last_address = asms[-1]
		asms += [(self.last_address,'@ 0x%x\n' % self.last_address, self.last_address)]
		adr = input_file.GetBaseAddress()+input_file.GetFileSize()-1
		asms += [(adr,'@end 0x%x\n' % adr, adr)]

		self.asms += asms


	def to_asm(self, labels=[]):
		"""insert outside labels here"""
		asms = self.asms

		# Incbin trailing commands that didn't get picked up
		asms = insert_asm_incbins(asms)

		for label in self.labels + labels:
			#if self.start_address <= label[0] < self.last_address:
			if 0 <= label[0] < self.last_address:
				if label[1].find('arm') != -1:
					asms += [(label[0], ".arm\n" + label[1], label[2])]
				else:
					asms += [(label[0], ".thumb\n" + label[1], label[2])]

		return '\n'.join(asm for address, asm, last_address in sort_asms(asms))
        
        
def dump_code(origin, instr_set):    
	code = Code(origin, instr_set)
	labels = code.labels
	addresses = []
	if len(origin) > 0:
		addresses = [origin[0]]
	addresses.sort()

	outputs = None

	# Place a dummy asm at the end to catch end-of-file incbins.
	index = addresses.index(code.start_address[0]) + 1
	if index < len(addresses):
		next_address = addresses[index]
		max_command_length = 5
		if next_address - code.last_address <= max_command_length:
			code.asms += [(next_address, '', next_address)]

	output = code.to_asm(labels) + '\n'
	filename = '.s'
	outputs = (filename, output)

	return outputs


class ARMDisassembler(object):
    """
    ARM disassembler
    """

    def extract_code(self, filename, base_address, offset, instr_set, debug=False):
        output = ""
        
        (filename_, output) = dump_code(offset, instr_set)
        with open(os.path.join(filename.replace(".bin", "") + filename_), 'w') as out:
            out.write(output)
    
        return (output, offset)

if __name__ == "__main__":
    disassem = ARMDisassembler()
    
    start_time = time.clock()
    
    filename = sys.argv[1]
    base_address = sys.argv[2]
    base_address = int(base_address, 16)
    MaximumInstrMain = sys.argv[3]
    MaximumInstrMain = int(MaximumInstrMain, 10)
    MaximumInstrBranch = sys.argv[4]
    MaximumInstrBranch = int(MaximumInstrBranch, 10)
    filename_labels = sys.argv[5]
    filename_startpoints = sys.argv[6]
    filename_jumptables = sys.argv[7]
    filename_addjumps = sys.argv[8]
    filename_addjumps_arm = sys.argv[9]
    filename_function_area = sys.argv[10]
    filename_function_area_arm = sys.argv[11]
        
    input_file.init(filename, base_address)
    
    with open(filename_labels) as f:
        content = f.readlines()
    for line in content:
        line = line.strip('\n\r')
        l = line.split(" ")
        if((len(l) == 2) or (len(l) == 3)):
            add_label(int(l[0], 16), l[1])
    
    start_offset = []
    instr_set = []
    with open(filename_startpoints) as f:
        content = f.readlines()
    for line in content:
        if line.find(" ") != -1:
            adr = int(line.split(" ")[0], 16)
            if input_file.AdrInRange(adr, debug=True):
                start_offset += [adr]
                instr_set += [line.split(" ")[1]]
    
    with open(filename_jumptables) as f:
        content = f.readlines()
    for line in content:
        if line.find(" ") != -1:
            start_adr = int(line.split(" ")[0], 16)
            end_adr = int(line.split(" ")[1], 16)
            if start_adr < base_address: start_adr += base_address
            if end_adr < base_address: end_adr += base_address
            while start_adr < end_adr:
                add_value(start_adr)
                function_adr = input_file.ReadWord(start_adr)
                if input_file.AdrInRange(function_adr):
                    if (function_adr & 1) == 1:
                        instr_set += ["thumb"]
                        function_adr -= 1
                    else:
                        instr_set += ["arm"]
                    start_offset += [function_adr]
                    add_label(function_adr, 'Function_%x' % (function_adr))
                start_adr += 4
    
    with open(filename_addjumps) as f:
        content = f.readlines()
    for line in content:
        if line.find(" ") != -1:
            start_adr = int(line.split(" ")[0], 16)
            end_adr = int(line.split(" ")[1], 16)
            base_adr = start_adr
            #add_label(base_adr, 'Jumppoints_%x' % (base_adr))
            print("base_adr: " + hex(base_adr))
            while start_adr < end_adr:
                function_adr = input_file.ReadHWord(start_adr) + 2 + base_adr
                #branch_22209ce - Jumppoints_22209a6 - 2 @ 0x26
                if start_adr == base_adr:
                    add_reljumps(start_adr, 'Jumppoints_%x:\n.hword branch_%x - Jumppoints_%x - 2' % (base_adr, function_adr, base_adr))
                else:
                    add_reljumps(start_adr, '.hword branch_%x - Jumppoints_%x - 2' % (function_adr, base_adr))
                #print("function_adr: " + hex(function_adr))
                if input_file.AdrInRange(function_adr):
                    instr_set += ["thumb"]
                    start_offset += [function_adr]
                    add_label(function_adr, 'branch_%x' % (function_adr))
                start_adr += 2
    
    with open(filename_addjumps_arm) as f:
        content = f.readlines()
    for line in content:
        if line.find(" ") != -1:
            start_adr = int(line.split(" ")[0], 16)
            end_adr = int(line.split(" ")[1], 16)
            base_adr = start_adr
            #add_label(base_adr, 'Jumppoints_%x' % (base_adr))
            print("base_adr: " + hex(base_adr))
            while start_adr < end_adr:
                #print("function_adr: " + hex(function_adr))
                if input_file.AdrInRange(start_adr):
                    instr_set += ["arm"]
                    start_offset += [start_adr]
                start_adr += 4
    
    with open(filename_function_area) as f:
        content = f.readlines()
    for line in content:
        if line.find(" ") != -1:
            start_adr = int(line.split(" ")[0], 16)
            end_adr = int(line.split(" ")[1], 16)
            instr_type = line.split(" ")[2]
            base_adr = start_adr
            print("function_area: " + hex(base_adr))
            print("base_adr: " + hex(base_adr))
            instr_set += [instr_type]
            start_offset += [base_adr]
            start_adr += 2
            while start_adr < end_adr:
                instruction = input_file.ReadHWord(start_adr)
                if (instruction & 0xff00) == 0xb500:        # Format 14: [0xff00, 0xb500, "push%_ {%l,lr}"],
                    print("function: " + hex(start_adr))
                    instr_set += [instr_type]
                    start_offset += [start_adr]
                start_adr += 2
    
    with open(filename_function_area_arm) as f:
        content = f.readlines()
    for line in content:
        if line.find(" ") != -1:
            start_adr = int(line.split(" ")[0], 16)
            end_adr = int(line.split(" ")[1], 16)
            instr_type = line.split(" ")[2]
            base_adr = start_adr
            print("armfunction_area: " + hex(base_adr))
            print("base_adr: " + hex(base_adr))
            instr_set += [instr_type]
            start_offset += [base_adr]
            start_adr += 4
            while start_adr < end_adr:
                instruction = input_file.ReadWord(start_adr)
                #	stmfd   sp!, {r3-r11,lr}
                if (instruction & (0x0e100000 | (1<<24) | (1<<23) | (0xf<<16) | (1<<14)) == (0x08000000 | (1<<24) | (13<<16) | (1<<14))):        # [0x0e100000, 0x08000000, "stm%c%m%_ %r4%l"],
                #if (instruction & (0x0e100000)) == (0x08000000):        # [0x0e100000, 0x08000000, "stm%c%m%_ %r4%l"],
                    print("armfunction: " + hex(start_adr))            # stmfd   sp!, {r3-r5,lr}
                    instr_set += [instr_type]
                    start_offset += [start_adr]
                start_adr += 4
    

# stmfd   sp!, {r3-r5,lr}
# [0x0e100000, 0x08000000, "stm%c%m%_ %r4%l"],

    #dic = {}
    #dic[12] = "test"
    #print(dic[12])
    #print(get_label_for(0x20e1f6d))
    disassem.extract_code(filename, base_address, start_offset, instr_set)[0]
    
    elapsed_time = (time.clock() - start_time)
    
    print("Time: " + str(elapsed_time))
    #print("Progress: " + str(InstructionSize) + " / " + str(input_file.GetFileSize()))
    print("Progress: " + str(UnknownSize) + " / " + str(input_file.GetFileSize()))
    print("          = " + "{:.9f}".format(float(UnknownSize)/float(input_file.GetFileSize())))
    print("ARMFunctions: " + str(ARMFunctions))
    print("ThumbFunctions: " + str(ThumbFunctions))
