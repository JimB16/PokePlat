
.include "source/script_plat.s"


@ nds/dma.h
.equ DMA0_SRC,              0x040000B0
.equ DMA0_DEST,             0x040000B4
.equ DMA0_CR,               0x040000B8

@ nds/interrupts.h
.equ REG_IME,               0x04000208
.equ REG_IE,                0x04000210
.equ REG_IF,                0x04000214
.equ REG_AUXIF,             0x0400021C

@ nds/system.h
.equ REG_DISPSTAT,          0x04000004
.equ REG_POWERCNT,          0x04000304

@ nds/arm9/background.h
.equ REG_BG2PA,             0x04000020
.equ REG_BG2PD_SUB,         0x04001026

@ nds/arm9/math.h
.equ REG_DIVCNT,            0x04000280
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
.equ REG_SQRT_PARAM,        0x040002B8
.equ REG_SQRT_PARAM_L,      0x040002B8
.equ REG_SQRT_PARAM_H,      0x040002BC
.equ REG_SQRT_RESULT,       0x040002B4

@ nds/arm9/video.h
.equ REG_DISPCNT,           0x04000000
.equ REG_DISPCNT_SUB,       0x04001000
.equ REG_MASTER_BRIGHT,     0x0400006C
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
.equ GFX_FIFO,              0x04000400


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
