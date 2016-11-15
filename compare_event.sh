#!/bin/sh
# Compares baserom.nds and pokeplat.nds

# create baserom.txt if necessary
if [ ! -f "baserom\data\fielddata\eventdata\zone_event.txt" ]; then
    hexdump -C "baserom\data\fielddata\eventdata\zone_event.narc" > "baserom\data\fielddata\eventdata\zone_event.txt"
fi

hexdump -C "newrom\data\fielddata\eventdata\zone_event.narc" > "newrom\data\fielddata\eventdata\zone_event.txt"

diff -u "baserom\data\fielddata\eventdata\zone_event.txt" "newrom\data\fielddata\eventdata\zone_event.txt" | less
