The source files are assembled with the help of [**devkitARM**](http://devkitpro.org/wiki/Getting_Started/devkitARM).
Just follow the instructions in the manual or use the Installer on Windows.

Then we need a Terminal and Python 3 to execute the tools.

In the **Terminal** run:

```bash
git clone https://github.com/JimB16/PokePlat
cd PokePlat
```

You need a rom of Platinum to be able to build your own (hacked) rom. This project uses:

* 4998 - Pokemon - Platinum Version (v01)(U) `md5: ab828b0d13f09469a71460a34d0de51b`
  * without filler at the end `md5: 7efdcc09f9d10cb9a01b5d08cf7e2382`

It isn't necessary to have the exact same rom in the current state of the project, since it isn't possible to change code yet.
This file needs to be renamed to 'baserom.nds'.


There isn't one command to initialise the project and build a new rom, because I'm still not sure how to arrange the different steps. If you follow the commands listed here you get some extracted data-files and Pokemon-pics. If you have a multicore machine you can speed up the process with the "-j" option, i.e. "make pics -j 8".

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

To build a rom we first have to initialize a new folder 'newrom/' with all files that are in the rom. Most of the files are used unchanged but some will be overwritten with new compiled/assembled files.

```bash
make init2
```

Now we compile some files and build 'pokeplat.nds'

```bash
make pokeplat
```
