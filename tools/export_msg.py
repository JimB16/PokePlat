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

import configuration


class RomSection():
    def __init__(self, name, address):
        self.name = name
        self.address = address

def getAddress(item):
    return item.address

RomMap = []

def addRomSection(name, address, size):
    if size > 0:
        RomMap.append(RomSection(name, address))
    return None


# New versions of json don't have read anymore.
if not hasattr(json, "read"):
    json.read = json.loads

spacing = "\t"

def asm_label(address):
    """
    Return the ASM label using the address.
    """
    # why using a random value when you can use the address?
    return '.asm_%x' % address

def data_label(address):
    return '.data_%x' % address

class Disassembler(object):
    """
    GBC disassembler
    """

    def __init__(self, config):
        """
        Setup the class instance.
        """
        self.config = config

    def initialize(self):
        """
        Setup the disassembler.
        """

        # TODO: fix how ROM is handled throughout the project.
        rom_path = os.path.join(self.config.path, "baserom.nds")
        self.rom = bytearray(open(rom_path, "rb").read())

    def get_word_from_rom(self, addr):
        rom = self.rom
        return (rom[addr] << 0) | (rom[addr+1] << 8) | (rom[addr+2] << 16) | (rom[addr+3] << 24)

    def get_hword_from_rom(self, addr):
        rom = self.rom
        return (rom[addr] << 0) | (rom[addr+1] << 8)

    def get_byte_from_rom(self, addr):
        rom = self.rom
        return rom[addr]

    def get_string_from_rom(self, addr, length):
        rom = self.rom
        output = ""
        i = 0
        while i < length:
            output += chr(rom[addr+i])
            i += 1
        return output

    def write_section_in_file(self, addr, size):
        if size == 0: return None
        rom = self.rom
        filename = 'data/data_' + "{:08x}".format(addr) + '.bin'
        if not os.path.exists(os.path.dirname(filename)):
            os.makedirs(os.path.dirname(filename))
        f = open(filename, 'wb')
        newFileBytes = []
        offset = addr
        end_address = addr+size
        
        while offset < end_address:
            current_byte = rom[offset]
            newFileBytes.append(current_byte) # new
            offset += 1
        
        fByteArray = bytearray(newFileBytes)
        f.write(fByteArray)
        return None

    def write_section_in_file_wfilename(self, addr, size, filename):
        if size == 0: return None
        rom = self.rom
        if not os.path.exists(os.path.dirname(filename)):
            os.makedirs(os.path.dirname(filename))
        f = open(filename, 'wb')
        newFileBytes = []
        offset = addr
        end_address = addr+size
        
        while offset < end_address:
            current_byte = rom[offset]
            newFileBytes.append(current_byte) # new
            offset += 1
        
        fByteArray = bytearray(newFileBytes)
        f.write(fByteArray)
        return None
        
    def write_overlays_in_files(self, ARM9Overlay, ARM9OverlaySize):
        if ARM9OverlaySize == 0: return None
        offset = ARM9Overlay
        end_address = ARM9Overlay + ARM9OverlaySize
        ARM9OverlayOld = ARM9Overlay
        ARM9OverlaySizeOld = ARM9OverlaySize
        
        while offset < end_address:
            ARM9OverlayNew = ((ARM9OverlayOld + ARM9OverlaySizeOld) + 0x1ff) & 0xfffffe00
            ARM9OverlayNewSize = disasm.get_word_from_rom(offset+8)
            #disasm.write_section_in_file(ARM9OverlayNew, ARM9OverlayNewSize)
            disasm.write_section_in_file_wfilename(ARM9OverlayNew, ARM9OverlayNewSize, "data/overlay/" + "overlay_" + "0x{:02x}".format(disasm.get_word_from_rom(offset+0)) + ".bin")
            RomMap.append(RomSection("overlay/overlay_" + "0x{:02x}".format(disasm.get_word_from_rom(offset+0)) + ".bin", ARM9OverlayNew))
            
            offset += 0x20
            ARM9OverlayOld = ARM9OverlayNew
            ARM9OverlaySizeOld = ARM9OverlayNewSize        
        return None
        
    def write_fats_in_files(self, FATStart, FATSize):
        if FATSize == 0: return None
        offset = FATStart
        end_address = FATStart + FATSize
        
        while offset < end_address:
            Start = disasm.get_word_from_rom(offset)
            Size = disasm.get_word_from_rom(offset+4) - Start
            disasm.write_section_in_file(Start, Size)
            offset += 0x8     
        return None
        
    def write_fnts_filenames(self, FNTStart, FNTSize):
        if FNTSize == 0: return None
        output = "\nFNT Filenames:"
        
        offset = FNTStart
        end_address = FNTStart + FNTSize
        
        SubTable = disasm.get_word_from_rom(FNTStart+0)
        IDFirstFileSubTable = disasm.get_hword_from_rom(FNTStart+4)
        TotalNrOfDirectories = disasm.get_hword_from_rom(FNTStart+6)
        output += "\nTotal Number of directories: " + str(TotalNrOfDirectories)
        
        FNTSub1Type = disasm.get_byte_from_rom(FNTStart+SubTable+0)
        if FNTSub1Type < 0x80:
            FNTSub1Length = FNTSub1Type
        else:
            FNTSub1Length = FNTSub1Type-0x80
        
        output += "\nType: " + hex(FNTSub1Type)
        output += "\nLength: " + hex(FNTSub1Length)
        output += "\n" + disasm.get_string_from_rom(FNTStart+SubTable+1, FNTSub1Length)
        
        SubTable = disasm.get_word_from_rom(FNTStart+0+8)
        IDFirstFileSubTable = disasm.get_hword_from_rom(FNTStart+4+8)
        TotalNrOfDirectories = disasm.get_hword_from_rom(FNTStart+6+8)
        output += "\nTotal Number of directories: " + str(TotalNrOfDirectories)
        
        FNTSub1Type = disasm.get_byte_from_rom(FNTStart+SubTable+0)
        if FNTSub1Type < 0x80:
            FNTSub1Length = FNTSub1Type
        else:
            FNTSub1Length = FNTSub1Type-0x80
        
        output += "\nType: " + hex(FNTSub1Type)
        output += "\nLength: " + hex(FNTSub1Length)
        output += "\n" + disasm.get_string_from_rom(FNTStart+SubTable+1, FNTSub1Length)
        
        return output
        
    def get_fnt_maintable(self, FNTStart, ID, path, IDFirstFileSubTable):
        output = ""
        #output = "\n" + path + " " + hex(ID)
        
        SubTable = disasm.get_word_from_rom(FNTStart+(ID & 0xfff)*8)
        IDFirstFileSubTable = disasm.get_hword_from_rom(FNTStart+(ID & 0xfff)*8+4)
        TotalNrOfDirectories = disasm.get_hword_from_rom(FNTStart+(ID & 0xfff)*8+6)
        
        offset = 0
        i = 0
        
        while 1:
            FNTSub1Type = disasm.get_byte_from_rom(FNTStart+SubTable+offset+0)
            if FNTSub1Type == 0:
                return output
            elif FNTSub1Type < 0x80:
                FNTSub1Length = FNTSub1Type
            else:
                FNTSub1Length = FNTSub1Type-0x80
            
            #output += "\nType: " + hex(FNTSub1Type)
            #output += "\nLength: " + hex(FNTSub1Length)
            filename = path + disasm.get_string_from_rom(FNTStart+SubTable+offset+1, FNTSub1Length)
            output += "\n" + filename
            
            if FNTSub1Type > 0x80: # directory
                FNTSubID = disasm.get_byte_from_rom(FNTStart+SubTable+offset+1+FNTSub1Length)
                output += " - " + hex(FNTSubID)
                output += "\n" + hex(disasm.get_fat_Start(FNTSubID)) + " - " + hex(disasm.get_fat_Start(FNTSubID))
                output += disasm.get_fnt_maintable(FNTStart, FNTSubID, path + disasm.get_string_from_rom(FNTStart+SubTable+offset+1, FNTSub1Length) + "/", IDFirstFileSubTable)
            elif FNTSub1Type < 0x80: # file
                output += " - " + hex(IDFirstFileSubTable)
                output += "\n" + hex(disasm.get_fat_Start(IDFirstFileSubTable)) + " - " + hex(disasm.get_fat_Start(IDFirstFileSubTable))
                disasm.write_section_in_file_wfilename(disasm.get_fat_Start(IDFirstFileSubTable), disasm.get_fat_End(IDFirstFileSubTable) - disasm.get_fat_Start(IDFirstFileSubTable), "data" + filename)
                RomMap.append(RomSection(filename, disasm.get_fat_Start(IDFirstFileSubTable)))
                IDFirstFileSubTable += 1
            
            offset += 1 + FNTSub1Length
            if FNTSub1Type > 0x80:
                offset += 2
        
        return output
        


    # source = http://projectpokemon.org/rawdb/platinum/formats/msg.php
    # http://projectpokemon.org/rawdb/platinum/msg/1.php
    def output_bank_opcodes(self, filename, output_folder, original_offset=0, end_address=0, debug=False):
        SYMBOLS = [""] * 0x10000
        j = 0
        while j < 0x10000:
            SYMBOLS[j] = " " + hex(j)
            j += 1

    
        with open("tools/lists/poketext.tbl") as f:
            content = f.readlines()

        for l in content:
            l = l.decode('utf-8')
            l2 = []
            l2 = [l[0:4]]
            l2 += [l[5:-2]]
            #print("0x" + l2[0] + ", " + l2[1])
            #print("0x" + l2[0] + ", " + l2[1])
            #l2[0].encode('utf-8')
            #l2[0] = l2[0].decode('utf-8')
            #print(l2[0].encode('ascii','ignore') + " = " + l2[1])
            #print(type(l2[0]))
            #print(str(int(l2[0].encode('ascii','ignore'), 16)) + ", " + l2[1])
            #py_output += "\"" + l2[3] + "\",\n"
            SYMBOLS[int(l2[0].encode('ascii','ignore'), 16)] = l2[1]
        
