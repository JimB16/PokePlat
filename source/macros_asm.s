
.include "constants/ability_constants.s"
.include "constants/event_constants.s"
.include "constants/item_constants.s"
.include "constants/move_constants.s"
.include "constants/pokemon_constants.s"
.include "constants/type_constants.s"
.include "macros/function.s"
.include "macros/script_plat.s"


.equ NrOfPkmn, 493 @ 0x1ed
.equ UnknownPkmnID, NrOfPkmn+1 @ 0x1ee
.equ UnknownPkmnID2, NrOfPkmn+2 @ 0x1ef
.equ NrOfMoves, 467 @ 0x1d3
.equ NrSinPokedexEntries, 210 @ 0xd2
.equ NrNatPokedexEntries, 482 @ 0x1e2 doesn't need Mew, Lugia, Ho-Oh, Celebi, Jirachi, Deoxys, Phione, Manaphy, Darkrai, Shaymin and Arceus

/*
2077144 SetPkmnMoves 
*/

@ Constants for ReadPkmnData- and WritePkmnData-functions (arm9.s)
@ Constants for ReadBoxPkmnData-functions (arm9.s) r1
@ Constants for GetPkmnData-functions (arm9.s) r1
@ Constants for GetPkmnData-functions (arm9.s) r1
@ ChangePkmnData0?
@ https://projectpokemon.org/wiki/Pokemon_NDS_Structure
@ http://bulbapedia.bulbagarden.net/wiki/Pok%C3%A9mon_data_structure_in_Generation_IV
/* Pokemon NDS Structure
0x0  4 Personality value (Also known as the PID)
0x4  2 IsNoValidPkmn
  Bit 0 Unknown
  Bit 1 Unknown
  Bit 2 Unknown (Used for getspecies)
0x6  2 Checksum

Block A
0x8  2 National Pokédex ID
0xa  2 Held Item
0xc  2 OT ID
0xe  2 OT Secret ID
0x10 4 Experience points
0x14 1 Friendship (Steps to Hatch if an egg)
0x15 1 Ability
0x16 1 Markings
0x17 1 Original Language
0x18 1 HP Effort Value
0x19 1 Attack Effort Value
0x1a 1 Defense Effort Value
0x1b 1 Speed Effort Value
0x1c 1 SP Attack Effort Value
0x1d 1 SP Defense Effort Value
0x1e 1 Cool Contest Value
0x1f 1 Beauty Contest Value
0x20 1 Cute Contest Value
0x21 1 Smart Contest Value
0x22 1 Tough Contest Value
0x23 1 Sheen Contest Value
0x24 2 Sinnoh Ribbon Set 1
0x26 2 Sinnoh Ribbon Set 2

Block B
0x28 2 Move 1 ID
0x2a 2 Move 2 ID
0x2c 2 Move 3 ID
0x2e 2 Move 4 ID
0x30 1 Move 1 Current PP
0x31 1 Move 2 Current PP
0x32 1 Move 3 Current PP
0x33 1 Move 4 Current PP
0x34 4 Move PP Ups
0x38 4
  Bit 0-4 HP IV
  Bit 5-9 Attack IV
  Bit 10-14 Defense IV
  Bit 15-19 Speed IV
  Bit 20-24 SP Attack IV
  Bit 25-29 SP Defense IV
  Bit 30 IsEgg Flag
  Bit 31 IsNicknamed Flag
*/
.equ PkmnData_Offset0, 0x0
.equ PkmnData_Offset1, 0x8
.equ PkmnData_Offset2, 0x88

.equ PkmnData_Size0, 0x8
.equ PkmnData_Size1, 0x80
.equ PkmnData_Size2, 0x64
.equ PkmnData_Size, PkmnData_Size0+PkmnData_Size1+PkmnData_Size2 @ 0xec
.equ PkmnParty_Size, 8+PkmnData_Size*6 @ 0x590
.equ PkmnBattleData_Size, 0xc0

