# PokePlat

This project tries to disassemble the code and data of Pokemon Platinum.

The baserom that is disassembled and that is needed to compile a playable rom is the following:

* 3541 - Pokemon Platinum Version (US)(XenoPhobia) `md5: f8905424f7d8aea299c51ec7580b33d8`

To work with this repository you need DevKitARM, Python and the baserom.
Instructions to set up the repository will be described in [**INSTALL.md**](INSTALL.md).

Following things work partly:
* Extract the different parts and files of the rom
* Compilable main arm9-binary (with some of the overlays)
* Export and import scripts (map-scripts)
* Export Pokemon sprites (front- and back-pics)
* Export text