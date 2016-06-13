# -*- coding: utf-8 -*-

import os
import sys
from ctypes import c_int8
import operator
from new import classobj


if __name__ == "__main__":
    
    with open("RawMoveList.txt") as f:
        content = f.readlines()
    
    
    py_output = "MoveNameList = [\n"
    s_output = ""
    nr = 0

    for l in content:
        if l.find('| {{m|') == -1:
            continue
        l2 = l.split('| {{m|')
        #print(l2[1] + ", " + l2[3])
        move = l2[1].split('}}')[0]
        move = move.replace(" ", "_")
        move = move.replace("-", "_")
        py_output += "\"" + move + "\",\n"
        s_output += ".equ " + move.upper() + ", " + str(nr) + "\n"
        nr += 1
    
    py_output += "]\n"

    f = open('movenamelist.py', 'w+')
    f.write(py_output)
    fs = open('move_constants.s', 'w+')
    fs.write(s_output)
