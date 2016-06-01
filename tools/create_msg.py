# -*- coding: utf-8 -*-
"""
---
"""

import os
import sys
from copy import copy, deepcopy
from ctypes import c_int8
import random
import json
import operator
import array
import codecs

import configuration


def words(fileobj):
    for line in fileobj:
        for word in line.split():
            yield word

def decryptOffsetSize(seed, text):
    ret = array.array('I')
    
    num = len(text)
    i = 0
    overallsize = 0
    while i < num:
        key = ((seed*(i+1)*0x2FD)&0xFFFF) | ((seed*(i+1)*0x2FD0000)&0xFFFF0000)
        offset = 4 + 8*num + overallsize*2
       # print("offset: " + str(offset))
        size = len(text[i])
        overallsize += size
        #print("size: " + str(size))
        offsets = (offset ^ key)
        sizes = (size ^ key)
        ret.append(offsets)
        ret.append(sizes)
        i += 1
    
    return ret

def decryptMsg(seed, text):
    i = 0
    num = len(text)
    ret = array.array('H')
        
    #print("Msg:")
    i = 0
    while i < num:
        key = (0x91BD3*(i+1))&0xFFFF
        
        for c in text[i]:
            c2 = c ^ key
            #print(hex(c) + " -> " + hex(c2))
            key = (key+0x493D)&0xFFFF
            ret.append(c2)
        i += 1
    
    return ret
    
def parseMsg(text):
    ret = []
    line = []
    
    SYMBOLS = {}

    
    with open("tools/lists/poketext.tbl") as f:
        content = f.readlines()

    for l in content:
        l = l.decode('utf-8')
        l2 = []
        l2 = [l[0:4]]
        l2 += [l[5:-2]]
        if len(l2[1]) == 1:
            print(l2[1])
            SYMBOLS[ord(l2[1])] = int(l2[0].encode('ascii','ignore'), 16)
    """
    SYMBOLS[ord(u'0')] = 0x121
    SYMBOLS[ord(u'1')] = 0x122
    SYMBOLS[ord(u'2')] = 0x123
    SYMBOLS[ord(u'3')] = 0x124
    SYMBOLS[ord(u'4')] = 0x125
    SYMBOLS[ord(u'5')] = 0x126
    SYMBOLS[ord(u'6')] = 0x127
    SYMBOLS[ord(u'7')] = 0x128
    SYMBOLS[ord(u'8')] = 0x129
    SYMBOLS[ord(u'9')] = 0x12a
    SYMBOLS[ord(u'A')] = 0x12b
    SYMBOLS[ord(u'B')] = 0x12c
    SYMBOLS[ord(u'C')] = 0x12d
    SYMBOLS[ord(u'D')] = 0x12e
    SYMBOLS[ord(u'E')] = 0x12f
    SYMBOLS[ord(u'F')] = 0x130
    SYMBOLS[ord(u'G')] = 0x131
    SYMBOLS[ord(u'H')] = 0x132
    SYMBOLS[ord(u'I')] = 0x133
    SYMBOLS[ord(u'J')] = 0x134
    SYMBOLS[ord(u'K')] = 0x135
    SYMBOLS[ord(u'L')] = 0x136
    SYMBOLS[ord(u'M')] = 0x137
    SYMBOLS[ord(u'N')] = 0x138
    SYMBOLS[ord(u'O')] = 0x139
    SYMBOLS[ord(u'P')] = 0x13a
    SYMBOLS[ord(u'Q')] = 0x13b
    SYMBOLS[ord(u'R')] = 0x13c
    SYMBOLS[ord(u'S')] = 0x13d
    SYMBOLS[ord(u'T')] = 0x13e
    SYMBOLS[ord(u'U')] = 0x13f
    SYMBOLS[ord(u'V')] = 0x140
    SYMBOLS[ord(u'W')] = 0x141
    SYMBOLS[ord(u'X')] = 0x142
    SYMBOLS[ord(u'Y')] = 0x143
    SYMBOLS[ord(u'Z')] = 0x144
    SYMBOLS[ord(u'a')] = 0x145
    SYMBOLS[ord(u'b')] = 0x146
    SYMBOLS[ord(u'c')] = 0x147
    SYMBOLS[ord(u'd')] = 0x148
    SYMBOLS[ord(u'e')] = 0x149
    SYMBOLS[ord(u'f')] = 0x14a
    SYMBOLS[ord(u'g')] = 0x14b
    SYMBOLS[ord(u'h')] = 0x14c
    SYMBOLS[ord(u'i')] = 0x14d
    SYMBOLS[ord(u'j')] = 0x14e
    SYMBOLS[ord(u'k')] = 0x14f
    SYMBOLS[ord(u'l')] = 0x150
    SYMBOLS[ord(u'm')] = 0x151
    SYMBOLS[ord(u'n')] = 0x152
    SYMBOLS[ord(u'o')] = 0x153
    SYMBOLS[ord(u'p')] = 0x154
    SYMBOLS[ord(u'q')] = 0x155
    SYMBOLS[ord(u'r')] = 0x156
    SYMBOLS[ord(u's')] = 0x157
    SYMBOLS[ord(u't')] = 0x158
    SYMBOLS[ord(u'u')] = 0x159
    SYMBOLS[ord(u'v')] = 0x15a
    SYMBOLS[ord(u'w')] = 0x15b
    SYMBOLS[ord(u'x')] = 0x15c
    SYMBOLS[ord(u'y')] = 0x15d
    SYMBOLS[ord(u'z')] = 0x15e
    SYMBOLS[ord(u'é')] = 0x188
    SYMBOLS[ord(u'!')] = 0x1ab
    SYMBOLS[ord(u'?')] = 0x1ac
    SYMBOLS[ord(u',')] = 0x1ad
    SYMBOLS[ord(u'.')] = 0x1ae
    SYMBOLS[ord(u"'")] = 0x1b3
    SYMBOLS[ord(u"“")] = 0x1b4
    SYMBOLS[ord(u"”")] = 0x1b5
    SYMBOLS[ord(u"-")] = 0x1be
    SYMBOLS[ord(u"#")] = 0x1c0
    SYMBOLS[ord(u":")] = 0x1c4
    SYMBOLS[ord(u"%")] = 0x1d2
    SYMBOLS[ord(u' ')] = 0x1de
    """
    # It's true that wild Pokémon do attack\npeople sometimes...\rBut, Pokémon also open their hearts\nto you, so you can become friends.
    #print("SYMBOLS")
    #print(ord(u'é'))
    #print(SYMBOLS)
    
    s = 0
    #text = text.decode('utf8')
    #print(text)
    while s < len(text):
        #print(text[s])
        #print(ord(text[s]))
        if text[s] == "\\":
            if text[s+1] == "v":
                nr = text[s+2] + text[s+3] + text[s+4] + text[s+5]
                value = []
                value.append(int("0xfffe", 16))
                value.append(int(nr, 16))
                s += 6
                while text[s] == "\\" and text[s+1] == "x":
                    nr = text[s+2] + text[s+3] + text[s+4] + text[s+5]
                    value.append(int(nr, 16))
                    s += 6
                print(value)
                line.append(value[0])
                line.append(value[1])
                line.append(len(value)-2)
                i = 2
                while i < len(value):
                    line.append(value[i])
                    i += 1
            elif text[s+1] == "f":
                line.append(0x25bd)
                s += 2
            elif text[s+1] == "n":
                line.append(0xe000)
                s += 2
            elif text[s+1] == "r":
                line.append(0x25bc)
                s += 2
            else:
                s += 1
        elif text[s] == "\n":
            line.append(0xffff)
            ret.append(line)
            line = []
            s += 1
        else:
            nr = SYMBOLS.get(ord(text[s]))
            #print(text[s])
            #if(ord(text[s]) == ord(u'é')):
            if nr == None:
                line.append(0x0)
            else:
                line.append(nr)
            s += 1
    
    
    line.append(0xffff)
    ret.append(line)

    return ret