.equ PkmnData_PersonalityValue,  0x0
.equ PkmnData_4,  0x4
.equ PkmnData_4_Bit0,  1<<0
.equ PkmnData_4_Bit1,  1<<1
.equ PkmnData_4_Bit2,  1<<2
.equ PkmnData_Checksum,  0x6

.equ PKMNDATA_PERSONALITYVALUE,  0x0
.equ PKMNDATA_4_BIT0,  0x1
.equ PKMNDATA_4_BIT1,  0x2
.equ PKMNDATA_4_BIT2,  0x3
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
.equ PKMNDATA_SINNOHRIBBON_CHAMP,  0x19
.equ PKMNDATA_SINNOHRIBBON_ABILITY,  0x1a
.equ PKMNDATA_SINNOHRIBBON_GREATABILITY,  0x1b
.equ PKMNDATA_SINNOHRIBBON_DOUBLEABILITY,  0x1c
.equ PKMNDATA_SINNOHRIBBON_MULTIABILITY,  0x1d
.equ PKMNDATA_SINNOHRIBBON_PAIRABILITY,  0x1e
.equ PKMNDATA_SINNOHRIBBON_WORLDABILITY,  0x1f
.equ PKMNDATA_SINNOHRIBBON_ALERT,  0x20
.equ PKMNDATA_SINNOHRIBBON_SHOCK,  0x21
.equ PKMNDATA_SINNOHRIBBON_DOWNCAST,  0x22
.equ PKMNDATA_SINNOHRIBBON_CARELESS,  0x23
.equ PKMNDATA_SINNOHRIBBON_RELAX,  0x24
.equ PKMNDATA_SINNOHRIBBON_SNOOZE,  0x25
.equ PKMNDATA_SINNOHRIBBON_SMILE,  0x26
.equ PKMNDATA_SINNOHRIBBON_GORGEOUS,  0x27
.equ PKMNDATA_SINNOHRIBBON_ROYAL,  0x28
.equ PKMNDATA_SINNOHRIBBON_GORGEOUSROYAL,  0x29
.equ PKMNDATA_SINNOHRIBBON_FOOTPRINT,  0x2a
.equ PKMNDATA_SINNOHRIBBON_RECORD,  0x2b
.equ PKMNDATA_SINNOHRIBBON_HISTORY,  0x2c
.equ PKMNDATA_SINNOHRIBBON_LEGEND,  0x2d
.equ PKMNDATA_SINNOHRIBBON_RED,  0x2e
.equ PKMNDATA_SINNOHRIBBON_GREEN,  0x2f
.equ PKMNDATA_SINNOHRIBBON_BLUE,  0x30
.equ PKMNDATA_SINNOHRIBBON_FESTIVAL,  0x31
.equ PKMNDATA_SINNOHRIBBON_CARNIVAL,  0x32
.equ PKMNDATA_SINNOHRIBBON_CLASSIC,  0x33
.equ PKMNDATA_SINNOHRIBBON_PREMIER,  0x34
.equ PKMNDATA_SINNOHRIBBON_29,  0x35
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
.equ PKMNDATA_MOVE1MAXPP,  0x42
.equ PKMNDATA_MOVE2MAXPP,  0x43
.equ PKMNDATA_MOVE3MAXPP,  0x44
.equ PKMNDATA_MOVE4MAXPP,  0x45
.equ PKMNDATA_IVHP,  0x46
.equ PKMNDATA_IVATK, 0x47
.equ PKMNDATA_IVDEF, 0x48
.equ PKMNDATA_IVSPE, 0x49
.equ PKMNDATA_IVSPA, 0x4a
.equ PKMNDATA_IVSPD, 0x4b
.equ PKMNDATA_ISEGG, 0x4c
.equ PKMNDATA_ISNICKNAMED, 0x4d
.equ PKMNDATA_HOENNRIBBON_COOL,  0x4e
.equ PKMNDATA_HOENNRIBBON_COOLSUPER,  0x4f
.equ PKMNDATA_HOENNRIBBON_COOLHYPER,  0x50
.equ PKMNDATA_HOENNRIBBON_COOLMASTER,  0x51
.equ PKMNDATA_HOENNRIBBON_BEAUTY,  0x52
.equ PKMNDATA_HOENNRIBBON_BEAUTYSUPER,  0x53
.equ PKMNDATA_HOENNRIBBON_BEAUTYHYPER,  0x54
.equ PKMNDATA_HOENNRIBBON_BEAUTYMASTER,  0x55
.equ PKMNDATA_HOENNRIBBON_CUTE,  0x56
.equ PKMNDATA_HOENNRIBBON_CUTESUPER,  0x57
.equ PKMNDATA_HOENNRIBBON_CUTEHYPER,  0x58
.equ PKMNDATA_HOENNRIBBON_CUTEMASTER,  0x59
.equ PKMNDATA_HOENNRIBBON_SMART,  0x5a
.equ PKMNDATA_HOENNRIBBON_SMARTSUPER,  0x5b
.equ PKMNDATA_HOENNRIBBON_SMARTHYPER,  0x5c
.equ PKMNDATA_HOENNRIBBON_SMARTMASTER,  0x5d
.equ PKMNDATA_HOENNRIBBON_TOUGH,  0x5e
.equ PKMNDATA_HOENNRIBBON_TOUGHSUPER,  0x5f
.equ PKMNDATA_HOENNRIBBON_TOUGHHYPER,  0x60
.equ PKMNDATA_HOENNRIBBON_TOUGHMASTER,  0x61
.equ PKMNDATA_HOENNRIBBON_CHAMPION,  0x62
.equ PKMNDATA_HOENNRIBBON_WINNING,  0x63
.equ PKMNDATA_HOENNRIBBON_VICTORY,  0x64
.equ PKMNDATA_HOENNRIBBON_ARTIST,  0x65
.equ PKMNDATA_HOENNRIBBON_EFFORT,  0x66
.equ PKMNDATA_HOENNRIBBON_MARINE,  0x67
.equ PKMNDATA_HOENNRIBBON_LAND,  0x68
.equ PKMNDATA_HOENNRIBBON_SKY,  0x69
.equ PKMNDATA_HOENNRIBBON_COUNTRY,  0x6a
.equ PKMNDATA_HOENNRIBBON_NATIONAL,  0x6b
.equ PKMNDATA_HOENNRIBBON_EARTH,  0x6c
.equ PKMNDATA_HOENNRIBBON_WORLD,  0x6d
.equ PKMNDATA_FATEFULENCOUNTERED, 0x6e
.equ PKMNDATA_GENDER, 0x6f
.equ PKMNDATA_ALTERNATEFORM, 0x70
.equ PKMNDATA_EGGLOCATION1, 0x73
.equ PKMNDATA_METATLOCATION1, 0x74
.equ PKMNDATA_NICKNAME, 0x75
.equ PKMNDATA_77,  0x77
.equ PKMNDATA_ORIGINGAME, 0x7a
.equ PKMNDATA_90,  0x90
.equ PKMNDATA_91,  0x91
.equ PKMNDATA_EGGLOCATION2, 0x98
.equ PKMNDATA_METATLOCATION2, 0x99
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
.equ PKMNDATA_aa,  0xaa
.equ PKMNDATA_SEALCOORDINATES,  0xab
.equ PKMNDATA_ISPKMNOREGG,  0xac
.equ PKMNDATA_ad,  0xad
.equ PKMNDATA_ae,  0xae
.equ PKMNDATA_af,  0xaf
.equ PKMNDATA_b1,  0xb1
.equ PKMNDATA_b2,  0xb2
.equ PKMNDATA_b3,  0xb3
@ a0, ac
@ ? = 0xae


