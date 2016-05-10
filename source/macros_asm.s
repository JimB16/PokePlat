
.include "source/script_plat.s"
.include "source/pokemon_constants.s"


.equ NrOfPkmn, 493 @ 0x1ed
.equ NrOfMoves, 467 @ 0x1d3
.equ NrSinPokedexEntries, 210 @ 0xd2
.equ NrNatPokedexEntries, 482 @ 0x1e2 doesn't need Mew, Lugia, Ho-Oh, Celebi, Jirachi, Deoxys, Phione, Manaphy, Darkrai, Shaymin and Arceus


@ Constants for ReadPkmnData- and WritePkmnData-functions (arm9.s)
@ https://projectpokemon.org/wiki/Pokemon_NDS_Structure
@ http://bulbapedia.bulbagarden.net/wiki/Pok%C3%A9mon_data_structure_in_Generation_IV
.equ PKMNDATA_PERSONALITYVALUE,  0x0
.equ PKMNDATA_CHECKSUM,  0x4
.equ PKMNDATA_SPECIES,  0x5
.equ PKMNDATA_ITEM,  0x6
.equ PKMNDATA_OTID,  0x7
.equ PKMNDATA_EXPPTS,  0x8
.equ PKMNDATA_FRIENDSHIP,  0x9
.equ PKMNDATA_ABILITY,  0xa
.equ PKMNDATA_MARKINGS,  0xb
.equ PKMNDATA_COUNTRYOFORIGIN,  0xc
.equ PKMNDATA_EVHP,  0xd
.equ PKMNDATA_EVATK,  0xe
.equ PKMNDATA_EVDEF,  0xf
.equ PKMNDATA_EVSPE,  0x10
.equ PKMNDATA_EVSPA,  0x11
.equ PKMNDATA_EVSPD,  0x12
.equ PKMNDATA_COOLCONTEST,  0x13
.equ PKMNDATA_BEAUTYCONTEST,  0x14
.equ PKMNDATA_CUTECONTEST,  0x15
.equ PKMNDATA_SMARTCONTEST,  0x16
.equ PKMNDATA_TOUGHCONTEST,  0x17
.equ PKMNDATA_SHEENCONTEST,  0x18
.equ PKMNDATA_MOVE1,  0x36
.equ PKMNDATA_MOVE2,  0x37
.equ PKMNDATA_MOVE3,  0x38
.equ PKMNDATA_MOVE4,  0x39
.equ PKMNDATA_MOVEPP1,  0x3a
.equ PKMNDATA_MOVEPP2,  0x3b
.equ PKMNDATA_MOVEPP3,  0x3c
.equ PKMNDATA_MOVEPP4,  0x3d
.equ PKMNDATA_MOVEPPUPS1,  0x3e
.equ PKMNDATA_MOVEPPUPS2,  0x3f
.equ PKMNDATA_MOVEPPUPS3,  0x40
.equ PKMNDATA_MOVEPPUPS4,  0x41
.equ PKMNDATA_IVHP,  0x46
.equ PKMNDATA_IVATK, 0x47
.equ PKMNDATA_IVDEF, 0x48
.equ PKMNDATA_IVSPE, 0x49
.equ PKMNDATA_IVSPA, 0x4a
.equ PKMNDATA_IVSPD, 0x4b
.equ PKMNDATA_ISNICKNAMED, 0x4c
.equ PKMNDATA_EGG, 0x4d
.equ PKMNDATA_COOLRIBBONHOENN, 0x4e
.equ PKMNDATA_COOLRIBBONHOENNSUPER, 0x4f
.equ PKMNDATA_COOLRIBBONHOENNHYPER, 0x50
.equ PKMNDATA_COOLRIBBONHOENNMASTER, 0x51
.equ PKMNDATA_FATEFULENCOUNTERED, 0x6e
.equ PKMNDATA_GENDER, 0x6f
.equ PKMNDATA_ALTERNATEFORM, 0x70
.equ PKMNDATA_NICKNAME, 0x75
.equ PKMNDATA_ORIGINGAME, 0x7a
.equ PKMNDATA_POKERUS,  0x9a
.equ PKMNDATA_POKEBALL,  0x9b
.equ PKMNDATA_METATLEVEL,  0x9c
.equ PKMNDATA_FEMALEOTGENDER,  0x9d
.equ PKMNDATA_ENCOUNTERTYPE,  0x9e
.equ PKMNDATA_STATUSEFFECT,  0xa0
.equ PKMNDATA_LEVEL,  0xa1
.equ PKMNDATA_CAPSULEINDEXSEALS,  0xa2
.equ PKMNDATA_CURHP,  0xa3
.equ PKMNDATA_MAXHP,  0xa4
.equ PKMNDATA_ATK,  0xa5
.equ PKMNDATA_DEF,  0xa6
.equ PKMNDATA_SPE,  0xa7
.equ PKMNDATA_SPA,  0xa8
.equ PKMNDATA_SPD,  0xa9
.equ PKMNDATA_SEALCOORDINATES,  0xab
@ a0, ac
@ ? = 0xae


