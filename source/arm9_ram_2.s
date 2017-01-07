
.equ RAM_2101d20_Backlight,             0x0 @ Backlight status
.equ RAM_2101d20_4,         0x4
.equ RAM_2101d20_OverlayToUnload,       0x8
.equ RAM_2101d20_c_DeinitBSS,           0xc
.equ RAM_2101d20_OverlayToLoad,         0x10 @ 0xffffffff = No Overlay to load
.equ RAM_2101d20_14_InitBSS,            0x14
.equ RAM_2101d20_18,        0x18
.equ RAM_2101d20_1c,        0x1c
.equ RAM_2101d20_VariableAreaAdresses,  0x20 @ Pointer to VariableAreaAdresses

.equ RAM_2101df0_4,         0x4

.equ RAM_2101df8_94,        0x94
.equ RAM_2101df8_98,        0x98


.equ RAM_21bf5b4_c,         0xc
.equ RAM_21bf5b4_e,         0xe
.equ RAM_21bf5b4_f,         0xf
.equ RAM_21bf5b4_10,        0x10


.equ RAM_21bf5c8_0,         0x0
.equ RAM_21bf5c8_4,         0x4
.equ RAM_21bf5c8_8,         0x8
.equ RAM_21bf5c8_c,         0xc


.equ RAM_21bf67c_FunctPtr,                  0x0
.equ RAM_21bf67c_FunctArg,                  0x4
.equ RAM_21bf67c_8,         0x8
.equ RAM_21bf67c_c,         0xc
.equ RAM_21bf67c_10,        0x10
.equ RAM_21bf67c_14,        0x14
.equ RAM_21bf67c_TaskList1,                 0x18
.equ RAM_21bf67c_TaskList1_Size,                160
.equ RAM_21bf67c_TaskList2,                 0x1c
.equ RAM_21bf67c_TaskList2_Size,                32
.equ RAM_21bf67c_TaskList3,                 0x20
.equ RAM_21bf67c_TaskList3_Size,                32
.equ RAM_21bf67c_TaskList4,                 0x24
.equ RAM_21bf67c_TaskList4_Size,                4
.equ RAM_21bf67c_2c,        0x2c
.equ RAM_21bf67c_VBlankCounter,             0x30
.equ RAM_21bf67c_34,        0x34
.equ RAM_21bf67c_38_KeyOldPressed,          0x38
.equ RAM_21bf67c_3c_KeyNewPressed,          0x3c
.equ RAM_21bf67c_40_KeyNewPressed,          0x40
.equ RAM_21bf67c_44,        0x44
.equ RAM_21bf67c_48,        0x48
.equ RAM_21bf67c_4c,        0x4c
.equ RAM_21bf67c_50_InputDelayCounter,      0x50 @ Init with # of Frames in Input Delay, if =0 calculate new Input
.equ RAM_21bf67c_54,        0x54
.equ RAM_21bf67c_58_InputDelay,             0x58 @ # of Frames that Input is collected
.equ RAM_21bf67c_6c,        0x6c
.equ RAM_21bf67c_70,        0x70


/****************
    TaskList
****************/
.equ TaskList_HeaderSize,               0x34
.equ TaskList_Header_MaxTaskNr,         0x0
.equ TaskList_Header_NrOfTasks,         0x2
.equ TaskList_Header_TaskStruct,        0x4 @ Begin of TaskStruct
.equ TaskList_Header_StartOfTaskPtrs,   0x20
.equ TaskList_Header_EndOfTaskPtrs,     0x24
.equ TaskList_Header_Protected,         0x28 @ 0: Not protected (is readable) 1: protected (is currently being changed)
.equ TaskList_Header_CurTask,           0x2c
.equ TaskList_Header_NextTask,          0x30

.equ Task_Size,                     0x1c
.equ Task_TaskList,                 0x0
.equ Task_PrevTask,                 0x4
.equ Task_NextTask,                 0x8
.equ Task_Priority,                 0xc
.equ Task_ArgumentPtr,              0x10
.equ Task_FunctionPtr,              0x14
.equ Task_isDeactivated,            0x18 @ 0: executed 1: not executed


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

