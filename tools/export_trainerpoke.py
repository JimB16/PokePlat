# -*- coding: utf-8 -*-

import os
import sys
from ctypes import c_int8
import operator
from new import classobj
import configuration
from filehandler import FileHandler
from lists.pokemonnamelist import PokemonNameList
from lists.movenamelist import MoveNameList
from lists.itemnamelist import ItemNameList

input_file = FileHandler()


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


def GetEVSpread(evs):
    output = "0"
    if (evs & 1) == 1:
        output += "|EV_HP"
    elif (evs & 1<<1) == 1<<1:
        output += "|EV_ATK"
    if (evs & 1<<2) == 1<<2:
        output += "|EV_DEF"
    if (evs & 1<<3) == 1<<3:
        output += "|EV_SA"
    if (evs & 1<<4) == 1<<4:
        output += "|EV_SD"
    if (evs & 1<<5) == 1<<5:
        output += "|EV_SPD"
    return output


def GetItemName(item):
    if item <= 536:
        return ItemNameList[item]
    else:
        return ItemNameList[0]


if __name__ == "__main__":
    conf = configuration.Config()
    
    filename = sys.argv[1]
    output_folder = sys.argv[2]
    
    format = 0
    i = 3
    while i < len(sys.argv):
        if sys.argv[i] == "-bt":
            format = 1
        elif sys.argv[i] == "-t2":
            format = 2
        i += 1
    
    input_file.init(os.path.join(conf.path, filename), 0)

    output_trainers = ""
    output_trainers += ".include \"source/macros_asm.s\"\n\n"
    output_trainers += "@ ?, ?, Level, ?, Pkmn, ?, ?\n"
    
    if format == 0: # normal trainer pkmn
        i = 0
        while i < (input_file.GetFileSize()/8):
            unknown1 = input_file.ReadByte(0+i*8)
            unknown2 = input_file.ReadByte(1+i*8)
            level = input_file.ReadByte(2+i*8)
            unknown3 = input_file.ReadByte(3+i*8)
            species = input_file.ReadHWord(4+i*8)
            unknown4 = input_file.ReadByte(6+i*8)
            unknown5 = input_file.ReadByte(7+i*8)
        
            output_trainers += "trainerpoke " + str(unknown1) + ", " + str(unknown2) + ", " + str(level) + ", " + str(unknown3) + ", " + str(GetPokemonName(species)) + ", " + str(unknown4) + ", " + str(unknown5) + "\n"
            i += 1
    elif format == 1: # battle tower pkmn
        species = input_file.ReadHWord(0)
        move1 = input_file.ReadHWord(2)
        move2 = input_file.ReadHWord(4)
        move3 = input_file.ReadHWord(6)
        move4 = input_file.ReadHWord(8)
        evs = input_file.ReadByte(10)
        item = input_file.ReadByte(12)
        unknown3 = input_file.ReadByte(14)
        
        output_trainers += "btpoke " + str(GetPokemonName(species)) + ", " + str(GetMoveName(move1)) + ", " + str(GetMoveName(move2)) + ", " + str(GetMoveName(move3)) + ", " + str(GetMoveName(move4)) + ", " + str(GetEVSpread(evs)) + ", " + str(GetItemName(item)) + ", " + str(unknown3) + "\n"
    elif format == 2: # unnormal trainer pkmn
        i = 0
        while i < (input_file.GetFileSize()/16):
            unknown1 = input_file.ReadByte(0+i*16)
            unknown2 = input_file.ReadByte(1+i*16)
            level = input_file.ReadByte(2+i*16)
            unknown3 = input_file.ReadByte(3+i*16)
            species = input_file.ReadHWord(4+i*16)
            move1 = input_file.ReadHWord(6+i*16)
            move2 = input_file.ReadHWord(8+i*16)
            move3 = input_file.ReadHWord(10+i*16)
            move4 = input_file.ReadHWord(12+i*16)
            unknown4 = input_file.ReadByte(14+i*16)
            unknown5 = input_file.ReadByte(15+i*16)
        
            output_trainers += "trainerpoke2 " + str(unknown1) + ", " + str(unknown2) + ", " + str(level) + ", " + str(unknown3) + ", " + str(GetPokemonName(species)) + ", " + str(GetMoveName(move1)) + ", " + str(GetMoveName(move2)) + ", " + str(GetMoveName(move3)) + ", " + str(GetMoveName(move4)) + ", " + str(unknown4) + ", " + str(unknown5) + "\n"
            i += 1
    
    if not os.path.exists(os.path.dirname(output_folder)):
        os.makedirs(os.path.dirname(output_folder))
    head, tail = os.path.split(filename)
    with open(os.path.join(output_folder + tail.replace(".bin", ".s")), 'w') as out:
        out.write(output_trainers)