@ nds/card.h
.equ CARD_COMMAND,          0x040001A8
.equ REG_ROMCTRL,           0x040001A4
.equ REG_AUXSPICNT,         0x040001A0
.equ REG_AUXSPICNTH,        0x040001A1
.equ REG_AUXSPIDATA,        0x040001A2
.equ CARD_DATA_RD,          0x04100010
.equ CARD_1B0,              0x040001B0
.equ CARD_1B4,              0x040001B4
.equ CARD_1B8,              0x040001B8
.equ CARD_1BA,              0x040001BA

@ Card commands
.equ CARD_CMD_DUMMY,          0x9F
.equ CARD_CMD_HEADER_READ,    0x00
.equ CARD_CMD_HEADER_CHIPID,  0x90
.equ CARD_CMD_ACTIVATE_BF,    0x3C  @ Go into blowfish (KEY1) encryption mode
.equ CARD_CMD_ACTIVATE_SEC,   0x40  @ Go into hardware (KEY2) encryption mode
.equ CARD_CMD_SECURE_CHIPID,  0x10
.equ CARD_CMD_SECURE_READ,    0x20
.equ CARD_CMD_DISABLE_SEC,    0x60  @ Leave hardware (KEY2) encryption mode
.equ CARD_CMD_DATA_MODE,      0xA0
.equ CARD_CMD_DATA_READ,      0xB7
.equ CARD_CMD_DATA_CHIPID,    0xB8

@ nds/dma.h
.equ DMA0_SRC,              0x040000B0
.equ DMA0_DEST,             0x040000B4
.equ DMA0_CR,               0x040000B8

@ nds/input.h
.equ KEY_A,                 (1<<0)  @ Keypad A button.
.equ KEY_B,                 (1<<1)  @ Keypad B button.
.equ KEY_SELECT,            (1<<2)  @ Keypad SELECT button.
.equ KEY_START,             (1<<3)  @ Keypad START button.
.equ KEY_RIGHT,             (1<<4)  @ Keypad RIGHT button.
.equ KEY_LEFT,              (1<<5)  @ Keypad LEFT button.
.equ KEY_UP,                (1<<6)  @ Keypad UP button.
.equ KEY_DOWN,              (1<<7)  @ Keypad DOWN button.
.equ KEY_R,                 (1<<8)  @ Right shoulder button.
.equ KEY_L,                 (1<<9)  @ Left shoulder button.
.equ KEY_X,                 (1<<10) @ Keypad X button.
.equ KEY_Y,                 (1<<11) @ Keypad Y button.
.equ KEY_TOUCH,             (1<<12) @ Touchscreen pendown.
.equ KEY_LID,               (1<<13) @ Lid state.
.equ REG_KEYINPUT,          0x04000130
.equ REG_KEYCNT,            0x04000132

@ nds/interrupts.h
.equ REG_IME,               0x04000208
.equ IME_DISABLE,           0 /*!< Disable all interrupts. */
.equ IME_ENABLE,            1 /*!< Enable all interrupts not masked out in REG_IE */
.equ REG_IE,                0x04000210
.equ REG_IF,                0x04000214
.equ REG_AUXIF,             0x0400021C