/* Malloc-Header */
.equ MallocHeader_Size,     0x10
.equ MallocHeader_0,        0x0
.equ MallocHeader_4,        0x4
.equ MallocHeader_8,        0x8
.equ MallocHeader_c,        0xc



.equ RAM_21bfb10_0,         0x0
.equ RAM_21bfb10_4,         0x4
.equ RAM_21bfb10_8,         0x8 @ RAM_21bfb18 - RAM_21bfb10


.equ RAM_21c0794_VariableAreaAdresses,  0x0 @ Pointer to VariableAreaAdresses
.equ RAM_21c0794_4,                     0x4

.equ VariableAreaAdresses_Size,     0x202cc
.equ VariableAreaAdresses_0,        0x0
.equ VariableAreaAdresses_4,        0x4
.equ VariableAreaAdresses_8,        0x8
.equ VariableAreaAdresses_c,        0xc
.equ VariableAreaAdresses_10,       0x10
.equ VariableAreaAdresses_14,       0x14
.equ VariableAreaAdresses_20014,    0x20014
.equ VariableAreaAdresses_20018,    0x20018
.equ VariableAreaAdresses_20020,    0x20020
.equ VariableAreaAdresses_20024,    0x20024 @ Begin of VariableAreas
.equ VariableAreaAdresses_20024_Nr,         0x0 @ Nr of Area
.equ VariableAreaAdresses_20024_4,          0x4 @ SomeSizeOfVariableArea
.equ VariableAreaAdresses_20024_RelAdr,     0x8 @ relative Adress of the Areas
.equ VariableAreaAdresses_20024_c,          0xc @ =0
.equ VariableAreaAdresses_20024_e,          0xe @ =[TableForVariableAreas_4]
.equ VariableAreaAdresses_20024_Next,       0x10
.equ VariableAreaAdresses_20284,    0x20284
.equ VariableAreaAdresses_2029c,    0x2029c

/*******************************
     TableForVariableAreas
*******************************/
.equ TableForVariableAreas_Nr, 0x0
.equ TableForVariableAreas_4, 0x4
.equ TableForVariableAreas_GetSizeFunction, 0x8
.equ TableForVariableAreas_InitFunction, 0xc
.equ TableForVariableAreas_Next, 0x10
.equ TableForVariableAreas_14, 0x14


.equ RAM_21ccba0_0,                 0x0
.equ RAM_21ccba0_4,                 0x4
.equ RAM_21ccba0_10,                0x10
.equ RAM_21ccba0_14,                0x14
.equ RAM_21ccba0_18,                0x18


.equ RAM_21ccc80_0,                 0x0
.equ RAM_21ccc80_4,                 0x4
.equ RAM_21ccc80_8,                 0x8
.equ RAM_21ccc80_c,                 0xc


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


