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

def conv_pic(outfilename):
    RGCN_MagicID = chr(input_file.ReadByte(0)) + chr(input_file.ReadByte(1)) + chr(input_file.ReadByte(2)) + chr(input_file.ReadByte(3))
    RGCN_Constant = input_file.ReadWord(4)
    if (RGCN_MagicID != "RGCN"):# | (RGCN_Constant != 0x100feff):
        print(RGCN_MagicID + " " + hex(RGCN_Constant))
        return
    
    RAHC_MagicID = chr(input_file.ReadByte(0x10)) + chr(input_file.ReadByte(0x11)) + chr(input_file.ReadByte(0x12)) + chr(input_file.ReadByte(0x13))
    if (RAHC_MagicID != "RAHC"):
        return
    RAHC_HeaderSize = input_file.ReadByte(0x14)
    RAHC_SectionSize = input_file.ReadWord(0x14)
    RAHC_TileCount = input_file.ReadHWord(0x18)
    RAHC_TileSize = input_file.ReadHWord(0x1A)
    RAHC_TileBitDepth = input_file.ReadWord(0x1C)
    RAHC_TileDataSize = input_file.ReadWord(0x28)
    RAHC_Unknown = input_file.ReadWord(0x2C)
    
    print("RGCN-Test")
    print("TileCount: " + str(RAHC_TileCount))
    print("TileSize: " + str(RAHC_TileSize))
    print("TileBitDepth: " + str(RAHC_TileBitDepth))
    print("TileDataSize: " + str(RAHC_TileDataSize))
    
    data = []
    i = 0
    while i < RAHC_TileDataSize:
        data.append(input_file.ReadHWord(0x30+i))
        i += 2
    
    ENCRYPT_MULT = 0x41c64e6d
    ENCRYPT_CARRY = 0x6073
    
    enc_data = array.array('H', data)
    #if encryption == NCGR.ENCRYPTION_REVERSE:
    #    enc_data = enc_data[::-1]
    dec_data = array.array('H')
#    for val in enc_data:
#        dec_data.append(val)
    key = enc_data[0]
    print(hex(key))
    for val in enc_data:
        dec_data.append(val ^ (key & 0xFFFF))
        key *= ENCRYPT_MULT
        key += ENCRYPT_CARRY
    #data = dec_data.tostring()
    
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
        if(i % 160) == 0:
#        if(i % 16) == 0:
            data.append(data_line)
            data_line = []
    
    print("len: " + str(len(data)))
    
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
            
    palette=[]
    i = 0
    while i < 16:
        #col = (palette_file.ReadByte(0x28+i*2)) | (palette_file.ReadByte(0x28+i*2+1)<<16)
        col = (palette_file.ReadHWord(0x28+i*2))
        colr = col&0x1f
        colg = (col>>5)&0x1f
        colb = (col>>10)&0x1f
        #palette.append((i*16, i*16, i*16))
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
    #base_address = sys.argv[2]
    #base_address = int(base_address, 16)
    #word = sys.argv[3]
    #word = int(word, 16)
    
    s = [[0,0,0,0], [0,0,0,0], [0,1,1,0], [0,1,1,0]]
    f = open('png.png', 'wb')
    palette=[(0x55,0x55,0x55), (0xff,0x99,0x99)]
    w = png.Writer(len(s[0]), len(s), palette=palette, bitdepth=1)
    w.write(f, s)
    f.close()
    
    input_file.init(os.path.join(conf.path, filename), 0)
    
    palette_file.init(os.path.join(conf.path, palfilename), 0)
    
    conv_pic(outfilename)
    