@ nds/ipc.h
.equ REG_IPC_SYNC,               0x04000180
.equ IPC_SYNC_IRQ_ENABLE,        (1<<14)
.equ IPC_SYNC_IRQ_REQUEST,       (1<<13)
.equ REG_IPC_FIFO_TX,            0x04000188
.equ REG_IPC_FIFO_RX,            0x04100000
.equ REG_IPC_FIFO_CR,            0x4000184
.equ IPC_FIFO_SEND_EMPTY,        (1<<0)
.equ IPC_FIFO_SEND_FULL,         (1<<1)
.equ IPC_FIFO_SEND_IRQ,          (1<<2)
.equ IPC_FIFO_SEND_CLEAR,        (1<<3)
.equ IPC_FIFO_RECV_EMPTY,        (1<<8)
.equ IPC_FIFO_RECV_FULL,         (1<<9)
.equ IPC_FIFO_RECV_IRQ,          (1<<10)
.equ IPC_FIFO_ERROR,             (1<<14)
.equ IPC_FIFO_ENABLE,            (1<<15)

@ nds/memory.h
.equ REG_EXMEMCNT,          0x04000204
.equ ARM7_MAIN_RAM_PRIORITY, (1<<15)
.equ ARM7_OWNS_CARD,         (1<<11)
.equ ARM7_OWNS_ROM,          (1<<7)

@ nds/system.h
.equ REG_DISPSTAT,          0x04000004
.equ DISP_IN_VBLANK,        (1<<0) @	The display currently in a vertical blank.
.equ DISP_IN_HBLANK,        (1<<1) @	The display currently in a horizontal blank.
.equ DISP_YTRIGGERED,       (1<<2) @	Current scanline and %DISP_Y match.
.equ DISP_VBLANK_IRQ,       (1<<3) @	Interrupt on vertical blank.
.equ DISP_HBLANK_IRQ,       (1<<4) @	Interrupt on horizontal blank.
.equ DISP_YTRIGGER_IRQ,     (1<<5) @	Interrupt when current scanline and %DISP_Y match.
.equ REG_VCOUNT,            0x04000006
.equ HALT_CR,               0x04000300
.equ REG_POWERCNT,          0x04000304
.equ POWER_LCD,             (1<<0) @	Controls the power for both LCD screens.
.equ POWER_2D_A,            (1<<1) @	Controls the power for the main 2D core.
.equ POWER_MATRIX,          (1<<2) @	Controls the power for the 3D matrix.
.equ POWER_3D_CORE,         (1<<3) @	Controls the power for the main 3D core.
.equ POWER_2D_B,            (1<<9) @	Controls the power for the sub 2D core.
.equ POWER_SWAP_LCDS,       (1<<15) @	Controls which screen should use the main core.
.equ POWER_ALL_2D,          POWER_LCD | POWER_2D_A | POWER_2D_B @ power just 2D hardware.
.equ POWER_ALL,             POWER_ALL_2D | POWER_3D_CORE | POWER_MATRIX	@ power everything.

@ nds/arm9/background.h
.equ BGCTRL,                0x04000008
.equ REG_BG0CNT,            0x04000008
.equ REG_BG1CNT,            0x0400000A
.equ REG_BG2CNT,            0x0400000C
.equ REG_BG3CNT,            0x0400000E

.equ REG_BGOFFSETS,         0x04000010
.equ REG_BG0HOFS,           0x04000010
.equ REG_BG0VOFS,           0x04000012
.equ REG_BG1HOFS,           0x04000014
.equ REG_BG1VOFS,           0x04000016
.equ REG_BG2HOFS,           0x04000018
.equ REG_BG2VOFS,           0x0400001A
.equ REG_BG3HOFS,           0x0400001C
.equ REG_BG3VOFS,           0x0400001E
.equ REG_BG2PA,             0x04000020
.equ REG_BG2PB,             0x04000022
.equ REG_BG2PC,             0x04000024
.equ REG_BG2PD,             0x04000026
.equ REG_BG2X,              0x04000028
.equ REG_BG2Y,              0x0400002C
.equ REG_BG3PA,             0x04000030
.equ REG_BG3PB,             0x04000032
.equ REG_BG3PC,             0x04000034
.equ REG_BG3PD,             0x04000036
.equ REG_BG3X,              0x04000038
.equ REG_BG3Y,              0x0400003C

