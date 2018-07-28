# -*- coding: utf-8 -*-

import os
import sys
from ctypes import c_int8
import operator
from new import classobj
import configuration
import png
import array
from filehandler import FileHandler


ENCRYPTION_NONE = 0
ENCRYPTION_REVERSE = 1
ENCRYPTION_FORWARDS = 2

# RAHC_Format
FORMAT_16BIT = 3
FORMAT_256BIT = 4

ENCRYPT_MULT = 0xeb65 # pokegra
ENCRYPT_CARRY = 0x61a1 # pokegra

TYPE_TILE = 0
TYPE_LINEAR = 1
TYPE_LINEAR2 = 256



class Graphic(object):
    file = FileHandler()
    data = []
    filename = ""
    filesize = 0

    def __init__(self, config):
        self.config = config
    
    def init(self, filename):
        self.file.init(os.path.join(self.config.path, filename), 0)
        self.filename = filename
        self.filesize = os.path.getsize(filename)
    
    
    def encrypt(self, data, encryption=ENCRYPTION_NONE, key=0, mult=0, carry=0, debug=False):
        dec_data = array.array('H')
        if encryption != ENCRYPTION_NONE:
            enc_data = array.array('H', data)
            if encryption == ENCRYPTION_REVERSE:
                enc_data = enc_data[::-1]
            if key == 0:
                key = enc_data[0]
            if debug:
                print("- key: " + hex(key))
            for val in enc_data:
                val2 = val ^ (key & 0xFFFF)
                dec_data.append(val2)
                val2 = key
                key *= mult # ENCRYPT_MULT
                key += carry # ENCRYPT_CARRY
                key &= 0xFFFF
        else:
            enc_data = array.array('H', data)
            for val in enc_data:
                dec_data.append(val)
        
        if encryption == ENCRYPTION_REVERSE:
            dec_data = dec_data[::-1]
        return dec_data

    
    def read_png(self, filename, encryption=ENCRYPTION_NONE, output_filename="", mult=0, carry=0, key=0, debug=False):
        if os.path.getsize(filename) == 0:
            if not os.path.exists(os.path.dirname(output_filename)):
                os.makedirs(os.path.dirname(output_filename))
            f = open(output_filename, 'wb')
            f.close()
            return
        
        f = open(filename, 'r')
        img = png.Reader(f)
        w, h, pixels, metadata = img.read_flat()
        f.close()
        
        
        data = []
        hword = 0
        n = 0
        for val in pixels:
            hword |= val<<(4*n)
            n += 1
            if n == 4:
                n = 0
                data.append(hword)
                hword = 0
        
        if key == 0:
            key = 0
            for val in data:
                key += (val & 0xff)
                key += ((val>>8) & 0xff)
                key &= 0xffff
            if debug:
                print("- key to encrypt: " + hex(key))
        
        enc_data = self.encrypt(data, encryption, key, mult, carry, debug)

        
        write_rgcn(output_filename, enc_data, w, h, debug)
    
    
    # returns indexed color values
    def read_rgcn(self, encryption=ENCRYPTION_NONE, width=1, height=1, mult=0, carry=0, debug=False):
        if self.filesize == 0:
            return []
        
        
        # RGCN-Header
        # PPRE/ntr/g2d/ncgr.py
        RGCN_MagicID = chr(self.file.ReadByte(0)) + chr(self.file.ReadByte(1)) + chr(self.file.ReadByte(2)) + chr(self.file.ReadByte(3))
        RGCN_Endian = self.file.ReadHWord(4)
        RGCN_Version = self.file.ReadHWord(6)
        RGCN_Size_ = self.file.ReadWord(8)
        RGCN_HeaderSize = self.file.ReadHWord(0xC)
        RGCN_NumBlocks = self.file.ReadHWord(0xE)
        if (RGCN_MagicID != "RGCN"):
            print(RGCN_MagicID + " " + hex(RGCN_Constant))
            return
        
        # RAHC-Header
        # PPRE/ntr/g2d/ncgr.py
        RAHC_MagicID = chr(self.file.ReadByte(0x10)) + chr(self.file.ReadByte(0x11)) + chr(self.file.ReadByte(0x12)) + chr(self.file.ReadByte(0x13))
        if (RAHC_MagicID != "RAHC"):
            return
        RAHC_Size_ = self.file.ReadByte(0x14)
        RAHC_Height = self.file.ReadHWord(0x18)
        RAHC_Width = self.file.ReadHWord(0x1A)
        RAHC_Format = self.file.ReadWord(0x1C) # FORMAT_16BIT
        RAHC_Depth = self.file.ReadWord(0x20)
        RAHC_Type = self.file.ReadWord(0x24)
        RAHC_DataSize = self.file.ReadWord(0x28)
        RAHC_Offset = self.file.ReadWord(0x2C)
        
        if RAHC_Width != 0xffff:
            width = RAHC_Width
        
        if debug:
            print("RGCN-Data:")
            print("- Height: " + str(RAHC_Height))
            print("- Width: " + str(RAHC_Width))
            print("- Format: " + str(RAHC_Format))
            print("- Depth: " + str(RAHC_Depth))
            print("- Type: " + str(RAHC_Type))
            print("- DataSize: " + str(RAHC_DataSize))
            if encryption == ENCRYPTION_NONE:
                print("- Encryption: none")
            elif encryption == ENCRYPTION_REVERSE:
                print("- Encryption: reverse")
            elif encryption == ENCRYPTION_FORWARDS:
                print("- Encryption: forwards")
        
        data = []
        i = 0
        while i < RAHC_DataSize:
            data.append(self.file.ReadHWord(0x30+i))
            i += 2
        
        
        key = 0
        dec_data = self.encrypt(data, encryption, key, mult, carry, debug)
        
        if debug:
            sum = 0
            for val in dec_data:
                sum += (val & 0xff)
                sum += ((val>>8) & 0xff)
            sum &= 0xffff
            print("- keyguess: " + hex(sum))
        

        # sort the dec_data into rows with length 'width'
        data = []
        data_line = []
        i = 0
        for val in dec_data:
            for n in range(4):
                data_line.append((val>>(4*n))&0xf) # FORMAT_16BIT
            i += 4
            if (RAHC_Type == TYPE_LINEAR or RAHC_Type == TYPE_LINEAR2) and ((i % (width*8)) == 0):
                data.append(data_line)
                data_line = []
            elif (RAHC_Type != TYPE_LINEAR) and ((i % 8) == 0):
                data.append(data_line)
                data_line = []
        
        
        if RAHC_Type == TYPE_LINEAR2:#!= TYPE_LINEAR:
            data_temp = data
            data = []
            data_line = []
            for l in range(height):
                for k in range(8):
                    data_line = []
                    for j in range(width):
                        for i in range(8):
                            data_line.append(data_temp[l*2*4*8+j*8+k][i])
                    data.append(data_line)
        
        
        bmp = [[0 for j in range(9)] for i in range(9)]
        return data


