
.include "source/script_plat.s"
.include "source/pokemon_constants.s"


.equ NrOfPkmn, 493 @ 0x1ed
.equ NrOfMoves, 467 @ 0x1d3
.equ NrSinPokedexEntries, 210 @ 0xd2
.equ NrNatPokedexEntries, 482 @ 0x1e2 doesn't need Mew, Lugia, Ho-Oh, Celebi, Jirachi, Deoxys, Phione, Manaphy, Darkrai, Shaymin and Arceus

/*
2077144 SetPkmnMoves 
*/

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
.equ PKMNDATA_ISPKMNOREGG,  0xac
@ a0, ac
@ ? = 0xae


@ Constants for LoadPkmnBaseData-function (arm9.s)
.equ PKMNBASEDATA_HP,  0x0
.equ PKMNBASEDATA_ATK,  0x1
.equ PKMNBASEDATA_DEF,  0x2
.equ PKMNBASEDATA_SPE,  0x3
.equ PKMNBASEDATA_SPA,  0x4
.equ PKMNBASEDATA_SPD,  0x5
.equ PKMNBASEDATA_TYPE1,  0x6
.equ PKMNBASEDATA_TYPE2,  0x7
.equ PKMNBASEDATA_CATCHRATE,  0x8
.equ PKMNBASEDATA_BASEEXP,  0x9
.equ PKMNBASEDATA_EVHP,  0xa
.equ PKMNBASEDATA_EVATK,  0xb
.equ PKMNBASEDATA_EVDEF,  0xc
.equ PKMNBASEDATA_EVSPE,  0xd
.equ PKMNBASEDATA_EVSPA,  0xe
.equ PKMNBASEDATA_EVSPD,  0xf
.equ PKMNBASEDATA_ITEM1,  0x10
.equ PKMNBASEDATA_ITEM2,  0x11
.equ PKMNBASEDATA_GENDER,  0x12
.equ PKMNBASEDATA_HATCHCYCLE,  0x13
.equ PKMNBASEDATA_BASEHAPPY,  0x14
.equ PKMNBASEDATA_EXPRATE,  0x15
.equ PKMNBASEDATA_EGGGROUP1,  0x16
.equ PKMNBASEDATA_EGGGROUP2,  0x17
.equ PKMNBASEDATA_ABILITY1,  0x18
.equ PKMNBASEDATA_ABILITY2,  0x19
.equ PKMNBASEDATA_FLEE,  0x1a



@ Constants for ReadPkmnBattleData1- and WritePkmnBattleData1-functions (overlay_0016.s)
.equ PKMNBATTLEDATA_SPECIES,  0x0
.equ PKMNBATTLEDATA_ATK,  0x1
.equ PKMNBATTLEDATA_DEF,  0x2
.equ PKMNBATTLEDATA_SPE,  0x3
.equ PKMNBATTLEDATA_SPA,  0x4
.equ PKMNBATTLEDATA_SPD,  0x5
.equ PKMNBATTLEDATA_MOVE1,  0x6
.equ PKMNBATTLEDATA_MOVE2,  0x7
.equ PKMNBATTLEDATA_MOVE3,  0x8
.equ PKMNBATTLEDATA_MOVE4,  0x9
.equ PKMNBATTLEDATA_STATLEVEL,  0x12 @ 0x19
.equ PKMNBATTLEDATA_MOVE1PP,  0x1f
.equ PKMNBATTLEDATA_MOVE2PP,  0x20
.equ PKMNBATTLEDATA_MOVE3PP,  0x21
.equ PKMNBATTLEDATA_MOVE4PP,  0x22
.equ PKMNBATTLEDATA_MOVE1PPUPS,  0x23
.equ PKMNBATTLEDATA_MOVE2PPUPS,  0x24
.equ PKMNBATTLEDATA_MOVE3PPUPS,  0x25
.equ PKMNBATTLEDATA_MOVE4PPUPS,  0x26
.equ PKMNBATTLEDATA_MOVE1MAXPP,  0x27
.equ PKMNBATTLEDATA_MOVE2MAXPP,  0x28
.equ PKMNBATTLEDATA_MOVE3MAXPP,  0x29
.equ PKMNBATTLEDATA_MOVE4MAXPP,  0x2a
.equ PKMNBATTLEDATA_LEVEL,  0x2b
.equ PKMNBATTLEDATA_FRIENDSHIP,  0x2c
.equ PKMNBATTLEDATA_CURHP,  0x2f
.equ PKMNBATTLEDATA_MAXHP,  0x30
.equ PKMNBATTLEDATA_EXPPTS,  0x32
.equ PKMNBATTLEDATA_ITEM,  0x37

