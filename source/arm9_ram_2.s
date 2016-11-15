
.equ RAM_2101d20_0,         0x0 @ Backlight status
.equ RAM_2101d20_4,         0x4
.equ RAM_2101d20_OverlayToUnload,       0x8
.equ RAM_2101d20_c_DeinitBSS,           0xc
.equ RAM_2101d20_OverlayToLoad,         0x10 @ 0xffffffff = No Overlay to load
.equ RAM_2101d20_14_InitBSS,            0x14
.equ RAM_2101d20_18,        0x18
.equ RAM_2101d20_1c,        0x1c
.equ RAM_2101d20_20,        0x20


.equ RAM_21bf5b4_c,         0xc
.equ RAM_21bf5b4_e,         0xe
.equ RAM_21bf5b4_f,         0xf
.equ RAM_21bf5b4_10,        0x10


.equ RAM_21bf67c_0_FunctPtr,         0x0
.equ RAM_21bf67c_4_FunctArg,         0x4
.equ RAM_21bf67c_8,         0x8
.equ RAM_21bf67c_c,         0xc
.equ RAM_21bf67c_10,        0x10
.equ RAM_21bf67c_14,        0x14
.equ RAM_21bf67c_18,        0x18
.equ RAM_21bf67c_1c,        0x1c
.equ RAM_21bf67c_20,        0x20
.equ RAM_21bf67c_24,        0x24
.equ RAM_21bf67c_2c,        0x2c
.equ RAM_21bf67c_VBlankCounter,        0x30
.equ RAM_21bf67c_34,        0x34
.equ RAM_21bf67c_38_KeyOldPressed,        0x38
.equ RAM_21bf67c_3c_KeyNewPressed,        0x3c
.equ RAM_21bf67c_40_KeyNewPressed,        0x40
.equ RAM_21bf67c_44,        0x44
.equ RAM_21bf67c_48,        0x48
.equ RAM_21bf67c_4c,        0x4c
.equ RAM_21bf67c_50_InputDelayCounter,        0x50 @ Init with # of Frames in Input Delay, if =0 calculate new Input
.equ RAM_21bf67c_54,        0x54
.equ RAM_21bf67c_58_InputDelay,        0x58 @ # of Frames that Input is collected
.equ RAM_21bf67c_6c,        0x6c
.equ RAM_21bf67c_70,        0x70



.equ RAM_21bf6bc_1c,         0x1c
.equ RAM_21bf6bc_1e,         0x1e
.equ RAM_21bf6bc_20,         0x20
.equ RAM_21bf6bc_22,         0x22

.equ RAM_21bf6dc_4,          0x4
.equ RAM_21bf6dc_5,          0x5
.equ RAM_21bf6dc_6,          0x6
.equ RAM_21bf6dc_7,          0x7
.equ RAM_21bf6dc_8,          0x8



.equ RAM_21bfaf0_0,         0x0
.equ RAM_21bfaf0_4,         0x4
.equ RAM_21bfaf0_8,         0x8
.equ RAM_21bfaf0_c,         0xc
.equ RAM_21bfaf0_10,        0x10
.equ RAM_21bfaf0_14,        0x14
.equ RAM_21bfaf0_16,        0x16
.equ RAM_21bfaf0_18,        0x18
.equ RAM_21bfaf0_1a,        0x1a




.equ RAM_21bfb10_0,         0x0
.equ RAM_21bfb10_4,         0x4
.equ RAM_21bfb10_8,         0x8 @ RAM_21bfb18 - RAM_21bfb10


.equ RAM_21c0794_0,                 0x0 @ Pointer to VariableAreaAdresses
.equ RAM_21c0794_4,                 0x4

.equ VariableAreaAdresses_0,        0x0
.equ VariableAreaAdresses_4,        0x4
.equ VariableAreaAdresses_8,        0x8
.equ VariableAreaAdresses_c,        0xc
.equ VariableAreaAdresses_10,       0x10
.equ VariableAreaAdresses_Size,     0x202cc


.equ RAM_21ccba0_0,                 0x0
.equ RAM_21ccba0_4,                 0x4
.equ RAM_21ccba0_10,                0x10
.equ RAM_21ccba0_14,                0x14
.equ RAM_21ccba0_18,                0x18