@ Constants for LoadPkmnBaseData-function (arm9_pkmndata.s) r1
@ Constants for GetPkmnBaseData1-function (arm9_pkmndata.s) r1
@ Constants for GetPkmnBaseData2-function (arm9_pkmndata.s) r2
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
.equ PKMNBASEDATA_1b,  0x1b
.equ PKMNBASEDATA_1c,  0x1c
.equ PKMNBASEDATA_TMHMS1,  0x1d
.equ PKMNBASEDATA_TMHMS2,  0x1e
.equ PKMNBASEDATA_TMHMS3,  0x1f
.equ PKMNBASEDATA_TMHMS4,  0x20



@ Constants for ReadPkmnBattleData1- and WritePkmnBattleData1-functions (overlay_0016.s) r2
@ -ChangePkmnBattleData (overlay_0016.s) r1
@ -ChangePkmnBattleDataWithTrainerNr (overlay_0016.s) r2
.equ PKMNBATTLEDATA_SPECIES,  0x0
.equ PKMNBATTLEDATA_ATK,  0x1
.equ PKMNBATTLEDATA_DEF,  0x2
.equ PKMNBATTLEDATA_SPE,  0x3
.equ PKMNBATTLEDATA_SPA,  0x4
.equ PKMNBATTLEDATA_SPD,  0x5
.equ PKMNBATTLEDATA_MOVE,  0x6
.equ PKMNBATTLEDATA_MOVE1,  0x6
.equ PKMNBATTLEDATA_MOVE2,  0x7
.equ PKMNBATTLEDATA_MOVE3,  0x8
.equ PKMNBATTLEDATA_MOVE4,  0x9
.equ PKMNBATTLEDATA_STATLEVEL,  0x12 @ 0x19
.equ PKMNBATTLEDATA_13,  0x13
.equ PKMNBATTLEDATA_14,  0x14
.equ PKMNBATTLEDATA_15,  0x15
.equ PKMNBATTLEDATA_16,  0x16
.equ PKMNBATTLEDATA_17,  0x17
.equ PKMNBATTLEDATA_18,  0x18
.equ PKMNBATTLEDATA_TYPE1,  0x1b
.equ PKMNBATTLEDATA_TYPE2,  0x1c
.equ PKMNBATTLEDATA_1d,  0x1d
.equ PKMNBATTLEDATA_MOVEPP,  0x1f
.equ PKMNBATTLEDATA_MOVE1PP,  0x1f
.equ PKMNBATTLEDATA_MOVE2PP,  0x20
.equ PKMNBATTLEDATA_MOVE3PP,  0x21
.equ PKMNBATTLEDATA_MOVE4PP,  0x22
.equ PKMNBATTLEDATA_MOVE1PPUPS,  0x23
.equ PKMNBATTLEDATA_MOVE2PPUPS,  0x24
.equ PKMNBATTLEDATA_MOVE3PPUPS,  0x25
.equ PKMNBATTLEDATA_MOVE4PPUPS,  0x26
.equ PKMNBATTLEDATA_MOVEMAXPP,  0x27
.equ PKMNBATTLEDATA_MOVE1MAXPP,  0x27
.equ PKMNBATTLEDATA_MOVE2MAXPP,  0x28
.equ PKMNBATTLEDATA_MOVE3MAXPP,  0x29
.equ PKMNBATTLEDATA_MOVE4MAXPP,  0x2a
.equ PKMNBATTLEDATA_LEVEL,  0x2b
.equ PKMNBATTLEDATA_FRIENDSHIP,  0x2c
.equ PKMNBATTLEDATA_2d,  0x2d
.equ PKMNBATTLEDATA_CURHP,  0x2f
.equ PKMNBATTLEDATA_MAXHP,  0x30
.equ PKMNBATTLEDATA_EXPPTS,  0x32
.equ PKMNBATTLEDATA_34,  0x34
.equ PKMNBATTLEDATA_35,  0x35
.equ PKMNBATTLEDATA_ITEM,  0x37
.equ PKMNBATTLEDATA_49,  0x49
.equ PKMNBATTLEDATA_4b,  0x4b
.equ PKMNBATTLEDATA_59,  0x59
.equ PKMNBATTLEDATA_READFROM78,  0x64


