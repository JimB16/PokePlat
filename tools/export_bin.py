# example data_000.bin
# 0x810 building data

# -*- coding: utf-8 -*-

import os
import sys
from ctypes import c_int8
import operator
import array
from new import classobj
import configuration
from filehandler import FileHandler

input_file = FileHandler()


if __name__ == "__main__":
    conf = configuration.Config()
    
    filename = sys.argv[1]
    start_adr = sys.argv[2]
    start_adr = int(start_adr, 16)
    end_adr = sys.argv[3]
    end_adr = int(end_adr, 16)
    
    i = 4
    argc = len(sys.argv)
    while i < argc:
        if sys.argv[i] == "-w":
            size = 4
        elif sys.argv[i] == "-h":
            size = 2
        elif sys.argv[i] == "-b":
            size = 1
        i += 1
    
    input_file.init(os.path.join(conf.path, filename), 0)

    output = ""
    if size == 4:
        output = ".word "
    elif size == 2:
        output = ".hword "
    elif size == 1:
        output = ".byte "

    i = start_adr
    while i < end_adr:
        if size == 4:
            word = input_file.ReadWord(i+0)
        elif size == 2:
            word = input_file.ReadHWord(i+0)
        elif size == 1:
            word = input_file.ReadByte(i+0)
        #X1 = input_file.ReadHWord(i+4)
        output += hex(word)
        i += size
        if i < end_adr: output += ", "
    
    print output
