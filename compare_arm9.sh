#!/bin/sh
# Compares baserom.nds and pokeplat.nds

# create baserom.txt if necessary
if [ ! -f "baserom/arm9_full.txt" ]; then
    hexdump -C "baserom/arm9_full.bin" > "baserom/arm9_full.txt"
fi

hexdump -C "newrom/arm9_full.bin" > "newrom/arm9_full.txt"

diff -u "baserom/arm9_full.txt" "newrom/arm9_full.txt" | less
