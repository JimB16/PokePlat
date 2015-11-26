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
        
    def write_overlays_in_files(self, ARM9Overlay, ARM9OverlaySize, OverlayDir, NameDir):
        if ARM9OverlaySize == 0: return None
        offset = ARM9Overlay
        end_address = ARM9Overlay + ARM9OverlaySize
        ARM9OverlayOld = ARM9Overlay
        ARM9OverlaySizeOld = ARM9OverlaySize
        
        while offset < end_address:
            ARM9OverlayNew = ((ARM9OverlayOld + ARM9OverlaySizeOld) + 0x1ff) & 0xfffffe00
            ARM9OverlayNewSize = disasm.get_word_from_rom(offset+8)
            #disasm.write_section_in_file(ARM9OverlayNew, ARM9OverlayNewSize)
            disasm.write_section_in_file_wfilename(ARM9OverlayNew, ARM9OverlayNewSize, OverlayDir + "overlay_" + "{:04}".format(disasm.get_word_from_rom(offset+0)) + ".bin")
            RomMap.append(RomSection(NameDir + "overlay_" + "{:04}".format(disasm.get_word_from_rom(offset+0)) + ".bin", ARM9OverlayNew))
            
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
        
    def get_fnt_maintable(self, FNTStart, ID, path, NameDir, IDFirstFileSubTable):
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
            filename = NameDir + disasm.get_string_from_rom(FNTStart+SubTable+offset+1, FNTSub1Length)
            output += "\n" + filename
            
            if FNTSub1Type > 0x80: # directory
                FNTSubID = disasm.get_byte_from_rom(FNTStart+SubTable+offset+1+FNTSub1Length)
                output += " - " + hex(FNTSubID)
                output += "\n" + hex(disasm.get_fat_Start(FNTSubID)) + " - " + hex(disasm.get_fat_Start(FNTSubID))
                output += disasm.get_fnt_maintable(FNTStart, FNTSubID, path + disasm.get_string_from_rom(FNTStart+SubTable+offset+1, FNTSub1Length) + "/", NameDir + disasm.get_string_from_rom(FNTStart+SubTable+offset+1, FNTSub1Length) + "/", IDFirstFileSubTable)
            elif FNTSub1Type < 0x80: # file
                output += " - " + hex(IDFirstFileSubTable)
                output += "\n" + hex(disasm.get_fat_Start(IDFirstFileSubTable)) + " - " + hex(disasm.get_fat_Start(IDFirstFileSubTable))
                disasm.write_section_in_file_wfilename(disasm.get_fat_Start(IDFirstFileSubTable), disasm.get_fat_End(IDFirstFileSubTable) - disasm.get_fat_Start(IDFirstFileSubTable), path + disasm.get_string_from_rom(FNTStart+SubTable+offset+1, FNTSub1Length))
                
                FileFormat = chr(disasm.get_byte_from_rom(disasm.get_fat_Start(IDFirstFileSubTable))) + chr(disasm.get_byte_from_rom(disasm.get_fat_Start(IDFirstFileSubTable)+1)) + chr(disasm.get_byte_from_rom(disasm.get_fat_Start(IDFirstFileSubTable)+2)) + chr(disasm.get_byte_from_rom(disasm.get_fat_Start(IDFirstFileSubTable)+3))
                output += "\n" + FileFormat
                
                RomMap.append(RomSection(filename, disasm.get_fat_Start(IDFirstFileSubTable)))
                IDFirstFileSubTable += 1
            
            offset += 1 + FNTSub1Length
            if FNTSub1Type > 0x80:
                offset += 2
        
        return output
        
    def get_fat_Start(self, FileID):
        FATStart = disasm.get_word_from_rom(0x48)
        output = ""
        offset = FATStart + FileID*8
        
        Start = disasm.get_word_from_rom(offset)
        End = disasm.get_word_from_rom(offset+4)
        return Start
        
    def get_fat_End(self, FileID):
        FATStart = disasm.get_word_from_rom(0x48)
        output = ""
        offset = FATStart + FileID*8
        
        Start = disasm.get_word_from_rom(offset)
        End = disasm.get_word_from_rom(offset+4)
        return End


    def output_bank_opcodes(self, filename="baserom.nds", original_offset=0, end_address=0, debug=False):
        output = ""
        
        rom_path = os.path.join(self.config.path, filename)
        self.rom = bytearray(open(rom_path, "rb").read())
        
        filedir = os.path.splitext(filename)[0]

        rom = self.rom

        offset = original_offset

        Header = 0
        HeaderSize = 0x4000
        #disasm.write_section_in_file(Header, HeaderSize)
        disasm.write_section_in_file_wfilename(Header, HeaderSize, filedir + "/" + "header.bin")
        RomMap.append(RomSection("header.bin", Header))
        
        ARM9ROM = disasm.get_word_from_rom(0x20)
        ARM9ROMSize = disasm.get_word_from_rom(0x2c) + 12
        #disasm.write_section_in_file(ARM9ROM, ARM9ROMSize)
        disasm.write_section_in_file_wfilename(ARM9ROM, ARM9ROMSize, filedir + "/" + "arm9.bin")
        RomMap.append(RomSection("arm9.bin", ARM9ROM))
        
        ARM9Overlay = disasm.get_word_from_rom(0x50)
        ARM9OverlaySize = disasm.get_word_from_rom(0x54)
        #disasm.write_section_in_file(ARM9Overlay, ARM9OverlaySize)
        disasm.write_section_in_file_wfilename(ARM9Overlay, ARM9OverlaySize, filedir + "/" + "y9.bin")
        RomMap.append(RomSection("y9.bin", ARM9Overlay))
        
