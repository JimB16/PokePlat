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


def GetMoveName(move):
    if move <= 467:
        return MoveNameList[move].upper()
    else:
        return MoveNameList[0]


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
    output_item += "@ all unknown\n"
    
    move = 0
    level = 0
    val = 0
    i = 0
    while val != 0xffff:
        val = input_file.ReadHWord(i)
        move = val & 0x1ff
        level = val >> 9
        if val != 0xffff:
            output_item += "MoveTable " + GetMoveName(move) + ", " + str(level) + "\n"
        i += 2
        
    output_item += "\n.hword 0xffff\n\n"
    output_item += ".align 2, 0\n"
    
    if not os.path.exists(os.path.dirname(output_folder)):
        os.makedirs(os.path.dirname(output_folder))        
    head, tail = os.path.split(filename)
    with open(os.path.join(output_folder + tail.replace(".bin", ".s")), 'w') as out:
        out.write(output_item)
