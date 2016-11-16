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
        MsgNr = 0
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
            
            #print(str(temp_binarystrings)) # debug
            
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
                    text += "%0.4x" % temp_binarystrings[n]
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
                elif char == 0x1e2:
                    text += "\\x01e2"
                elif char == 0xf100:
                    text += "\\c"
                    char2 = 0
                    shift = 0
                    while (n+1 < len(temp_binarystrings)) and (temp_binarystrings[n+1] != SYMBOLS[0xe000]):
                        char2 |= (temp_binarystrings[n+1] << shift)
                        shift += 15
                        n += 1
                    
                    val = 0
                    while (shift >= 9) and (0x1ff != (char2&0x1ff)):
                        val = char2&0x1ff
                        char2 = char2>>9
                        shift -= 9
                        text += SYMBOLS[val]
                    
                    #text += SYMBOLS[temp_binarystrings[n+1]]
                    #n += 1
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