.equ ThreadLinkedList_0,                0x0
.equ ThreadLinkedList_Scheduler,        0x4
.equ ThreadLinkedList_8,                0x8
.equ ThreadLinkedList_c,                0xc
.equ ThreadLinkedList_1c,               0x1c
.equ ThreadLinkedList_ID,               0x20
.equ ThreadLinkedList_24,               0x24
.equ ThreadLinkedList_24_c,             0xc
.equ ThreadLinkedList_26,               0x26
.equ ThreadLinkedList_28,               0x28
.equ ThreadLinkedList_FirstNode,        0x2c
.equ ThreadLinkedList_30,               0x30

.equ Thread_0,              0x0
.equ Thread_4,              0x4
.equ Thread_8,              0x8
.equ Thread_c,              0xc
.equ Thread_10,             0x10
.equ Thread_14,             0x14
.equ Thread_18,             0x18
.equ Thread_1c,             0x1c
.equ Thread_20,             0x20
.equ Thread_24,             0x24
.equ Thread_28,             0x28
.equ Thread_2c,             0x2c
.equ Thread_30,             0x30
.equ Thread_34,             0x34
.equ Thread_38,             0x38
.equ Thread_3c,             0x3c
.equ Thread_40,             0x40
.equ Thread_44,             0x44
.equ Thread_Active,         0x64 @ 0: NotActive 1: Active 2: ?
.equ Thread_Next,           0x68
.equ Thread_ID,             0x6c
.equ Thread_Priority,       0x70
.equ Thread_74,             0x74
.equ Thread_78,             0x78
.equ Thread_7c,             0x7c
.equ Thread_80,             0x80
.equ Thread_84,             0x84
.equ Thread_88,             0x88
.equ Thread_8c,             0x8c
.equ Thread_90,             0x90
.equ Thread_94,             0x94
.equ Thread_98,             0x98
.equ Thread_9c,             0x9c
.equ Thread_a0,             0xa0
.equ Thread_a4,             0xa4
.equ Thread_b0,             0xb0
.equ Thread_Destructor,     0xb4




.equ RAM_21cec08_0,     0x0
.equ RAM_21cec08_4,     0x4
.equ RAM_21cec08_8,     0x8
.equ RAM_21cec08_a,     0xa
.equ RAM_21cec08_c,     0xc



.equ RAM_21cec1c_0,     0x0
.equ RAM_21cec1c_4,     0x4
.equ RAM_21cec1c_8,     0x8
.equ RAM_21cec1c_c,     0xc
.equ RAM_21cec1c_10,    0x10
.equ RAM_21cec1c_14,    0x14



@ ArchiveData: @ 0x21cec34
.equ ArchiveData_0,     0x0
.equ ArchiveData_8,     0x8
.equ ArchiveData_c,     0xc
.equ ArchiveData_10,    0x10
.equ ArchiveData_14,    0x14
.equ ArchiveData_18,    0x18
.equ ArchiveData_1c,    0x1c
.equ ArchiveData_28,    0x28
.equ ArchiveData_2c,    0x2c
.equ ArchiveData_30,    0x30
.equ ArchiveData_34,    0x34
.equ ArchiveData_38,    0x38
.equ ArchiveData_3c,    0x3c
.equ ArchiveData_40,    0x40
.equ ArchiveData_44,    0x44
.equ ArchiveData_48,    0x48
.equ ArchiveData_4c,    0x4c
.equ ArchiveData_50,    0x50
.equ ArchiveData_54,    0x54
.equ ArchiveData_58,    0x58
.equ ArchiveData_size,  0x5c