if __name__ == "__main__":
    conf = configuration.Config()

    filename = sys.argv[1]
    dir = sys.argv[2]
    
    output = ""
    offset = 0

    if not os.path.exists(os.path.dirname(dir)):
        os.makedirs(os.path.dirname(dir))        
    head, tail = os.path.split(filename)
    out = open(os.path.join(dir + tail.replace(".s", ".bin")), 'w')
        
    text = ""
    num = 0
    seed = 0
    
    with codecs.open(filename, "r", "utf-8") as fin:
        for line in fin:
            words = line.split()
            if(words[0] == u"num:" or num == 0):
                print("num_: " + words[1])
                c = array.array("H")
                c.append(int(words[1], 0))
                num = int(words[1], 0)
                c.tofile(out)
            elif(words[0] == u"seed:"):
                print("seed_: " + words[1])
                c = array.array("H")
                c.append(int(words[1], 0))
                seed = int(words[1], 0)
                c.tofile(out)
            else:
                text += line
            print(words[0])
    text.encode('utf8')
    #print(text)
    parsedtext = parseMsg(text)
    #print(parsedtext)

    #a = array.array('L')
    #for c in decryptOffsetSize(num, seed, parsedtext):
        #print(hex(c))
        #a.append(int(c))
    #a.tofile(out)
    decryptOffsetSize(seed, parsedtext).tofile(out)
    
    #for c in decryptMsg(seed, parsedtext):
    #    print(hex(c))
    decryptMsg(seed, parsedtext).tofile(out)
            #for word in line.split():
            #   print(word)
            #filenames.append((words[1], words[0], '\x00'))
    #filenames.append(("data/header.bin", 0x4000, '\x00'))
