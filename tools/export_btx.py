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


class TexInfo(object):
    INFO_TEX = 0
    INFO_TEX4X4 = 1
    INFO_PAL = 2

    def __init__(self, config, tex, infotype=0):
        self.config = config
        
        self.tex = tex
        self.vramkey = 0
        self.infotype = infotype

    def initialize(self, filename, offset):
        rom_path = os.path.join(self.config.path, filename)
        self.rom = bytearray(open(rom_path, "rb").read())
        self.offset = offset

    def load(self, reader):
        self.vramkey = reader.readUInt32()
        self._datasize = reader.readUInt16()
        if self.infotype != TexInfo.INFO_PAL:
            self._lookupofs = reader.readUInt16()
        reader.readUInt16()  # Runtime-loaded
        if self.infotype == TexInfo.INFO_PAL:
            self._lookupofs = reader.readUInt16()
        reader.readUInt16()  # Padding, always 0x8
        self._dataofs = reader.readUInt32()
        if self.infotype == TexInfo.INFO_TEX4X4:
            self._paldataofs = reader.readUInt32()
            self._datasize <<= 2
        else:
            self._datasize <<= 3


class TEX(object):
    rom = []
    magic = 'TEX0'
    endian = 0xFFFE
    version = 0x102
    numblocks = 1
    offset = 0

    def __init__(self, config):
        self.config = config
        self.texinfo = TexInfo(self, self.config)
        self.tex4x4info = TexInfo(self, self.config, TexInfo.INFO_TEX4X4)
        self.palinfo = TexInfo(self, self.config, TexInfo.INFO_PAL)

    def initialize(self, filename, offset):
        rom_path = os.path.join(self.config.path, filename)
        self.rom = bytearray(open(rom_path, "rb").read())
        self.offset = offset

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

    def get_info(self):
        self.magic = self.get_string_from_rom(self.offset+0x0, 4)
        self.size = self.get_hword_from_rom(self.offset+0x4)
        print("MagicID: " + self.magic)
        print("Size: " + hex(self.size))
        return ""


class BTXHandler(object):
    rom = []
    filename = ""
    magic = 'BTX0'
    endian = 0xFFFE
    version = 0x102
    numblocks = 1

    def __init__(self, config):
        self.config = config
        self.tex = TEX(self.config)

    def initialize(self, filename):
        self.filename = filename
        rom_path = os.path.join(self.config.path, filename)
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

    def get_info(self):
        self.magic = self.get_string_from_rom(0x0, 0x4)
        self.endian = self.get_hword_from_rom(0x4)
        self.version = self.get_hword_from_rom(0x6)
        self.size = self.get_hword_from_rom(0x8)
        self.headersize = self.get_hword_from_rom(0xc)
        self.numblocks = self.get_hword_from_rom(0xe)
        self.texofs = self.get_hword_from_rom(self.headersize)
        print("MagicID: " + self.magic)
        print("Endian: " + hex(self.endian))
        print("Version: " + hex(self.version))
        print("Size: " + hex(self.size))
        print("Headersize: " + hex(self.headersize))
        print("Numblocks: " + hex(self.numblocks))
        print("TexOffsets: " + hex(self.texofs))
        self.tex.initialize(self.filename, self.texofs)
        self.tex.get_info()
        return ""




if __name__ == "__main__":
    conf = configuration.Config()
    conf = configuration.Config()
    btxhand = BTXHandler(conf)
    
#    cmd = sys.argv[1]
    filename = sys.argv[1]

    btxhand.initialize(filename)
    btxhand.get_info()
    #print('unpack: ' + filename)
    #output = romhand.output_bank_opcodes(filename)[0]
    #print output
