# example data_000.bin
# 0x810 building data

# -*- coding: utf-8 -*-

import os
import sys
from ctypes import c_int8
import operator
import array
from new import classobj
import configuration
from filehandler import FileHandler

input_file = FileHandler()


if __name__ == "__main__":
    conf = configuration.Config()
    
    filename = sys.argv[1]
    output_folder = sys.argv[2]
    
    
    input_file.init(os.path.join(conf.path, filename), 0)
    
    MovePerm_Size = input_file.ReadWord(0)
    Building_Size = input_file.ReadWord(4)
    MapModel_Size = input_file.ReadWord(8)
    Unknown_Size = input_file.ReadWord(12)
    
    
    output_MovePerm = ""
    output_MovePerm += ".include \"source/macros_asm.s\"\n\n"
    
    i = 0x10
    while i < 0x10+MovePerm_Size:
        hword01 = input_file.ReadHWord(i+0x00)
        hword02 = input_file.ReadHWord(i+0x02)
        hword03 = input_file.ReadHWord(i+0x04)
        hword04 = input_file.ReadHWord(i+0x06)
        hword05 = input_file.ReadHWord(i+0x08)
        hword06 = input_file.ReadHWord(i+0x0a)
        hword07 = input_file.ReadHWord(i+0x0c)
        hword08 = input_file.ReadHWord(i+0x0e)
        hword09 = input_file.ReadHWord(i+0x10)
        hword10 = input_file.ReadHWord(i+0x12)
        hword11 = input_file.ReadHWord(i+0x14)
        hword12 = input_file.ReadHWord(i+0x16)
        hword13 = input_file.ReadHWord(i+0x18)
        hword14 = input_file.ReadHWord(i+0x1a)
        hword15 = input_file.ReadHWord(i+0x1c)
        hword16 = input_file.ReadHWord(i+0x1e)
        hword17 = input_file.ReadHWord(i+0x20)
        hword18 = input_file.ReadHWord(i+0x22)
        hword19 = input_file.ReadHWord(i+0x24)
        hword20 = input_file.ReadHWord(i+0x26)
        hword21 = input_file.ReadHWord(i+0x28)
        hword22 = input_file.ReadHWord(i+0x2a)
        hword23 = input_file.ReadHWord(i+0x2c)
        hword24 = input_file.ReadHWord(i+0x2e)
        hword25 = input_file.ReadHWord(i+0x30)
        hword26 = input_file.ReadHWord(i+0x32)
        hword27 = input_file.ReadHWord(i+0x34)
        hword28 = input_file.ReadHWord(i+0x36)
        hword29 = input_file.ReadHWord(i+0x38)
        hword30 = input_file.ReadHWord(i+0x3a)
        hword31 = input_file.ReadHWord(i+0x3c)
        hword32 = input_file.ReadHWord(i+0x3e)
        output_MovePerm += ".hword " + "{0:#0{1}x}".format(hword01,6) + ", " + "{0:#0{1}x}".format(hword02,6) + ", " + "{0:#0{1}x}".format(hword03,6) + ", " + "{0:#0{1}x}".format(hword04,6) + ", " + "{0:#0{1}x}".format(hword05,6) + ", " + "{0:#0{1}x}".format(hword06,6) + ", " + "{0:#0{1}x}".format(hword07,6) + ", " + "{0:#0{1}x}".format(hword08,6) + ", " + "{0:#0{1}x}".format(hword09,6) + ", " + "{0:#0{1}x}".format(hword10,6) + ", " + "{0:#0{1}x}".format(hword11,6) + ", " + "{0:#0{1}x}".format(hword12,6) + ", " + "{0:#0{1}x}".format(hword13,6) + ", " + "{0:#0{1}x}".format(hword14,6) + ", " + "{0:#0{1}x}".format(hword15,6) + ", " + "{0:#0{1}x}".format(hword16,6) + ", " + "{0:#0{1}x}".format(hword17,6) + ", " + "{0:#0{1}x}".format(hword18,6) + ", " + "{0:#0{1}x}".format(hword19,6) + ", " + "{0:#0{1}x}".format(hword20,6) + ", " + "{0:#0{1}x}".format(hword21,6) + ", " + "{0:#0{1}x}".format(hword22,6) + ", " + "{0:#0{1}x}".format(hword23,6) + ", " + "{0:#0{1}x}".format(hword24,6) + ", " + "{0:#0{1}x}".format(hword25,6) + ", " + "{0:#0{1}x}".format(hword26,6) + ", " + "{0:#0{1}x}".format(hword27,6) + ", " + "{0:#0{1}x}".format(hword28,6) + ", " + "{0:#0{1}x}".format(hword29,6) + ", " + "{0:#0{1}x}".format(hword30,6) + ", " + "{0:#0{1}x}".format(hword31,6) + ", " + "{0:#0{1}x}".format(hword32,6) + ", " + "\n"
        i += 0x40
    
    if not os.path.exists(os.path.dirname(output_folder)):
        os.makedirs(os.path.dirname(output_folder))        
    head, tail = os.path.split(filename)
    with open(os.path.join(output_folder + tail.replace(".bin", "_moveperm.s")), 'w') as out:
        out.write(output_MovePerm)
    
    
    output_Building = ""
    output_Building += ".include \"source/macros_asm.s\"\n\n"
    
    i = 0x10+MovePerm_Size
    while i < 0x10+MovePerm_Size+Building_Size:
        ModelIndex = input_file.ReadWord(i+0)
        X1 = input_file.ReadHWord(i+4)
        X2 = input_file.ReadHWord(i+6)
        Y1 = input_file.ReadHWord(i+8)
        Y2 = input_file.ReadHWord(i+0xa)
        Z1 = input_file.ReadHWord(i+0xc)
        Z2 = input_file.ReadHWord(i+0xe)
        Unknown1 = input_file.ReadWord(i+0x10)
        Unknown2 = input_file.ReadWord(i+0x14)
        Unknown3 = input_file.ReadWord(i+0x18)
        Unknown4 = input_file.ReadWord(i+0x1c)
        Unknown5 = input_file.ReadWord(i+0x20)
        Unknown6 = input_file.ReadWord(i+0x24)
        Unknown7 = input_file.ReadWord(i+0x28)
        Unknown8 = input_file.ReadWord(i+0x2c)
        output_Building += ".word " + str(ModelIndex) + "\n"
        output_Building += ".hword " + hex(X1) + ", " + hex(X2) + ", " + hex(Y1) + ", " + hex(Y2) + ", " + hex(Z1) + ", " + hex(Z2) + "\n"
        output_Building += ".word " + str(Unknown1) + ", " + str(Unknown2) + ", " + str(Unknown3) + ", " + str(Unknown4) + ", " + str(Unknown5) + ", " + str(Unknown6) + ", " + str(Unknown7) + ", " + str(Unknown8) + "\n\n"
        i += 0x30
    
    if not os.path.exists(os.path.dirname(output_folder)):
        os.makedirs(os.path.dirname(output_folder))        
    head, tail = os.path.split(filename)
    with open(os.path.join(output_folder + tail.replace(".bin", "_building.s")), 'w') as out:
        out.write(output_Building)
    
    
    filename = os.path.join(output_folder + tail.replace(".bin", ".bmd0"))
    f = open(filename, 'wb')
    
    c = array.array("H")
    i = 0x10+MovePerm_Size+Building_Size
    while i < 0x10+MovePerm_Size+Building_Size+MapModel_Size:
        hword = input_file.ReadHWord(i)
        i += 2
        c.append(hword)
    c.tofile(f)
    
    
    filename = os.path.join(output_folder + tail.replace(".bin", ".bdhc"))
    f = open(filename, 'wb')
    
    c = array.array("H")
    i = 0x10+MovePerm_Size+Building_Size+MapModel_Size
    while i < 0x10+MovePerm_Size+Building_Size+MapModel_Size+Unknown_Size:
        hword = input_file.ReadHWord(i)
        i += 2
        c.append(hword)
    c.tofile(f)
