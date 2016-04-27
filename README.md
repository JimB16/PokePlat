# PokePlat

This project tries to disassemble the code and data of Pokemon Platinum.

The baserom that is disassembled and that is needed to compile a playable rom is the following:

* 3541 - Pokemon Platinum Version (US)(XenoPhobia) `md5: f8905424f7d8aea299c51ec7580b33d8`

To work with this repository you need DevKitARM, Python and the baserom.
Instructions to set up the repository are described in [**INSTALL.md**](INSTALL.md).

## Following things work, but are incomplete:
* Extract the different parts and files of the rom
* Build a playable rom out of the extracted files
* Export and import scripts (map-scripts) [data/fielddata/script/scr_seq.narc]
  * tools/export_script.py
  * scripts are compilable with gas
* Export and import text [data/msgdata/pl_msg.narc]
  * tools/export_msg.py
  * tools/create_msg.py
* Export and import events (overworld sprites and warps) [data/fielddata/eventdata/zone_event.narc]
  * tools/export_event.py
  * event-files are compilable with gas

## Following things I'm working on:
* Compilable main arm9-binary (with some of the overlays)
  * Some functionsnames that I identfied can be found in the Wiki of this repo
* Export Pokemon sprites (front- and back-pics)


## Chat about this and other Pokemon disassemblies:

* irc: **irc.freenode.net** [**#pret**][irc]

[irc]: https://kiwiirc.com/client/irc.freenode.net/?#pret