class Palette(object):
    file = FileHandler()
    data = []
    filename = ""

    def __init__(self, config):
        self.config = config
    
    def init(self, filename):
        self.file.init(os.path.join(self.config.path, filename), 0)
        self.filename = filename
        
        
    def read_png(self, filename, output_filename="", emptypal=0, debug=False):
        if os.path.getsize(filename) == 0:
            return
        
        f = open(filename, 'r')
        img = png.Reader(f)
        w, h, pixels, metadata = img.read_flat()
        palette = img.palette()
        #print("palette: " + str(palette))
        f.close()
        
        write_rlcn(output_filename, palette, emptypal, debug)
        
        
    def read_pal(self, filename, output_filename="", emptypal=0, debug=False):
        if os.path.getsize(filename) == 0:
            return
        
        f = open(filename, 'r')
        lines = f.readlines()
        f.close()
        
        palette = []
        for i in range(16):
            colors = lines[3+i].split(" ")
            col = (int(colors[0], 10), int(colors[1], 10), int(colors[2], 10))
            palette.append(col)
        
        write_rlcn(output_filename, palette, emptypal, debug)


    def read_rlcn(self, debug=False):
        # RLCN-Header
        # PPRE/ntr/g2d/nclr.py
        RLCN_MagicID = chr(self.file.ReadByte(0x0)) + chr(self.file.ReadByte(0x1)) + chr(self.file.ReadByte(0x2)) + chr(self.file.ReadByte(0x3))
        if (RLCN_MagicID != "RLCN"):
            print("Expected RLCN, got " + RLCN_MagicID)
            return
        RLCN_Endian = self.file.ReadHWord(0x4)
        RLCN_Version = self.file.ReadHWord(0x6)
        RLCN_Size_ = self.file.ReadWord(0x8)
        RLCN_HeaderSize = self.file.ReadHWord(0xc)
        RLCN_NumBlocks = self.file.ReadHWord(0xe)
        
        # PLTT-Header
        # PPRE/ntr/g2d/nclr.py
        PLTT_MagicID = chr(self.file.ReadByte(0x10)) + chr(self.file.ReadByte(0x11)) + chr(self.file.ReadByte(0x12)) + chr(self.file.ReadByte(0x13))
        if (PLTT_MagicID != "TTLP"):
            print("Expected TTLP, got " + PLTT_MagicID)
            return
        PLTT_Size_ = self.file.ReadWord(0x14)
        PLTT_Format = self.file.ReadWord(0x18)
        PLTT_Extended = self.file.ReadWord(0x1c)
        PLTT_Datasize = self.file.ReadWord(0x20)
        PLTT_Offset = self.file.ReadWord(0x24)
        
        if debug:
            print("RLCN-Data:")
            print("- Format: " + str(PLTT_Format))
            print("- Extended: " + str(PLTT_Extended))
        
        palette=[]
        i = 0
        while i < 16:
            col = (self.file.ReadHWord(0x28+i*2))
            colr = col&0x1f
            colg = (col>>5)&0x1f
            colb = (col>>10)&0x1f
            palette.append((colr*8, colg*8, colb*8))
            i += 1
         
        return palette


