# -*- coding: utf-8 -*-
"""
---
"""

import os
import sys
from copy import copy, deepcopy
from ctypes import c_int8
import random
import operator
import png

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


class RomHandler(object):
    rom = []

    def __init__(self, config):
        self.config = config

    def initialize(self):
        # TODO: fix how ROM is handled throughout the project.
        rom_path = os.path.join(self.config.path, "baserom.nds")
        self.rom = bytearray(open(rom_path, "rb").read())

    def get_word_from_rom(self, addr):
        return (self.rom[addr] << 0) | (self.rom[addr+1] << 8) | (self.rom[addr+2] << 16) | (self.rom[addr+3] << 24)

    def get_hword_from_rom(self, addr):
        return (self.rom[addr] << 0) | (self.rom[addr+1] << 8)

    def get_byte_from_rom(self, addr):
        return self.rom[addr]

    def get_string_from_rom(self, addr, length):
        output = ""
        i = 0
        while i < length:
            output += chr(self.rom[addr+i])
            i += 1
        return output

    def write_section_in_file(self, addr, size):
        if size == 0: return None
        filename = 'data/data_' + "{:08x}".format(addr) + '.bin'
        if not os.path.exists(os.path.dirname(filename)):
            os.makedirs(os.path.dirname(filename))
        f = open(filename, 'wb')
        newFileBytes = []
        offset = addr
        end_address = addr+size
        
        while offset < end_address:
            newFileBytes.append(self.rom[offset])
            offset += 1
        
        fByteArray = bytearray(newFileBytes)
        f.write(fByteArray)
        return None

    def write_section_in_file_wfilename(self, addr, size, filename):
        if size == 0: return None
        if not os.path.exists(os.path.dirname(filename)):
            os.makedirs(os.path.dirname(filename))
        f = open(filename, 'wb')
        newFileBytes = []
        offset = addr
        end_address = addr+size
        
        while offset < end_address:
            newFileBytes.append(self.rom[offset])
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
            ARM9OverlayNewSize = self.get_word_from_rom(offset+8)
            #self.write_section_in_file(ARM9OverlayNew, ARM9OverlayNewSize)
            self.write_section_in_file_wfilename(ARM9OverlayNew, ARM9OverlayNewSize, "data/overlay/" + "overlay_" + "0x{:02x}".format(self.get_word_from_rom(offset+0)) + ".bin")
            RomMap.append(RomSection("overlay/overlay_" + "0x{:02x}".format(self.get_word_from_rom(offset+0)) + ".bin", ARM9OverlayNew))
            
            offset += 0x20
            ARM9OverlayOld = ARM9OverlayNew
            ARM9OverlaySizeOld = ARM9OverlayNewSize        
        return None
        
    def write_fats_in_files(self, FATStart, FATSize):
        if FATSize == 0: return None
        offset = FATStart
        end_address = FATStart + FATSize
        
        while offset < end_address:
            Start = self.get_word_from_rom(offset)
            Size = self.get_word_from_rom(offset+4) - Start
            self.write_section_in_file(Start, Size)
            offset += 0x8     
        return None
        
    def write_fnts_filenames(self, FNTStart, FNTSize):
        if FNTSize == 0: return None
        output = "\nFNT Filenames:"
        
        offset = FNTStart
        end_address = FNTStart + FNTSize
        
        SubTable = self.get_word_from_rom(FNTStart+0)
        IDFirstFileSubTable = self.get_hword_from_rom(FNTStart+4)
        TotalNrOfDirectories = self.get_hword_from_rom(FNTStart+6)
        output += "\nTotal Number of directories: " + str(TotalNrOfDirectories)
        
        FNTSub1Type = self.get_byte_from_rom(FNTStart+SubTable+0)
        if FNTSub1Type < 0x80:
            FNTSub1Length = FNTSub1Type
        else:
            FNTSub1Length = FNTSub1Type-0x80
        
        output += "\nType: " + hex(FNTSub1Type)
        output += "\nLength: " + hex(FNTSub1Length)
        output += "\n" + self.get_string_from_rom(FNTStart+SubTable+1, FNTSub1Length)
        
        SubTable = self.get_word_from_rom(FNTStart+0+8)
        IDFirstFileSubTable = self.get_hword_from_rom(FNTStart+4+8)
        TotalNrOfDirectories = self.get_hword_from_rom(FNTStart+6+8)
        output += "\nTotal Number of directories: " + str(TotalNrOfDirectories)
        
        FNTSub1Type = self.get_byte_from_rom(FNTStart+SubTable+0)
        if FNTSub1Type < 0x80:
            FNTSub1Length = FNTSub1Type
        else:
            FNTSub1Length = FNTSub1Type-0x80
        
        output += "\nType: " + hex(FNTSub1Type)
        output += "\nLength: " + hex(FNTSub1Length)
        output += "\n" + self.get_string_from_rom(FNTStart+SubTable+1, FNTSub1Length)
        
        return output
        
    def get_fnt_maintable(self, FNTStart, ID, path, IDFirstFileSubTable):
        output = ""
        #output = "\n" + path + " " + hex(ID)
        
        SubTable = self.get_word_from_rom(FNTStart+(ID & 0xfff)*8)
        IDFirstFileSubTable = self.get_hword_from_rom(FNTStart+(ID & 0xfff)*8+4)
        TotalNrOfDirectories = self.get_hword_from_rom(FNTStart+(ID & 0xfff)*8+6)
        
        offset = 0
        i = 0
        
        while 1:
            FNTSub1Type = self.get_byte_from_rom(FNTStart+SubTable+offset+0)
            if FNTSub1Type == 0:
                return output
            elif FNTSub1Type < 0x80:
                FNTSub1Length = FNTSub1Type
            else:
                FNTSub1Length = FNTSub1Type-0x80
            
            #output += "\nType: " + hex(FNTSub1Type)
            #output += "\nLength: " + hex(FNTSub1Length)
            filename = path + self.get_string_from_rom(FNTStart+SubTable+offset+1, FNTSub1Length)
            output += "\n" + filename
            
            if FNTSub1Type > 0x80: # directory
                FNTSubID = self.get_byte_from_rom(FNTStart+SubTable+offset+1+FNTSub1Length)
                output += " - " + hex(FNTSubID)
                output += "\n" + hex(self.get_fat_Start(FNTSubID)) + " - " + hex(self.get_fat_Start(FNTSubID))
                output += self.get_fnt_maintable(FNTStart, FNTSubID, path + self.get_string_from_rom(FNTStart+SubTable+offset+1, FNTSub1Length) + "/", IDFirstFileSubTable)
            elif FNTSub1Type < 0x80: # file
                output += " - " + hex(IDFirstFileSubTable)
                output += "\n" + hex(self.get_fat_Start(IDFirstFileSubTable)) + " - " + hex(self.get_fat_Start(IDFirstFileSubTable))
                self.write_section_in_file_wfilename(self.get_fat_Start(IDFirstFileSubTable), self.get_fat_End(IDFirstFileSubTable) - self.get_fat_Start(IDFirstFileSubTable), "data" + filename)
                RomMap.append(RomSection(filename, self.get_fat_Start(IDFirstFileSubTable)))
                IDFirstFileSubTable += 1
            
            offset += 1 + FNTSub1Length
            if FNTSub1Type > 0x80:
                offset += 2
        
        return output
        


    def output_bank_opcodes(self, filename, original_offset=0, end_address=0, debug=False):
        output = ""
        
        rom_path = os.path.join(self.config.path, filename)
        self.rom = bytearray(open(rom_path, "rb").read())

        rom = self.rom

        offset = original_offset

        #ChunkNameNARC = self.get_word_from_rom(0)
        
        

        palette=[]
        palette.append((0xFF, 0xFF, 0xFF, 255))
        palette.append((0xCC, 0xCC, 0xCC, 255))
        palette.append((0x88, 0x88, 0x88, 255))
        palette.append((0, 0, 0, 255))

        i = 0
        while i < 16*20:
            data = []
            data_line = []
            
            offset = 0x10+0x40*i
            j = 0
            while offset+j < 0x10+0x40*i+0x20:
                if ((offset+j - 0x10) % 0x40) >= 0x10:
                    hword = self.get_hword_from_rom(offset+j + 0x10)
                    data_line.append((hword >> 14) & 0x3)
                    data_line.append((hword >> 12) & 0x3)
                    data_line.append((hword >> 10) & 0x3)
                    data_line.append((hword >> 8) & 0x3)
                    data_line.append((hword >> 6) & 0x3)
                    data_line.append((hword >> 4) & 0x3)
                    data_line.append((hword >> 2) & 0x3)
                    data_line.append((hword >> 0) & 0x3)
                    
                    hword = self.get_hword_from_rom(offset+j + 0x20)
                    data_line.append((hword >> 14) & 0x3)
                    data_line.append((hword >> 12) & 0x3)
                    data_line.append((hword >> 10) & 0x3)
                    data_line.append((hword >> 8) & 0x3)
                    data_line.append((hword >> 6) & 0x3)
                    data_line.append((hword >> 4) & 0x3)
                    data_line.append((hword >> 2) & 0x3)
                    data_line.append((hword >> 0) & 0x3)
                    data.append(data_line)
                    data_line = []
                    j += 2
                else:                    
                    hword = self.get_hword_from_rom(offset+j)
                    data_line.append((hword >> 14) & 0x3)
                    data_line.append((hword >> 12) & 0x3)
                    data_line.append((hword >> 10) & 0x3)
                    data_line.append((hword >> 8) & 0x3)
                    data_line.append((hword >> 6) & 0x3)
                    data_line.append((hword >> 4) & 0x3)
                    data_line.append((hword >> 2) & 0x3)
                    data_line.append((hword >> 0) & 0x3)
                    
                    hword = self.get_hword_from_rom(offset+j + 0x10)
                    data_line.append((hword >> 14) & 0x3)
                    data_line.append((hword >> 12) & 0x3)
                    data_line.append((hword >> 10) & 0x3)
                    data_line.append((hword >> 8) & 0x3)
                    data_line.append((hword >> 6) & 0x3)
                    data_line.append((hword >> 4) & 0x3)
                    data_line.append((hword >> 2) & 0x3)
                    data_line.append((hword >> 0) & 0x3)
                    data.append(data_line)
                    data_line = []
                    j += 2
            
            outfilename = filename.replace(".bin", "_" + str(i) + ".png")
            
            f = open(outfilename, 'wb')
            w = png.Writer(len(data[0]), len(data), palette=palette, bitdepth=4)
            w.write(f, data)
            f.close()
            
            i += 1
        
        return (output, offset)

if __name__ == "__main__":
    conf = configuration.Config()
    romhand = RomHandler(conf)
    romhand.initialize()
    
#    cmd = sys.argv[1]
    filename = sys.argv[1]

    #print('unpack: ' + filename)
    output = romhand.output_bank_opcodes(filename)[0]
    #print output
