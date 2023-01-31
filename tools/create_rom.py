
import os
import sys
import struct
import configuration


def words(fileobj):
    for line in fileobj:
        for word in line.split():
            yield word

class RomCreator():
    def __init__(self, config):
        self.config = config

    def fill_rom(self, filepath, file, align, filler):
        statinfo = int(os.path.getsize(filepath))
        rest = statinfo % align
        if rest != 0: rest = align - rest
        i = 0
        
        while i < rest:
            file.write(filler)
            i += 1
        return None

    def create_rom(self, dir, filename, fat_filename, debug=False):
        output = ""
        offset = 0
        filenames = []
        
        #fin = open('./data/RomMap.map', 'r')
        with open(dir + "/RomMap.map") as fin:
            for line in fin:
                words = line.split()
                filenames.append((words[1], 0x200, '\x00', words[0], words[2])) # filenames.append(("data/header.bin", 0x4000, '\x00'))
        
        if os.path.dirname(fat_filename) != "":
            if not os.path.exists(os.path.dirname(fat_filename)):
                os.makedirs(os.path.dirname(fat_filename))
        output_fat = open(fat_filename, 'r+b')

        i = 6
        FileStart = 0x434600
        FileEnd = FileStart
        align = 0
        while i < len(filenames):
            filepath = os.path.join(self.config.path, dir + "/" + filenames[i][0])
            
            FileStart = FileEnd + align
            #if FileStart == 0x372e400:
            #    FileStart += 0x200
            FileSize = os.path.getsize(filepath)
            align = (FileSize % 0x200)
            if align != 0:
                align = 0x200 - align
            FileEnd = FileStart + FileSize
            #output += hex(FileStart) + " " + hex(FileEnd) + " " + hex(FileSize) + "\n"
            
            output_fat.seek(8*int(filenames[i][4], 16), 0)
            output_fat.write(struct.pack('I', FileStart))
            output_fat.seek(8*int(filenames[i][4], 16)+4, 0)
            output_fat.write(struct.pack('I', FileEnd))

            i += 1

        if os.path.dirname(filename) != "":
            if not os.path.exists(os.path.dirname(filename)):
                os.makedirs(os.path.dirname(filename))
        output_rom = open(filename, 'wb')

        i = 0
        while i < len(filenames):
            filepath = os.path.join(self.config.path, dir + "/" + filenames[i][0])
            filepart = bytearray(open(filepath, "rb").read())

            output_rom.write(filepart)
            i += 1
            self.fill_rom(filepath, output_rom, 0x200, bytearray(b'\xff'))
        
        return (output, offset)

if __name__ == "__main__":
    conf = configuration.Config()
    romcreator = RomCreator(conf)

    filename = './pokeplat.nds'
    fat_file = ''
    dir = ''
    debugFlag = False
    
    i = 1
    while i < len(sys.argv):
        if sys.argv[i] == "-dir":
            dir = sys.argv[i+1]
            i += 2
        if sys.argv[i] == "-fat":
            fat_file = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-o":
            filename = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-debug":
            filelist_on = 0
            debugFlag = True
            i += 2
        else:
            i += 1

    output = romcreator.create_rom(dir, filename, fat_file)[0]
    print(output)
