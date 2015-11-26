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
        


    def output_bank_opcodes(self, filename, original_offset=0, end_address=0, debug=False):
        output = ""
        
        folder = filename.replace(".narc", "_narc")
        
        rom_path = os.path.join(self.config.path, filename)
        self.rom = bytearray(open(rom_path, "rb").read())

        rom = self.rom

        offset = original_offset

        ChunkNameNARC = disasm.get_word_from_rom(0)
        ByteOrder = disasm.get_hword_from_rom(4)
        Version = disasm.get_hword_from_rom(6)
        FileSize = disasm.get_word_from_rom(8)
        ChunkSize = disasm.get_hword_from_rom(0xC)
        NrOfChunks = disasm.get_hword_from_rom(0xE)
        
        BTAFChunkName = disasm.get_word_from_rom(0x10)
        BTAFChunkSize = disasm.get_word_from_rom(0x14)
        NrOfFiles = disasm.get_hword_from_rom(0x18)
        
        FATStart = 0x1C
        BTNFStart = 0x10 + BTAFChunkSize
        FNTStart = BTNFStart + 8
        BTNFChunkSize = disasm.get_word_from_rom(BTNFStart + 0x4)
        IMGStart = 0x10 + BTAFChunkSize + BTNFChunkSize
        
        
        output += "NrOfFiles: " + str(NrOfFiles)
        output += "\nFNTChunkSize: " + str(BTNFChunkSize)
        
        i = 0
        while i < NrOfFiles:
            #disasm.write_section_in_file_wfilename(disasm.get_word_from_rom(FATStart+8*i) + IMGStart+8, disasm.get_word_from_rom(FATStart+8*i+4)-disasm.get_word_from_rom(FATStart+8*i), "./" + folder + "/data_" + "{:08x}".format(disasm.get_word_from_rom(FATStart+8*i) + IMGStart+8) + ".bin")
            FileType = chr(disasm.get_byte_from_rom(disasm.get_word_from_rom(FATStart+8*i) + IMGStart+8)) + chr(disasm.get_byte_from_rom(disasm.get_word_from_rom(FATStart+8*i) + IMGStart+8+1)) + chr(disasm.get_byte_from_rom(disasm.get_word_from_rom(FATStart+8*i) + IMGStart+8+2)) + chr(disasm.get_byte_from_rom(disasm.get_word_from_rom(FATStart+8*i) + IMGStart+8+3))
            #print("FileType: " + FileType)
            if FileType == "RGCN":
                disasm.write_section_in_file_wfilename(disasm.get_word_from_rom(FATStart+8*i) + IMGStart+8, disasm.get_word_from_rom(FATStart+8*i+4)-disasm.get_word_from_rom(FATStart+8*i), "./" + folder + "/data_" + "{:08}".format(i) + ".rgcn")
            elif FileType == "RLCN":
                disasm.write_section_in_file_wfilename(disasm.get_word_from_rom(FATStart+8*i) + IMGStart+8, disasm.get_word_from_rom(FATStart+8*i+4)-disasm.get_word_from_rom(FATStart+8*i), "./" + folder + "/data_" + "{:08}".format(i) + ".rlcn")
            else:
                disasm.write_section_in_file_wfilename(disasm.get_word_from_rom(FATStart+8*i) + IMGStart+8, disasm.get_word_from_rom(FATStart+8*i+4)-disasm.get_word_from_rom(FATStart+8*i), "./" + folder + "/data_" + "{:08}".format(i) + ".bin")
            i += 1
            #disasm.write_section_in_file_wfilename(addr, size, filename)
        
        return (output, offset)

if __name__ == "__main__":
    conf = configuration.Config()
    disasm = Disassembler(conf)
    disasm.initialize()
    
    filename = sys.argv[1]

    output = disasm.output_bank_opcodes(filename)[0]
    print output
