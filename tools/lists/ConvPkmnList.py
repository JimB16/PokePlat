# -*- coding: utf-8 -*-

import os
import sys
from ctypes import c_int8
import operator
from new import classobj


if __name__ == "__main__":
    
    with open("RawPkmnList.txt") as f:
        content = f.readlines()
    
    
    py_output = "PokemonNameList = [\n"

    for l in content:
        l2 = l.split('|')
        #print(l2[1] + ", " + l2[3])
        py_output += "\"" + l2[3] + "\",\n"
    
    py_output += "]\n"

    f = open('pokemonnamelist.py', 'w+')
    f.write(py_output)