#        ARM9Overlay1 = ((ARM9Overlay + ARM9OverlaySize) + 0x1ff) & 0xfffffe00
#        ARM9Overlay1Size = disasm.get_word_from_rom(ARM9Overlay+8)
#        disasm.write_section_in_file(ARM9Overlay1, ARM9Overlay1Size)
        
#        ARM9Overlay2 = ((ARM9Overlay1 + ARM9Overlay1Size) + 0x1ff) & 0xfffffe00
#        ARM9Overlay2Size = disasm.get_word_from_rom(ARM9Overlay+0x28)
#        disasm.write_section_in_file(ARM9Overlay2, ARM9Overlay2Size)
        
        #disasm.write_overlays_in_files(ARM9Overlay, ARM9OverlaySize)
        
        ARM7ROM = disasm.get_word_from_rom(0x30)
        ARM7ROMSize = disasm.get_word_from_rom(0x3c)
        #disasm.write_section_in_file(ARM7ROM, ARM7ROMSize)
        disasm.write_section_in_file_wfilename(ARM7ROM, ARM7ROMSize, filedir + "/" + "arm7.bin")
        RomMap.append(RomSection("arm7.bin", ARM7ROM))
        
        ARM7Overlay = disasm.get_word_from_rom(0x58)
        ARM7OverlaySize = disasm.get_word_from_rom(0x5c)
        #disasm.write_section_in_file(ARM7Overlay, ARM7OverlaySize)
        disasm.write_section_in_file_wfilename(ARM7Overlay, ARM7OverlaySize, filedir + "/" + "y7.bin")
        addRomSection("y7.bin", ARM7Overlay, ARM7OverlaySize)
        
        FNT = disasm.get_word_from_rom(0x40)
        FNTSize = disasm.get_word_from_rom(0x44)
        #disasm.write_section_in_file(FNT, FNTSize)
        disasm.write_section_in_file_wfilename(FNT, FNTSize, filedir + "/" + "fnt.bin")
        RomMap.append(RomSection("fnt.bin", FNT))
        
        FAT = disasm.get_word_from_rom(0x48)
        FATSize = disasm.get_word_from_rom(0x4c)
        #disasm.write_section_in_file(FAT, FATSize)
        disasm.write_section_in_file_wfilename(FAT, FATSize, filedir + "/" + "fat.bin")
        RomMap.append(RomSection("fat.bin", FAT))
        
        #disasm.write_fats_in_files(FAT, FATSize)
        
        Banner = disasm.get_word_from_rom(0x68)
        BannerSize = 0xa00;
        #disasm.write_section_in_file(Banner, BannerSize)
        disasm.write_section_in_file_wfilename(Banner, BannerSize, filedir + "/" + "banner.bin")
        RomMap.append(RomSection("banner.bin", Banner))

        output += "\nARM9Rom:     " + hex(ARM9ROM) + " - " + hex(ARM9ROM + ARM9ROMSize)
        output += "\nARM9Overlay: " + hex(ARM9Overlay) + " - " + hex(ARM9Overlay + ARM9OverlaySize)
        output += "\nARM7Rom:     " + hex(ARM7ROM) + " - " + hex(ARM7ROM + ARM7ROMSize)
        output += "\nARM7Overlay: " + hex(ARM7Overlay)
        output += "\nFNT:         " + hex(FNT)
        output += "\nFAT:         " + hex(FAT)
        output += "\nIcon/Title:  " + hex(Banner)
        #output += disasm.write_fnts_filenames(FNT, FNTSize)
        disasm.write_fnts_filenames(FNT, FNTSize)
        output += "\n"
        output += disasm.get_fnt_maintable(FNT, 0, filedir + "/data/", "/data/", 0)
        #disasm.get_fnt_maintable(FNT, 0, "/", 0)
        
        disasm.write_overlays_in_files(ARM9Overlay, ARM9OverlaySize, filedir + "/overlay/", "/overlay/")
        
        
        
        filename = filedir + "/" + "RomMap.map"
        if not os.path.exists(os.path.dirname(filename)):
            os.makedirs(os.path.dirname(filename))
        f = open(filename, 'w')
        
        RomMap.sort(key=operator.attrgetter('address'))
        for item in RomMap:
            f.write(hex(item.address) + " " + str(item.name) + "\n")
        
        
        return (output, offset)

if __name__ == "__main__":
    conf = configuration.Config()
    disasm = Disassembler(conf)

    filename = sys.argv[1]
    
    output = disasm.output_bank_opcodes(filename)[0]
    print output
