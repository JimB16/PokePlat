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

FORMAT_16BIT = 3
FORMAT_256BIT = 4

ENCRYPT_MULT = 0x41c64e6d
ENCRYPT_CARRY = 0x6073

TYPE_TILE = 0
TYPE_LINEAR = 1
TYPE_LINEAR2 = 256



class Graphic(object):
    file = FileHandler()
    data = []

    def __init__(self, config):
        self.config = config
    
    def init(self, filename):
        self.file.init(os.path.join(self.config.path, filename), 0)

    def read_rgcn(self, encryption=ENCRYPTION_NONE, width=1, height=1, debug=False):
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
        RAHC_Format = self.file.ReadWord(0x1C)
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
        
        
        dec_data = array.array('H')
        if encryption != ENCRYPTION_NONE:
            enc_data = array.array('H', data)
            #if encryption == NCGR.ENCRYPTION_REVERSE:
            #    enc_data = enc_data[::-1]
            #for val in enc_data:
            #    dec_data.append(val)
            key = enc_data[0]
            if debug:
                print("- key: " + hex(key))
            for val in enc_data:
                dec_data.append(val ^ (key & 0xFFFF))
                key *= ENCRYPT_MULT
                key += ENCRYPT_CARRY
            #data = dec_data.tostring()
        else:
            enc_data = array.array('H', data)
            for val in enc_data:
                dec_data.append(val)
        

        data = []
        data_line = []
        i = 0
        for val in dec_data:
            a = val&0xf
            b = (val>>4)&0xf
            c = (val>>8)&0xf
            d = (val>>12)&0xf
            data_line.append(a)
            data_line.append(b)
            data_line.append(c)
            data_line.append(d)
            i += 4
            if (RAHC_Type == TYPE_LINEAR or RAHC_Type == TYPE_LINEAR2) and ((i % (width*8)) == 0):
                data.append(data_line)
                data_line = []
            elif (RAHC_Type != TYPE_LINEAR) and ((i % 8) == 0):
                data.append(data_line)
                data_line = []
        
        
        if RAHC_Type != TYPE_LINEAR:
            data_temp = data
            data = []
            data_line = []
            for l in range(height):
                for k in range(8):
                    for j in range(width):
                        for i in range(8):
                            data_line.append(data_temp[l*4*8+j*8+k][i])
                    data.append(data_line)
                    data_line = []
        
        
        #Tiles = []
        bmp = [[0 for j in range(9)] for i in range(9)]
        #TileX = 0
        #TileY = 0
        #i = 0
        #j = 0
        #line = []
        #y = 0
        #while i < 4*8:#RAHC_TileDataSize:
        #    byte = self.file.ReadByte(0x30+i)
        #    b = byte >> 4
        #    a = byte & 0xf
        #    bmp[y][j] = a
        #    bmp[y][j+1] = b
            #line.append(a)
            #line.append(b)
        #    i += 1
        #    j += 2
        #    if j == 8:
        #        y += 1
        #        j = 0
                #Tiles.append(line)
                #line = []

        #tiled = False
        #height = 20
        #width = 10
        #depth = 3
        #i = 0
        #tiles = []
        #if tiled:
        #    for l in range(height):
        #        row = []
        #        for m in range(width):
        #            col = []
        #            for n in range(8):
        #                tilerow = []
        #                for p in range(4):
        #                    if depth == 0x3:
                                #tmp = unpack("B", rawdata[:1])[0]
        #                        tmp = self.file.ReadByte(0x30+i)
        #                        i += 1
                                #rawdata = rawdata[1:]
        #                        tilerow.append(tmp&0xf)
        #                        tilerow.append(tmp>>4)
        #                col.append(tilerow)
        #            row.append(col)
        #        tiles.append(row)
        #else:
        #    for l in range(height*8):
        #        row = []
        #        for m in range(width*4):
        #            if depth == 0x3:
        #                #tmp = unpack("B", rawdata[:1])[0]
        #                tmp = self.file.ReadByte(0x30+i)
        #                i += 1
                        #rawdata = rawdata[1:]
        #                row.append(tmp&0xf)
        #                row.append(tmp>>4)
                
        #data = []
        #lenL = len(tiles)
        #for l in range(lenL):
        #    lenM = len(tiles[l])
        #    if tiled:
        #        for n in range(8):
        #            data_line = []
        #            for m in range(lenM):
        #                for p in range(8):
        #                    data_line.append(tiles[l][m][n][p])
        #            data.append(data_line)
        #    else:
        #        for m in range(lenM):
                    #data_line.append(tiles[l][m])
                    #data_line = []
                    #for n in range(8):
                    #    for p in range(8):
                    #        data_line.append(tiles[l][m][n][p])
        #            data.append([0])
                    #data_line = []
        return data


class Palette(object):
    file = FileHandler()
    data = []

    def __init__(self, config):
        self.config = config
    
    def init(self, filename):
        self.file.init(os.path.join(self.config.path, filename), 0)

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
        PLTT_Size_ = self.file.ReadWord(0x4)
        PLTT_Format = self.file.ReadWord(0x8)
        PLTT_Extended = self.file.ReadWord(0xc)
        PLTT_Datasize = self.file.ReadWord(0x10)
        PLTT_Offset = self.file.ReadWord(0x14)
        
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


def conv_pic(outfilename, data=[], palette=[], debug=False):

    if not os.path.exists(os.path.dirname(outfilename)):
        os.makedirs(os.path.dirname(outfilename))
    
    f = open(outfilename, 'wb')
    #w = png.Writer(len(Tiles[0]), len(Tiles), palette=palette, bitdepth=4)
    #w.write(f, Tiles)
    #w = png.Writer(len(data[0]), len(data), palette=palette, bitdepth=4)
    w = png.Writer(len(data[0]), len(data), palette=palette, bitdepth=4)
    w.write(f, data)
    f.close()




if __name__ == "__main__":
    conf = configuration.Config()
    gra = Graphic(conf)
    pal = Palette(conf)
    
    filename = sys.argv[1]
    palfilename = sys.argv[2]
    outfilename = ""
    debugFlag = False
    
    encryption = ENCRYPTION_NONE
    width = 1
    height = 1
    i = 3
    while i < len(sys.argv):
        if sys.argv[i] == "-o":
            outfilename = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-e":
            if sys.argv[i+1] == "reverse":
                encryption = ENCRYPTION_REVERSE
            elif sys.argv[i+1] == "forwards":
                encryption = ENCRYPTION_FORWARDS
            i += 2
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
    
    #s = [[0,0,0,0], [0,0,0,0], [0,1,1,0], [0,1,1,0]]
    #f = open('png.png', 'wb')
    #palette=[(0x55,0x55,0x55), (0xff,0x99,0x99)]
    #w = png.Writer(len(s[0]), len(s), palette=palette, bitdepth=1)
    #w.write(f, s)
    #f.close()
    
    gra.init(filename)
    pal.init(palfilename)
    
    conv_pic(outfilename, gra.read_rgcn(encryption, width, height, debugFlag), pal.read_rlcn(debugFlag), debugFlag)
    