.equ BattleData_0,                  0x0
.equ BattleData_8,                  0x8
.equ BattleData_24,                 0x24
.equ BattleData_64,                 0x64
.equ BattleData_6c,                 0x6c
.equ BattleData_74,                 0x74
.equ BattleData_78,                 0x78
.equ BattleData_80,                 0x80
.equ BattleData_94,                 0x94
.equ BattleData_ac,                 0xac
.equ BattleData_b0,                 0xb0
.equ BattleData_SkillPtr,           0xb4
.equ BattleData_b8,                 0xb8
.equ BattleData_bc,                 0xbc
.equ BattleData_cc,                 0xcc
.equ BattleData_dc,                 0xdc
.equ BattleData_134,                0x134
.equ BattleData_RoundNr,            0x150
.equ BattleData_Weather,            0x180
/*
01 : Rain Dance
02 : Drizzle
04 : Sandstorm
08 : Sand Stream
10 : Sunny Day
20 : Drought
40 : Hail
80 : Snow Warning
*/
.equ BattleData_WeatherCounter,     0x184
.equ BattleData_CurrentMove,        0x355
.globl BattleData_CurrentMoveID
.equ BattleData_CurrentMoveID,      0x356
.equ BattleData_MoveScore,          0x358
.equ BattleData_Move1Score,         0x358
.equ BattleData_TempVariable,       0x35c
.globl BattleData_TrainerAIType
.equ BattleData_TrainerAIType,      0x365
.equ BattleData_3cc,                0x3cc
.equ BattleData_3cd,                0x3cd
.equ BattleData_3ce,                0x3ce
.equ BattleData_3cf,                0x3cf
.equ BattleData_3de,                0x3de
.equ BattleData_3e0,                0x3e0
.equ BattleData_3e1,                0x3e1
.equ BattleData_3e2,                0x3e2
.equ BattleData_2120,               0x2120
.equ BattleData_AIScriptPtr,        0x2134
.equ BattleData_2138,               0x2138
.equ BattleData_214c,               0x214c
.equ BattleData_2150,               0x2150
.equ BattleData_2158,               0x2158
.equ BattleData_219c,               0x219c
/*
+ 0x150 Round Nr
+ 0x355 Current Move (0-3)
+ 0x356 Current Move ID
+ 0x358 Move1 Score
+ 0x359 Move2 Score
+ 0x35a Move3 Score
+ 0x35b Move4 Score

+ 0x2134
+ 0x2138
*/

.equ BattleData_2700,               0x2700 @ Place for the *_seq-file

/* PkmnBattleData
Size = 0xc0
*/
.equ BattleData_BaseAdr,            0x2d40 @ 0x0
.equ BattleData_Species,            0x2d40 @ 0x0
.equ BattleData_ATK,                0x2d42 @ 0x2
.equ BattleData_DEF,                0x2d44 @ 0x4
.equ BattleData_SPE,                0x2d46 @ 0x6
.equ BattleData_SPA,                0x2d48 @ 0x8
.equ BattleData_SPD,                0x2d4a @ 0xa
.equ BattleData_Move,               0x2d4c @ 0xc  PlayerBattleData_Move - BattleData
.equ BattleData_Move1,              0x2d4c @ 0xc
.equ BattleData_Move2,              0x2d4e @ 0xe
.equ BattleData_Move3,              0x2d50 @ 0x10
.equ BattleData_Move4,              0x2d52 @ 0x12
.equ BattleData_StatLevel,          0x2d58 @ 0x18 PlayerBattleData_StatLevel - BattleData 8 bytes
.equ BattleData_Type1,              0x2d64 @ 0x24
.equ BattleData_Type2,              0x2d65 @ 0x25
.equ BattleData_2d66,               0x2d66 @ 0x26
.equ BattleData_Ability,            0x2d67 @ 0x27 PlayerBattleData_Ability - BattleData
.equ BattleData_MovePP,             0x2d6c @ 0x2c
.equ BattleData_Move1PP,            0x2d6c @ 0x2c
.equ BattleData_Move2PP,            0x2d6d @ 0x2d
.equ BattleData_Move3PP,            0x2d6e @ 0x2e
.equ BattleData_Move4PP,            0x2d6f @ 0x2f
.equ BattleData_MovePPUps,          0x2d70 @ 0x30
.equ BattleData_Move1PPUps,         0x2d70 @ 0x30
.equ BattleData_Move2PPUps,         0x2d71 @ 0x31
.equ BattleData_Move3PPUps,         0x2d72 @ 0x32
.equ BattleData_Move4PPUps,         0x2d73 @ 0x33
.equ BattleData_Level,              0x2d74 @ 0x34
.equ BattleData_Friendship,         0x2d75 @ 0x35
.equ BattleData_CurHP,              0x2d8c @ 0x4c PlayerBattleData_CurHP - BattleData
.equ BattleData_MaxHP,              0x2d90 @ 0x50
.equ BattleData_ExpPts,             0x2da4 @ 0x64
.equ BattleData_2dac,               0x2dac @ 0x6c PlayerBattleData_6c - BattleData
.equ BattleData_2db0,               0x2db0 @ 0x70 PlayerBattleData_70 - BattleData
.equ BattleData_Item,               0x2db8 @ 0x78
.equ BattleData_2dc0,               0x2dc0 @ 0x80 PlayerBattleData_80 - BattleData
.equ BattleData_2dcc,               0x2dcc @ 0x8c
.equ BattleData_2de8,               0x2de8 @ 0xa8
.equ BattleData_2df8,               0x2df8 @ 0xb8

