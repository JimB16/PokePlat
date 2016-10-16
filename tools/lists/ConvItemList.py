# -*- coding: utf-8 -*-

import os
import sys
from ctypes import c_int8
import operator
from new import classobj


if __name__ == "__main__":
    
    with open("RawItemList.txt") as f:
        content = f.readlines()
    
    
    py_output = "ItemNameList = [\n"
    s_output = ""
    nr = 0

    for l in content:
        l2 = l.split('|')
        #print(l2[1] + ", " + l2[3])
        item = l2[1]
        #item = item[:-1]
        item = item.replace(" ", "_")
        item = item.replace("'", "")
        item = item.replace(".", "")
        item = item.replace("-", "_")
        if item == 'unknown':
            item += 'Item_' + str(nr)
        py_output += "\"" + item + "\",\n"
        s_output += ".equ " + item.upper() + ", " + str(nr) + "\n"
        nr += 1

    py_output += "]\n"

    f = open('itemnamelist.py', 'w+')
    f.write(py_output)
    fs = open('item_constants.s', 'w+')
    fs.write(s_output)
