#!/bin/sh
# Compares baserom.nds and pokeplat.nds

# create baserom.txt if necessary
if [ ! -f "baserom/data/poketool/trainer/trdata.txt" ]; then
    hexdump -C "baserom/data/poketool/trainer/trdata.narc" > "baserom/data/poketool/trainer/trdata.txt"
fi

hexdump -C "newrom/data/poketool/trainer/trdata.narc" > "newrom/data/poketool/trainer/trdata.txt"

diff -u "baserom/data/poketool/trainer/trdata.txt" "newrom/data/poketool/trainer/trdata.txt" | less
