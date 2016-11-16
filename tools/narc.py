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
import array

import configuration



class NARCHandler(object):
    rom = []

    def __init__(self, config):
        self.config = config

    def initialize(self, filename):
        rom_path = os.path.join(self.config.path, filename)
        self.rom = bytearray(open(rom_path, "rb").read())

    def get_word_from_rom(self, addr):
        return (self.rom[addr] << 0) | (self.rom[addr+1] << 8) | (self.rom[addr+2] << 16) | (self.rom[addr+3] << 24)

    def get_hword_from_rom(self, addr):
        return (self.rom[addr] << 0) | (self.rom[addr+1] << 8)

    def get_byte_from_rom(self, addr):
        return self.rom[addr]

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
        #if size == 0: return None
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
        f.close()
        return None
        


    def unpack_narc_file(self, filename, original_offset=0, debug=False):
        output = ""
        
        folder = filename.replace(".narc", "_narc")
        folder = folder.replace(".arc", "_arc")

        offset = original_offset

        ChunkNameNARC = self.get_word_from_rom(0)
        ByteOrder = self.get_hword_from_rom(4)
        Version = self.get_hword_from_rom(6)
        FileSize = self.get_word_from_rom(8)
        ChunkSize = self.get_hword_from_rom(0xC)
        NrOfChunks = self.get_hword_from_rom(0xE)
        
        BTAFChunkName = self.get_word_from_rom(0x10)
        BTAFChunkSize = self.get_word_from_rom(0x14)
        NrOfFiles = self.get_hword_from_rom(0x18)
        
        FATStart = 0x1C
        BTNFStart = 0x10 + BTAFChunkSize
        FNTStart = BTNFStart + 8
        BTNFChunkSize = self.get_word_from_rom(BTNFStart + 0x4)
        IMGStart = 0x10 + BTAFChunkSize + BTNFChunkSize
        
        
        if debug:
            print("ByteOrder: " + hex(ByteOrder))
            print("Version: " + hex(Version))
        print("NrOfFiles: " + str(NrOfFiles))
        #output += "\nFNTChunkSize: " + str(BTNFChunkSize)
        
        i = 0
        while i < NrOfFiles:
            addr = self.get_word_from_rom(FATStart+8*i) + IMGStart+8
            size = self.get_word_from_rom(FATStart+8*i+4)-self.get_word_from_rom(FATStart+8*i)
            
            filename_temp = "./" + folder + "/data_" + "{:08}".format(i)
            if size >= 4:            
                #self.write_section_in_file_wfilename(self.get_word_from_rom(FATStart+8*i) + IMGStart+8, self.get_word_from_rom(FATStart+8*i+4)-self.get_word_from_rom(FATStart+8*i), "./" + folder + "/data_" + "{:08x}".format(self.get_word_from_rom(FATStart+8*i) + IMGStart+8) + ".bin")
                FileType = chr(self.get_byte_from_rom(self.get_word_from_rom(FATStart+8*i) + IMGStart+8)) + chr(self.get_byte_from_rom(self.get_word_from_rom(FATStart+8*i) + IMGStart+8+1)) + chr(self.get_byte_from_rom(self.get_word_from_rom(FATStart+8*i) + IMGStart+8+2)) + chr(self.get_byte_from_rom(self.get_word_from_rom(FATStart+8*i) + IMGStart+8+3))
                #print("FileType: " + FileType)
                
                if filename.find("pl_pokegra.narc") != -1:
                    PokeNr = i / 6
                    PokeOffset = i % 6
                    filename_temp = "./" + folder + "/data_" + "{:08}".format(PokeNr) + "_" + "{:08}".format(PokeOffset)
                elif filename.find("trfgra.narc") != -1:
                    PokeNr = i / 5
                    PokeOffset = i % 5
                    filename_temp = "./" + folder + "/data_" + "{:08}".format(PokeNr) + "_" + "{:08}".format(PokeOffset)
                elif filename.find("trbgra.narc") != -1:
                    PokeNr = i / 5
                    PokeOffset = i % 5
                    filename_temp = "./" + folder + "/data_" + "{:08}".format(PokeNr) + "_" + "{:08}".format(PokeOffset)
                
                if FileType == "RGCN":
                    filename_temp += ".rgcn"
                elif FileType == "RLCN":
                    filename_temp += ".rlcn"
                elif FileType == "RNAN":
                    filename_temp += ".rnan"
                elif FileType == "RECN":
                    filename_temp += ".recn"
                elif FileType == "BTX0":
                    filename_temp += ".btx0"
                elif FileType == "BMD0":
                    filename_temp += ".bmd0"
                else:
                    filename_temp += ".bin"
            else:
                filename_temp += ".bin"

            self.write_section_in_file_wfilename(addr, size, filename_temp)
            i += 1
        
        return (output, offset)


    def create_narc_file(self, path, filename, original_offset=0, debug=False):
        output = ""
        
        folder = path

        offset = original_offset
        
        #for file in os.listdir(folder):
            #if file.endswith(".bin"):
                #print(file)
        
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
                a.append(offset)
                if((size % 4) == 0):
                    offset += 0
                else:
                    offset += 4 - (size % 4)
        
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
                    f.write(bytearray([0xff, 0xff]))
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
    narchand = NARCHandler(conf)
    
    cmd = ""
    filename = ""
    path = ""
    filedir = ""
    debugFlag = False
    
    i = 1
    while i < len(sys.argv):
        if sys.argv[i] == "-x":
            cmd = "unpack"
            filename = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-p":
            cmd = "pack"
            path = sys.argv[i+1]
            filename = sys.argv[i+2]
            i += 3
        elif sys.argv[i] == "-o":
            filedir = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-debug":
            debugFlag = True
            i += 2
        else:
            i += 1

    print(cmd + ': ' + filename)
    if cmd == "unpack":
        narchand.initialize(filename)
        output = narchand.unpack_narc_file(filename, debug=debugFlag)[0]
    elif cmd == "pack":
        output = narchand.create_narc_file(path, filename, debug=debugFlag)[0]
    print output