.equ REG_BG2PD_SUB,         0x04001026

@ nds/arm9/math.h
.equ REG_DIVCNT,            0x04000280
.equ DIV_64_64,	            2
.equ DIV_64_32,             1
.equ DIV_32_32,             0
.equ DIV_BUSY,              (1<<15)
.equ REG_DIV_NUMER,         0x04000290
.equ REG_DIV_NUMER_L,       0x04000290
.equ REG_DIV_NUMER_H,       0x04000294
.equ REG_DIV_DENOM,         0x04000298
.equ REG_DIV_DENOM_L,       0x04000298
.equ REG_DIV_DENOM_H,       0x0400029C
.equ REG_DIV_RESULT,        0x040002A0
.equ REG_DIV_RESULT_L,      0x040002A0
.equ REG_DIV_RESULT_H,      0x040002A4
.equ REG_DIVREM_RESULT,     0x040002A8
.equ REG_DIVREM_RESULT_L,   0x040002A8
.equ REG_DIVREM_RESULT_H,   0x040002AC
.equ REG_SQRTCNT,           0x040002B0
.equ  SQRT_64,              1
.equ  SQRT_32 ,             0
.equ  SQRT_BUSY,            (1<<15)
.equ REG_SQRT_PARAM,        0x040002B8
.equ REG_SQRT_PARAM_L,      0x040002B8
.equ REG_SQRT_PARAM_H,      0x040002BC
.equ REG_SQRT_RESULT,       0x040002B4


@ nds/arm9/video.h
.equ REG_DISPCNT,           0x04000000
.equ REG_DISPCNT_SUB,       0x04001000
.equ REG_MASTER_BRIGHT,     0x0400006C
.equ REG_MASTER_BRIGHT_SUB, 0x0400106C
.equ VRAM_A_CR,             0x04000240
.equ VRAM_B_CR,             0x04000241
.equ VRAM_C_CR,             0x04000242
.equ VRAM_D_CR,             0x04000243
.equ VRAM_EFG_CR,           0x04000244
.equ VRAM_E_CR,             0x04000244
.equ VRAM_F_CR,             0x04000245
.equ VRAM_G_CR,             0x04000246
.equ WRAM_CR,               0x04000247
.equ VRAM_H_CR,             0x04000248
.equ VRAM_I_CR,             0x04000249

@ 3D core control
.equ GFX_CONTROL,           0x04000060
.equ GFX_FIFO,              0x04000400
.equ GFX_STATUS,            0x04000600
.equ GFX_BUSY,              (1<<27)
.equ GFX_COLOR,             0x04000480
.equ GFX_VERTEX10,          0x04000490
.equ GFX_VERTEX_XY,         0x04000494
.equ GFX_VERTEX_XZ,         0x04000498
.equ GFX_VERTEX_YZ,         0x0400049C
.equ GFX_VERTEX_DIFF,       0x040004A0
.equ GFX_VERTEX16,          0x0400048C
.equ GFX_TEX_COORD,         0x04000488
.equ GFX_TEX_FORMAT,        0x040004A8
.equ GFX_PAL_FORMAT,        0x040004AC
.equ GFX_CLEAR_COLOR,       0x04000350
.equ GFX_CLEAR_DEPTH,       0x04000354
.equ GFX_LIGHT_VECTOR,      0x040004C8
.equ GFX_LIGHT_COLOR,       0x040004CC
.equ GFX_NORMAL,            0x04000484
.equ GFX_DIFFUSE_AMBIENT,   0x040004C0
.equ GFX_SPECULAR_EMISSION, 0x040004C4
.equ GFX_SHININESS,         0x040004D0
.equ GFX_POLY_FORMAT,       0x040004A4
.equ GFX_ALPHA_TEST,        0x04000340
.equ GFX_BEGIN,             0x04000500
.equ GFX_END,               0x04000504
.equ GFX_FLUSH,             0x04000540
.equ GFX_VIEWPORT,          0x04000580
.equ GFX_TOON_TABLE,        0x04000380
.equ GFX_EDGE_TABLE,        0x04000330
.equ GFX_FOG_COLOR,         0x04000358
.equ GFX_FOG_OFFSET,        0x0400035C
.equ GFX_FOG_TABLE,         0x04000360
.equ GFX_BOX_TEST,          0x040005C0
.equ GFX_POS_TEST,          0x040005C4
.equ GFX_POS_RESULT,        0x04000620
.equ GFX_VEC_TEST,          0x040005C8
.equ GFX_VEC_RESULT,        0x04000630
.equ GFX_VERTEX_RAM_USAGE,  0x04000606
.equ GFX_POLYGON_RAM_USAGE, 0x04000604
.equ GFX_CUTOFF_DEPTH,      0x04000610