.equ RAM_21d01c0_6,     0x6


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
.equ BattleData_88,                 0x88
.equ BattleData_8c,                 0x8c
.equ BattleData_90,                 0x90
.equ BattleData_94,                 0x94
.equ BattleData_ac,                 0xac
.equ BattleData_b0,                 0xb0
.equ BattleData_SkillPtr,           0xb4
.equ BattleData_b8,                 0xb8
.equ BattleData_bc,                 0xbc
.equ BattleData_cc,                 0xcc
.equ BattleData_dc,                 0xdc
.equ BattleData_134,                0x134
.equ BattleData_138,                0x138
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
.equ BattleData_1bc,                0x1bc
.equ BattleData_354,                0x354
.equ BattleData_CurrentMove,        0x355 @ 0-3
.equ BattleData_CurrentMoveID,      0x356
.equ BattleData_MoveScore,          0x358
.equ BattleData_Move1Score,         0x358
.equ BattleData_Move2Score,         0x359
.equ BattleData_Move3Score,         0x35a
.equ BattleData_Move4Score,         0x35b
.equ BattleData_TempVariable,       0x35c
.equ BattleData_360,                0x360
.equ BattleData_364,                0x364
.equ BattleData_TrainerAIType,      0x365
.equ BattleData_36c,                0x36c
.equ BattleData_390,                0x390
.equ BattleData_3cc,                0x3cc
.equ BattleData_3cd,                0x3cd
.equ BattleData_3ce,                0x3ce
.equ BattleData_3cf,                0x3cf
.equ BattleData_3d0,                0x3d0
.equ BattleData_3de,                0x3de
.equ BattleData_3e0,                0x3e0
.equ BattleData_3e1,                0x3e1
.equ BattleData_3e2,                0x3e2
.equ BattleData_2120,               0x2120
.equ BattleData_AIScriptPtr,        0x2134
.equ BattleData_2138,               0x2138
.equ BattleData_213c,               0x213c
.equ BattleData_214c,               0x214c
.equ BattleData_2150,               0x2150
.equ BattleData_2158,               0x2158
.equ BattleData_216c,               0x216c
.equ BattleData_2170,               0x2170
.equ BattleData_219c,               0x219c
.equ BattleData_21a4,               0x21a4
.equ BattleData_21ec,               0x21ec

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
.equ BattleData_2d54,               0x2d54 @ 0x14
.equ BattleData_StatLevel,          0x2d58 @ 0x18 PlayerBattleData_StatLevel - BattleData 8 bytes
.equ PlayerBattleData_StatLevel,    BattleData_StatLevel-BattleData_BaseAdr
.equ BattleData_2d60,               0x2d60 @ 0x20
.equ BattleData_Type1,              0x2d64 @ 0x24
.equ BattleData_Type2,              0x2d65 @ 0x25
.equ BattleData_2d66,               0x2d66 @ 0x26
.equ BattleData_Ability,            0x2d67 @ 0x27 PlayerBattleData_Ability - BattleData
.equ BattleData_2d68,               0x2d68 @ 0x28
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
.equ BattleData_2d76,               0x2d76 @ 0x36
.equ BattleData_CurHP,              0x2d8c @ 0x4c PlayerBattleData_CurHP - BattleData
.equ BattleData_MaxHP,              0x2d90 @ 0x50
.equ BattleData_2d94,               0x2d94 @ 0x54
.equ BattleData_ExpPts,             0x2da4 @ 0x64
.equ BattleData_PersonalityValue,   0x2da8 @ 0x68
.equ BattleData_StatusEffect,       0x2dac @ 0x6c PlayerBattleData_6c - BattleData
.equ BattleData_2db0,               0x2db0 @ 0x70 PlayerBattleData_70 - BattleData
.equ BattleData_OTID,               0x2db4 @ 0x74
.equ BattleData_Item,               0x2db8 @ 0x78
.equ BattleData_2dbc,               0x2dbc @ 0x7c
.equ BattleData_2dbe,               0x2dbe @ 0x7e
.equ BattleData_Pokeball,           0x2dbf @ 0x7f
.equ BattleData_2dc0,               0x2dc0 @ 0x80 PlayerBattleData_80 - BattleData
.equ BattleData_2dcc,               0x2dcc @ 0x8c
.equ BattleData_2de8,               0x2de8 @ 0xa8
.equ BattleData_2df8,               0x2df8 @ 0xb8

.equ BattleData_BaseAdr2,           0x2e00 @ BattleData_BaseAdr + 1 * PkmnBattleData_Size
.equ BattleData_BaseAdr3,           0x2ec0 @ BattleData_BaseAdr + 2 * PkmnBattleData_Size
.equ BattleData_BaseAdr4,           0x2f80 @ BattleData_BaseAdr + 3 * PkmnBattleData_Size

.equ BattleData_3044,               0x3044
.equ BattleData_3064,               0x3064
.equ BattleData_307c,               0x307c
.equ BattleData_3154,               0x3154


