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

from lists.pokemonnamelist import PokemonNameList
from lists.movenamelist import MoveNameList
from lists.itemnamelist import ItemNameList
from lists.abilitynamelist import AbilityNameList
from lists.typelist import TypeList


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


def GetItemName(item):
    if item <= 536:
        return ItemNameList[item].upper()
    else:
        return ItemNameList[0]


def GetAbilityName(ability):
    if ability <= 123:
        return AbilityNameList[ability].upper()
    else:
        return AbilityNameList[0]


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
    output_item += "@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown\n"
    
    HP = input_file.ReadByte(0)
    Atk = input_file.ReadByte(1)
    Def = input_file.ReadByte(2)
    Spe = input_file.ReadByte(3)
    SpA = input_file.ReadByte(4)
    SpD = input_file.ReadByte(5)
    Type1 = input_file.ReadByte(6)
    Type2 = input_file.ReadByte(7)
    CatchRate = input_file.ReadByte(8)
    BaseExp = input_file.ReadByte(9)
    EV = input_file.ReadHWord(0xa)
    EV_HP = (EV>>0)&0x3
    EV_Atk = (EV>>2)&0x3
    EV_Def = (EV>>4)&0x3
    EV_Spe = (EV>>6)&0x3
    EV_SpA = (EV>>8)&0x3
    EV_SpD = (EV>>10)&0x3
    EV_String = "((" + str(EV_HP) + ")|(" + str(EV_Atk) + "<<2)|(" + str(EV_Def) + "<<4)|(" + str(EV_Spe) + "<<6)|(" + str(EV_SpA) + "<<8)|(" + str(EV_SpD) + "<<10))"
    Item1 = input_file.ReadHWord(0xc)
    Item2 = input_file.ReadHWord(0xe)
    Gender = input_file.ReadByte(0x10)
    HatchCycle = input_file.ReadByte(0x11)
    BaseHappy = input_file.ReadByte(0x12)
    ExpRate = input_file.ReadByte(0x13)
    EggGroup1 = input_file.ReadByte(0x14)
    EggGroup2 = input_file.ReadByte(0x15)
    Ability1 = input_file.ReadByte(0x16)
    Ability2 = input_file.ReadByte(0x17)
    Flee = input_file.ReadByte(0x18)
    Unknown19 = input_file.ReadByte(0x19)
    Unknown1a = input_file.ReadHWord(0x1a)
    Unknown1c = input_file.ReadWord(0x1c)
    Unknown20 = input_file.ReadWord(0x20)
    Unknown24 = input_file.ReadWord(0x24)
    Unknown28 = input_file.ReadWord(0x28)
    
    output_item += "PkmnBaseData " + str(HP) + ", " + str(Atk) + ", " + str(Def) + ", " + str(Spe) + ", " + str(SpA) + ", " + str(SpD) + ", " + GetTypeName(Type1) + ", " + GetTypeName(Type2) + ", " + str(CatchRate) + ", " + str(BaseExp) + ", " + EV_String + ", " + GetItemName(Item1) + ", " + GetItemName(Item2) + ", " + str(Gender) + ", " + str(HatchCycle) + ", " + str(BaseHappy) + ", " + str(ExpRate) + ", " + str(EggGroup1) + ", " + str(EggGroup2) + ", " + GetAbilityName(Ability1) + ", " + GetAbilityName(Ability2) + ", " + str(Flee) + ", " + str(Unknown19) + ", " + str(Unknown1a) + ", " + hex(Unknown1c) + ", " + hex(Unknown20) + ", " + hex(Unknown24) + ", " + str(Unknown28)
    
    if not os.path.exists(os.path.dirname(output_folder)):
        os.makedirs(os.path.dirname(output_folder))        
    head, tail = os.path.split(filename)
    with open(os.path.join(output_folder + tail.replace(".bin", ".s")), 'w') as out:
        out.write(output_item)
