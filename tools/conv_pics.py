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

input_file = FileHandler()
palette_file = FileHandler()


ENCRYPTION_NONE = 0
ENCRYPTION_REVERSE = 1
ENCRYPTION_FORWARDS = 2

def conv_pic(outfilename, encryption=ENCRYPTION_NONE, width=1, height=1):
    FORMAT_16BIT = 3
    FORMAT_256BIT = 4
    ENCRYPT_MULT = 0x41c64e6d
    ENCRYPT_CARRY = 0x6073
    TYPE_TILE = 0
    TYPE_LINEAR = 1
    TYPE_LINEAR2 = 256
    
    # RGCN-Header
    # PPRE/ntr/g2d/ncgr.py
    RGCN_MagicID = chr(input_file.ReadByte(0)) + chr(input_file.ReadByte(1)) + chr(input_file.ReadByte(2)) + chr(input_file.ReadByte(3))
    RGCN_Endian = input_file.ReadHWord(4)
    RGCN_Version = input_file.ReadHWord(6)
    RGCN_Size_ = input_file.ReadWord(8)
    RGCN_HeaderSize = input_file.ReadHWord(0xC)
    RGCN_NumBlocks = input_file.ReadHWord(0xE)
    if (RGCN_MagicID != "RGCN"):
        print(RGCN_MagicID + " " + hex(RGCN_Constant))
        return
    
    # RAHC-Header
    # PPRE/ntr/g2d/ncgr.py
    RAHC_MagicID = chr(input_file.ReadByte(0x10)) + chr(input_file.ReadByte(0x11)) + chr(input_file.ReadByte(0x12)) + chr(input_file.ReadByte(0x13))
    if (RAHC_MagicID != "RAHC"):
        return
    RAHC_Size_ = input_file.ReadByte(0x14)
    RAHC_Height = input_file.ReadHWord(0x18)
    RAHC_Width = input_file.ReadHWord(0x1A)
    RAHC_Format = input_file.ReadWord(0x1C)
    RAHC_Depth = input_file.ReadWord(0x20)
    RAHC_Type = input_file.ReadWord(0x24)
    RAHC_DataSize = input_file.ReadWord(0x28)
    RAHC_Offset = input_file.ReadWord(0x2C)
    
    if RAHC_Width != 0xffff:
        width = RAHC_Width
    
    print("RGCN-Data:")
    print("Height: " + str(RAHC_Height))
    print("Width: " + str(RAHC_Width))
    print("Format: " + str(RAHC_Format))
    print("Depth: " + str(RAHC_Depth))
    print("Type: " + str(RAHC_Type))
    print("DataSize: " + str(RAHC_DataSize))
    if encryption == ENCRYPTION_NONE:
        print("Encryption: none")
    elif encryption == ENCRYPTION_REVERSE:
        print("Encryption: reverse")
    elif encryption == ENCRYPTION_FORWARDS:
        print("Encryption: forwards")
    
    data = []
    i = 0
    while i < RAHC_DataSize:
        data.append(input_file.ReadHWord(0x30+i))
        i += 2
    
    
    dec_data = array.array('H')
    if encryption != ENCRYPTION_NONE:
        enc_data = array.array('H', data)
        #if encryption == NCGR.ENCRYPTION_REVERSE:
        #    enc_data = enc_data[::-1]
        #for val in enc_data:
        #    dec_data.append(val)
        key = enc_data[0]
        print(hex(key))
        for val in enc_data:
            dec_data.append(val ^ (key & 0xFFFF))
            key *= ENCRYPT_MULT
            key += ENCRYPT_CARRY
        #data = dec_data.tostring()
    else:
        enc_data = array.array('H', data)
        for val in enc_data:
            dec_data.append(val)
    
    
    
    #data = [[0 for j in range(9)] for i in range(9)]
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
    
    #print("len: " + str(len(data)))
    
    
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
    #    byte = input_file.ReadByte(0x30+i)
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
    #                        tmp = input_file.ReadByte(0x30+i)
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
    #                tmp = input_file.ReadByte(0x30+i)
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
            
    
    # RLCN-Header
    # PPRE/ntr/g2d/nclr.py
    RLCN_MagicID = chr(palette_file.ReadByte(0x0)) + chr(palette_file.ReadByte(0x1)) + chr(palette_file.ReadByte(0x2)) + chr(palette_file.ReadByte(0x3))
    if (RLCN_MagicID != "RLCN"):
        print("Expected RLCN, got " + RLCN_MagicID)
        return
    RLCN_Endian = palette_file.ReadHWord(0x4)
    RLCN_Version = palette_file.ReadHWord(0x6)
    RLCN_Size_ = palette_file.ReadWord(0x8)
    RLCN_HeaderSize = palette_file.ReadHWord(0xc)
    RLCN_NumBlocks = palette_file.ReadHWord(0xe)
    
    # PLTT-Header
    # PPRE/ntr/g2d/nclr.py
    PLTT_MagicID = chr(palette_file.ReadByte(0x10)) + chr(palette_file.ReadByte(0x11)) + chr(palette_file.ReadByte(0x12)) + chr(palette_file.ReadByte(0x13))
    if (PLTT_MagicID != "TTLP"):
        print("Expected TTLP, got " + PLTT_MagicID)
        return
    PLTT_Size_ = palette_file.ReadWord(0x4)
    PLTT_Format = palette_file.ReadWord(0x8)
    PLTT_Extended = palette_file.ReadWord(0xc)
    PLTT_Datasize = palette_file.ReadWord(0x10)
    PLTT_Offset = palette_file.ReadWord(0x14)
    
    print("RLCN-Data:")
    print("Format: " + str(PLTT_Format))
    print("Extended: " + str(PLTT_Extended))
    
    palette=[]
    i = 0
    while i < 16:
        col = (palette_file.ReadHWord(0x28+i*2))
        colr = col&0x1f
        colg = (col>>5)&0x1f
        colb = (col>>10)&0x1f
        palette.append((colr*8, colg*8, colb*8))
        i += 1
    
    f = open(outfilename, 'wb')
    #w = png.Writer(len(Tiles[0]), len(Tiles), palette=palette, bitdepth=4)
    #w.write(f, Tiles)
    #w = png.Writer(len(data[0]), len(data), palette=palette, bitdepth=4)
    w = png.Writer(len(data[0]), len(data), palette=palette, bitdepth=4)
    w.write(f, data)
    f.close()
    
    
if __name__ == "__main__":
    conf = configuration.Config()
    
    filename = sys.argv[1]
    palfilename = sys.argv[2]
    outfilename = sys.argv[3]
    
    encryption = ENCRYPTION_NONE
    width = 1
    height = 1
    i = 4
    while i < len(sys.argv):
        if sys.argv[i] == "-e":
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
        else:
            i += 1
    
    #base_address = sys.argv[2]
    #base_address = int(base_address, 16)
    #word = sys.argv[3]
    #word = int(word, 16)
    
    #s = [[0,0,0,0], [0,0,0,0], [0,1,1,0], [0,1,1,0]]
    #f = open('png.png', 'wb')
    #palette=[(0x55,0x55,0x55), (0xff,0x99,0x99)]
    #w = png.Writer(len(s[0]), len(s), palette=palette, bitdepth=1)
    #w.write(f, s)
    #f.close()
    
    input_file.init(os.path.join(conf.path, filename), 0)
    
    palette_file.init(os.path.join(conf.path, palfilename), 0)
    
    conv_pic(outfilename, encryption, width, height)
    