@ Constants for ReadBattleData-functions (overlay_0016.s) r2
@ Constants for WriteBattleData-functions (overlay_0016.s) r2
.equ BATTLEDATA_0, 0x0
.equ BATTLEDATA_1, 0x1
.equ BATTLEDATA_2, 0x2
.equ BATTLEDATA_ROUNDNR, 0x3
.equ BATTLEDATA_b, 0xb

@ Constants for ReadMoveData-function (arm9.s) r1
@ Constants for LoadMoveData-function (arm9.s) r1
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

@ Constants for LoadFromNARC_ItemData-function (arm9.s) r1
.equ ITEMDATA_LOADDATA, 0x0
.equ ITEMDATA_LOADICON1, 0x1
.equ ITEMDATA_LOADICON2, 0x2

@ Constants for GetItemData- and ReadItemData1-function (arm9_itemdata.s) r1
.equ ITEMDATA_PRICE, 0x0
.equ ITEMDATA_BATTLEEFFECT, 0x1
.equ ITEMDATA_GAIN, 0x2
.equ ITEMDATA_POCKET, 0x5
.equ ITEMDATA_6, 0x6
.equ ITEMDATA_f, 0xf
.equ ITEMDATA_10, 0x10
.equ ITEMDATA_11, 0x11
.equ ITEMDATA_12, 0x12
.equ ITEMDATA_13, 0x13
.equ ITEMDATA_14, 0x14
.equ ITEMDATA_15, 0x15
.equ ITEMDATA_16, 0x16
.equ ITEMDATA_17, 0x17
.equ ITEMDATA_18, 0x18
.equ ITEMDATA_1b, 0x1b
.equ ITEMDATA_1c, 0x1c
.equ ITEMDATA_1d, 0x1d
.equ ITEMDATA_1e, 0x1e
.equ ITEMDATA_1f, 0x1f
.equ ITEMDATA_20, 0x20
.equ ITEMDATA_21, 0x21
.equ ITEMDATA_24, 0x24
.equ ITEMDATA_25, 0x25
.equ ITEMDATA_26, 0x26
.equ ITEMDATA_2d, 0x2d
.equ ITEMDATA_2e, 0x2e
.equ ITEMDATA_2f, 0x2f
.equ ITEMDATA_36, 0x36
.equ ITEMDATA_37, 0x37
.equ ITEMDATA_38, 0x38
.equ ITEMDATA_39, 0x39
.equ ITEMDATA_3a, 0x3a

