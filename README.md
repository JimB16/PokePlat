# PokePlat

This project is disassembling the code and data of Pokemon Platinum.

The baserom that is disassembled and that is needed to compile a playable rom is the following:

* 4997 - Pokemon - Platinum Version (USA) (Rev 1) `md5: ab828b0d13f09469a71460a34d0de51b`

Code of the other Revision is part of the repo, but not part of the compiling process right now.

To work with this repository you need DevKitARM, Python and the baserom.
Instructions to set up the repository are described in [**INSTALL.md**](INSTALL.md).

## Following things work:
* Extract the different parts and files of the rom
* Build a playable rom out of the extracted/compiled files
* disassembled all code, rest of incbins at the end of the overlays is data. The code can be compiled and, if you're careful, be modified
  2 instructions "add/sub rn, rn, 0/1" can be decoded in 2 different ways, and gas and the nintendo compiler don't use the same, so I had to use ".hword" for them
* data files (list below) can be modified and compiled (scripts, text, trainer-, item-, encounter-, move-, pokemon-, battletower-, event-data)
* pokemon-pics can be modified (except the pics for the alternate forms, because they have a strange order and that makes working with the palettes more complicated)

## Overview of the source-files:
* Main arm9-binary
  * [**source/arm9.s**](source/arm9.s)
    * contains the GraphicEngine and the ScriptHandler
    * [**source/arm9_itcm.s**](source/arm9_itcm.s)
      * contains the IRQHandler (InterruptRequest)
    * [**source/arm9_dtcm.s**](source/arm9_dtcm.s)
    * [**source/arm9_narctable.s**](source/arm9_narctable.s)
      * contains the filelist that is used to load files with the filesystem
    * [**source/arm9_scriptcmds.s**](source/arm9_scriptcmds.s)
    * [**source/arm9_scripthandler.s**](source/arm9_scripthandler.s)
    * [**source/arm9_playerdata.s**](source/arm9_playerdata.s)
    * [**source/arm9_trainerdata.s**](source/arm9_trainerdata.s)
    * [**source/arm9_pkmndata.s**](source/arm9_pkmndata.s)
    * [**source/arm9_pkmnparty.s**](source/arm9_pkmnparty.s)
    * [**source/arm9_itemdata.s**](source/arm9_itemdata.s)
    * [**source/arm9_NARC.s**](source/arm9_NARC.s)
    * [**source/arm9_Overlay.s**](source/arm9_Overlay.s)
    * [**source/arm9_overworlddata.s**](source/arm9_overworlddata.s)
    * [**source/arm9_sprite.s**](source/arm9_sprite.s)
    * [**source/arm9_task.s**](source/arm9_task.s)
    * [**source/arm9_fplib.s**](source/arm9_fplib.s)
      * The software floating-point library, fplib (http://www.keil.com/support/man/docs/armlib/armlib_chr1358938941317.htm)
    * [**source/arm9_card.s**](source/arm9_card.s)
    * [**source/arm9_crt0.s**](source/arm9_crt0.s)
    * [**source/arm9_fs.s**](source/arm9_fs.s)
    * [**source/arm9_fx.s**](source/arm9_fx.s)
    * [**source/arm9_gx.s**](source/arm9_gx.s)
    * [**source/arm9_mi.s**](source/arm9_mi.s)
    * [**source/arm9_mtx.s**](source/arm9_mtx.s)
    * [**source/arm9_os.s**](source/arm9_os.s)
    * [**source/arm9_wm.s**](source/arm9_wm.s)
* Overworld
  * [**source/overlay_0005.s**](source/overlay_0005.s)
    * contains the rest of the Script-functions that are listed in arm9.s
* BattleEngine
  * [**source/overlay_0012.s**](source/overlay_0012.s)
    * contains the functions that handle the graphic- and effect-scripts of moves
    * At 'JumpTable_22387d4' are the functions for interpreting:
      * /data/wazaeffect/we.arc
      * /data/wazaeffect/we_sub.narc
  * [**source/overlay_0014.s**](source/overlay_0014.s)
    * contains the AIHandler for Battles
      * At 'Jumptable_222eeac' are the AIScript-functions listed
    * [**source/overlay_0014_AI.s**](source/overlay_0014_AI.s)
      * the actual AIScript which is partly interpreted
    * [**source/script_AI.s**](source/script_AI.s)
      * the raw structure of all cmds is known
  * [**source/overlay_0016.s**](source/overlay_0016.s)
    * contains the main functions that handle a Pkmn- or Trainer-Battle
    * At 'Jumptable_226e72c' are the functions for interpreting:
      * '/data/battle/skill/be_seq.narc' (move logic, i.e. decides if a move can be used)
* Other stuff
  * [**source/overlay_0077.s**](source/overlay_0077.s)
    * Titlescreen
  * [**source/overlay_0097.s**](source/overlay_0097.s)
    * could be the MainMenu
  * Start of the game
    * [**source/overlay_0081.s**](source/overlay_0081.s)
    * [**source/overlay_0057.s**](source/overlay_0057.s)
  * Some function-names that I identified can be found in the Wiki of this repo
  
## Overview of the data-files:
* Compilable game-scripts
  * [**data/fielddata/script/scr_seq/**](data/fielddata/script/scr_seq/)
    * disassembled 99% of the scripts (only missing some cmds and bytes that are just filler)
  * [**macros/script_plat.s**](macros/script_plat.s)
    * the raw structure of all cmds is known (cmd nr and number of parameters and their length)
* Compilable trainer-data
  * [**data/poketool/trainer/trdata/**](data/poketool/trainer/trdata/)
    * interpreted by: 'LoadTrainerData: @ 2079170' in [**source/arm9.s**](source/arm9.s)
  * [**data/poketool/trainer/trpoke/**](data/poketool/trainer/trpoke/)
    * interpreted by: 'LoadTrainerPokemon: @ 20793b8' in [**source/arm9.s**](source/arm9.s)
* Compilable item-data
  * [**data/itemtool/itemdata/pl_item_data/**](data/itemtool/itemdata/pl_item_data/)
  * [**data/itemtool/itemdata/item_data/**](data/itemtool/itemdata/item_data/)
* Compilable encounter-data
  * [**data/fielddata/encountdata/d_enc_data/**](data/fielddata/encountdata/d_enc_data/)
  * [**data/fielddata/encountdata/p_enc_data/**](data/fielddata/encountdata/p_enc_data/)
  * [**data/fielddata/encountdata/pl_enc_data/**](data/fielddata/encountdata/pl_enc_data/)
* Changeable text
  * [**data/msgdata/**] (data/msgdata/)
* Compilable event-data (overworld sprites (signs, npcs, trainers), furnitures and warps)
  * [**data/fielddata/eventdata/zone_event/**] (data/fielddata/eventdata/zone_event/)
* Compilable move-data
  * [**data/poketool/waza/waza_tbl/**] (data/poketool/waza/waza_tbl/)
  * [**data/poketool/waza/pl_waza_tbl/**] (data/poketool/waza/pl_waza_tbl/)
* Pokemon sprites (front- and back-pics)
  * [**data/poketool/pokegra/pl_pokegra/**] (data/poketool/pokegra/pl_pokegra/)
  * [**data/poketool/pokegra/pokegra/**] (data/poketool/pokegra/pokegra/)
* Compilable Pokemon-data
  * [**data/poketool/personal/evo/**] (data/poketool/personal/evo/)
  * [**data/poketool/personal/growtbl/**] (data/poketool/personal/growtbl/)
  * [**data/poketool/personal/personal/**] (data/poketool/personal/personal/)
  * [**data/poketool/personal/pl_growtbl/**] (data/poketool/personal/pl_growtbl/)
  * [**data/poketool/personal/pl_personal/**] (data/poketool/personal/pl_personal/)
  * [**data/poketool/personal/wotbl/**] (data/poketool/personal/wotbl/)
* Compilable BattleTower-data
  * [**data/battle/b_pl_stage/pl_bsdpm/**] (data/battle/b_pl_stage/pl_bsdpm/)
  * [**data/battle/b_pl_tower/pl_btdpm/**] (data/battle/b_pl_tower/pl_btdpm/)
  * [**data/battle/b_pl_tower/pl_btdtr/**] (data/battle/b_pl_tower/pl_btdtr/)
  * [**data/battle/b_tower/pl_btdpm/**] (data/battle/b_tower/pl_btdpm/)
  * [**data/battle/b_tower/pl_btdtr/**] (data/battle/b_tower/pl_btdtr/)

## Credits
The interpretation- and converting-scripts of all data-files (graphics, text, scripts, ...) are mainly reimplementations of the following editors:
* [**PPRE (Project Pokemon ROM Editor)**][PPRE]
* [**SDSME (Spiky's DS Map Editor)**][SDSME]

## Chat about this and other Pokemon disassemblies:

* irc: **irc.freenode.net** [**#pret**][irc]

[PPRE]: https://github.com/projectpokemon/PPRE
[SDSME]: https://github.com/MarcRiera/SDSME
[irc]: https://kiwiirc.com/client/irc.freenode.net/?#pret