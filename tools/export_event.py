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
    
    offset = 0
    NrFurniture = input_file.ReadWord(offset)
    
    output_trainers += ".word " + str(NrFurniture) + " @ # of Furnitures\n"
    
    offset += 4
    
    i = 0
    while i < NrFurniture:
        Script = input_file.ReadHWord(offset+0)
        Unknown1 = input_file.ReadHWord(offset+2)
        Unknown2 = input_file.ReadHWord(offset+4)
        Unknown3 = input_file.ReadHWord(offset+6)
        Unknown4 = input_file.ReadHWord(offset+8)
        Unknown5 = input_file.ReadHWord(offset+10)
        Unknown6 = input_file.ReadHWord(offset+12)
        Unknown7 = input_file.ReadHWord(offset+14)
        Unknown8 = input_file.ReadHWord(offset+16)
        Unknown9 = input_file.ReadHWord(offset+18)
        
        offset += 20
        i += 1
    
        output_trainers += ".hword " + str(Script) + ", "  + str(Unknown1) + ", " + str(Unknown2) + ", " + str(Unknown3) + ", " + str(Unknown4) + ", " + str(Unknown5) + ", " + str(Unknown6) + ", " + str(Unknown7) + ", " + str(Unknown8) + ", " + str(Unknown9) + "\n"
    
    NrOverworlds = input_file.ReadWord(offset)
    
    output_trainers += "\n.word " + str(NrOverworlds) + " @ # of Overworlds\n"
    output_trainers += "@ ID, Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, Z, ?\n"
    
    offset += 4
    
    i = 0
    while i < NrOverworlds:
        ID = input_file.ReadHWord(offset+0)
        Overworld = input_file.ReadHWord(offset+2)
        if Overworld == 91:
            Overworld_str = "SPRITE_SIGNPOST"
        elif Overworld == 92:
            Overworld_str = "SPRITE_POSTBOX"
        elif Overworld == 94:
            Overworld_str = "SPRITE_GUIDEPOST"
        else:
            Overworld_str = str(Overworld)
        Movement = input_file.ReadHWord(offset+4)
        Trainer = input_file.ReadHWord(offset+6)
        Flag = input_file.ReadHWord(offset+8)
        Script = input_file.ReadHWord(offset+10)
        Orientation = input_file.ReadHWord(offset+12) # 0 Up, 1 Down, 2 Left, 3 Right
        Orientation_str = str(Orientation)
        if Orientation == 0:
            Orientation_str = "Orient_Up"
        elif Orientation == 1:
            Orientation_str = "Orient_Down"
        elif Orientation == 2:
            Orientation_str = "Orient_Left"
        elif Orientation == 3:
            Orientation_str = "Orient_Right"
        Sight = input_file.ReadHWord(offset+14)
        Unknown8 = input_file.ReadHWord(offset+16)
        Unknown9 = input_file.ReadHWord(offset+18)
        Unknown10 = input_file.ReadHWord(offset+20)
        Unknown11 = input_file.ReadHWord(offset+22)
        Unknown12 = input_file.ReadHWord(offset+24)
        Unknown12_1 = Unknown12 & 0x1f
        Unknown12_2 = (Unknown12 >> 5) & 0x1f
        Unknown12_str = str(Unknown12_2) + " << 5 | " + str(Unknown12_1)
        Unknown13 = input_file.ReadHWord(offset+26)
        Unknown13_1 = Unknown13 & 0x1f
        Unknown13_2 = (Unknown13 >> 5) & 0x1f
        Unknown13_str = str(Unknown13_2) + " << 5 | " + str(Unknown13_1)
        Unknown14 = input_file.ReadHWord(offset+28)
        Unknown15 = input_file.ReadHWord(offset+30)
        
        offset += 32
        i += 1
    
        output_trainers += ".hword " + str(ID) + ", "  + Overworld_str + ", " + str(Movement) + ", " + str(Trainer) + ", " + str(Flag) + ", " + str(Script) + ", " + Orientation_str + ", " + str(Sight) + ", " + str(Unknown8) + ", " + str(Unknown9) + ", " + str(Unknown10) + ", " + str(Unknown11) + ", " + Unknown12_str + ", " + Unknown13_str + ", " + str(Unknown14) + ", " + str(Unknown15) + "\n"
    
    NrWarps = input_file.ReadWord(offset)
    
    output_trainers += "\n.word " + str(NrWarps) + " @ # of Warps\n"
    
    offset += 4
    
    i = 0
    while i < NrWarps:
        MapX = input_file.ReadHWord(offset+0)
        MapY = input_file.ReadHWord(offset+2)
        Header = input_file.ReadHWord(offset+4)
        WarpID = input_file.ReadHWord(offset+6)
        Unknown1 = input_file.ReadHWord(offset+8)
        Unknown2 = input_file.ReadHWord(offset+10)
        
        offset += 12
        i += 1
    
        output_trainers += ".hword " + str(MapX) + ", " + str(MapY) + ", " + str(Header) + ", " + str(WarpID) + ", " + str(Unknown1) + ", " + str(Unknown2) + "\n"
    
    
    NrTriggers = input_file.ReadWord(offset)
    
    output_trainers += "\n.word " + str(NrTriggers) + " @ # of Triggers\n"
    
    offset += 4
    
    i = 0
    while i < NrTriggers:
        Script = input_file.ReadHWord(offset+0)
        Unknown1 = input_file.ReadHWord(offset+2)
        Unknown2 = input_file.ReadHWord(offset+4)
        Unknown3 = input_file.ReadHWord(offset+6)
        Unknown4 = input_file.ReadHWord(offset+8)
        Unknown5 = input_file.ReadHWord(offset+10)
        Unknown6 = input_file.ReadHWord(offset+12)
        Unknown7 = input_file.ReadHWord(offset+14)
        
        offset += 16
        i += 1
    
        output_trainers += ".hword " + str(Script) + ", "  + str(Unknown1) + ", " + str(Unknown2) + ", " + str(Unknown3) + ", " + str(Unknown4) + ", " + str(Unknown5) + ", " + str(Unknown6) + ", " + str(Unknown7) + "\n"
    
#    unknown3 = input_file.ReadByte(19)
    
    #filenameout = filename.replace(".bin", "_01.script")
    if not os.path.exists(os.path.dirname(output_folder)):
        os.makedirs(os.path.dirname(output_folder))        
    head, tail = os.path.split(filename)
    with open(os.path.join(output_folder + tail.replace(".bin", ".s")), 'w') as out:
        out.write(output_trainers)
    #f = open(os.path.join(conf.path, filename).replace(".bin", ".s"), 'w+')
    #f.write(output_trainers)
