#!/bin/sh
# Compares baserom.nds and pokeplat.nds

# create baserom.txt if necessary
if [ ! -f "baserom.txt" ]; then
    hexdump -C "baserom.nds" > "baserom.txt"
fi

hexdump -C "pokeplat.nds" > "pokeplat.txt"

diff -u "baserom.txt" "pokeplat.txt" | less
