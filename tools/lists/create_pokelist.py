# -*- coding: utf-8 -*-

import os
import sys
from ctypes import c_int8
import operator
from new import classobj
from pokemonnamelist import PokemonNameList
from movenamelist import MoveNameList
from itemnamelist import ItemNameList


def GetPokemonName(species):
    if species <= 493:
        return PokemonNameList[species].upper()
    else:
        return PokemonNameList[0].upper()


def GetMoveName(move):
    if move <= 467:
        return MoveNameList[move]
    else:
        return MoveNameList[0]


def GetItemName(item):
    if item <= 536:
        return ItemNameList[item]
    else:
        return ItemNameList[0]


if __name__ == "__main__":    
    #output_folder = sys.argv[1]
    
    format = 0
    i = 3
    while i < len(sys.argv):
        if sys.argv[i] == "-bt":
            format = 1
        i += 1

    output_trainers = ""
    i = 0
    while i <= 493:
        output_trainers += ".equ " + (GetPokemonName(i).upper() + ", ").ljust(15) + str(i) + "\n"
        i += 1
    
    with open(("pokemon_constants.s"), 'w') as out:
        out.write(output_trainers)
