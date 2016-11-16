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

file_trainer = FileHandler()
file_pkmns = FileHandler()


def GetPokemonName(species):
    if species <= 493:
        return PokemonNameList[species].upper()
    else:
        return PokemonNameList[0].upper()


def GetMoveName(move):
    if move <= 467:
        return MoveNameList[move].upper()
    else:
        return MoveNameList[0].upper()


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
        return ItemNameList[item].upper()
    else:
        return ItemNameList[0].upper()


if __name__ == "__main__":
    conf = configuration.Config()
    
    filename_trainer = sys.argv[1]
    filename_pkmns = sys.argv[2]
    output_folder_trainer = sys.argv[3]
    output_folder_pkmns = sys.argv[4]
    
    format = 0
    
    file_trainer.init(os.path.join(conf.path, filename_trainer), 0)
    file_pkmns.init(os.path.join(conf.path, filename_pkmns), 0)

    
    
    ##############################
    # Interprete the Trainer
    output_trainer = ""
    output_trainer += ".include \"source/macros_asm.s\"\n\n"
    output_trainer += "@ Flag, Class, Battletype, #Pkmn, item1, item2, item3, item4, ai, Battletype2, ?, ?, ?\n"
    
    flag = file_trainer.ReadByte(0)
    format = flag
    if format > 1:
        print("format of '" + str(filename_trainer) + "' is: " + str(format))
        #exit()
    class_ = file_trainer.ReadByte(1)
    battletype = file_trainer.ReadByte(2)
    numpokemon = file_trainer.ReadByte(3)
    item1 = file_trainer.ReadHWord(4)
    item2 = file_trainer.ReadHWord(6)
    item3 = file_trainer.ReadHWord(8)
    item4 = file_trainer.ReadHWord(10)
    ai = file_trainer.ReadWord(12)
    battletype2 = file_trainer.ReadByte(16)
    unknown1 = file_trainer.ReadByte(17)
    unknown2 = file_trainer.ReadByte(18)
    unknown3 = file_trainer.ReadByte(19)
    
    output_trainer += "trainer " + str(flag) + ", " + str(class_) + ", " + str(battletype) + ", " + str(numpokemon) + ", " + str(GetItemName(item1)) + ", "  + str(GetItemName(item2)) + ", "  + str(GetItemName(item3)) + ", "  + str(GetItemName(item4)) + ", "  + str(ai) + ", "  + str(battletype2) + ", "  + str(unknown1) + ", " + str(unknown2) + ", " + str(unknown3)
    
    if not os.path.exists(os.path.dirname(output_folder_trainer)):
        os.makedirs(os.path.dirname(output_folder_trainer))        
    head, tail = os.path.split(filename_trainer)
    with open(os.path.join(output_folder_trainer + tail.replace(".bin", ".s")), 'w') as out:
        out.write(output_trainer)
    
    
    
    ##############################
    # Interprete the Pokemon
    output_pkmns = ""
    output_pkmns += ".include \"source/macros_asm.s\"\n\n"
    if format == 0: # normal trainer pkmn
        output_pkmns += "@ ?, Level, Pkmn, AltForm, PokeballSeal\n"
    elif format == 1: # unnormal trainer pkmn
        output_pkmns += "@ ?, Level, Pkmn, AltForm, Move1, Move2, Move3, Move4, PokeballSeal\n"
    elif format == 2: # unnormal trainer pkmn
        output_pkmns += "@ ?, Level, Pkmn, AltForm, Item, PokeballSeal\n"
    elif format == 3: # unnormal trainer pkmn
        output_pkmns += "@ ?, Level, Pkmn, AltForm, Item, Move1, Move2, Move3, Move4, PokeballSeal\n"
    
    if format == 0: # normal trainer pkmn
        i = 0
        while i < (file_pkmns.GetFileSize()/8):
            unknown1 = file_pkmns.ReadHWord(0+i*8)
            level = file_pkmns.ReadHWord(2+i*8)
            species = file_pkmns.ReadHWord(4+i*8)
            species_altform = (species>>10) & 0x3f
            if species_altform > 0:
                print("altform in '" + str(filename_trainer))
            species = species & 0x3ff
            unknown2 = file_pkmns.ReadHWord(6+i*8)
        
            output_pkmns += "trainerpoke0 " + str(unknown1) + ", " + str(level) + ", " + str(GetPokemonName(species)) + ", " + str(species_altform) + ", " + str(unknown2) + "\n"
            i += 1
    elif format == 1: # unnormal trainer pkmn
        i = 0
        while i < (file_pkmns.GetFileSize()/16):
            unknown1 = file_pkmns.ReadHWord(0+i*16)
            level = file_pkmns.ReadHWord(2+i*16)
            species = file_pkmns.ReadHWord(4+i*16)
            species_altform = (species>>10) & 0x3f
            if species_altform > 0:
                print("altform in '" + str(filename_trainer))
            species = species & 0x3ff
            move1 = file_pkmns.ReadHWord(6+i*16)
            move2 = file_pkmns.ReadHWord(8+i*16)
            move3 = file_pkmns.ReadHWord(10+i*16)
            move4 = file_pkmns.ReadHWord(12+i*16)
            unknown2 = file_pkmns.ReadHWord(14+i*16)
        
            output_pkmns += "trainerpoke1 " + str(unknown1) + ", " + str(level) + ", " + str(GetPokemonName(species)) + ", " + str(species_altform) + ", " + str(GetMoveName(move1)) + ", " + str(GetMoveName(move2)) + ", " + str(GetMoveName(move3)) + ", " + str(GetMoveName(move4)) + ", " + str(unknown2) + "\n"
            i += 1
    elif format == 2:
        i = 0
        while i < (file_pkmns.GetFileSize()/10):
            unknown1 = file_pkmns.ReadHWord(0+i*10)
            level = file_pkmns.ReadHWord(2+i*10)
            species = file_pkmns.ReadHWord(4+i*10)
            species_altform = (species>>10) & 0x3f
            if species_altform > 0:
                print("altform in '" + str(filename_trainer))
            species = species & 0x3ff
            item = file_pkmns.ReadHWord(6+i*10)
            unknown2 = file_pkmns.ReadHWord(8+i*10)
        
            output_pkmns += "trainerpoke2 " + str(unknown1) + ", " + str(level) + ", " + str(GetPokemonName(species)) + ", " + str(species_altform) + ", " + str(GetItemName(item)) + ", " + str(unknown2) + "\n"
            i += 1
    elif format == 3: # trainer pkmn
        i = 0
        while i < (file_pkmns.GetFileSize()/18):
            unknown1 = file_pkmns.ReadHWord(0+i*18)
            level = file_pkmns.ReadHWord(2+i*18)
            species = file_pkmns.ReadHWord(4+i*18)
            species_altform = (species>>10) & 0x3f
            if species_altform > 0:
                print("altform in '" + str(filename_trainer))
            species = species & 0x3ff
            item = file_pkmns.ReadHWord(6+i*18)
            move1 = file_pkmns.ReadHWord(8+i*18)
            move2 = file_pkmns.ReadHWord(10+i*18)
            move3 = file_pkmns.ReadHWord(12+i*18)
            move4 = file_pkmns.ReadHWord(14+i*18)
            unknown2 = file_pkmns.ReadHWord(16+i*18)
        
            output_pkmns += "trainerpoke3 " + str(unknown1) + ", " + str(level) + ", " + str(GetPokemonName(species)) + ", " + str(species_altform) + ", " + str(GetItemName(item)) + ", " + str(GetMoveName(move1)) + ", " + str(GetMoveName(move2)) + ", " + str(GetMoveName(move3)) + ", " + str(GetMoveName(move4)) + ", " + str(unknown2) + "\n"
            i += 1
    
    output_pkmns += "\n" + "\n" + ".align 2, 0x0" + "\n"
    
    if not os.path.exists(os.path.dirname(output_folder_pkmns)):
        os.makedirs(os.path.dirname(output_folder_pkmns))
    head, tail = os.path.split(filename_pkmns)
    with open(os.path.join(output_folder_pkmns + tail.replace(".bin", ".s")), 'w') as out:
        out.write(output_pkmns)
