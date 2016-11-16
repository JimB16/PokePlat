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
    
    output_trainers = ""
    output_trainers += ".include \"source/macros_asm.s\"\n\n"
    output_trainers += "@ Effect, Category, Power, Type, Accuracy, PP, EffectChance, Flag1, Priority, Flag2, ContestEffect, ContestType\n"
    
    effect = input_file.ReadHWord(0)
    category = input_file.ReadByte(2)
    power = input_file.ReadByte(3)
    type = input_file.ReadByte(4)
    accuracy = input_file.ReadByte(5)
    pp = input_file.ReadByte(6)
    effectchance = input_file.ReadByte(7)
    flag1 = input_file.ReadHWord(8)
    priority = input_file.ReadByte(0xa)
    flag2 = input_file.ReadByte(0xb)
    contesteffect = input_file.ReadByte(0xc)
    contesttype = input_file.ReadByte(0xd)
    
    output_trainers += "move " + str(effect) + ", " + GetCategoryName(category) + ", " + str(power) + ", " + GetTypeName(type) + ", " + str(accuracy) + ", "  + str(pp) + ", "  + str(effectchance) + ", "  + str(flag1) + ", "  + str(priority) + ", "  + str(flag2) + ", "  + str(contesteffect) + ", " + GetContestName(contesttype)
    
    output_trainers += "\n\n.align 2, 0\n"
    
    #filenameout = filename.replace(".bin", "_01.script")
    if not os.path.exists(os.path.dirname(output_folder)):
        os.makedirs(os.path.dirname(output_folder))        
    head, tail = os.path.split(filename)
    with open(os.path.join(output_folder + tail.replace(".bin", ".s")), 'w') as out:
        out.write(output_trainers)
    #f = open(os.path.join(conf.path, filename).replace(".bin", ".s"), 'w+')
    #f.write(output_trainers)
