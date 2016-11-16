#!/bin/sh
# Compares baserom.nds and pokeplat.nds

# create baserom.txt if necessary
if [ ! -f "baserom/data/poketool/waza/pl_waza_tbl.txt" ]; then
    hexdump -C "baserom/data/poketool/waza/pl_waza_tbl.narc" > "baserom/data/poketool/waza/pl_waza_tbl.txt"
fi

hexdump -C "newrom/data/poketool/waza/pl_waza_tbl.narc" > "newrom/data/poketool/waza/pl_waza_tbl.txt"

diff -u "baserom/data/poketool/waza/pl_waza_tbl.txt" "newrom/data/poketool/waza/pl_waza_tbl.txt" | less
