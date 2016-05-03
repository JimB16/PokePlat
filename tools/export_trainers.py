# -*- coding: utf-8 -*-

import os
import sys
from ctypes import c_int8
import operator
from new import classobj
import configuration
from filehandler import FileHandler

input_file = FileHandler()


if __name__ == "__main__":
    conf = configuration.Config()
    
    filename = sys.argv[1]
    output_folder = sys.argv[2]
    
    
    input_file.init(os.path.join(conf.path, filename), 0)
    
    output_trainers = ""
    output_trainers += ".include \"source/macros_asm.s\"\n\n"
    output_trainers += "@ Flag, Class, Battletype, #Pkmn, item1, item2, item3, item4, ai, Battletype2, ?, ?, ?\n"
    
    flag = input_file.ReadByte(0)
    class_ = input_file.ReadByte(1)
    battletype = input_file.ReadByte(2)
    numpokemon = input_file.ReadByte(3)
    item1 = input_file.ReadHWord(4)
    item2 = input_file.ReadHWord(6)
    item3 = input_file.ReadHWord(8)
    item4 = input_file.ReadHWord(10)
    ai = input_file.ReadWord(12)
    battletype2 = input_file.ReadByte(16)
    unknown1 = input_file.ReadByte(17)
    unknown2 = input_file.ReadByte(18)
    unknown3 = input_file.ReadByte(19)
    
    output_trainers += "trainer " + str(flag) + ", " + str(class_) + ", " + str(battletype) + ", " + str(numpokemon) + ", " + str(item1) + ", "  + str(item2) + ", "  + str(item3) + ", "  + str(item4) + ", "  + str(ai) + ", "  + str(battletype2) + ", "  + str(unknown1) + ", " + str(unknown2) + ", " + str(unknown3)
    
    #filenameout = filename.replace(".bin", "_01.script")
    if not os.path.exists(os.path.dirname(output_folder)):
        os.makedirs(os.path.dirname(output_folder))        
    head, tail = os.path.split(filename)
    with open(os.path.join(output_folder + tail.replace(".bin", ".s")), 'w') as out:
        out.write(output_trainers)
    #f = open(os.path.join(conf.path, filename).replace(".bin", ".s"), 'w+')
    #f.write(output_trainers)
