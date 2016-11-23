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
    def __init__(self, name, address, fileID, size):
        self.name = name
        self.address = address
        self.fileID = fileID
        self.size = size

def getAddress(item):
    return item.address

RomMap = []

def addRomSection(name, address, size, fileID=-1):
    if size > 0:
        RomMap.append(RomSection(name, address, fileID, size))
    return None


spacing = "\t"

def asm_label(address):
    """
    Return the ASM label using the address.
    """
    # why using a random value when you can use the address?
    return '.asm_%x' % address

def data_label(address):
    return '.data_%x' % address


def conv_pic(outfilename, data=[], palette=[]):
    if not os.path.exists(os.path.dirname(outfilename)):
        os.makedirs(os.path.dirname(outfilename))
    
    f = open(outfilename, 'wb')
    w = png.Writer(len(data[0]), len(data), palette=palette, bitdepth=4)
    w.write(f, data)
    f.close()


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
            #addRomSection(NameDir + "overlay_" + "{:04}".format(disasm.get_word_from_rom(offset+0)) + ".bin", ARM9OverlayNew, ARM9OverlayNewSize)
            
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
                output += "\n" + hex(disasm.get_FileID_Start(FNTSubID)) + " - " + hex(disasm.get_FileID_End(FNTSubID))
                output += disasm.get_fnt_maintable(FNTStart, FNTSubID, path + disasm.get_string_from_rom(FNTStart+SubTable+offset+1, FNTSub1Length) + "/", NameDir + disasm.get_string_from_rom(FNTStart+SubTable+offset+1, FNTSub1Length) + "/", IDFirstFileSubTable)
            elif FNTSub1Type < 0x80: # file
                output += " - " + hex(IDFirstFileSubTable)
                output += "\n" + hex(disasm.get_FileID_Start(IDFirstFileSubTable)) + " - " + hex(disasm.get_FileID_End(IDFirstFileSubTable))
                
                disasm.write_section_in_file_wfilename(disasm.get_FileID_Start(IDFirstFileSubTable), disasm.get_FileID_Size(IDFirstFileSubTable), path + disasm.get_string_from_rom(FNTStart+SubTable+offset+1, FNTSub1Length))
                
                FileFormat = chr(disasm.get_byte_from_rom(disasm.get_FileID_Start(IDFirstFileSubTable))) + chr(disasm.get_byte_from_rom(disasm.get_FileID_Start(IDFirstFileSubTable)+1)) + chr(disasm.get_byte_from_rom(disasm.get_FileID_Start(IDFirstFileSubTable)+2)) + chr(disasm.get_byte_from_rom(disasm.get_FileID_Start(IDFirstFileSubTable)+3))
                output += "\n" + FileFormat
                
                addRomSection(filename, disasm.get_FileID_Start(IDFirstFileSubTable), disasm.get_FileID_Size(IDFirstFileSubTable), IDFirstFileSubTable)
                IDFirstFileSubTable += 1
            
            offset += 1 + FNTSub1Length
            if FNTSub1Type > 0x80:
                offset += 2
        
        return output
        
    def get_FileID_Start(self, FileID):
        FATStart = disasm.get_word_from_rom(0x48)
        offset = FATStart + FileID*8
        
        Start = disasm.get_word_from_rom(offset)
        return Start
        
    def get_FileID_End(self, FileID):
        FATStart = disasm.get_word_from_rom(0x48)
        offset = FATStart + FileID*8
        
        End = disasm.get_word_from_rom(offset+4)
        return End
        
    def get_FileID_Size(self, FileID):
        FATStart = disasm.get_word_from_rom(0x48)
        offset = FATStart + FileID*8
        
        Start = disasm.get_word_from_rom(offset)
        End = disasm.get_word_from_rom(offset+4)
        return End-Start

    def export_icon(self, img_addr, img_size, pal_addr, pal_size, filename):
        if (img_size == 0) or (pal_size == 0): return None
        data = []
        tile = []
        tiles = []
        palette = []

        rom = self.rom
        if not os.path.exists(os.path.dirname(filename)):
            os.makedirs(os.path.dirname(filename))
        f = open(filename, 'wb')
        newFileBytes = []
        
        i = 0
        data_row = []
        while (img_addr+i) < (img_addr+img_size):            
            byte = rom[img_addr+i]
            bit1 = byte & 0xf
            bit2 = (byte >> 4)
            
            data_row.append(bit1)
            data_row.append(bit2)
            
            i += 1
            if (i % 4) == 0:
                tile += [data_row]
                data_row = []
            if (i % (4*8)) == 0:
                tiles += [tile]
                tile = []
        
        j = 0
        while j < 4:
            i = 0
            while i < 8:
                data += [tiles[0+j*4][i] + tiles[1+j*4][i] + tiles[2+j*4][i] + tiles[3+j*4][i]]
                i += 1
            j += 1
        
        i = 0
        while (pal_addr+i) < (pal_addr+pal_size):
            byte1 = rom[pal_addr+i]
            byte2 = rom[pal_addr+i+1]
            col = byte1 | (byte2<<8)
            colr = col&0x1f
            colg = (col>>5)&0x1f
            colb = (col>>10)&0x1f
            palette.append((colr*8, colg*8, colb*8))
            i += 2
        
        conv_pic(filename, data, palette)
        return None


    def output_bank_opcodes(self, filename="baserom.nds", filedir="", original_offset=0, end_address=0, debug=False):
        header_output = ""
        offset = original_offset
        
        rom_path = os.path.join(self.config.path, filename)
        self.rom = bytearray(open(rom_path, "rb").read())
        rom = self.rom

        Header = 0
        HeaderSize = 0x4000
        #disasm.write_section_in_file(Header, HeaderSize)
        disasm.write_section_in_file_wfilename(Header, HeaderSize, filedir + "/" + "header.bin")
        addRomSection("header.bin", Header, HeaderSize)
        
        ARM9ROM = disasm.get_word_from_rom(0x20)
        ARM9ROMSize = disasm.get_word_from_rom(0x2c) + 12
        #disasm.write_section_in_file(ARM9ROM, ARM9ROMSize)
        disasm.write_section_in_file_wfilename(ARM9ROM, ARM9ROMSize, filedir + "/" + "arm9.bin")
        addRomSection("arm9_full.bin", ARM9ROM, ARM9ROMSize)
        
        ARM9Overlay = disasm.get_word_from_rom(0x50)
        ARM9OverlaySize = disasm.get_word_from_rom(0x54)
        #disasm.write_section_in_file(ARM9Overlay, ARM9OverlaySize)
        disasm.write_section_in_file_wfilename(ARM9Overlay, ARM9OverlaySize, filedir + "/" + "y9.bin")
        #RomMap.append(RomSection("y9.bin", ARM9Overlay))
        
        #disasm.write_overlays_in_files(ARM9Overlay, ARM9OverlaySize)
        
        
        ARM7ROM = disasm.get_word_from_rom(0x30)
        ARM7ROMSize = disasm.get_word_from_rom(0x3c)
        disasm.write_section_in_file_wfilename(ARM7ROM, ARM7ROMSize, filedir + "/" + "arm7.bin")
        addRomSection("arm7.bin", ARM7ROM, ARM7ROMSize)
        
        ARM7Overlay = disasm.get_word_from_rom(0x58)
        ARM7OverlaySize = disasm.get_word_from_rom(0x5c)
        disasm.write_section_in_file_wfilename(ARM7Overlay, ARM7OverlaySize, filedir + "/" + "y7.bin")
        addRomSection("y7.bin", ARM7Overlay, ARM7OverlaySize)
        
        FNT = disasm.get_word_from_rom(0x40)
        FNTSize = disasm.get_word_from_rom(0x44)
        disasm.write_section_in_file_wfilename(FNT, FNTSize, filedir + "/" + "fnt.bin")
        addRomSection("fnt.bin", FNT, FNTSize)
        
        FAT = disasm.get_word_from_rom(0x48)
        FATSize = disasm.get_word_from_rom(0x4c)
        disasm.write_section_in_file_wfilename(FAT, FATSize, filedir + "/" + "fat.bin")
        addRomSection("fat.bin", FAT, FATSize)
        
        #disasm.write_fats_in_files(FAT, FATSize)
        
        Banner = disasm.get_word_from_rom(0x68)
        BannerSize = 0xa00;
        disasm.write_section_in_file_wfilename(Banner, BannerSize, filedir + "/" + "banner.bin")
        addRomSection("banner.bin", Banner, BannerSize)
        disasm.export_icon(Banner+0x20, 0x200, Banner+0x220, 0x20, filedir + "/" + "icon.png")
        
        GameTitle = disasm.get_string_from_rom(0x0, 12)
        Gamecode = disasm.get_string_from_rom(0xc, 4)
        Makercode = disasm.get_string_from_rom(0x10, 2)
        Unitcode = disasm.get_byte_from_rom(0x12)

        header_output += "Game Title:    " + GameTitle
        header_output += "\nGamecode:      " + Gamecode
        header_output += "\nMakercode:     " + Makercode
        header_output += "\nUnitcode:      " + hex(Unitcode)
        header_output += "\n\nARM9Rom:     " + hex(ARM9ROM) + " - " + hex(ARM9ROM + ARM9ROMSize)
        header_output += "\nARM9Overlay: " + hex(ARM9Overlay) + " - " + hex(ARM9Overlay + ARM9OverlaySize)
        header_output += "\nARM7Rom:     " + hex(ARM7ROM) + " - " + hex(ARM7ROM + ARM7ROMSize)
        header_output += "\nARM7Overlay: " + hex(ARM7Overlay)
        header_output += "\nFNT:         " + hex(FNT)
        header_output += "\nFAT:         " + hex(FAT)
        header_output += "\nIcon/Title:  " + hex(Banner)
        #header_output += disasm.write_fnts_filenames(FNT, FNTSize)
        disasm.write_fnts_filenames(FNT, FNTSize)
        header_output += "\n"
        header_output += disasm.get_fnt_maintable(FNT, 0, filedir + "/data/", "/data/", 0)
        #disasm.get_fnt_maintable(FNT, 0, "/", 0)
        
        disasm.write_overlays_in_files(ARM9Overlay, ARM9OverlaySize, filedir + "/overlay/", "/overlay/")
        
        disasm.write_section_in_file_wfilename(ARM9ROM, ARM7ROM-ARM9ROM, filedir + "/" + "arm9_full.bin")
        
        
        filename = filedir + "/" + "RomMap.map"
        if not os.path.exists(os.path.dirname(filename)):
            os.makedirs(os.path.dirname(filename))
        f = open(filename, 'w')
        
        RomMap.sort(key=operator.attrgetter('address'))
        for item in RomMap:
            filesize = os.path.getsize(filedir + "/" + item.name)
            f.write(hex(item.address) + " " + str(item.name) + " " + hex(item.fileID) + " " + hex(item.size) + " " + hex(filesize) + "\n")
        
        
        headerfilename = filedir + "/" + "Header.txt"
        if not os.path.exists(os.path.dirname(headerfilename)):
            os.makedirs(os.path.dirname(headerfilename))
        fheader = open(headerfilename, 'w')
        fheader.write(header_output)
        
        
        output = ""
        return (output, offset)

if __name__ == "__main__":
    conf = configuration.Config()
    disasm = Disassembler(conf)

    filename = sys.argv[1]
    filedir = os.path.splitext(filename)[0]
    if(len(sys.argv) > 2): filedir = sys.argv[2]
    
    output = disasm.output_bank_opcodes(filename, filedir)[0]
    print output