/*****************
WazaEffect (overlay_0012.s)
*****************/
.equ WazaEffectStruct_0,            0x0
.equ WazaEffectStruct_10,           0x10
.equ WazaEffectStruct_18,           0x18 @ Pointer
.equ WazaEffectStruct_8d,           0x8d
.equ WazaEffectStruct_bc,           0xbc @ Callback
.equ WazaEffectStruct_c0,           0xc0
.equ WazaEffectStruct_c8,           0xc8
.equ WazaEffectStruct_138,          0x138
.equ WazaEffectStruct_13c,          0x13c
.equ WazaEffectStruct_150,          0x150
.equ WazaEffectStruct_164,          0x164
.equ WazaEffectStruct_1a8,          0x1a8


/*****************
ScriptHandler
*****************/
.equ ScriptHandler_Size,            0x84
.equ ScriptHandler_0,               0x0
.equ ScriptHandler_State,           0x1     @ 0 = No Active Script, 1 = Normal Script Active, 2 = Execute Function in ScriptHandler_PtrToFct
.equ ScriptHandler_StateOff,            0x0
.equ ScriptHandler_StateOn,             0x1
.equ ScriptHandler_StateExecFct,        0x2
.equ ScriptHandler_2,               0x2     @ Result of CompareValues (ScriptCmd_If)
.equ ScriptHandler_PtrToFct,        0x4
.equ ScriptHandler_Pointer,         0x8
.equ ScriptHandler_c,               0xc     @ 0x14 * 4 Bytes
.equ ScriptHandler_Stack_c,             0xc
.equ ScriptHandler_MaxStackDepth,       0x14
.equ ScriptHandler_PtrToJumpTable,  0x5c    @ =JumpTable_Scripthandler (initialised in Function_203e724)
.equ ScriptHandler_NrOfCmds,        0x60    @ =Nr of ScriptCmds (initialised in Function_203e724)
.equ ScriptHandler_64,              0x64
.equ ScriptHandler_74,              0x74
.equ ScriptHandler_74_18,               0x18
.equ ScriptHandler_7c,              0x7c
.equ ScriptHandler_78,              0x78
.equ ScriptHandler_78_0,                0x0 @ 0 or 1
.equ ScriptHandler_78_2,                0x2
.equ ScriptHandler_78_6,                0x6
.equ ScriptHandler_78_8,                0x8 @ Ptr to Msg?
.equ ScriptHandler_80,              0x80    @ Ptr to OverWorldData
.equ ScriptHandler_80_0,            0x0


