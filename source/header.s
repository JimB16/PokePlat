/*
 DS Cartridge Header
 Header Overview (loaded from ROM Addr 0 to Main RAM 27FFE00h on Power-up)
*/

@ 0x0 Game Title  (Uppercase ASCII, padded with 00h)
.ascii "POKEMON PL\0\0"

@ 0xc Gamecode    (Uppercase ASCII, NTR-<code>)        (0=homebrew)
.ascii "CPUE"

@ 0x10 Makercode   (Uppercase ASCII, eg. "01"=Nintendo) (0=homebrew)
.ascii "01"

@ 0x12 Unitcode    (00h=NDS, 02h=NDS+DSi, 03h=DSi) (bit1=DSi)
.byte 0

@ 0x13 Encryption Seed Select (00..07h, usually 00h)
.byte 0

@ 0x14 Devicecapacity         (Chipsize = 128KB SHL nn) (eg. 7 = 16MB)
.byte 10

@ 0x15 Reserved    (zero filled)
.zero 7

@ 0x1c Reserved    (zero)                      (except, used on DSi)
.zero 1

@ 0x1d NDS Region  (00h=Normal, 80h=China, 40h=Korea) (other on DSi)
.byte 0

@ 0x1e ROM Version (usually 00h)
.byte 0

@ 0x1f Autostart (Bit2: Skip "Press Button" after Health and Safety)
@      (Also skips bootmenu, even in Manual mode & even Start pressed)
.byte 0

@ 0x20 ARM9 rom_offset    (4000h and up, align 1000h)
.word 0x4000

@ 0x24 ARM9 entry_address (2000000h..23BFE00h)
.word 0x2000800

@ 0x28 ARM9 ram_address   (2000000h..23BFE00h)
.word 0x2000000

@ 0x2c ARM9 size          (max 3BFE00h) (3839.5KB)
.word 0x1023f8

@ 0x30 ARM7 rom_offset    (8000h and up)
.word 0x409800

@ 0x34 ARM7 entry_address (2000000h..23BFE00h, or 37F8000h..3807E00h)
.word 0x2380000

@ 0x38 ARM7 ram_address   (2000000h..23BFE00h, or 37F8000h..3807E00h)
.word 0x2380000

@ 0x3c ARM7 size          (max 3BFE00h, or FE00h) (3839.5KB, 63.5KB)
.word 0x277fc

@ 0x40 File Name Table (FNT) offset
.word 0x431000

@ 0x44 File Name Table (FNT) size
.word 0x1bb4

@ 0x48 File Allocation Table (FAT) offset
.word 0x432c00

@ 0x4c File Allocation Table (FAT) size
.word 0xe70

@ 0x50 File ARM9 overlay_offset
.word 0x106600

@ 0x54 File ARM9 overlay_size
.word 0xf40

@ 0x58 File ARM7 overlay_offset
.word 0x0

@ 0x5c File ARM7 overlay_size
.word 0x0

@ 0x60 Port 40001A4h setting for normal commands (usually 00586000h)
.word 0x00416657

@ 0x64 Port 40001A4h setting for KEY1 commands   (usually 001808F8h)
.word 0x081808f8

@ 0x68 Icon/Title offset (0=None) (8000h and up)
.word 0x433c00

@ 0x6c Secure Area Checksum, CRC-16 of [[020h]..00007FFFh]
.hword 0xf8b8

@ 0x6e Secure Area Delay (in 131kHz units) (051Eh=10ms or 0D7Eh=26ms)
.hword 0xd7e

@ 0x70 ARM9 Auto Load List RAM Address (?)
.word 0x2000aac

@ 0x74 ARM7 Auto Load List RAM Address (?)
.word 0x2380188

@ 0x78 Secure Area Disable (by encrypted "NmMdOnly") (usually zero)
.word 0x0, 0x0

@ 0x80 Total Used ROM size (remaining/unused bytes usually FFh-padded)
.word 0x63c303c

@ 0x84 ROM Header Size (4000h)
.word 0x4000

@ 0x88 Reserved (zero filled) (except, [88h..93h] used on DSi)
.byte 0xa0, 0x4b
.zero 0x38-2

@ 0xc0 Nintendo Logo (compressed bitmap, same as in GBA Headers)
.zero 0x9c

@ 0x15c Nintendo Logo Checksum, CRC-16 of [0C0h-15Bh], fixed CF56h
.hword 0xcf56

@ 0x15e Header Checksum, CRC-16 of [000h-15Dh]
.hword 0xce5e

@ 0x160 Debug rom_offset   (0=none) (8000h and up)       ;only if debug
.word 0x0

@ 0x164 Debug size         (0=none) (max 3BFE00h)        ;version with
.word 0x0

@ 0x168 Debug ram_address  (0=none) (2400000h..27BFE00h) ;SIO and 8MB
.word 0x0

@ 0x16c Reserved (zero filled) (transferred, and stored, but not used)
.word 0x0

@ 0x170 Reserved (zero filled) (transferred, but not stored in RAM)
.zero 0x90



.zero 0x4000-0x200
