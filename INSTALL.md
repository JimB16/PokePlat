The source files are assembled with the help of [**devkitARM**](http://devkitpro.org/wiki/Getting_Started/devkitARM).
Just follow the instructions in the manual or use the Installer on Windows.

Then we need a Terminal and Python 2.7 to execute the tools. Since this project is based on [**pokecrystal**](https://github.com/pret/pokecrystal) you can follow the
[**INSTALL.md**](https://github.com/pret/pokecrystal/blob/master/INSTALL.md) on that project.

In the **Terminal** run:

```bash
git clone https://github.com/JimB16/PokePlat
cd PokePlat
```

You need a rom of Platinum to be able to build your own (hacked) rom. This project uses:

* 3541 - Pokemon Platinum Version (US)(XenoPhobia) `md5: f8905424f7d8aea299c51ec7580b33d8`

It isn't necessary to have the exact same rom in the current state of the project, since it isn't possible to change code yet.
This file needs to be renamed to 'baserom.nds'.


There isn't one command to initialise the project and build a new rom, because I'm still not sure how to arrange the different steps. If you follow the commands listed here you get some extracted data-files and Pokemon-pics.

Extract the files in the 'baserom.nds'-file to 'baserom'-folder:

```bash
make init
```

Extract some narc-files in the 'baserom'-folder:

```bash
make narc
```

Convert the front- and back-pics of each Pokemon into png-format:

```bash
make pics
```