/*****************
Sprite
*****************/
.equ Sprite_Size,                   0x128
.equ Sprite_Flags,                  0x0
.equ Sprite_Flags_Locked,           1<<0
.equ Sprite_Flags_2,                1<<1
.equ Sprite_Flags_4,                1<<2
.equ Sprite_Flags_8,                1<<3
.equ Sprite_Flags_10,               1<<4
.equ Sprite_Flags_EndMovement,      1<<5
.equ Sprite_Flags_40,               1<<6
.equ Sprite_Flags_80,               1<<7
.equ Sprite_Flags_100,              1<<8
.equ Sprite_Flags_200,              2<<8
.equ Sprite_Flags_Follow,           1<<10
.equ Sprite_Flags_1000,             1<<12
.equ Sprite_Flags_4000,             1<<14
.equ Sprite_Flags_10000,            1<<16
.equ Sprite_Flags_800000,           2<<22
.equ Sprite_Flags_1000000,          1<<24
.equ Sprite_Flags_20000000,         2<<28
.equ Sprite_4,                      0x4
.equ Sprite_4_4,                    0x4
.equ Sprite_ID,                     0x8
.equ Sprite_c,                      0xc
.equ Sprite_Graphic,                0x10
.equ Sprite_Movement,               0x14
.equ Sprite_Trainer,                0x18
.equ Sprite_Flag,                   0x1c
.equ Sprite_Script,                 0x20
.equ Sprite_InitOrientation,        0x24
.equ Sprite_Face,                   0x28
.equ Sprite_Face2,                  0x2c
.equ Sprite_OldFace,                0x30
.equ Sprite_OldFace2,               0x34
.equ Sprite_38,                     0x38
.equ Sprite_3c,                     0x3c
.equ Sprite_40,                     0x40
.equ Sprite_MovementWidth,          0x44
.equ Sprite_MovementLength,         0x48
.equ Sprite_4c,                     0x4c
.equ Sprite_50,                     0x50
.equ Sprite_54,                     0x54
.equ Sprite_X2,                     0x58
.equ Sprite_Z2,                     0x5c
.equ Sprite_Y2,                     0x60
.equ Sprite_X,                      0x64
.equ Sprite_Z,                      0x68
.equ Sprite_Y,                      0x6c
.equ Sprite_70,                     0x70
.equ Sprite_74,                     0x74
.equ Sprite_7c,                     0x7c
.equ Sprite_88,                     0x88
.equ Sprite_94,                     0x94
.equ Sprite_a0,                     0xa0
.equ Sprite_MovementNr,             0xa4
.equ Sprite_MovementState,          0xa8
.equ Sprite_ac,                     0xac
.equ Sprite_ae,                     0xae
.equ Sprite_b0,                     0xb0
.equ Sprite_SpriteList,             0xb4
.equ Sprite_b8,                     0xb8 @ Callback
.equ Sprite_bc,                     0xbc @ Callback
.equ Sprite_c0,                     0xc0 @ Callback
.equ Sprite_c4,                     0xc4
.equ Sprite_c8,                     0xc8
.equ Sprite_cc,                     0xcc
.equ Sprite_d0,                     0xd0
.equ Sprite_d4,                     0xd4
.equ Sprite_d8,                     0xd8
.equ Sprite_e8,                     0xe8
.equ Sprite_f8,                     0xf8
.equ Sprite_f8_0,                   0x0
.equ Sprite_f8_Length,              0x2 @ Length of Animation in Frames
.equ Sprite_f8_Direction,           0x4
.equ Sprite_f8_DeltaPos,            0x8
.equ Sprite_f8_a,                   0xa
.equ Sprite_f8_c,                   0xc
.equ Sprite_f8_d,                   0xd
.equ Sprite_f8_e,                   0xe
.equ Sprite_f8_f,                   0xf
.equ Sprite_108,                    0x108
.equ Sprite_124,                    0x124

/*****************
Sprite2
*****************/
.equ Sprite2_Flags,                 0x0
.equ Sprite2_4,                     0x4
.equ Sprite2_ID,                    0x8
.equ Sprite2_Movement,              0x9
.equ Sprite2_MovementWidth,         0xa
.equ Sprite2_MovementLength,        0xb
.equ Sprite2_InitOrientation,       0xc
.equ Sprite2_FaceDirection,         0xd
.equ Sprite2_e,                     0xe
.equ Sprite2_10,                    0x10
.equ Sprite2_Graphic,               0x12
.equ Sprite2_Trainer,               0x14
.equ Sprite2_Flag,                  0x16
.equ Sprite2_Script,                0x18
.equ Sprite2_1a,                    0x1a
.equ Sprite2_1c,                    0x1c
.equ Sprite2_1e,                    0x1e
.equ Sprite2_20,                    0x20
.equ Sprite2_22,                    0x22
.equ Sprite2_24,                    0x24
.equ Sprite2_PosX,                  0x26
.equ Sprite2_PosZ,                  0x28
.equ Sprite2_PosY,                  0x2a
.equ Sprite2_2c,                    0x2c