@ Constants for GetTrainerData-function (arm9_trainerdata.s) r1
.equ TRAINERDATA_FLAG, 0x0
.equ TRAINERDATA_CLASS, 0x1
.equ TRAINERDATA_BATTLETYPE, 0x2
.equ TRAINERDATA_NROFPKMN, 0x3
.equ TRAINERDATA_ITEM1, 0x4
.equ TRAINERDATA_ITEM2, 0x5
.equ TRAINERDATA_ITEM3, 0x6
.equ TRAINERDATA_ITEM4, 0x7
.equ TRAINERDATA_AI, 0x8
.equ TRAINERDATA_BATTLETYPE2, 0x9


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

.equ CARD_CR1_ENABLE,       0x80  @ in byte 1, i.e. 0x8000
.equ CARD_CR1_IRQ,          0x40  @ in byte 1, i.e. 0x4000

// SPI EEPROM COMMANDS
.equ SPI_EEPROM_WRSR,       0x01
.equ SPI_EEPROM_PP,         0x02  @ Page Program
.equ SPI_EEPROM_READ,       0x03
.equ SPI_EEPROM_WRDI,       0x04  @ Write disable
.equ SPI_EEPROM_RDSR,       0x05  @ Read status register
.equ SPI_EEPROM_WREN,       0x06  @ Write enable
.equ SPI_EEPROM_PW,         0x0a  @ Page Write
.equ SPI_EEPROM_FAST,       0x0b  @ Fast Read
.equ SPI_EEPROM_RDID,       0x9f
.equ SPI_EEPROM_RDP,        0xab  @ Release from deep power down
.equ SPI_EEPROM_DPD,        0xb9  @ Deep power down

