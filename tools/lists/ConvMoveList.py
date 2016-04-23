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

    for l in content:
        if l.find('| {{m|') == -1:
            continue
        l2 = l.split('| {{m|')
        #print(l2[1] + ", " + l2[3])
        py_output += "\"" + l2[1].split('}}')[0] + "\",\n"
    
    py_output += "]\n"

    f = open('movenamelist.py', 'w+')
    f.write(py_output)