.equ BattleData_3044,               0x3044
.equ BattleData_307c,               0x307c
.equ BattleData_3154,               0x3154



/*****************
ScriptHandler
*****************/
.equ ScriptHandler_0,               0x0
.equ ScriptHandler_1,               0x1     @ 0 = No Active Script, 1 = Normal Script Active, 2 = Execute Function in ScriptHandler_4
.equ ScriptHandler_2,               0x2     @ Result of CompareValues (ScriptCmd_If)
.equ ScriptHandler_4,               0x4
.equ ScriptHandler_Pointer,         0x8
.equ ScriptHandler_c,               0xc     @ 0x14 * 4 Bytes
.equ ScriptHandler_PtrToJumpTable,  0x5c    @ =JumpTable_Scripthandler (initialised in Function_203e724)
.equ ScriptHandler_NrOfCmds,        0x60    @ =Nr of ScriptCmds (initialised in Function_203e724)
.equ ScriptHandler_64,              0x64
.equ ScriptHandler_74,              0x74
.equ ScriptHandler_80,              0x80
.equ ScriptHandler_80_0,            0x0


/*****************
Sprite
*****************/
.equ Sprite_0,                      0x0
.equ Sprite_Face,                   0x28
.equ Sprite_30,                     0x30
.equ Sprite_4c,                     0x4c
.equ Sprite_50,                     0x50
.equ Sprite_54,                     0x54
.equ Sprite_58,                     0x58
.equ Sprite_5c,                     0x5c
.equ Sprite_60,                     0x60
.equ Sprite_X,                      0x64
.equ Sprite_68,                     0x68
.equ Sprite_Y,                      0x6c
.equ Sprite_70,                     0x70
.equ Sprite_74,                     0x74
.equ Sprite_7c,                     0x7c
.equ Sprite_88,                     0x88
.equ Sprite_94,                     0x94


/*****************
TextInterpreter
*****************/
.equ TextInterpreter_Pointer,       0x0     @ Pointer to current position in Text/Msg
.equ TextInterpreter_4,             0x4
.equ TextInterpreter_9,             0x9
.equ TextInterpreter_a,             0xa
.equ TextInterpreter_b,             0xb
.equ TextInterpreter_c,             0xc
.equ TextInterpreter_e,             0xe
.equ TextInterpreter_10,            0x10
.equ TextInterpreter_12,            0x12
.equ TextInterpreter_15,            0x15
.equ TextInterpreter_16,            0x16
.equ TextInterpreter_17,            0x17
.equ TextInterpreter_18,            0x18
.equ TextInterpreter_1a,            0x1a
.equ TextInterpreter_1b,            0x1b
.equ TextInterpreter_1c,            0x1c
.equ TextInterpreter_20,            0x20
.equ TextInterpreter_20_0,          0x0
.equ TextInterpreter_20_1,          0x1
.equ TextInterpreter_20_2,          0x2
.equ TextInterpreter_27,            0x27
.equ TextInterpreter_27_0,          0x0
.equ TextInterpreter_28,            0x28
.equ TextInterpreter_28_0,          0x0
.equ TextInterpreter_29,            0x29
.equ TextInterpreter_29_0,          0x0
.equ TextInterpreter_2a,            0x2a
.equ TextInterpreter_2a_0,          0x0
.equ TextInterpreter_2b,            0x2b
.equ TextInterpreter_2b_0,          0x0
.equ TextInterpreter_2c,            0x2c
.equ TextInterpreter_2c_0,          0x0
.equ TextInterpreter_2d,            0x2d
.equ TextInterpreter_2d_0,          0x0
.equ TextInterpreter_2e,            0x2e


/*****************
TrainerData
*****************/
.equ TrainerData_ID,                0x10
.equ TrainerData_Money,             0x14    @ Maximum is 999999
.equ TrainerData_Gender,            0x18    @ 0 = Male, 1 = Female
.equ TrainerData_19,                0x19
.equ TrainerData_Badge,             0x1a
.equ TrainerData_1b,                0x1b
.equ TrainerData_1c,                0x1c
.equ TrainerData_1d,                0x1d




.equ RAM_27ffe00_24,        0x24
.globl RAM_27ffe00_2c
.equ RAM_27ffe00_2c,        0x2c
.globl RAM_27ffe00_3c
.equ RAM_27ffe00_3c,        0x3c
.equ RAM_27ffe00_80,        0x80




.equ Unknown_21023e0,              0x21023e0 @ .word
.equ Unknown_21023f8,             0x021023f8 @ .word



