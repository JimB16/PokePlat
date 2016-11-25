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

def GetPokemonName(species):
    if species <= 493:
        return PokemonNameList[species].upper()
    else:
        return hex(species)

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
    
    
    output_item += "@ method, parameter, target\n"
    i = 0
    while i < 7:
        # http://www.serebii.net/diamondpearl/evolution.shtml
        # 16 by #281
        method = input_file.ReadHWord(0+i*6)
        param = input_file.ReadHWord(2+i*6)
        target = input_file.ReadHWord(4+i*6)
        
        if method == 0:
            output_item += ".hword " + "Evo_NoEvo" + ", " + str(param) + ", " + str(target) + "\n"
        elif method == 1: # 42, 113, 172
            output_item += ".hword " + "Evo_HighFriendship" + ", " + str(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 2: # 133
            output_item += ".hword " + "Evo_HighFriendshipAtDaytime" + ", " + str(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 3: # 133
            output_item += ".hword " + "Evo_HighFriendshipAtNighttime" + ", " + str(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 4: # 1
            output_item += ".hword " + "Evo_ReachLevel" + ", " + str(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 5: # 64, 67, 75, 93
            output_item += ".hword " + "Evo_Trade" + ", " + str(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 6: # 112
            output_item += ".hword " + "Evo_HoldItemAndTrade" + ", " + GetItemName(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 7: # 133, 176
            output_item += ".hword " + "Evo_UseItem" + ", " + GetItemName(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 8: # 236
            output_item += ".hword " + "Evo_ReachLevelAndAtkGtDef" + ", " + str(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 9: # 236
            output_item += ".hword " + "Evo_ReachLevelAndAtkEqDef" + ", " + str(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 10: # 236
            output_item += ".hword " + "Evo_ReachLevelAndAtkLtDef" + ", " + str(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 11: # 265
            output_item += ".hword " + "Evo_DependsOnPersonalityValue1" + ", " + str(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 12: # 265
            output_item += ".hword " + "Evo_DependsOnPersonalityValue2" + ", " + str(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 13: # 290
            output_item += ".hword " + "Evo_ReachLevelAndCanCreateExtraPkmn" + ", " + str(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 14: # 290
            output_item += ".hword " + "Evo_CreateExtraPkmnIfSpaceInParty" + ", " + str(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 15: # 349
            output_item += ".hword " + "Evo_HighBeauty" + ", " + str(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 16: # 281
            output_item += ".hword " + "Evo_UseItemAndMale" + ", " + GetItemName(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 17: # 361
            output_item += ".hword " + "Evo_UseItemAndFemale" + ", " + GetItemName(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 18: # 440
            output_item += ".hword " + "Evo_HoldItemAtDaytime" + ", " + GetItemName(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 19: # 207, 215
            output_item += ".hword " + "Evo_HoldItemAtNighttime" + ", " + GetItemName(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 20: # 108
            output_item += ".hword " + "Evo_KnowAttack" + ", " + GetMoveName(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 21: # 458
            output_item += ".hword " + "Evo_HaveOtherPkmnInParty" + ", " + GetPokemonName(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 22: # 412
            output_item += ".hword " + "Evo_EvolvesIfMale" + ", " + str(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 23: # 412, 415
            output_item += ".hword " + "Evo_EvolvesIfFemale" + ", " + str(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 24: # 82, 299
            output_item += ".hword " + "Evo_BeAtCertainLocations" + ", " + str(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 25: # 133
            output_item += ".hword " + "Evo_BeAtMossRockInEternaForest" + ", " + str(param) + ", " + GetPokemonName(target) + "\n"
        elif method == 26: # 133
            output_item += ".hword " + "Evo_BeAtIceRockInRoute217" + ", " + str(param) + ", " + GetPokemonName(target) + "\n"
        else:
            output_item += ".hword " + "Evo_" + str(method) + ", " + str(param) + ", " + GetPokemonName(target) + "\n"
    
        i += 1
    
    output_item += "\n.align 2, 0\n"
    
    if not os.path.exists(os.path.dirname(output_folder)):
        os.makedirs(os.path.dirname(output_folder))        
    head, tail = os.path.split(filename)
    with open(os.path.join(output_folder + tail.replace(".bin", ".s")), 'w') as out:
        out.write(output_item)
