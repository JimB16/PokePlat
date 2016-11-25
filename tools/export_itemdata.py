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
    
    price = input_file.ReadHWord(0)
    battleeffect = input_file.ReadByte(2)
    gain = input_file.ReadByte(3)
    Unknown4 = input_file.ReadByte(4)
    Unknown5 = input_file.ReadByte(5)
    Unknown6 = input_file.ReadByte(6)
    Unknown7 = input_file.ReadByte(7)
    Unknown8 = input_file.ReadHWord(8)
    Unknowna = input_file.ReadByte(0xa)
    Unknownb = input_file.ReadByte(0xb)
    Unknownc = input_file.ReadByte(0xc)
    Unknowne = input_file.ReadByte(0xe) # statboosts
    boost_hp = (Unknowne>>0)&0xf
    boost_level = (Unknowne>>4)&0xf
    Unknowne1 = input_file.ReadByte(0xe+0x1)
    boost_evolution = (Unknowne1>>0)&0xf
    boost_attack = (Unknowne1>>4)&0xf
    Unknowne2 = input_file.ReadByte(0xe+0x2)
    boost_defense = (Unknowne2>>0)&0xf
    boost_spatk = (Unknowne2>>4)&0xf
    Unknowne3 = input_file.ReadByte(0xe+0x3)
    boost_spdef = (Unknowne3>>0)&0xf
    boost_speed = (Unknowne3>>4)&0xf
    Unknowne4 = input_file.ReadByte(0xe+0x4)
    boost_acc = (Unknowne4>>0)&0xf
    boost_crit = (Unknowne4>>4)&0xf
    Unknowne5 = input_file.ReadByte(0xe+0x5)
    boost_pp = (Unknowne5>>0)&0xf
    boost_target = (Unknowne5>>4)&0xf
    Unknowne6 = input_file.ReadByte(0xe+0x6)
    boost_target2 = (Unknowne6>>0)&0xf
    Unknowne7 = input_file.ReadByte(0xe+0x7)
    Unknowne8 = input_file.ReadByte(0xe+0x8)
    Unknowne9 = input_file.ReadByte(0xe+0x9)
    Unknownea = input_file.ReadByte(0xe+0xa)
    Unknowneb = input_file.ReadByte(0xe+0xb)
    Unknownec = input_file.ReadByte(0xe+0xc)
    hprestore = input_file.ReadByte(0xe+0xd)
    pprestore = input_file.ReadByte(0xe+0xe)
    Unknownef = input_file.ReadByte(0xe+0xf)
    Unknowne10 = input_file.ReadByte(0xe+0x10)
    Unknowne11 = input_file.ReadByte(0xe+0x11)
    
    output_item += "@ price, battleeffect, gain, ...\n"
    output_item += "itemdata " + str(price) + ", " + str(battleeffect) + ", " + str(gain) + ", " + str(Unknown4) + ", " + str(Unknown5) + ", " + str(Unknown6) + ", " + str(Unknown7) + ", " + str(Unknown8) + ", " + str(Unknowna) + ", " + str(Unknownb) + ", " + str(Unknownc) + "\n\n"
    
    output_item += "@ boost: hp, level, evolution, attack, defense, spatk, spdef, speed, acc, crit, pp, target, target2\n"
    output_item += "itemdataboosts " + str(boost_hp) + ", " + str(boost_level) + ", " + str(boost_evolution) + ", " + str(boost_attack) + ", " + str(boost_defense) + ", " + str(boost_spatk) + ", " + str(boost_spdef) + ", " + str(boost_speed) + ", " + str(boost_acc) + ", " + str(boost_crit) + ", " + str(boost_pp) + ", " + str(boost_target) + ", " + str(boost_target2) + "\n\n"
    
    output_item += "@ unknown, unknown, unknown, unknown, unknown, unknown, hprestore, pprestoren, unknownn, unknownn, unknown\n"
    output_item += "itemdata2 " + str(Unknowne7) + ", " + str(Unknowne8) + ", " + str(Unknowne9) + ", " + str(Unknownea) + ", " + str(Unknowneb) + ", " + str(Unknownec) + ", " + str(hprestore) + ", " + str(pprestore) + ", " + str(Unknownef) + ", " + str(Unknowne10) + ", " + str(Unknowne11) + "\n"
    
    output_item += "\n"
    
    if not os.path.exists(os.path.dirname(output_folder)):
        os.makedirs(os.path.dirname(output_folder))        
    head, tail = os.path.split(filename)
    with open(os.path.join(output_folder + tail.replace(".bin", ".s")), 'w') as out:
        out.write(output_item)
