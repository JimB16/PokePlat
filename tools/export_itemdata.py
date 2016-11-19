# -*- coding: utf-8 -*-

import os
import sys
from ctypes import c_int8
import operator
from new import classobj
import configuration
from filehandler import FileHandler
from lists.typelist import TypeList

input_file = FileHandler()


def GetCategoryName(type):
    if type == 0:
        return "Physical".upper()
    elif type == 1:
        return "Special".upper()
    elif type == 2:
        return "Status".upper()
    else:
        return str(type)

def GetContestName(type):
    if type == 0:
        return "Cool".upper()
    elif type == 1:
        return "Beautiful".upper()
    elif type == 4:
        return "Tough".upper()
    else:
        return str(type)

def GetTypeName(type):
    if type <= 17:
        return TypeList[type].upper()
    else:
        return str(type)


if __name__ == "__main__":
    conf = configuration.Config()
    
    filename = sys.argv[1]
    output_folder = sys.argv[2]
    
    
    input_file.init(os.path.join(conf.path, filename), 0)
    
    output_item = ""
    output_item += ".include \"source/macros_asm.s\"\n\n"
    output_item += "@ all unknown\n"
    
    Unknown0 = input_file.ReadHWord(0)
    Unknown2 = input_file.ReadByte(2)
    Unknown3 = input_file.ReadByte(3)
    Unknown4 = input_file.ReadByte(4)
    Unknown5 = input_file.ReadByte(5)
    Unknown6 = input_file.ReadByte(6)
    Unknown7 = input_file.ReadByte(7)
    Unknown8 = input_file.ReadHWord(8)
    Unknowna = input_file.ReadByte(0xa)
    Unknownb = input_file.ReadByte(0xb)
    Unknownc = input_file.ReadByte(0xc)
    Unknowne = input_file.ReadByte(0xe)
    Unknowne1 = input_file.ReadByte(0xe+0x1)
    Unknowne2 = input_file.ReadByte(0xe+0x2)
    Unknowne3 = input_file.ReadByte(0xe+0x3)
    Unknowne4 = input_file.ReadByte(0xe+0x4)
    Unknowne5 = input_file.ReadByte(0xe+0x5)
    Unknowne6 = input_file.ReadByte(0xe+0x6)
    Unknowne7 = input_file.ReadByte(0xe+0x7)
    Unknowne8 = input_file.ReadByte(0xe+0x8)
    Unknowne9 = input_file.ReadByte(0xe+0x9)
    Unknownea = input_file.ReadByte(0xe+0xa)
    Unknowneb = input_file.ReadByte(0xe+0xb)
    Unknownec = input_file.ReadByte(0xe+0xc)
    Unknowned = input_file.ReadByte(0xe+0xd)
    Unknownee = input_file.ReadByte(0xe+0xe)
    Unknownef = input_file.ReadByte(0xe+0xf)
    Unknowne10 = input_file.ReadByte(0xe+0x10)
    Unknowne11 = input_file.ReadByte(0xe+0x11)
    
    output_item += "itemdata " + str(Unknown0) + ", " + str(Unknown2) + ", " + str(Unknown3) + ", " + str(Unknown4) + ", " + str(Unknown5) + ", " + str(Unknown6) + ", " + str(Unknown7) + ", " + str(Unknown8) + ", " + str(Unknowna) + ", " + str(Unknownb) + ", " + str(Unknownc) + ", " + str(Unknowne) + ", " + str(Unknowne1) + ", " + str(Unknowne2) + ", " + str(Unknowne3) + ", " + str(Unknowne4) + ", " + str(Unknowne5) + ", " + str(Unknowne6) + ", " + str(Unknowne7) + ", " + str(Unknowne8) + ", " + str(Unknowne9) + ", " + str(Unknownea) + ", " + str(Unknowneb) + ", " + str(Unknownec) + ", " + str(Unknowned) + ", " + str(Unknownee) + ", " + str(Unknownef) + ", " + str(Unknowne10) + ", " + str(Unknowne11)
    
    output_item += "\n"
    
    if not os.path.exists(os.path.dirname(output_folder)):
        os.makedirs(os.path.dirname(output_folder))        
    head, tail = os.path.split(filename)
    with open(os.path.join(output_folder + tail.replace(".bin", ".s")), 'w') as out:
        out.write(output_item)