def write_png(outfilename, data=[], palette=[], debug=False):
    if not os.path.exists(os.path.dirname(outfilename)):
        os.makedirs(os.path.dirname(outfilename))
    
    f = open(outfilename, 'wb')
    if len(data) > 0:
        w = png.Writer(len(data[0]), len(data), palette=palette, bitdepth=4)
        w.write(f, data)
    f.close()


def write_pal(outfilename, palette=[], debug=False):
    if not os.path.exists(os.path.dirname(outfilename)):
        os.makedirs(os.path.dirname(outfilename))
    
    f = open(outfilename, 'wb')
    f.write("JASC-PAL\n")
    f.write("0100\n")
    f.write(str(len(palette)))
    for val in palette:
        f.write("\n" + str(val[0]) + " " + str(val[1]) + " " + str(val[2]))
    f.close()


def write_rgcn(outfilename, data=[], w=0, h=0, debug=False):
        if not os.path.exists(os.path.dirname(outfilename)):
            os.makedirs(os.path.dirname(outfilename))
        f = open(outfilename, 'wb')
        f.write(bytearray("RGCN")) # RGCN_MagicID 0x0
        f.write(bytearray([0xff, 0xfe])) # RGCN_Endian
        f.write(bytearray([0x00, 0x01])) # RGCN_Version
        f.write(bytearray([0, 0, 0, 0])) # RGCN_Size_ filesize
        f.write(bytearray([0x10, 0x00])) # RGCN_HeaderSize
        f.write(bytearray([0x01, 0x00])) # RGCN_NumBlocks
        
        f.write(bytearray("RAHC")) # RAHC_MagicID 0x10
        f.write(bytearray([0, 0, 0, 0])) # RAHC_Size_ filesize-0x10
        c = array.array("h")
        c.append(h/8)
        c.tofile(f) # RAHC_Height
        c = array.array("h")
        c.append(w/8)
        c.tofile(f) # RAHC_Width
        f.write(bytearray([3, 0, 0, 0])) # RAHC_Format
        f.write(bytearray([0, 0, 0, 0])) # RAHC_Depth 0x20
        f.write(bytearray([1, 0, 0, 0])) # RAHC_Type
        f.write(bytearray([0, 0, 0, 0])) # RAHC_DataSize filesize-0x30
        f.write(bytearray([0x18, 0, 0, 0])) # RAHC_Offset

        data.tofile(f)
        
        filesize = len(data)*2+0x30
        f.seek(0x8) # RGCN_Size_
        c = array.array("I")
        c.append(filesize)
        c.tofile(f)
        f.seek(0x14) # RAHC_Size_
        c = array.array("I")
        c.append(filesize-0x10)
        c.tofile(f)
        f.seek(0x28) # RAHC_DataSize
        c = array.array("I")
        c.append(filesize-0x30)
        c.tofile(f)
        f.close()


