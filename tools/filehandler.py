# -*- coding: utf-8 -*-

import os
import sys
from ctypes import c_int8
from util.io import BinaryIO


class FileHandler(object):
    file = None
    base_address = 0
    filename = ""
    
    def __init__(self):
        return

    def init(self, filename, base_address):
        output = ""
        
        self.filename = filename
        self.file = open(filename, "rb+")
        self.file = (BinaryIO.reader(self.file.read())).adapter(self.file)
        self.file.seek(0)
        self.base_address = base_address

    def GetFileName(self):
        return self.filename

    def GetBaseAddress(self):
        return self.base_address

    def GetFileSize(self):
        self.file.seek(0, os.SEEK_END)
        return self.file.tell()

    def AdrInRange(self, adr, debug=False):
        if (adr < self.base_address) | (adr >= (self.base_address+self.GetFileSize())):
            if debug:
                print("AdrInRange: " + hex(self.base_address) + " - " + hex(adr) + " - " + hex((self.base_address+self.GetFileSize())))
            return False
        return True
    
    def ReadWord(self, address):
        if not self.AdrInRange(address):
            return 0
        
        address = (address & 0xffffffff) - self.base_address
        self.file.seek(address)
        return self.file.readUInt32()


    def ReadHWord(self, address):
        if not self.AdrInRange(address):
            return 0
        
        address = (address & 0xffffffff) - self.base_address
        self.file.seek(address)
        return self.file.readUInt16()


    def ReadByte(self, address):
        if not self.AdrInRange(address):
            return 0
        
        address = (address & 0xffffffff) - self.base_address
        self.file.seek(address)
        return self.file.readUInt8()
    
    def SearchWord(self, word):
        adr = self.base_address
        while self.AdrInRange(adr):
            if self.ReadWord(adr) == word:
                print(hex(adr))
            adr += 4