#        SYMBOLS[0x121] = "0"
#        SYMBOLS[0x122] = "1"
#        SYMBOLS[0x123] = "2"
#        SYMBOLS[0x124] = "3"
#        SYMBOLS[0x125] = "4"
#        SYMBOLS[0x126] = "5"
#        SYMBOLS[0x127] = "6"
#        SYMBOLS[0x128] = "7"
#        SYMBOLS[0x129] = "8"
#        SYMBOLS[0x12a] = "9"
#        SYMBOLS[0x12b] = "A"
#        SYMBOLS[0x12c] = "B"
#        SYMBOLS[0x12d] = "C"
#        SYMBOLS[0x12e] = "D"
#        SYMBOLS[0x12f] = "E"
#        SYMBOLS[0x130] = "F"
#        SYMBOLS[0x131] = "G"
#        SYMBOLS[0x132] = "H"
#        SYMBOLS[0x133] = "I"
#        SYMBOLS[0x134] = "J"
#        SYMBOLS[0x135] = "K"
#        SYMBOLS[0x136] = "L"
#        SYMBOLS[0x137] = "M"
#        SYMBOLS[0x138] = "N"
#        SYMBOLS[0x139] = "O"
#        SYMBOLS[0x13a] = "P"
#        SYMBOLS[0x13b] = "Q"
#        SYMBOLS[0x13c] = "R"
#        SYMBOLS[0x13d] = "S"
#        SYMBOLS[0x13e] = "T"
#        SYMBOLS[0x13f] = "U"
#        SYMBOLS[0x140] = "V"
#        SYMBOLS[0x141] = "W"
#        SYMBOLS[0x142] = "X"
#        SYMBOLS[0x143] = "Y"
#        SYMBOLS[0x144] = "Z"
#        SYMBOLS[0x145] = "a"
#        SYMBOLS[0x146] = "b"
#        SYMBOLS[0x147] = "c"
#        SYMBOLS[0x148] = "d"
#        SYMBOLS[0x149] = "e"
#        SYMBOLS[0x14a] = "f"
#        SYMBOLS[0x14b] = "g"
#        SYMBOLS[0x14c] = "h"
#        SYMBOLS[0x14d] = "i"
#        SYMBOLS[0x14e] = "j"
#        SYMBOLS[0x14f] = "k"
#        SYMBOLS[0x150] = "l"
#        SYMBOLS[0x151] = "m"
#        SYMBOLS[0x152] = "n"
#        SYMBOLS[0x153] = "o"
#        SYMBOLS[0x154] = "p"
#        SYMBOLS[0x155] = "q"
#        SYMBOLS[0x156] = "r"
#        SYMBOLS[0x157] = "s"
#        SYMBOLS[0x158] = "t"
#        SYMBOLS[0x159] = "u"
#        SYMBOLS[0x15a] = "v"
#        SYMBOLS[0x15b] = "w"
#        SYMBOLS[0x15c] = "x"
#        SYMBOLS[0x15d] = "y"
#        SYMBOLS[0x15e] = "z"
#        SYMBOLS[0x188] = "é"
#        SYMBOLS[0x1ab] = "!"
#        SYMBOLS[0x1ac] = "?"
#        SYMBOLS[0x1ad] = ","
#        SYMBOLS[0x1ae] = "."
#        SYMBOLS[0x1b3] = "'"
#        SYMBOLS[0x1b4] = "“"
#        SYMBOLS[0x1b5] = "”"
#        SYMBOLS[0x1be] = "-"
#        SYMBOLS[0x1c0] = "#"
#        SYMBOLS[0x1c4] = ":"
#        SYMBOLS[0x1d2] = "%"
#        SYMBOLS[0x1de] = " "
#        SYMBOLS[0x25bc] = "\\r"
#        SYMBOLS[0x25bd] = "\\f"
#        SYMBOLS[0xe000] = "\\n"
        SYMBOLS[0xffff] = u''
        
        output = ""
        
        folder = filename.replace(".", "")
        
        rom_path = os.path.join(self.config.path, filename)
        self.rom = bytearray(open(rom_path, "rb").read())

        rom = self.rom

        offset = original_offset

        num = disasm.get_hword_from_rom(0)
        seed = disasm.get_hword_from_rom(2)
        
        
        output += "num: " + str(num)
        output += "\nseed: " + hex(seed)
        offsets = []
        sizes = []
        binarystrings = []
        texts = []
        
        i = 0
        while i < num:
            key = ((seed*(i+1)*0x2FD)&0xFFFF) | ((seed*(i+1)*0x2FD0000)&0xFFFF0000)
            offsets.append(disasm.get_word_from_rom(4+8*i) ^ key)
            sizes.append(disasm.get_word_from_rom(4+4+8*i) ^ key)
            i += 1
        #print("offsets: ")
        #print(offsets)
        #print("sizes: ")
        #print(sizes)
        
        i = 0
        while i < num:
            offset = offsets[i]
            size = sizes[i]
            key = (0x91BD3*(i+1))&0xFFFF
            #output += "\n" + str(i) + "= " + "offset: " + str(offset) + " size: " + str(size)
            #output += "\n" + str(i) + ":"
            
            j = 0
            temp_binarystrings = []
            while j < size:
                temp_binarystrings.append(disasm.get_hword_from_rom(offset+2*j) ^ key)
                key = (key+0x493D)&0xFFFF
                j += 1
            binarystrings.append(temp_binarystrings)
            
            #output += "\n" + hex(binarystrings[i][0])
            
            text = ""
            #text += "\""
            #for char in temp_binarystrings:
            n = 0
            while n < len(temp_binarystrings):
                char = temp_binarystrings[n]
                if char == 0xfffe:
                    text += "\\v"
                    n += 1
                    #text += hex(temp_binarystrings[n])
                    text += "%0.4x" % temp_binarystrings[n] #int("affe", 16)
                    n += 1
                    nr = temp_binarystrings[n]
                    n += 1
                    tmp = 0
                    while tmp < nr:
                        #text += "\\x" + hex(temp_binarystrings[n+tmp])
                        text += "\\x" + "%0.4x" % temp_binarystrings[n+tmp]
                        tmp += 1
                    n += tmp
                    text += ""
                    n -= 1
                else:
                    text += SYMBOLS[char]
                n += 1
            #text += "\""
            
            output += "\n" + text
            
            i += 1
        
        
        if not os.path.exists(os.path.dirname(output_folder)):
            os.makedirs(os.path.dirname(output_folder))        
        head, tail = os.path.split(filename)
        with open(os.path.join(output_folder + tail.replace(".bin", ".s")), 'w') as out:
            out.write(output.encode('utf8'))
        
        return (output, offset)

if __name__ == "__main__":
    conf = configuration.Config()
    disasm = Disassembler(conf)
    disasm.initialize()
    
    filename = sys.argv[1]
    output_folder = sys.argv[2]

    output = disasm.output_bank_opcodes(filename, output_folder)[0]
    #print output
