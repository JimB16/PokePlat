#!/bin/sh
# Compares baserom.nds and pokeplat.nds

# create baserom.txt if necessary
if [ ! -f "baserom/data/msgdata/pl_msg.txt" ]; then
    hexdump -C "baserom/data/msgdata/pl_msg.narc" > "baserom/data/msgdata/pl_msg.txt"
fi

hexdump -C "newrom/data/msgdata/pl_msg.narc" > "newrom/data/msgdata/pl_msg.txt"

diff -u "baserom/data/msgdata/pl_msg.txt" "newrom/data/msgdata/pl_msg.txt" | less