@ Constants for ReadMoveData-function (arm9.s)
.equ MOVEDATA_EFFECT, 0x0
.equ MOVEDATA_CATEGORY, 0x1
.equ MOVEDATA_POWER, 0x2
.equ MOVEDATA_TYPE, 0x3
.equ MOVEDATA_ACCURACY, 0x4
.equ MOVEDATA_PP, 0x5
.equ MOVEDATA_EFFECTCHANCE, 0x6
.equ MOVEDATA_FLAG1, 0x7
.equ MOVEDATA_PRIORITY, 0x8
.equ MOVEDATA_FLAG2, 0x9
.equ MOVEDATA_CONTESTEFFECT, 0xa
.equ MOVEDATA_CONTESTTYPE, 0xb



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
.equ IRQ_VBLANK,            1<<0		/*!< vertical blank interrupt mask */
.equ IRQ_HBLANK,            1<<1		/*!< horizontal blank interrupt mask */
.equ IRQ_VCOUNT,            1<<2		/*!< vcount match interrupt mask */
.equ IRQ_TIMER0,            1<<3		/*!< timer 0 interrupt mask */
.equ IRQ_TIMER1,            1<<4		/*!< timer 1 interrupt mask */
.equ IRQ_TIMER2,            1<<5		/*!< timer 2 interrupt mask */
.equ IRQ_TIMER3,            1<<6		/*!< timer 3 interrupt mask */
.equ IRQ_NETWORK,           1<<7		/*!< serial interrupt mask */
.equ IRQ_DMA0,              1<<8		/*!< DMA 0 interrupt mask */
.equ IRQ_DMA1,              1<<9		/*!< DMA 1 interrupt mask */
.equ IRQ_DMA2,              1<<10	/*!< DMA 2 interrupt mask */
.equ IRQ_DMA3,              1<<11	/*!< DMA 3 interrupt mask */
.equ IRQ_KEYS,              1<<12	/*!< Keypad interrupt mask */
.equ IRQ_CART,              1<<13	/*!< GBA cartridge interrupt mask */
.equ IRQ_IPC_SYNC,          1<<16	/*!< IPC sync interrupt mask */
.equ IRQ_FIFO_EMPTY,        1<<17	/*!< Send FIFO empty interrupt mask */
.equ IRQ_FIFO_NOT_EMPTY,    1<<18	/*!< Receive FIFO not empty interrupt mask */
.equ IRQ_CARD,              1<<19	/*!< interrupt mask DS Card Slot*/
.equ IRQ_CARD_LINE,         1<<20	/*!< interrupt mask */
.equ IRQ_GEOMETRY_FIFO,     1<<21	/*!< geometry FIFO interrupt mask */
.equ IRQ_LID,               1<<22	/*!< interrupt mask DS hinge*/
.equ IRQ_SPI,               1<<23	/*!< SPI interrupt mask */
.equ IRQ_WIFI,              1<<24	/*!< WIFI interrupt mask (ARM7)*/
@	IRQ_ALL				=	(~0)		/*!< 'mask' for all interrupt */
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