def write_rlcn(outfilename, palette=[], emptypal=0, debug=False):
    if not os.path.exists(os.path.dirname(outfilename)):
        os.makedirs(os.path.dirname(outfilename))
    
    f = open(outfilename, 'wb')
    f.write(bytearray("RLCN")) # RLCN_MagicID 0x0
    f.write(bytearray([0xff, 0xfe])) # RLCN_Endian
    f.write(bytearray([0x00, 0x01])) # RLCN_Version
    f.write(bytearray([0, 0, 0, 0])) # RLCN_Size_ filesize
    f.write(bytearray([0x10, 0x00])) # RLCN_HeaderSize
    f.write(bytearray([0x01, 0x00])) # RLCN_NumBlocks
    
    f.write(bytearray("TTLP")) # PLTT_MagicID 0x10
    f.write(bytearray([0, 0, 0, 0])) # PLTT_Size_ filesize-0x10
    f.write(bytearray([0x4, 0, 0xa, 0])) # PLTT_Format
    f.write(bytearray([0, 0, 0, 0])) # PLTT_Extended
    f.write(bytearray([0, 0, 0, 0])) # PLTT_Datasize 0x20 filesize-0x28
    f.write(bytearray([0x10, 0, 0, 0])) # PLTT_Offset
    
    
    data = []
    hword = 0
    n = 0
    for col in palette:
        colr = col[0]/8
        colg = col[1]/8
        colb = col[2]/8
        hword = colr|(colg<<5)|(colb<<10)
        if emptypal == 1:
            hword = 0xffff
        data.append(hword)
        
    c = array.array("H")
    for val in data:
        c.append(val)
    c.tofile(f)
        
        
    filesize = len(c)*2+0x28
    f.seek(0x8) # RLCN_Size_
    c = array.array("I")
    c.append(filesize)
    c.tofile(f)
    f.seek(0x14) # PLTT_Size_
    c = array.array("I")
    c.append(filesize-0x10)
    c.tofile(f)
    f.seek(0x20) # PLTT_Datasize
    c = array.array("I")
    c.append(filesize-0x28)
    c.tofile(f)
    f.close()


if __name__ == "__main__":
    conf = configuration.Config()
    
    filename = ""
    palfilename = ""
    outfilename = ""
    debugFlag = False
    
    encryption = ENCRYPTION_NONE
    mult = 0
    carry = 0
    emptypal = 0
    width = 1
    height = 1
    key = 0
    i = 1
    while i < len(sys.argv):
        if sys.argv[i] == "-x":
            cmd = "unpack"
            filename = sys.argv[i+1]
            palfilename = sys.argv[i+2]
            i += 3
        if sys.argv[i] == "-xpal":
            cmd = "unpack palette"
            palfilename = sys.argv[i+1]
            i += 2
        if sys.argv[i] == "-o":
            outfilename = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-e":
            if sys.argv[i+1] == "reverse":
                encryption = ENCRYPTION_REVERSE
            elif sys.argv[i+1] == "forwards":
                encryption = ENCRYPTION_FORWARDS
            i += 2
        elif sys.argv[i] == "-mult":
            mult = int(sys.argv[i+1], 16)
            i += 2
        elif sys.argv[i] == "-carry":
            carry = int(sys.argv[i+1], 16)
            i += 2
        elif sys.argv[i] == "-key":
            key = int(sys.argv[i+1], 16)
            i += 2
        elif sys.argv[i] == "-p":
            cmd = "pack"
            filename = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-p2":
            cmd = "pack2"
            filename = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-p3":
            cmd = "pack3"
            filename = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-emptypal":
            emptypal = 1
            i += 1
        elif sys.argv[i] == "-w":
            width = sys.argv[i+1]
            width = int(width, 10)
            i += 2
        elif sys.argv[i] == "-h":
            height = sys.argv[i+1]
            height = int(height, 10)
            i += 2
        elif sys.argv[i] == "-debug":
            debugFlag = True
            i += 1
        else:
            i += 1
    
    print(cmd + ': ' + filename)
    if cmd == "unpack":
        gra = Graphic(conf)
        pal = Palette(conf)
        gra.init(filename)
        pal.init(palfilename)
        write_png(outfilename, gra.read_rgcn(encryption, width, height, mult, carry, debugFlag), pal.read_rlcn(debugFlag), debugFlag)
    elif cmd == "unpack palette":
        pal = Palette(conf)
        pal.init(palfilename)
        write_pal(outfilename, pal.read_rlcn(debugFlag))
    elif cmd == "pack":
        gra = Graphic(conf)
        gra.init(filename)
        gra.read_png(filename, encryption, outfilename, mult, carry, key, debugFlag)
    elif cmd == "pack2":
        pal = Palette(conf)
        pal.init(filename)
        pal.read_png(filename, outfilename, emptypal, debugFlag)
    elif cmd == "pack3":
        pal = Palette(conf)
        pal.init(filename)
        pal.read_pal(filename, outfilename, emptypal, debugFlag)
    