.equ CARD_ACTIVATE,         (1<<31)     @ when writing, get the ball rolling
.equ CARD_WR,               (1<<30)     @ Card write enable
.equ CARD_nRESET,           (1<<29)     @ value on the /reset pin (1 = high out, not a reset state, 0 = low out = in reset)
.equ CARD_SEC_LARGE,        (1<<28)     @ Use "other" secure area mode, which tranfers blocks of 0x1000 bytes at a time
.equ CARD_CLK_SLOW,         (1<<27)     @ Transfer clock rate (0 = 6.7MHz, 1 = 4.2MHz)
.macro	CARD_BLK_SIZE name n            @ Transfer block size, (0 = None, 1..6 = (0x100 << n) bytes, 7 = 4 bytes)
.set   \name, (((\n)&0x7)<<24)
.endm
.equ CARD_SEC_CMD,          (1<<22)     @ The command transfer will be hardware encrypted (KEY2)
.macro	CARD_DELAY2 name n              @ Transfer delay length part 2
.set   \name, (((\n)&0x3F)<<16)
.endm
.equ CARD_SEC_SEED,         (1<<15)     @ Apply encryption (KEY2) seed to hardware registers
.equ CARD_SEC_EN,           (1<<14)     @ Security enable
.equ CARD_SEC_DAT,          (1<<13)     @ The data transfer will be hardware encrypted (KEY2)
.macro	CARD_DELAY1 name n              @ Transfer delay length part 1
.set   \name, ((\n)&0x1FFF)
.endm

/*
.macro pixw nm, x, y
 .set \nm, (\x+\y*240)*2
.endm
pixw pix10_2,10,2 ; variable pixo is macro as parameters
 ldrh  r0, [r1, #pix10_2] ; get pixel offset.
*/

@ 3 bits in b10..b8 indicate something
@ read bits
.equ CARD_BUSY,             (1<<31)      @ when reading, still expecting incomming data?
.equ CARD_DATA_READY,       (1<<23)      @ when reading, CARD_DATA_RD or CARD_DATA has another word of data and is good to go

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

.macro	trainerpoke0	unknown1, level, species, species_altform, unknown2
.hword	\unknown1, \level, \species | (\species_altform << 10), \unknown2
.endm
.macro	trainerpoke1	unknown1, level, species, species_altform, move1, move2, move3, move4, unknown2
.hword	\unknown1, \level, \species | (\species_altform << 10), \move1, \move2, \move3, \move4, \unknown2
.endm
.macro	trainerpoke2	unknown1, level, species, species_altform, item, unknown2
.hword	\unknown1, \level, \species | (\species_altform << 10), \item, \unknown2
.endm
.macro	trainerpoke3	unknown1, level, species, species_altform, item, move1, move2, move3, move4, unknown2
.hword	\unknown1, \level, \species | (\species_altform << 10), \item, \move1, \move2, \move3, \move4, \unknown2
.endm


@ AreaData, Unknown, Matrix, Scripts, LevelScripts, Texts, MusicDay, MusicNight, WildPkmn, Events, Name, NameFrame, Weather, Camera, NameStyle, Flags
.macro	mapheader	AreaData, Unknown, Matrix, Scripts, LevelScripts, Texts, MusicDay, MusicNight, WildPkmn, Events, Name, NameFrame, Weather, Camera, NameStyle, Flags
.byte	\AreaData, \Unknown
.hword  \Matrix, \Scripts, \LevelScripts, \Texts, \MusicDay, \MusicNight, \WildPkmn, \Events
.byte   \Name, \NameFrame, \Weather, \Camera, \NameStyle, \Flags
.endm


