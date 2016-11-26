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
#from PIL import Image
#import numpy as np

import configuration


class FileHandler(object):
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


    # http://stackoverflow.com/questions/33022983/read-in-an-indexed-color-image-in-python
    # https://pythonhosted.org/pypng/png.html
    # https://pythonhosted.org/pypng/ex.html
    # http://stackoverflow.com/questions/138250/how-can-i-read-the-rgb-value-of-a-given-pixel-in-python
    def read_png(self, filename, output_filename, debug=False):
        f = open(filename, 'r')
        img = png.Reader(f)
        w, h, pixels, metadata = img.read_flat()
        f.close()
        #print("pixels: " + str(pixels))
        #print("palette: " + str(img.palette()))
        
        widths = []
        cell_width = 0 # max width
        data = []
        for i in range(0x1fd):
            width, tiles = self.extract_font_from_png(w, h, pixels, i)
            for i in range(len(tiles)):
                data.append(tiles[i] & 0xff)
                data.append(tiles[i] >> 8)
            widths.append(width)
            if width > cell_width:
                cell_width = width
        
        
        if not os.path.exists(os.path.dirname(output_filename)):
            os.makedirs(os.path.dirname(output_filename))
        f = open(output_filename, 'wb')
        filepart = bytearray([0x10, 0x00, 0x00, 0x00, 0x50, 0x7f, 0x00, 0x00, 0xfd, 0x01, 0x00, 0x00, cell_width, 0x10, 0x02, 0x02]) # Header
        f.write(filepart)
        filepart = bytearray(data)
        f.write(filepart)
        filepart = bytearray(widths)
        f.write(filepart)
        f.close()

    
    def extract_font_from_png(self, w, h, pixels, id, debug=False):
        width = 0
        x = (id % 16) * 16
        y = (id / 16)
        offset = y*16*16*16+x
        
        tiles = []
        for n in range(2):
            for m in range(2):
                for y in range(8):
                    hword = 0
                    for x in range(8):
                        val = pixels[offset + w*(y+(8*n)) + (8*m)+x]
                        if (val != 4) & (width < ((8*m)+x+1)):
                            width = ((8*m)+x+1)
                        val &= 0x3
                        hword |= val << ((7-x)*2)
                    tiles += [hword]
        
        #for i in range(len(tiles)):
        #    print(hex(tiles[i]))
        ##print("width: " + str(width))
        return (width, tiles)
        
    

    def read_font(self, offset, width, inverted, debug=False):
        data = []
        data_line = []
            
        j = 0
        while (j < 0x20):
            if j >= 0x10:
                tile = 0x10
            else:
                tile = 0x0
            
            hword = self.get_hword_from_rom(offset+j + tile + 0x0)
            for i in range(8):
                if width > i:
                    val = (hword >> ((7-i)*2)) & 0x3
                    if inverted == 0:
                        if val == 0:
                            val = 4
                    data_line.append(val)
                else:
                    data_line.append(4)
            
            hword = self.get_hword_from_rom(offset+j + tile + 0x10)
            for i in range(8):
                if width > 8+i:
                    val = (hword >> ((7-i)*2)) & 0x3
                    if inverted == 0:
                        if val == 0:
                            val = 4
                    data_line.append(val)
                else:
                    data_line.append(4)
            data.append(data_line)
            data_line = []
            j += 2
        
        return data


    def output_fonts(self, filename, output_filename, inverted, debug=False):
        output = ""
        
        rom_path = os.path.join(self.config.path, filename)
        self.rom = bytearray(open(rom_path, "rb").read())
        filesize = os.path.getsize(filename)
            
        if not os.path.exists(os.path.dirname(output_filename)):
            os.makedirs(os.path.dirname(output_filename))

        rom = self.rom
        
        # read Header
        HeaderSize = self.get_word_from_rom(0x0)
        FooterOffset = self.get_word_from_rom(0x4) # Pointer to last part of files which isn't font graphic
        NrOfChars = self.get_word_from_rom(0x8)
        cell_width = self.get_byte_from_rom(0xc)
        cell_height = self.get_byte_from_rom(0xd)
        ue = self.get_byte_from_rom(0xe) # bit depth?
        uf = self.get_byte_from_rom(0xf) # ?
        
        widths = []
        for i in range(NrOfChars):
            widths.append(self.get_byte_from_rom(FooterOffset+i))

        palette=[]
        palette.append((0xFF, 0xFF, 0xFF, 255))
        palette.append((0xCC, 0xCC, 0xCC, 255))
        palette.append((0x88, 0x88, 0x88, 255))
        palette.append((0, 0, 0, 255))
        palette.append((0, 0xFF, 0, 255))

        data_all = []
        data = []
        for i in range(NrOfChars):
            data_line = []
            
            offset = HeaderSize+0x40*i
            
            data = self.read_font(offset, widths[i], inverted, debug)
            data_all.append(data)
            #print("data_all: " + str(data_all))
            #print("len(data_all): " + str(len(data_all)))
            #print("len(data_all[i]): " + str(len(data_all[i])))
            
            #outfilename = filename.replace(".bin", "_" + str(i) + ".png")
            #outfilename = output_filename + "/font_" + str(i) + ".png"
            
            #f = open(outfilename, 'wb')
            #if widths[i] > 0:
            #    w = png.Writer(len(data[0]), len(data), palette=palette, bitdepth=4)
            #    w.write(f, data)
            #f.close()
        
        
        data = []
        outfilename = output_filename
        #outfilename = filename.replace(".bin", ".png")
        rows = NrOfChars/16
        if (NrOfChars % 16) != 0:
            rows += 1
        for n in range(rows):
            for j in range(16):
                data_line = []
                for i in range(16):
                    if (i+16*n) >= NrOfChars:
                        data_line += [4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4]
                    else:
                        val = data_all[i+16*n][j]
                        data_line += val
                data.append(data_line)
        
        #print("data: " + str(data))
        #print("outfilename: " + str(outfilename))
        f = open(outfilename, 'wb')
        # https://pythonhosted.org/pypng/ex.html
        w = png.Writer(len(data[0]), len(data), palette=palette, bitdepth=4)
        w.write(f, data)
        f.close()
        
        return (output, offset)

if __name__ == "__main__":
    conf = configuration.Config()
    romhand = FileHandler(conf)
    romhand.initialize()

    filename = ""
    output_filename = filename + ".bin"
    debugFlag = False
    inverted = 0
    i = 1
    while i < len(sys.argv):
        if sys.argv[i] == "-x":
            filelist_on = 0
            cmd = "unpack"
            filename = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-o":
            output_filename = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-inv":
            inverted = 1
            i += 1
        elif sys.argv[i] == "-p":
            cmd = "pack"
            filename = sys.argv[i+1]
            filelist_on = 0
            i += 2
        elif sys.argv[i] == "-debug":
            debugFlag = True
            i += 1
        else:
            i += 1
    
    
    print(cmd + ': ' + filename)
    if cmd == "unpack":
        output = romhand.output_fonts(filename, output_filename, inverted)[0]
    elif cmd == "pack":
        output = romhand.read_png(filename, output_filename)
    
    
    #print output
