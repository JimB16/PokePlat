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
    output_trainers += ".include \"macros_asm.s\"\n\n"
    
    size = os.path.getsize(filename)
    #offset = 0
    offset = 0x1005c0
    size = 0x1007b4
    
    while offset < size:
        Script = input_file.ReadWord(offset)
    
        output_trainers += ".word " + hex(Script) + " @ " + hex(offset) + "\n"
        
        offset += 4
    
    
    #filenameout = filename.replace(".bin", "_01.script")
    if not os.path.exists(os.path.dirname(output_folder)):
        os.makedirs(os.path.dirname(output_folder))        
    head, tail = os.path.split(filename)
    with open(os.path.join(output_folder + tail.replace(".bin", ".s")), 'w') as out:
        out.write(output_trainers)
    #f = open(os.path.join(conf.path, filename).replace(".bin", ".s"), 'w+')
    #f.write(output_trainers)
