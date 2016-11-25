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
    
    output_encdata = ""
    output_encdata += ".include \"source/macros_asm.s\"\n\n"
    
    Rate = input_file.ReadWord(0)
    
    EncData = []
    i = 0
    while i < 12:
        Level = input_file.ReadWord(4+i*8)
        Pkmn = input_file.ReadWord(8+i*8)
        EncData += [(Level, Pkmn)]
        i += 1

    EncData2 = []
    i = 0
    while i < 26:
        Pkmn = input_file.ReadWord(4+12*8+i*4)
        EncData2 += [Pkmn]
        i += 1
    
    comments = ["20%", "20%", "10%", "10%", "10%", "10%", "5%", "5%", "4%", "4%", "1%", "1%"]
    output_encdata += "@ Encounter Data:\n\n"
    output_encdata += "@ Grass/Ground:\n"
    output_encdata += "@ Walking:\n"
    output_encdata += ".word " + str(Rate) + " @ Rate\n"
    i = 0
    while i < 12:
        output_encdata += ".word " + (str(EncData[i][0]) + ", ").ljust(4) + GetPokemonName(EncData[i][1]).ljust(12) + " @ " + comments[i] + "\n"
        i += 1
    output_encdata += "\n"
    
    comments = ["Swarm 20%", "Swarm 20%", "Day 10%", "Day 10%", "Night 10%", "Night 10%", "Poke Radar 10%", "Poke Radar 10%", "Poke Radar 10%", "Poke Radar 10%", "", "", "", "", "", "", "Ruby 4%", "Ruby 4%", "Sapphire 4%", "Sapphire 4%", "Emerald 4%", "Emerald 4%", "FireRed 4%", "FireRed 4%", "LeafGreen 4%", "LeafGreen 4%"]
    i = 0
    while i < 26:
        output_encdata += ".word " + GetPokemonName(EncData2[i]).ljust(12) + " @ " + comments[i] + "\n"
        i += 1
    
    
    comments = ["60%", "30%", "5%", "4%", "1%"]
    
    offset = 4+12*8+26*4
    Rate = input_file.ReadWord(offset)
    EncData = []
    i = 0
    while i < 5:
        unk = input_file.ReadByte(offset+4+i*8)
        unk2 = input_file.ReadByte(offset+5+i*8)
        unk3 = input_file.ReadHWord(offset+6+i*8)
        Pkmn = input_file.ReadWord(offset+8+i*8)
        EncData += [(unk, unk2, unk3, Pkmn)]
        i += 1
    
    output_encdata += "\n"
    output_encdata += "@ Water:\n"
    output_encdata += "@ Surfing:\n"
    output_encdata += ".word " + str(Rate) + " @ Rate\n"
    i = 0
    while i < 5:
        output_encdata += "WaterEncounter " + (str(EncData[i][0]) + ", ").ljust(4) + (str(EncData[i][1])  + ", ").ljust(4) + GetPokemonName(EncData[i][3]).ljust(12) + " @ " + comments[i] + "\n"
        i += 1
    
    
    offset += 4+5*8
    Rate = input_file.ReadWord(offset)
    EncData = []
    i = 0
    while i < 5:
        unk = input_file.ReadByte(offset+4+i*8)
        unk2 = input_file.ReadByte(offset+5+i*8)
        unk3 = input_file.ReadHWord(offset+6+i*8)
        Pkmn = input_file.ReadWord(offset+8+i*8)
        EncData += [(unk, unk2, unk3, Pkmn)]
        i += 1
    
    output_encdata += "\n"
    output_encdata += "@ Unknown:\n"
    output_encdata += ".word " + str(Rate) + " @ Rate\n"
    i = 0
    while i < 5:
        output_encdata += "WaterEncounter " + (str(EncData[i][0]) + ", ").ljust(4) + (str(EncData[i][1])  + ", ").ljust(4) + GetPokemonName(EncData[i][3]).ljust(12) + " @ " + comments[i] + "\n"
        i += 1
    
    
    offset += 4+5*8
    Rate = input_file.ReadWord(offset)
    EncData = []
    i = 0
    while i < 5:
        unk = input_file.ReadByte(offset+4+i*8)
        unk2 = input_file.ReadByte(offset+5+i*8)
        unk3 = input_file.ReadHWord(offset+6+i*8)
        Pkmn = input_file.ReadWord(offset+8+i*8)
        EncData += [(unk, unk2, unk3, Pkmn)]
        i += 1
    
    output_encdata += "\n"
    output_encdata += "@ Old Rod:\n"
    output_encdata += ".word " + str(Rate) + " @ Rate\n"
    i = 0
    while i < 5:
        output_encdata += "WaterEncounter " + (str(EncData[i][0]) + ", ").ljust(4) + (str(EncData[i][1])  + ", ").ljust(4) + GetPokemonName(EncData[i][3]).ljust(12) + " @ " + comments[i] + "\n"
        i += 1
    
    
    offset += 4+5*8
    Rate = input_file.ReadWord(offset)
    EncData = []
    i = 0
    while i < 5:
        unk = input_file.ReadByte(offset+4+i*8)
        unk2 = input_file.ReadByte(offset+5+i*8)
        unk3 = input_file.ReadHWord(offset+6+i*8)
        Pkmn = input_file.ReadWord(offset+8+i*8)
        EncData += [(unk, unk2, unk3, Pkmn)]
        i += 1
    
    output_encdata += "\n"
    output_encdata += "@ Good Rod:\n"
    output_encdata += ".word " + str(Rate) + " @ Rate\n"
    i = 0
    while i < 5:
        output_encdata += "WaterEncounter " + (str(EncData[i][0]) + ", ").ljust(4) + (str(EncData[i][1])  + ", ").ljust(4) + GetPokemonName(EncData[i][3]).ljust(12) + " @ " + comments[i] + "\n"
        i += 1
    
    
    offset += 4+5*8
    Rate = input_file.ReadWord(offset)
    EncData = []
    i = 0
    while i < 5:
        unk = input_file.ReadByte(offset+4+i*8)
        unk2 = input_file.ReadByte(offset+5+i*8)
        unk3 = input_file.ReadHWord(offset+6+i*8)
        Pkmn = input_file.ReadWord(offset+8+i*8)
        EncData += [(unk, unk2, unk3, Pkmn)]
        i += 1
    
    output_encdata += "\n"
    output_encdata += "@ Super Rod:\n"
    output_encdata += ".word " + str(Rate) + " @ Rate\n"
    i = 0
    while i < 5:
        output_encdata += "WaterEncounter " + (str(EncData[i][0]) + ", ").ljust(4) + (str(EncData[i][1])  + ", ").ljust(4) + GetPokemonName(EncData[i][3]).ljust(12) + " @ " + comments[i] + "\n"
        i += 1
    
    
    if not os.path.exists(os.path.dirname(output_folder)):
        os.makedirs(os.path.dirname(output_folder))        
    head, tail = os.path.split(filename)
    with open(os.path.join(output_folder + tail.replace(".bin", ".s")), 'w') as out:
        out.write(output_encdata)
