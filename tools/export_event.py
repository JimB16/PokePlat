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
    output_trainers += "@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?\n"
    
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
    output_trainers += "@ " + "ID".rjust(6) + ", " + "Overworld".rjust(16) + ", Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?\n"
    
    offset += 4
    
    SPRITES = [""] * 0x10000
    j = 0
    while j < 0x10000:
        SPRITES[j] = str(j)
        j += 1
    SPRITES[0] = "SPRITE_LUCAS"
    SPRITES[1] = "SPRITE_LITTLEBOY"
    SPRITES[2] = "SPRITE_LITTLEGIRL"
    SPRITES[3] = "SPRITE_MALESCHOOLKID"
    SPRITES[4] = "SPRITE_YOUNGSTER"
    SPRITES[5] = "SPRITE_BUGCATCHER"
    SPRITES[6] = "SPRITE_LASS"
    SPRITES[7] = "SPRITE_BATTLEGIRL"
    SPRITES[8] = "SPRITE_SCHOOLGIRL"
    SPRITES[9] = "SPRITE_GENERICMALE"
    SPRITES[10] = "SPRITE_ROCKER"
    SPRITES[11] = "SPRITE_ACETRAINERMALE"
    SPRITES[12] = "SPRITE_GENERICFEMALE" # AROMALADY
    SPRITES[13] = "SPRITE_BEAUTY"
    SPRITES[14] = "SPRITE_ACETRAINERFEMALE"
    SPRITES[16] = "SPRITE_BARRYSMOM"
    SPRITES[17] = "SPRITE_OLDMAN"
    SPRITES[18] = "SPRITE_OLDWOMAN"
    SPRITES[19] = "SPRITE_FATGUY"
    SPRITES[20] = "SPRITE_HIKER"
    SPRITES[22] = "SPRITE_REPORTER"
    SPRITES[23] = "SPRITE_CAMERAMAN"
    SPRITES[29] = "SPRITE_MALESCIENTIST"
    SPRITES[30] = "SPRITE_FEMALESCIENTIST"
    SPRITES[31] = "SPRITE_ROUGHNECK"
    SPRITES[43] = "SPRITE_CLOWN"
    SPRITES[52] = "SPRITE_CAMPER"
    SPRITES[53] = "SPRITE_PICNICKER"
    SPRITES[54] = "SPRITE_FISHERMAN"
    SPRITES[70] = "SPRITE_PSYCHIC"
    SPRITES[87] = "SPRITE_POKEBALL"
    SPRITES[91] = "SPRITE_SIGNPOST"
    SPRITES[92] = "SPRITE_POSTBOX"
    SPRITES[94] = "SPRITE_GUIDEPOST"
    SPRITES[100] = "SPRITE_BERRYTREE" # Soil
    #SPRITES[124] = "SPRITE_COMMANDERMARS"
    #SPRITES[124] = "SPRITE_GALACTICGRUNT"
    SPRITES[126] = "SPRITE_ROARK"
    SPRITES[148] = "SPRITE_BARRY"
    SPRITES[182] = "SPRITE_AIRVENT"
    SPRITES[214] = "SPRITE_CHARON"
    
    #SPRITES[54] = "SPRITE_GALACTICGRUNT"
    
    i = 0
    while i < NrOverworlds:
        ID = input_file.ReadHWord(offset+0)
        Overworld = input_file.ReadHWord(offset+2)
        Overworld_str = SPRITES[Overworld]
        Movement = input_file.ReadHWord(offset+4)
        Trainer = input_file.ReadHWord(offset+6)
        Flag = input_file.ReadHWord(offset+8)
        Script = input_file.ReadHWord(offset+10)
        Orientation = input_file.ReadHWord(offset+12) # 0 Up, 1 Down, 2 Left, 3 Right
        Orientation_str = str(Orientation)
        if Orientation == 0:
            Orientation_str = "ORIENT_UP"
        elif Orientation == 1:
            Orientation_str = "ORIENT_DOWN"
        elif Orientation == 2:
            Orientation_str = "ORIENT_LEFT"
        elif Orientation == 3:
            Orientation_str = "ORIENT_RIGHT"
        Sight = input_file.ReadHWord(offset+14)
        Unknown8 = input_file.ReadHWord(offset+16)
        Unknown9 = input_file.ReadHWord(offset+18)
        Unknown10 = input_file.ReadHWord(offset+20)
        Unknown11 = input_file.ReadHWord(offset+22)
        Unknown12 = input_file.ReadHWord(offset+24)
        Unknown12_1 = Unknown12 & 0x1f
        Unknown12_2 = (Unknown12 >> 5) & 0x1f
        Unknown12_str = str(Unknown12_2).rjust(2) + " << 5 | " + str(Unknown12_1).rjust(2)
        Unknown13 = input_file.ReadHWord(offset+26)
        Unknown13_1 = Unknown13 & 0x1f
        Unknown13_2 = (Unknown13 >> 5) & 0x1f
        Unknown13_str = str(Unknown13_2).rjust(2) + " << 5 | " + str(Unknown13_1).rjust(2)
        Unknown14 = input_file.ReadHWord(offset+28)
        Unknown15 = input_file.ReadHWord(offset+30)
        
        offset += 32
        i += 1
    
        output_trainers += ".hword " + str(ID).rjust(2) + ", "  + Overworld_str.rjust(21) + ", " + str(Movement).rjust(2) + ", " + str(Trainer) + ", " + str(Flag).rjust(4) + ", " + str(Script).rjust(5) + ", " + Orientation_str.rjust(12) + ", " + str(Sight) + ", " + str(Unknown8) + ", " + str(Unknown9) + ", " + str(Unknown10) + ", " + str(Unknown11) + ", " + Unknown12_str + ", " + Unknown13_str + ", " + str(Unknown14) + ", " + str(Unknown15) + "\n"
    
    NrWarps = input_file.ReadWord(offset)
    
    output_trainers += "\n.word " + str(NrWarps) + " @ # of Warps\n"
    output_trainers += "@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?\n"
    
    offset += 4
    
    i = 0
    while i < NrWarps:
        MapX = input_file.ReadHWord(offset+0)
        MapX_1 = MapX & 0x1f
        MapX_2 = (MapX >> 5) & 0x1f
        MapX_str = str(MapX_2).rjust(2) + " << 5 | " + str(MapX_1).rjust(2)
        MapY = input_file.ReadHWord(offset+2)
        MapY_1 = MapY & 0x1f
        MapY_2 = (MapY >> 5) & 0x1f
        MapY_str = str(MapY_2).rjust(2) + " << 5 | " + str(MapY_1).rjust(2)
        Header = input_file.ReadHWord(offset+4)
        WarpID = input_file.ReadHWord(offset+6)
        Unknown1 = input_file.ReadHWord(offset+8)
        Unknown2 = input_file.ReadHWord(offset+10)
        
        offset += 12
        i += 1
    
        output_trainers += ".hword " + MapX_str + ", " + MapY_str + ", " + str(Header) + ", " + str(WarpID) + ", " + str(Unknown1) + ", " + str(Unknown2) + "\n"
    
    
    NrTriggers = input_file.ReadWord(offset)
    
    output_trainers += "\n.word " + str(NrTriggers) + " @ # of Triggers\n"
    output_trainers += "@ Script, ?, ?, Width, Length, ?, ?, Flag\n"
    
    offset += 4
    
    i = 0
    while i < NrTriggers:
        Script = input_file.ReadHWord(offset+0)
        Unknown1 = input_file.ReadHWord(offset+2)
        Unknown1_1 = Unknown1 & 0x1f
        Unknown1_2 = (Unknown1 >> 5) & 0x1f
        Unknown1_str = str(Unknown1_2).rjust(2) + " << 5 | " + str(Unknown1_1).rjust(2)
        Unknown2 = input_file.ReadHWord(offset+4)
        Unknown2_1 = Unknown2 & 0x1f
        Unknown2_2 = (Unknown2 >> 5) & 0x1f
        Unknown2_str = str(Unknown2_2).rjust(2) + " << 5 | " + str(Unknown2_1).rjust(2)
        Unknown3 = input_file.ReadHWord(offset+6)
        Unknown4 = input_file.ReadHWord(offset+8)
        Unknown5 = input_file.ReadHWord(offset+10)
        Unknown6 = input_file.ReadHWord(offset+12)
        Unknown7 = input_file.ReadHWord(offset+14)
        
        offset += 16
        i += 1
    
        output_trainers += ".hword " + str(Script) + ", "  + Unknown1_str + ", " + Unknown2_str + ", " + str(Unknown3) + ", " + str(Unknown4) + ", " + str(Unknown5) + ", " + str(Unknown6) + ", " + str(Unknown7) + "\n"
    
#    unknown3 = input_file.ReadByte(19)
    
    #filenameout = filename.replace(".bin", "_01.script")
    if not os.path.exists(os.path.dirname(output_folder)):
        os.makedirs(os.path.dirname(output_folder))        
    head, tail = os.path.split(filename)
    with open(os.path.join(output_folder + tail.replace(".bin", ".s")), 'w') as out:
        out.write(output_trainers)
    #f = open(os.path.join(conf.path, filename).replace(".bin", ".s"), 'w+')
    #f.write(output_trainers)
