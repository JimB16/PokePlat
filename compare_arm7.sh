#!/bin/sh
# Compares baserom.nds and pokeplat.nds

# create baserom.txt if necessary
if [ ! -f "baserom/arm7.txt" ]; then
    hexdump -C "baserom/arm7.bin" > "baserom/arm7.txt"
fi

hexdump -C "source/arm7_own.bin" > "source/arm7_own.txt"

diff -u "baserom/arm7.txt" "source/arm7_own.txt" | less