@ move category
.equ PHYSICAL,              0
.equ SPECIAL,               1
.equ STATUS,                2

@ contest type
.equ COOL,                  0
.equ BEAUTIFUL,             1
.equ TOUGH,                 4

.macro	move	effect, category, power, type, accuracy, pp, effectchance, flag1, priority, flag2, contesteffect, contesttype
.hword	\effect
.byte   \category, \power, \type, \accuracy, \pp, \effectchance
.hword  \flag1
.byte   \priority, \flag2, \contesteffect, \contesttype
.endm


.equ EGGGROUP_MONSTER, 1
.equ EGGGROUP_WATER1, 2
.equ EGGGROUP_BUG, 3
.equ EGGGROUP_FLYING, 4
.equ EGGGROUP_FIELD, 5
.equ EGGGROUP_FAIRY, 6
.equ EGGGROUP_GRASS, 7
.equ EGGGROUP_HUMANLIKE, 8
.equ EGGGROUP_WATER3, 9
.equ EGGGROUP_MINERAL, 10
.equ EGGGROUP_AMORPHOUS, 11
.equ EGGGROUP_WATER2, 12
.equ EGGGROUP_DITTO, 13
.equ EGGGROUP_DRAGON, 14
.equ EGGGROUP_UNDISCOVERED, 15

.macro	PkmnBaseData	hp, atk, def, spe, spa, spd, type1, type2, catchrate, baseexp, ev, item1, item2, gender, hatchcycle, basehappy, exprate, egggroup1, egggroup2, ability1, ability2, flee, unknown19, unknown1a, unknown1c, unknown20, unknown24, unknown28
.byte   \hp, \atk, \def, \spe, \spa, \spd, \type1, \type2, \catchrate, \baseexp
.hword  \ev, \item1, \item2
.byte   \gender, \hatchcycle, \basehappy, \exprate, \egggroup1, \egggroup2, \ability1, \ability2, \flee, \unknown19
.hword  \unknown1a
.word   \unknown1c, \unknown20, \unknown24, \unknown28
.endm


.macro	MoveTable	move, lvl
.hword  \move | (\lvl << 9)
.endm


.macro	itemdata	unknown0, unknown2, unknown3, unknown4, unknown5, unknown6, unknown7, unknown8, unknowna, unknownb, unknownc
.hword  \unknown0
.byte   \unknown2, \unknown3, \unknown4, \unknown5, \unknown6, \unknown7
.hword  \unknown8
.byte   \unknowna, \unknownb, \unknownc, 0
.endm

.macro	itemdataboosts	boost_hp, boost_level, boost_evolution, boost_attack, boost_defense, boost_spatk, boost_spdef, boost_speed, boost_acc, boost_crit, boost_pp, boost_target, boost_target2
.byte   \boost_hp | (\boost_level<<4), \boost_evolution | (\boost_attack<<4), \boost_defense | (\boost_spatk<<4), \boost_spdef | (\boost_speed<<4), \boost_acc | (\boost_crit<<4), \boost_pp | (\boost_target<<4), \boost_target2
.endm

.macro	itemdata2	unknowne7, unknowne8, unknowne9, unknownea, unknowneb, unknownec, unknowned, unknownee, unknownef, unknowne10, unknowne11
.byte   \unknowne7, \unknowne8, \unknowne9, \unknownea, \unknowneb, \unknownec, \unknowned, \unknownee, \unknownef, \unknowne10, \unknowne11, 0, 0
.endm


.equ ITEMPOCKET_ITEMS, 0
.equ ITEMPOCKET_MEDICINE, 1
.equ ITEMPOCKET_POKEBALLS, 2
.equ ITEMPOCKET_TMHMS, 3
.equ ITEMPOCKET_BERRIES, 4
.equ ITEMPOCKET_MAIL, 5
.equ ITEMPOCKET_BATTLEITEMS, 6
.equ ITEMPOCKET_KEYITEMS, 7