@ nds/timers.h
.equ TIMER0_CR,             0x04000102
.equ TIMER1_CR,             0x04000106
.equ TIMER2_CR,             0x0400010A
.equ TIMER3_CR,             0x0400010E
.equ TIMER0_DATA,           0x04000100
.equ TIMER1_DATA,           0x04000104
.equ TIMER2_DATA,           0x04000108
.equ TIMER3_DATA,           0x0400010C
.equ TIMER_ENABLE,          (1<<7) @    Enables the timer.
.equ TIMER_IRQ_REQ,         (1<<6) @    Causes the timer to request an Interupt on overflow.
.equ TIMER_CASCADE,         (1<<2) @    When set will cause the timer to count when the timer below overflows (unavailable for timer 0).
.equ TIMER_DIV_1,           (0) @   Causes the timer to count at 33.514 Mhz.
.equ TIMER_DIV_64,          (1) @   Causes the timer to count at (33.514 / 64) Mhz.
.equ TIMER_DIV_256,         (2) @   Causes the timer to count at (33.514 / 256) Mhz.
.equ TIMER_DIV_1024,        (3) @   Causes the timer to count at (33.514 / 1024) Mhz.

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

.equ BACKGROUND_SUB,        0x04001008

.equ BG_OFFSET_SUB,         0x04001010 @ Overlay for sub screen background scroll registers.  Setting the properties of this struct directly sets background registers.

.macro	BG_MAP_RAM_SUB base @ A macro which returns a u16* pointer to background map ram (Sub Engine)
.word   (((\base)*0x800) + 0x06200000)
.endm
.macro	BG_TILE_RAM_SUB base @ A macro which returns a u16* pointer to background tile ram (Sub Engine)
.word   (((\base)*0x4000) + 0x06200000)
.endm
.macro	BG_BMP_RAM_SUB base @ A macro which returns a u16* pointer to background graphics ram (Sub Engine)
.word   (((\base)*0x4000) + 0x06200000)
.endm


.equ BGCTRL_SUB,		    0x4001008 @ Access to all Sub screen background control registers via: BGCTRL[x]
.equ REG_BG0CNT_SUB,		0x4001008 @ Background 0 Control register (sub engine)
.equ REG_BG1CNT_SUB,		0x400100A @ Background 1 Control register (sub engine)
.equ REG_BG2CNT_SUB,		0x400100C @ Background 2 Control register (sub engine)
.equ REG_BG3CNT_SUB,		0x400100E @ Background 3 Control register (sub engine)


.equ REG_BGOFFSETS_SUB,     0x4001010
.equ REG_BG0HOFS_SUB,		0x4001010 @ Background 0 horizontal scroll register (sub engine)
.equ REG_BG0VOFS_SUB,		0x4001012 @ Background 0 vertical scroll register (sub engine)
.equ REG_BG1HOFS_SUB,		0x4001014 @ Background 1 horizontal scroll register (sub engine)
.equ REG_BG1VOFS_SUB,		0x4001016 @ Background 1 vertical scroll register (sub engine)
.equ REG_BG2HOFS_SUB,		0x4001018 @ Background 2 horizontal scroll register (sub engine)
.equ REG_BG2VOFS_SUB,		0x400101A @ Background 2 vertical scroll register (sub engine)
.equ REG_BG3HOFS_SUB,		0x400101C @ Background 3 horizontal scroll register (sub engine)
.equ REG_BG3VOFS_SUB,		0x400101E @ Background 3 vertical scroll register (sub engine)

.equ REG_BG2PA_SUB,		    0x4001020 @ Background 2 Affine transform (sub engine)
.equ REG_BG2PB_SUB,		    0x4001022 @ Background 2 Affine transform (sub engine)
.equ REG_BG2PC_SUB,		    0x4001024 @ Background 2 Affine transform (sub engine)
.equ REG_BG2PD_SUB,		    0x4001026 @ Background 2 Affine transform (sub engine)

.equ REG_BG2X_SUB,		    0x4001028 @ Background 2 Screen Offset (sub engine)
.equ REG_BG2Y_SUB,		    0x400102C @ Background 2 Screen Offset (sub engine)