@ Matrix processor control
.equ MATRIX_CONTROL,        0x04000440
.equ MATRIX_PUSH,           0x04000444
.equ MATRIX_POP,            0x04000448
.equ MATRIX_SCALE,          0x0400046C
.equ MATRIX_TRANSLATE,      0x04000470
.equ MATRIX_RESTORE,        0x04000450
.equ MATRIX_STORE,          0x0400044C
.equ MATRIX_IDENTITY,       0x04000454
.equ MATRIX_LOAD4x4,        0x04000458
.equ MATRIX_LOAD4x3,        0x0400045C
.equ MATRIX_MULT4x4,        0x04000460
.equ MATRIX_MULT4x3,        0x04000464
.equ MATRIX_MULT3x3,        0x04000468

@matrix operation results
.equ MATRIX_READ_CLIP,      0x04000640
.equ MATRIX_READ_VECTOR,    0x04000680
.equ POINT_RESULT,          0x04000620
.equ VECTOR_RESULT,         0x04000630


.equ REG_BLDCNT,            0x04000050
.equ REG_BLDY,              0x04000054
.equ REG_BLDALPHA,          0x04000052
.equ REG_BLDCNT_SUB,        0x04001050
.equ REG_BLDALPHA_SUB,      0x04001052
.equ REG_BLDY_SUB,          0x04001054



.macro	trainer	flag, class, battletype, numpokemon, item1, item2, item3, item4, ai, battletype2, unknown1, unknown2, unknown3
.byte	\flag, \class, \battletype, \numpokemon
.hword  \item1, \item2, \item3, \item4
.word   \ai
.byte   \battletype2, \unknown1, \unknown2, \unknown3
.endm

.macro	trainerpoke	unknown1, unknown2, level, unknown3, species, unknown4, unknown5
.byte	\unknown1, \unknown2, \level, \unknown3
.hword  \species
.byte   \unknown4, \unknown5
.endm

@ AreaData, Unknown, Matrix, Scripts, LevelScripts, Texts, MusicDay, MusicNight, WildPkmn, Events, Name, NameFrame, Weather, Camera, NameStyle, Flags
.macro	mapheader	AreaData, Unknown, Matrix, Scripts, LevelScripts, Texts, MusicDay, MusicNight, WildPkmn, Events, Name, NameFrame, Weather, Camera, NameStyle, Flags
.byte	\AreaData, \Unknown
.hword  \Matrix, \Scripts, \LevelScripts, \Texts, \MusicDay, \MusicNight, \WildPkmn, \Events
.byte   \Name, \NameFrame, \Weather, \Camera, \NameStyle, \Flags
.endm


.macro	asciz_align str
.asciz	"\str"
.align 2, 0
.endm


@ event_constants
.equ SPRITE_LUCAS, 0
@.equ SPRITE_BOY, 1
@.equ SPRITE_GIRL, 2
.equ SPRITE_YOUNGSTER, 4
.equ SPRITE_LASS, 6
.equ SPRITE_SIGNPOST, 91
.equ SPRITE_POSTBOX, 92
.equ SPRITE_GUIDEPOST, 94
.equ SPRITE_BARRY, 148

.equ ORIENT_UP,          0
.equ ORIENT_DOWN,        1
.equ ORIENT_LEFT,        2
.equ ORIENT_RIGHT,       3

