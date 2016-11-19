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
            #print(l2[1])
            SYMBOLS[ord(l2[1])] = int(l2[0].encode('ascii','ignore'), 16)

    #print("SYMBOLS")
    #print(ord(u'é'))
    #print(SYMBOLS)
    
    s = 0
    MsgNr = 0
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
                while (len(text) >= s+5) and (text[s] == "\\" and text[s+1] == "x"):
                    nr = text[s+2] + text[s+3] + text[s+4] + text[s+5]
                    value.append(int(nr, 16))
                    s += 6
                #print(value)
                line.append(value[0])
                line.append(value[1])
                line.append(len(value)-2)
                i = 2
                while i < len(value):
                    line.append(value[i])
                    i += 1
            elif (text[s+1] == "x") and (text[s+2] == "0") and (text[s+3] == "1" and (text[s+4] == "e") and (text[s+5] == "2")):
                if (len(text) >= s+5):
                    nr = text[s+2] + text[s+3] + text[s+4] + text[s+5]
                    line.append(int(nr, 16))
                    #print(int(nr, 16))
                    s += 6
            elif text[s+1] == "f":
                line.append(0x25bd)
                s += 2
            elif text[s+1] == "n":
                line.append(0xe000)
                s += 2
            elif text[s+1] == "r":
                line.append(0x25bc)
                s += 2
            elif text[s+1] == "c": # compression
                line.append(0xf100)
                val = 0
                shift = 0
                
                while (s+2 < len(text)) and (text[s+2] != "\n"):
                    nr = SYMBOLS.get(ord(text[s+2])) & 0x1ff
                    val |= (nr<<shift)
                    shift += 9
                    while shift >= 15:
                        shift -= 15
                        line.append(val & 0x7fff)
                        val >>= 15
                    s += 1
                if shift > 0:
                    val |= (0xffff<<shift)
                    line.append(val & 0x7fff)
                #line.append(0xffff)
                s += 2
            else:
                s += 1
        elif text[s] == "\n":
            line.append(0xffff)
            ret.append(line)
            #if MsgNr == 2:
            #    print("MsgNr " + str(MsgNr) + ": " + str(line))
            MsgNr += 1
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
    out = open(os.path.join(dir + tail.replace(".msg", ".bin")), 'w')
        
    text = ""
    num = 0
    seed = 0
    
    with codecs.open(filename, "r", "utf-8") as fin:
        for line in fin:
            words = line.split()
            if((len(words) == 2) and (words[0] == u"num:" or num == 0)):
                print(words[0] + " " + words[1])
                c = array.array("H")
                c.append(int(words[1], 0))
                num = int(words[1], 0)
                c.tofile(out)
            elif((len(words) == 2) and words[0] == u"seed:"):
                #print("seed_: " + words[1])
                c = array.array("H")
                c.append(int(words[1], 0))
                seed = int(words[1], 0)
                c.tofile(out)
            else:
                text += line
            #print(words[0])
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