.equ REG_BG3PA_SUB,		    0x4001030 @ Background 3 Affine transform (sub engine)
.equ REG_BG3PB_SUB,		    0x4001032 @ Background 3 Affine transform (sub engine)
.equ REG_BG3PC_SUB,		    0x4001034 @ Background 3 Affine transform (sub engine)
.equ REG_BG3PD_SUB,		    0x4001036 @ Background 3 Affine transform (sub engine)

.equ REG_BG3X_SUB,		    0x4001038 @ Background 3 Screen Offset (sub engine)
.equ REG_BG3Y_SUB,		    0x400103C @ Background 3 Screen Offset (sub engine)


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


@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@ nds/arm9/sprite.h
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@ Sprite control defines

@ Attribute 0 consists of 8 bits of Y plus the following flags:
.equ ATTR0_NORMAL,          (0<<8)
.equ ATTR0_ROTSCALE,        (1<<8)
.equ ATTR0_DISABLED,        (2<<8)
.equ ATTR0_ROTSCALE_DOUBLE, (3<<8)

.equ ATTR0_TYPE_NORMAL,     (0<<10)
.equ ATTR0_TYPE_BLENDED,    (1<<10)
.equ ATTR0_TYPE_WINDOWED,   (2<<10)
.equ ATTR0_BMP,             (3<<10)

.equ ATTR0_MOSAIC,          (1<<12)

.equ ATTR0_COLOR_16,        (0<<13) //16 color in tile mode...16 bit in bitmap mode
.equ ATTR0_COLOR_256,       (1<<13)

.equ ATTR0_SQUARE,          (0<<14)
.equ ATTR0_WIDE,            (1<<14)
.equ ATTR0_TALL,            (2<<14)

@.equ OBJ_Y(m)			((m)&0x00ff)

@ Atribute 1 consists of 9 bits of X plus the following flags:
@.equ ATTR1_ROTDATA(n)      ((n)<<9)  // note: overlaps with flip flags
.equ ATTR1_FLIP_X,          (1<<12)
.equ ATTR1_FLIP_Y,          (1<<13)
.equ ATTR1_SIZE_8,          (0<<14)
.equ ATTR1_SIZE_16,         (1<<14)
.equ ATTR1_SIZE_32,         (2<<14)
.equ ATTR1_SIZE_64,         (3<<14)

@.equ OBJ_X(m)			((m)&0x01ff)

@ Atribute 2 consists of the following:
@.equ ATTR2_PRIORITY(n)     ((n)<<10)
@.equ ATTR2_PALETTE(n)      ((n)<<12)
@.equ ATTR2_ALPHA(n)		  ((n)<<12)


@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@ nds/arm9/video.h
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ BG_PALETTE,            0x05000000 @ background palette memory
.equ BG_PALETTE_SUB,        0x05000400 @ background palette memory (sub engine)

.equ SPRITE_PALETTE,        0x05000200 @ sprite palette memory
.equ SPRITE_PALETTE_SUB,    0x05000600 @ sprite palette memory (sub engine)

.equ BG_GFX,			    0x6000000 @ background graphics memory
.equ BG_GFX_SUB,            0x6200000 @ background graphics memory (sub engine)
.equ SPRITE_GFX,            0x6400000 @ sprite graphics memory
.equ SPRITE_GFX_SUB,        0x6600000 @ sprite graphics memory (sub engine)

.equ VRAM_0,                0x6000000
.equ VRAM,                  0x6800000