/*****************
MovementScriptStruct
*****************/
.equ MovementScriptStruct_Size,     0x14
.equ MovementScriptStruct_State,                0x0
.equ MovementScriptStruct_4,        0x4
.equ MovementScriptStruct_Counter,              0x8
.equ MovementScriptStruct_SpriteStruct,         0xc
.equ MovementScriptStruct_AdrOfMovementScript,  0x10


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
MainGameData
*****************/
.equ MainGameData_size,             0x1c8
.equ MainGameData_0,                0x0
.equ MainGameData_PkmnParty,        0x4
.equ MainGameData_14,               0x14
.equ MainGameData_18,               0x18
.equ MainGameData_28,               0x28
.equ MainGameData_3c,               0x3c
.equ MainGameData_5d,               0x5d
.equ MainGameData_90,               0x90
.equ MainGameData_TrainerData,      0xf8
.equ MainGameData_108,              0x108 @ ItemList
.equ MainGameData_10c,              0x10c
.equ MainGameData_110,              0x110
.equ MainGameData_118,              0x118
.equ MainGameData_12c,              0x12c
.equ MainGameData_130,              0x130
.equ MainGameData_134,              0x134
.equ MainGameData_138,              0x138
.equ MainGameData_144,              0x144
.equ MainGameData_148,              0x148
.equ MainGameData_150,              0x150
.equ MainGameData_154,              0x154
.equ MainGameData_158,              0x158
.equ MainGameData_160,              0x160
.equ MainGameData_164,              0x164
.equ MainGameData_168,              0x168
.equ MainGameData_16c,              0x16c
.equ MainGameData_174,              0x174
.equ MainGameData_18c,              0x18c
.equ MainGameData_190,              0x190
.equ MainGameData_194,              0x194
.equ MainGameData_19c,              0x19c
.equ MainGameData_1a0,              0x1a0
.equ MainGameData_1b0,              0x1b0
.equ MainGameData_1b2,              0x1b2
.equ MainGameData_1b8,              0x1b8


/*****************
PlayerData
*****************/
.equ PlayerData_0,                  0x0

/*****************
TrainerData (=PlayerData+0x4)
*****************/
.equ TrainerData_ID,                0x10
.equ TrainerData_Money,             0x14    @ Maximum is 999999
.equ TrainerData_Gender,            0x18    @ 0 = Male, 1 = Female
.equ TrainerData_19,                0x19
.equ TrainerData_Badge,             0x1a
.equ TrainerData_1b,                0x1b
.equ TrainerData_1c,                0x1c
.equ TrainerData_1d,                0x1d


/*****************
PkmnParty
*****************/
.equ PkmnParty_MaxNr,               0x0
.equ PkmnParty_Nr,                  0x4
.equ PkmnParty_8,                   0x8


/*****************
OverworldPlayerData = OverWorldData
*****************/

/*****************
OverworldData
*****************/
.equ OverworldData_SpriteList,      0x1c @ Ptr to OverworldPlayerData?

/*****************
SpriteList
*****************/
.equ SpriteList_0,              0x0
.equ SpriteList_NrOfSprites,    0x4
.equ SpriteList_8,              0x8
.equ SpriteList_c,              0xc
.equ SpriteList_MModel,         0x14
.equ SpriteList_18,             0x18
.equ SpriteList_18_e0,          0xe0 @ =0xf8
.equ SpriteList_FirstSprite,    0x128

/*****************
OverWorldData
*****************/
.equ OverWorldData_size,                    0xcc
.equ OverWorldData_0,                       0x0
.equ OverWorldData_4,                       0x4
.equ OverWorldData_OverlayData,             0x8
.equ OverWorldData_c,                       0xc @ Pointer To VariableAreaAdresses?
.equ OverWorldData_10,                      0x10
.equ OverWorldData_14,                      0x14
.equ OverWorldData_18,                      0x18
.equ OverWorldData_1c,                      0x1c @ Pointer to MapData?
.equ OverWorldData_28,                      0x28
.equ OverWorldData_2c,                      0x2c
.equ OverWorldData_30,                      0x30
.equ OverWorldData_SpriteList,              0x38
.equ OverWorldData_SpriteStruct,            0x3c
.equ OverWorldData_44,                      0x44
.equ OverWorldData_48,                      0x48
.equ OverWorldData_4c,                      0x4c
.equ OverWorldData_50,                      0x50
.equ OverWorldData_64,                      0x64
.equ OverWorldData_68,                      0x68
.equ OverWorldData_70,                      0x70
.equ OverWorldData_74,                      0x74
.equ OverWorldData_EncounterCounter,        0x78
.equ OverWorldData_7a,                      0x7a
.equ OverWorldData_7c,                      0x7c
.equ OverWorldData_94,                      0x94
.equ OverWorldData_98,                      0x98
.equ OverWorldData_9c,                      0x9c
.equ OverWorldData_a8,                      0xa8
.equ OverWorldData_b0,                      0xb0
.equ OverWorldData_b4,                      0xb4
.equ OverWorldData_bc,                      0xbc

