# -*- coding: utf-8 -*-

import os
import sys
from ctypes import c_int8
import operator
from new import classobj


if __name__ == "__main__":
    
    with open("RawAbilityList.txt") as f:
        content = f.readlines()
    
    
    py_output = "AbilityNameList = [\n"
    s_output = ""
    nr = 0

    for l in content:
        l2 = l.split('\t')
        #print(l2[1] + ", " + l2[3])
        abil = l2[1]
        abil = abil[:-1]
        abil = abil.replace(" ", "_")
        py_output += "\"" + abil + "\",\n"
        s_output += ".equ " + abil.upper() + ", " + str(nr) + "\n"
        nr += 1
    
    py_output += "]\n"

    f = open('abilitynamelist.py', 'w+')
    f.write(py_output)
    fs = open('ability_constants.s', 'w+')
    fs.write(s_output)