.equ VRAM_A,                0x6800000 @ pointer to vram bank A mapped as LCD
.equ VRAM_B,                0x6820000 @ pointer to vram bank B mapped as LCD
.equ VRAM_C,                0x6840000 @ pointer to vram bank C mapped as LCD
.equ VRAM_D,                0x6860000 @ pointer to vram bank D mapped as LCD
.equ VRAM_E,                0x6880000 @ pointer to vram bank E mapped as LCD
.equ VRAM_F,                0x6890000 @ pointer to vram bank F mapped as LCD
.equ VRAM_G,                0x6894000 @ pointer to vram bank G mapped as LCD
.equ VRAM_H,                0x6898000 @ pointer to vram bank H mapped as LCD
.equ VRAM_I,                0x68A0000 @ pointer to vram bank I mapped as LCD

.equ OAM,                   0x07000000 @ pointer to Object Attribute Memory
.equ OAM_SUB,               0x07000400 @ pointer to Object Attribute Memory (Sub engine)


.equ VRAM_CR,               0x04000240
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

.equ VRAM_ENABLE,           (1<<7)



.equ REG_DISPCNT,           0x04000000
.equ REG_DISPCNT_SUB,       0x04001000

.equ ENABLE_3D,             (1<<3)
.equ DISPLAY_ENABLE_SHIFT,  8
.equ DISPLAY_BG0_ACTIVE,    (1 << 8)
.equ DISPLAY_BG1_ACTIVE,    (1 << 9)
.equ DISPLAY_BG2_ACTIVE,    (1 << 10)
.equ DISPLAY_BG3_ACTIVE,    (1 << 11)
.equ DISPLAY_SPR_ACTIVE,    (1 << 12)
.equ DISPLAY_WIN0_ON,       (1 << 13)
.equ DISPLAY_WIN1_ON,       (1 << 14)
.equ DISPLAY_SPR_WIN_ON,    (1 << 15)

.equ MODE_0_2D,             0x10000 @ 4 2D backgrounds
.equ MODE_1_2D,             0x10001 @ 4 2D backgrounds
.equ MODE_2_2D,             0x10002 @ 4 2D backgrounds
.equ MODE_3_2D,             0x10003 @ 4 2D backgrounds
.equ MODE_4_2D,             0x10004 @ 4 2D backgrounds
.equ MODE_5_2D ,            0x10005 @ 4 2D backgrounds
.equ MODE_6_2D,             0x10006 @ 4 2D backgrounds
.equ MODE_0_3D,             (0x10000 | DISPLAY_BG0_ACTIVE | ENABLE_3D) @ 3 2D backgrounds 1 3D background (Main engine only)
.equ MODE_1_3D,             (0x10001 | DISPLAY_BG0_ACTIVE | ENABLE_3D) @ 3 2D backgrounds 1 3D background (Main engine only)
.equ MODE_2_3D,             (0x10002 | DISPLAY_BG0_ACTIVE | ENABLE_3D) @ 3 2D backgrounds 1 3D background (Main engine only)
.equ MODE_3_3D,             (0x10003 | DISPLAY_BG0_ACTIVE | ENABLE_3D) @ 3 2D backgrounds 1 3D background (Main engine only)
.equ MODE_4_3D,             (0x10004 | DISPLAY_BG0_ACTIVE | ENABLE_3D) @ 3 2D backgrounds 1 3D background (Main engine only)
.equ MODE_5_3D,             (0x10005 | DISPLAY_BG0_ACTIVE | ENABLE_3D) @ 3 2D backgrounds 1 3D background (Main engine only)
.equ MODE_6_3D,             (0x10006 | DISPLAY_BG0_ACTIVE | ENABLE_3D) @ 3 2D backgrounds 1 3D background (Main engine only)

.equ MODE_FIFO,             (3<<16) @ video display from main memory

.equ MODE_FB0,              (0x00020000) @ video display directly from VRAM_A in LCD mode
.equ MODE_FB1,              (0x00060000) @ video display directly from VRAM_B in LCD mode
.equ MODE_FB2,              (0x000A0000) @ video display directly from VRAM_C in LCD mode
.equ MODE_FB3,              (0x000E0000) @ video display directly from VRAM_D in LCD mode

.equ REG_MASTER_BRIGHT,     0x0400006C
.equ REG_MASTER_BRIGHT_SUB, 0x0400106C

