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
import array

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

    def __init__(self, config):
        self.config = config

    def initialize(self):
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
        


    def output_bank_opcodes(self, path, filename, original_offset=0, end_address=0, debug=False):
        output = ""
        
        folder = path

        offset = original_offset
        
        for file in os.listdir(folder):
            if file.endswith(".bin"):
                print(file)
        
        #output += "\nFNTChunkSize: " + str(BTNFChunkSize)
        
        #filename = path + ".narc"
        if not os.path.exists(os.path.dirname(filename)):
            os.makedirs(os.path.dirname(filename))
        f = open(filename, 'wb')
        
        f.write(bytearray("NARC"))
        filepart = bytearray([0xfe, 0xff])
        f.write(filepart)
        filepart = bytearray([00, 01]) # version
        f.write(filepart)
        f.write(bytearray([00, 00, 00, 00]))
        f.write(bytearray([0x10, 00])) # chunk size
        f.write(bytearray([03, 00])) # nr of chunks
        
        BTAF_Begin = f.tell()
        f.write(bytearray("BTAF"))
        f.write(bytearray([00, 00, 00, 00]))
        f.write(bytearray([00, 00]))
        f.write(bytearray([00, 00]))
        # FAT
        
        a = array.array("I")
        aligns = []
        offset = 0
        NrOfFiles = 0
        for file in os.listdir(folder):
            if file.endswith(".bin"):
                NrOfFiles += 1
                a.append(offset)
                size = os.path.getsize(folder + "/" + file)
                if((size % 4) == 0):
                    aligns.append(0)
                else:
                    aligns.append(4 - (size % 4))
                offset += size
                if((size % 4) == 0):
                    offset += 0
                else:
                    offset += 4 - (size % 4)
                a.append(offset)
                #f.write(bytearray([00, 00, 00, 00]))
                #f.write(bytearray([00, 00, 00, 00]))
        
        a.tofile(f)
        BTAF_End = f.tell()
        BTAF_Size = BTAF_End - BTAF_Begin
        
        f.write(bytearray("BTNF"))
        f.write(bytearray([0x10, 00, 00, 00]))
        f.write(bytearray([04, 00, 00, 00]))
        f.write(bytearray([00, 00, 01, 00]))
        
        GMIF_Begin = f.tell()
        f.write(bytearray("GMIF"))
        f.write(bytearray([00, 00, 00, 00]))
        
        i = 0
        for file in os.listdir(folder):
            if file.endswith(".bin"):
                filepath = os.path.join(self.config.path, folder + "/" + file)
                filepart = bytearray(open(filepath, "rb").read())
                f.write(filepart)
                if(aligns[i] == 2):
                    f.write(bytearray([00, 00]))
                i += 1
        
        GMIF_End = f.tell()
        GMIF_Size = GMIF_End - GMIF_Begin
        
        f.seek(0x8)
        filesize = os.path.getsize(filename)
        b = array.array("I")
        b.append(filesize)
        b.tofile(f)
        
        f.seek(0x14)
        c = array.array("I")
        c.append(BTAF_Size)
        c.tofile(f)
        
        f.seek(0x18)
        c = array.array("h")
        c.append(NrOfFiles)
        c.tofile(f)
        
        f.seek(GMIF_Begin+4)
        d = array.array("I")
        d.append(GMIF_Size)
        d.tofile(f)
        
        return (output, offset)

if __name__ == "__main__":
    conf = configuration.Config()
    disasm = Disassembler(conf)
    disasm.initialize()
    
    path = sys.argv[1]
    filedir = path + ".narc"
    if(len(sys.argv) > 2): filedir = sys.argv[2]

    output = disasm.output_bank_opcodes(path, filedir)[0]
    print output
