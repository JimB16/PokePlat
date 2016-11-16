#!/bin/sh
# Compares baserom.nds and pokeplat.nds

# create baserom.txt if necessary
if [ ! -f "baserom/data/poketool/trainer/trpoke.txt" ]; then
    hexdump -C "baserom/data/poketool/trainer/trpoke.narc" > "baserom/data/poketool/trainer/trpoke.txt"
fi

hexdump -C "newrom/data/poketool/trainer/trpoke.narc" > "newrom/data/poketool/trainer/trpoke.txt"

diff -u "baserom/data/poketool/trainer/trpoke.txt" "newrom/data/poketool/trainer/trpoke.txt" | less
