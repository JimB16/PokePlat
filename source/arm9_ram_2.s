
.equ RAM_2101d20_0,         0x0
.equ RAM_2101d20_4,         0x4
.equ RAM_2101d20_8,         0x8
.equ RAM_2101d20_c,         0xc
.equ RAM_2101d20_10,        0x10
.equ RAM_2101d20_14,        0x14
.equ RAM_2101d20_18,        0x18
.equ RAM_2101d20_1c,        0x1c
.equ RAM_2101d20_20,        0x20



.equ RAM_21bf67c_0,         0x0
.equ RAM_21bf67c_4,         0x4
.equ RAM_21bf67c_8,         0x8
.equ RAM_21bf67c_c,         0xc
.equ RAM_21bf67c_18,        0x18
.equ RAM_21bf67c_1c,        0x1c
.equ RAM_21bf67c_20,        0x20
.equ RAM_21bf67c_24,        0x24
.equ RAM_21bf67c_2c,        0x2c
.equ RAM_21bf67c_30,        0x30
.equ RAM_21bf67c_38,        0x38
.equ RAM_21bf67c_44,        0x44
.equ RAM_21bf67c_48,        0x48
.equ RAM_21bf67c_4c,        0x4c
.equ RAM_21bf67c_6c,        0x6c



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



.equ BattleData_0,                  0x0     @ ?
.equ BattleData_RoundNr,            0x150
.equ BattleData_CurrentMove,        0x355
.globl BattleData_CurrentMoveID
.equ BattleData_CurrentMoveID,      0x356
.equ BattleData_MoveScore,          0x358
.equ BattleData_Move1Score,         0x358
.equ BattleData_TempVariable,       0x35c
.globl BattleData_TrainerAIType
.equ BattleData_TrainerAIType,      0x365
.globl BattleData_3cf
.equ BattleData_3cf,                0x3cf
.equ BattleData_3de,                0x3de
.equ BattleData_3e0,                0x3e0
.equ BattleData_3e1,                0x3e1
.equ BattleData_3e2,                0x3e2
.globl BattleData_2120
.equ BattleData_2120,               0x2120
.globl BattleData_AIScriptPtr
.equ BattleData_AIScriptPtr,        0x2134
.globl BattleData_2138
.equ BattleData_2138,               0x2138
.globl BattleData_2158
.equ BattleData_2158,               0x2158
.globl BattleData_219c
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






.globl BattleData_Move
.equ BattleData_Move,               0x2d4c @ PlayerBattleData_Move - BattleData
.globl BattleData_StatLevel
.equ BattleData_StatLevel,          0x2d58 @ PlayerBattleData_StatLevel - BattleData
.globl BattleData_Ability
.equ BattleData_Ability,            0x2d67 @ PlayerBattleData_Ability - BattleData
.globl BattleData_CurHP
.equ BattleData_CurHP,              0x2d8c @ PlayerBattleData_CurHP - BattleData
.globl BattleData_2dac
.equ BattleData_2dac,               0x2dac @ PlayerBattleData_6c - BattleData
.globl BattleData_2db0
.equ BattleData_2db0,               0x2db0 @ PlayerBattleData_70 - BattleData
.globl BattleData_2dc0
.equ BattleData_2dc0,               0x2dc0 @ PlayerBattleData_80 - BattleData



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
.equ TextInterpreter_Pointer,             0x0     @ Pointer to current position in Text/Msg
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
.equ TextInterpreter_20,            0x20
.equ TextInterpreter_20_0,          0x0
.equ TextInterpreter_20_1,          0x1
.equ TextInterpreter_20_2,          0x2
.equ TextInterpreter_28,            0x28
.equ TextInterpreter_29,            0x29
.equ TextInterpreter_2a,            0x2a
.equ TextInterpreter_2b,            0x2b
.equ TextInterpreter_2e,            0x2e


/*****************
TrainerData
*****************/
.equ TrainerData_ID,                0x10
.equ TrainerData_Money,             0x14    @ Maximum is 999999
.equ TrainerData_Gender,            0x18    @ 0 = Male, 1 = Female
.equ TrainerData_19,                0x19
.equ TrainerData_Badge,             0x1a




.equ RAM_27ffe00_24,        0x24
.globl RAM_27ffe00_2c
.equ RAM_27ffe00_2c,        0x2c
.globl RAM_27ffe00_3c
.equ RAM_27ffe00_3c,        0x3c
.equ RAM_27ffe00_80,        0x80




.equ Unknown_21023e0,              0x21023e0 @ .word
.equ Unknown_21023f8,             0x021023f8 @ .word



