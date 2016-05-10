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
  * source/arm9.s
    * code is mostly disassembled
    * contains the GraphicEngine, the ScriptHandler and Interrupt Handler
  * source/overlay_0014.s
    * code is completely disassembled
    * data is mostly the AIScript which has to be interpreted
    * contains the AIHandler for Battles
  * source/overlay_0016.s
    * code is mostly disassembled
    * contains the main functions that handle a Pkmn- or Trainer-Battle
  * Some function-names that I identified can be found in the Wiki of this repo
* Export Pokemon sprites (front- and back-pics)

## Help wanted:
* [**INSTALL.md**](INSTALL.md) is still untested. It would be great if somebody can set-up this repo on their own machine with only the help of this file, but since this repo is changed a lot at the moment it would be nice to get some feedback about the things that don't work.
* My main priority is to disassemble the code, but meanwhile I'm trying to interpret the code and give the labels better names. I think some of the interpretation work can already be done by other people that are interested. The following is a ToDo-List of possible targets:
  * source/overlay_0014.s
    * "AIHandler: @ 2220078"
      * I identified the AIHandler that interprets the AIScript at "Tr_Ai_22248a4:", which is almost the same data as in the file "data/battle/tr_ai/tr_ai_seq.narc". Now the functions at "Jumptable_222eeac:" need to be identified.

## Credits
The interpretation- and converting-scripts of all data-files (graphics, text, scripts, ...) are mainly reimplementations of the following editors:
* [**PPRE (Project Pokemon ROM Editor)**][PPRE]
* [**SDSME (Spiky's DS Map Editor)**][SDSME]

## Chat about this and other Pokemon disassemblies:

* irc: **irc.freenode.net** [**#pret**][irc]

[PPRE]: https://github.com/projectpokemon/PPRE
[SDSME]: https://github.com/MarcRiera/SDSME
[irc]: https://kiwiirc.com/client/irc.freenode.net/?#pret