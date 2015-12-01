#!/bin/sh
# Compares baserom.nds and pokeplat.nds

# create baserom.txt if necessary
if [ ! -f "baserom/arm9_full.txt" ]; then
    hexdump -C "baserom/arm9_full.bin" > "baserom/arm9_full.txt"
fi

hexdump -C "source/arm9_own.bin" > "source/arm9_own.txt"

diff -u "baserom/arm9_full.txt" "source/arm9_own.txt" | less
