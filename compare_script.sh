#!/bin/sh
# Compares baserom.nds and pokeplat.nds

# create baserom.txt if necessary
if [ ! -f "baserom\data\fielddata\script\scr_seq.txt" ]; then
    hexdump -C "baserom\data\fielddata\script\scr_seq.narc" > "baserom\data\fielddata\script\scr_seq.txt"
fi

hexdump -C "newrom\data\fielddata\script\scr_seq.narc" > "newrom\data\fielddata\script\scr_seq.txt"

diff -u "baserom\data\fielddata\script\scr_seq.txt" "newrom\data\fielddata\script\scr_seq.txt" | less