.macro WaterEncounter Lvl1, Lvl2, Pkmn
.byte \Lvl1, \Lvl2
.hword 0
.word \Pkmn
.endm


.macro btrainer unknown, nrpkmn
.hword \unknown, \nrpkmn
.endm

.macro btpoke species, move1, move2, move3, move4, evs, nature, item, unknown2, unknown3
.hword \species, \move1, \move2, \move3, \move4
.byte \evs, \nature, \item, \unknown2
.hword \unknown3
.endm

.equ EV_HP, 1<<0
.equ EV_ATK, 1<<1
.equ EV_DEF, 1<<2
.equ EV_SA, 1<<3
.equ EV_SD, 1<<4
.equ EV_SPD, 1<<5

.equ HARDY, 0
.equ LONELY, 1
.equ BRAVE, 2
.equ ADAMANT, 3
.equ NAUGHTY, 4
.equ BOLD, 5
.equ DOCILE, 6
.equ RELAXED, 7
.equ IMPISH, 8
.equ LAX, 9
.equ TIMID, 10
.equ HASTY, 11
.equ SERIOUS, 12
.equ JOLLY, 13
.equ NAIVE, 14
.equ MODEST, 15
.equ MILD, 16
.equ QUIET, 17
.equ BASHFUL, 18
.equ RASH, 19
.equ CALM, 20
.equ GENTLE, 21
.equ SASSY, 22
.equ CAREFUL, 23
.equ QUIRKY, 24


@ evolution conditions
.equ Evo_NoEvo, 0
.equ Evo_HighFriendship, 1
.equ Evo_HighFriendshipAtDaytime, 2
.equ Evo_HighFriendshipAtNighttime, 3
.equ Evo_ReachLevel, 4
.equ Evo_Trade, 5
.equ Evo_HoldItemAndTrade, 6
.equ Evo_UseItem, 7
.equ Evo_ReachLevelAndAtkGtDef, 8
.equ Evo_ReachLevelAndAtkEqDef, 9
.equ Evo_ReachLevelAndAtkLtDef, 10
.equ Evo_DependsOnPersonalityValue1, 11
.equ Evo_DependsOnPersonalityValue2, 12
.equ Evo_ReachLevelAndCanCreateExtraPkmn, 13
.equ Evo_CreateExtraPkmnIfSpaceInParty, 14
.equ Evo_HighBeauty, 15
.equ Evo_UseItemAndMale, 16
.equ Evo_UseItemAndFemale, 17
.equ Evo_HoldItemAtDaytime, 18
.equ Evo_HoldItemAtNighttime, 19
.equ Evo_KnowAttack, 20
.equ Evo_HaveOtherPkmnInParty, 21
.equ Evo_EvolvesIfMale, 22
.equ Evo_EvolvesIfFemale, 23
.equ Evo_BeAtCertainLocations, 24
.equ Evo_BeAtMossRockInEternaForest, 25
.equ Evo_BeAtIceRockInRoute217, 26


.macro	asciz_align str
.asciz	"\str"
.align 2, 0
.endm



/*
Offsets for Overlay-Structure (y9.s)
*/
.globl Overlay_ID
.equ Overlay_ID, 0x0
.globl Overlay_RAMAddress
.equ Overlay_RAMAddress, 0x4
.globl Overlay_RAMSize
.equ Overlay_RAMSize, 0x8
.globl Overlay_BSSSize
.equ Overlay_BSSSize, 0xc
.globl Overlay_StaticInitStart
.equ Overlay_StaticInitStart, 0x10
.globl Overlay_StaticInitEnd
.equ Overlay_StaticInitEnd, 0x14
.globl Overlay_FileID
.equ Overlay_FileID, 0x18
.globl Overlay_Reserved
.equ Overlay_Reserved, 0x1c