@ Window 0
.equ WIN0_X0,               0x04000041
.equ WIN0_X1,               0x04000040
.equ WIN0_Y0,               0x04000045
.equ WIN0_Y1,               0x04000044

@ Window 1
.equ WIN1_X0,               0x04000043
.equ WIN1_X1,               0x04000042
.equ WIN1_Y0,               0x04000047
.equ WIN1_Y1,               0x04000046

.equ WIN_IN,                0x04000048
.equ WIN_OUT,               0x0400004A

@ Window 0
.equ SUB_WIN0_X0,           0x04001041
.equ SUB_WIN0_X1,           0x04001040
.equ SUB_WIN0_Y0,           0x04001045
.equ SUB_WIN0_Y1,           0x04001044

@ Window 1
.equ SUB_WIN1_X0,           0x04001043
.equ SUB_WIN1_X1,           0x04001042
.equ SUB_WIN1_Y0,           0x04001047
.equ SUB_WIN1_Y1,           0x04001046

.equ SUB_WIN_IN,            0x04001048
.equ SUB_WIN_OUT,           0x0400104A

.equ REG_MOSAIC,		    0x0400004C
.equ REG_MOSAIC_SUB,	    0x0400104C

.equ REG_BLDCNT,            0x04000050
.equ REG_BLDY,              0x04000054
.equ REG_BLDALPHA,          0x04000052

.equ REG_BLDCNT_SUB,        0x04001050
.equ REG_BLDALPHA_SUB,      0x04001052
.equ REG_BLDY_SUB,          0x04001054






@ 3D core control
.equ GFX_CONTROL,           0x04000060
.equ GFX_FIFO,              0x04000400
.equ GFX_STATUS,            0x04000600
.equ GFX_BUSY,              (1<<27) @ 0x8000000
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
.equ SPRITE_LITTLEBOY, 1
.equ SPRITE_LITTLEGIRL, 2
.equ SPRITE_MALESCHOOLKID, 3
.equ SPRITE_YOUNGSTER, 4
.equ SPRITE_BUGCATCHER, 5
.equ SPRITE_LASS, 6
.equ SPRITE_BATTLEGIRL, 7
.equ SPRITE_SCHOOLGIRL, 8
.equ SPRITE_GENERICMALE, 9
.equ SPRITE_ROCKER, 10
.equ SPRITE_ACETRAINERMALE, 11
.equ SPRITE_GENERICFEMALE, 12
.equ SPRITE_BEAUTY, 13
.equ SPRITE_ACETRAINERFEMALE, 14
.equ SPRITE_BARRYSMOM, 16
.equ SPRITE_OLDMAN, 17
.equ SPRITE_OLDWOMAN, 18
.equ SPRITE_FATGUY, 19
.equ SPRITE_HIKER, 20
.equ SPRITE_REPORTER, 22
.equ SPRITE_CAMERAMAN, 23
.equ SPRITE_MALESCIENTIST, 29
.equ SPRITE_FEMALESCIENTIST, 30
.equ SPRITE_ROUGHNECK, 31
.equ SPRITE_CLOWN, 43
.equ SPRITE_CAMPER, 52
.equ SPRITE_PICNICKER, 53
.equ SPRITE_FISHERMAN, 54
.equ SPRITE_PSYCHIC, 70
.equ SPRITE_POKEBALL, 87
.equ SPRITE_SIGNPOST, 91
.equ SPRITE_POSTBOX, 92
.equ SPRITE_GUIDEPOST, 94
.equ SPRITE_BERRYTREE, 100
.equ SPRITE_ROARK, 126
.equ SPRITE_BARRY, 148
.equ SPRITE_AIRVENT, 182
.equ SPRITE_CHARON, 214

.equ ORIENT_UP,          0
.equ ORIENT_DOWN,        1
.equ ORIENT_LEFT,        2
.equ ORIENT_RIGHT,       3