.equ OverWorldData_0_size,                  0x10
.equ OverWorldData_0_0,                     0x0
.equ OverWorldData_0_4,                     0x4
.equ OverWorldData_0_8,                     0x8
.equ OverWorldData_0_c,                     0xc

.equ OverWorldData_4_8,                     0x8

.equ OverWorldData_14_size,                 0xac8
.equ OverWorldData_14_NrOfFurnitures,       0x0
.equ OverWorldData_14_NrOfOverworlds,       0x4
.equ OverWorldData_14_NrOfWarps,            0x8
.equ OverWorldData_14_NrOfTriggers,         0xc
.equ OverWorldData_14_PtrToFurnitures,      0x10
.equ OverWorldData_14_PtrToOverworlds,      0x14
.equ OverWorldData_14_PtrToWarps,           0x18
.equ OverWorldData_14_PtrToTriggers,        0x1c
.equ OverWorldData_14_PtrToZoneEventData,   0x20 @ pointer to the 'zone_event' of the map
.equ OverWorldData_14_820,                  0x820 @ level scripts of the map from scr_seq.narc
.equ OverWorldData_14_PtrToEncounterData,   0x920

/* Zone_Event Structs */
.equ Overworlds_ID,                         0x0
.equ Overworlds_Sprite,                     0x2
.equ Overworlds_Movement,                   0x4
.equ Overworlds_Trainer,                    0x6
.equ Overworlds_Flag,                       0x8
.equ Overworlds_Script,                     0xa
.equ Overworlds_Orientation,                0xc
.equ Overworlds_Sight1,                     0xe
.equ Overworlds_Sight2,                     0x10
.equ Overworlds_Sight3,                     0x12
.equ Overworlds_MovementWidth,              0x14
.equ Overworlds_MovementLength,             0x16
.equ Overworlds_X,                          0x18
.equ Overworlds_Y,                          0x1a
.equ Overworlds_Z,                          0x1c

.equ Warp_X,                                0x0
.equ Warp_Y,                                0x2
.equ Warp_Header,                           0x4
.equ Warp_ID,                               0x6
.equ Warp_8,                                0x8
.equ Warp_a,                                0xa

.equ OverWorldData_18_8,                    0x8

.equ OverWorldData_1c_MapNr,                0x0
.equ OverWorldData_1c_WarpNr,               0x4
.equ OverWorldData_1c_8,                    0x8
.equ OverWorldData_1c_c,                    0xc

/*****************
OverworldMapData
*****************/
.equ OverworldMapData_14,                   0x4

/*****************
ItemList
*****************/
.equ ItemList_Size,                         0x774
.equ ItemList_Items,                        0x0
.equ ItemList_Items_Size,                   165
.equ ItemList_KeyItems,                     0x294
.equ ItemList_KeyItems_Size,                50
.equ ItemList_TMHMs,                        0x35c
.equ ItemList_TMHMs_Size,                   100
.equ ItemList_Mail,                         0x4ec
.equ ItemList_Mail_Size,                    12
.equ ItemList_Medicine,                     0x51c
.equ ItemList_Medicine_Size,                40
.equ ItemList_Berries,                      0x5bc
.equ ItemList_Berries_Size,                 64
.equ ItemList_PokeBalls,                    0x6bc
.equ ItemList_PokeBalls_Size,               15
.equ ItemList_BattleItems,                  0x6f8
.equ ItemList_BattleItems_Size,             30


.equ RAM_27e0060_0,         0x0
.equ RAM_27e0060_4,         0x4


.equ RAM_27ffc30_0,         0x0 @ gbatek: GBA Cartridge Header[BEh], Reserved
.equ RAM_27ffc30_5,         0x5 @ gbatek: Whatever flags ?
.equ RAM_27ffc30_8,         0x8 @ gbatek: GBA Cartridge Header[ACh], Gamecode


.equ RAM_27ffe00_24,        0x24
.equ RAM_27ffe00_2c,        0x2c
.equ RAM_27ffe00_3c,        0x3c
.equ RAM_27ffe00_80,        0x80




