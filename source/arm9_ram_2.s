
.equ RAM_2101d20_Backlight,             0x0 @ Backlight status
.equ RAM_2101d20_4,         0x4
.equ RAM_2101d20_OverlayToUnload,       0x8
.equ RAM_2101d20_PtrToOverlayData,      0xc
.equ RAM_2101d20_OverlayToLoad,         0x10 @ 0xffffffff = No Overlay to load
.equ RAM_2101d20_JumpTable,             0x14
.equ RAM_2101d20_18,        0x18
.equ RAM_2101d20_1c,        0x1c
.equ RAM_2101d20_VariableAreaAdresses,  0x20 @ Pointer to VariableAreaAdresses

.equ OverlayData_Size,                  0x28
.equ OverlayData_JumpTable0,                     0x0 @ JumpTable+0x0
.equ OverlayData_JumpTable1,                     0x4 @ JumpTable+0x4
.equ OverlayData_JumpTable2,                     0x8 @ JumpTable+0x8
.equ OverlayData_JumpTable3,                     0xc @ JumpTable+0xc
.equ OverlayData_FunctionCounter,       0x10
.equ OverlayData_14,                    0x14
.equ OverlayData_14_0,                      0x0 @ StateNr
.equ OverlayData_18,                    0x18
.equ OverlayData_1c,                    0x1c
.equ OverlayData_20,                    0x20
.equ OverlayData_24,                    0x24


.equ RAM_2101d44_0,         0x0
.equ RAM_2101d44_0_1,           0x1 @ lsl #31
.equ RAM_2101d44_0_4,           0x4 @ lsl #29
.equ RAM_2101d44_0_8,           0x8 @ lsl #28
.equ RAM_2101d44_0_10,          0x10 @ lsl #27
.equ RAM_2101d44_0_20,          0x20 @ lsl #26
.equ RAM_2101d44_0_40,          0x40 @ lsl #25
.equ RAM_2101d44_0_80,          0x80 @ lsl #24
.equ RAM_2101d44_1,         0x1
.equ RAM_2101d44_2,         0x2
.equ RAM_2101d4c_84,        0x84 @ RAM_2101dd0
.equ RAM_2101d4c_94,        0x94 @ RAM_2101de0


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
.equ RAM_21bf67c_44_Key,                    0x44 @ keys that are hold?
.equ RAM_21bf67c_48_KeyNewPressed2,         0x48
.equ RAM_21bf67c_4c_Key,                    0x4c @ keys?
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


.equ RAM_21c0760_0,                         0x0 @ LoadGraphicDataList

.equ InitLoadGraphicDataList_NrOfGraphicData4Chunks,        0x0 @ Nr of GraphicData4-Chunks
.equ InitLoadGraphicDataList_4,             0x4
.equ InitLoadGraphicDataList_8,             0x8
.equ InitLoadGraphicDataList_c,             0xc @ Malloc-Flags

@ InitInitLoadGraphicDataList-Data
.equ InitInitLoadGraphicDataList_NrOfGraphicData4Chunks,    0x0
.equ InitInitLoadGraphicDataList_4,         0x4
.equ InitInitLoadGraphicDataList_8,         0x8
.equ InitInitLoadGraphicDataList_c,         0xc
.equ InitInitLoadGraphicDataList_10,        0x10

.equ LoadGraphicDataList_Size,              0x3c
.equ LoadGraphicDataList_StartPtr,          0x0
.equ LoadGraphicDataList_MaxNrOfParts,      0x4 @ Nr of GraphicData4-Chunks
.equ LoadGraphicDataList_8,                 0x8
.equ LoadGraphicDataList_UsedSizeMain,      0xc
.equ LoadGraphicDataList_UsedSizeSub,       0x10
.equ LoadGraphicDataList_MainMemSizeBytes,  0x14
.equ LoadGraphicDataList_SubMemSizeBytes,   0x18
.equ LoadGraphicDataList_MaxSizeMain,       0x1c
.equ LoadGraphicDataList_MaxSizeSub,        0x20
.equ LoadGraphicDataList_24,                0x24
.equ LoadGraphicDataList_28,                0x28
.equ LoadGraphicDataList_PartSizesMain,     0x2c
.equ LoadGraphicDataList_PartSizesSub,      0x30
.equ LoadGraphicDataList_MemoryPoolMain,    0x34
.equ LoadGraphicDataList_MemoryPoolSub,     0x38

.equ GraphicData4_Size,             0x54
.equ GraphicData4_GraphicData2,     0x0     @ GraphicData2
.equ GraphicData4_4,                0x4
.equ GraphicData4_4_1,                  1<<0 @ Main
.equ GraphicData4_4_2,                  1<<1 @ Sub
.equ GraphicData4_8,                0x8
.equ GraphicData4_c,                0xc
.equ GraphicData4_10,               0x10
.equ GraphicData4_DestinationMain,  0x34    @ Destination
.equ GraphicData4_DestinationSub,   0x38    @ Destination
.equ GraphicData4_3c,               0x3c
.equ GraphicData4_40,               0x40
.equ GraphicData4_44,               0x44
.equ GraphicData4_48,               0x48
.equ GraphicData4_4c,               0x4c
.equ GraphicData4_50,               0x50

.equ GraphicData5_GraphicData2,     0x0
.equ GraphicData5_4,                0x4
.equ GraphicData5_8,                0x8
.equ GraphicData5_c,                0xc

.equ GraphicData6List_0,            0x0
.equ GraphicData6List_4,            0x4
.equ GraphicData6List_8,            0x8

.equ GraphicData6_Size,             0xc
.equ GraphicData6_0,                0x0
.equ GraphicData6_4,                0x4
.equ GraphicData6_8,                0x8

.equ NARCPokeGra_Size,              0x338 @ 0xce*4
.equ NARCPokeGra_0,                 0x0
.equ NARCPokeGra_4,                 0x4 @ archive_id
.equ NARCPokeGra_6,                 0x6 @ file_id
.equ NARCPokeGra_8,                 0x8
.equ NARCPokeGra_a,                 0xa
.equ NARCPokeGra_10,                0x10
.equ NARCPokeGra_24,                0x24
.equ NARCPokeGra_26,                0x26
.equ NARCPokeGra_28,                0x28
.equ NARCPokeGra_2c,                0x2c
.equ NARCPokeGra_2e,                0x2e
.equ NARCPokeGra_30,                0x30
.equ NARCPokeGra_34,                0x34
.equ NARCPokeGra_36,                0x36
.equ NARCPokeGra_38,                0x38
.equ NARCPokeGra_3a,                0x3a
.equ NARCPokeGra_3c,                0x3c
.equ NARCPokeGra_40,                0x40
.equ NARCPokeGra_42,                0x42
.equ NARCPokeGra_44,                0x44
.equ NARCPokeGra_45,                0x45
.equ NARCPokeGra_46,                0x46
.equ NARCPokeGra_47,                0x47
.equ NARCPokeGra_48,                0x48
.equ NARCPokeGra_49,                0x49
.equ NARCPokeGra_4a,                0x4a
.equ NARCPokeGra_4b,                0x4b
.equ NARCPokeGra_4c,                0x4c
.equ NARCPokeGra_50,                0x50
.equ NARCPokeGra_54,                0x54
.equ NARCPokeGra_58,                0x58
.equ NARCPokeGra_59,                0x59
.equ NARCPokeGra_5a,                0x5a
.equ NARCPokeGra_5b,                0x5b
.equ NARCPokeGra_68,                0x68 @ Function-Ptr
.equ NARCPokeGra_6c,                0x6c
.equ NARCPokeGra_6e,                0x6e
.equ NARCPokeGra_70,                0x70
.equ NARCPokeGra_72,                0x72
.equ NARCPokeGra_74,                0x74
.equ NARCPokeGra_76,                0x76
.equ NARCPokeGra_ac,                0xac @ Size of struct (4x)
.equ NARCPokeGra_TexSSize,          0x2bc
.equ NARCPokeGra_TexTSize,          0x2c0
.equ NARCPokeGra_TexFormat,         0x2c4 @ 0xb1*4
.equ NARCPokeGra_TexColor0,         0x2cc
.equ NARCPokeGra_2e8,               0x2e8 @ 0xba*4
.equ NARCPokeGra_TexVRAMOffset,     0x2ec @ 0xbb*4
.equ NARCPokeGra_2f0,               0x2f0 @ 0xbc*4
.equ NARCPokeGra_2f4,               0x2f4 @ 0xbd*4
.equ NARCPokeGra_2f8,               0x2f8 @ 0xbe*4
.equ NARCPokeGra_2fc,               0x2fc @ 0xbf*4
.equ NARCPokeGra_300,               0x300
.equ NARCPokeGra_304,               0x304 @ 0xc1*4
.equ NARCPokeGra_30c,               0x30c @ 0xc3*4
.equ NARCPokeGra_310,               0x310 @ 0xc4*4
.equ NARCPokeGra_314,               0x314 @ 0xc5*4
.equ NARCPokeGra_320,               0x320
.equ NARCPokeGra_330,               0x330
.equ NARCPokeGra_331,               0x331
.equ NARCPokeGra_332,               0x332
.equ NARCPokeGra_333,               0x333
.equ NARCPokeGra_334,               0x334 @ 0xcd*4

.equ NARCPokeGra2_0,                0x0 @ archive_id
.equ NARCPokeGra2_2,                0x2 @ file_id graphic
.equ NARCPokeGra2_4,                0x4 @ file_id palette
.equ NARCPokeGra2_6,                0x6
.equ NARCPokeGra2_8,                0x8
.equ NARCPokeGra2_c,                0xc

.equ PokedexGra_0,                  0x0
.equ PokedexGra_13c,                0x13c @ 0x4f*4
.equ PokedexGra_NARCPokeGra,        0x154 @ 0x55*4
.equ PokedexGra_158,                0x158 @ 0x56*4
.equ PokedexGra_168,                0x168 @ 0x5a*4

.equ RAM_21c07b8_0,                         0x0
.equ RAM_21c07b8_4,                         0x4
.equ RAM_21c07b8_8,                         0x8

.equ RAM_21c07c4_0,                         0x0
.equ RAM_21c07c4_1,                         0x1
.equ RAM_21c07c4_4,                         0x4
.equ RAM_21c07c4_8,                         0x8 @ todo

.equ RAM_21c07d0_0,                         0x0

.equ RAM_21c07dc_OverWorldData,             0x0


.equ RAM_21c5b0c_7c,                        0x7c


.equ RAM_21c89f4_0,                         0x0
.equ RAM_21c89f4_4,                         0x4
.equ RAM_21c89f4_8,                         0x8


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


.equ MainBattleData_0,              0x0
.equ MainBattleData_4,              0x4
.equ MainBattleData_8,              0x8
.equ MainBattleData_PtrToMSGFileHandler368,    0xc @ 368.msg: status information msgs
.equ MainBattleData_PtrToMSGFileHandler0,      0x10 @ 0.msg: "$pokemonname used $attackname"
.equ MainBattleData_14,             0x14
.equ MainBattleData_18,             0x18
.equ MainBattleData_1c,             0x1c
.equ MainBattleData_20,             0x20
.equ MainBattleData_24,             0x24
.equ MainBattleData_28,             0x28
.equ MainBattleData_2c,             0x2c @ Flags
.equ MainBattleData_2c_1,           1<<0
.equ MainBattleData_2c_2,           1<<1
.equ MainBattleData_2c_4,           1<<2
.equ MainBattleData_2c_8,           1<<3
.equ MainBattleData_2c_10,          1<<4
.equ MainBattleData_2c_100,         1<<8
.equ MainBattleData_2c_200,         1<<9
.equ MainBattleData_2c_400,         1<<10
.equ MainBattleData_BattleData,     0x30
.equ MainBattleData_BattleText,     0x34 @ (4x)
.equ MainBattleData_NrOfBattleTextPtrs, 0x44
.equ MainBattleData_TrainerData,    0x48 @ Ptr to TrainerData (4x)
.equ MainBattleData_ItemList,       0x58 @ ItemList
.equ MainBattleData_5c,             0x5c
.equ MainBattleData_PokedexMemory,  0x60
.equ MainBattleData_NrOfPkmn,       0x64
.equ MainBattleData_PkmnParty0,     0x68 @ PkmnParty (4x)
.equ MainBattleData_PkmnParty1,     0x6c
.equ MainBattleData_PkmnParty2,     0x70
.equ MainBattleData_78,             0x78
.equ MainBattleData_NARCPokeGra,    0x88
.equ MainBattleData_8c,             0x8c
.equ MainBattleData_90,             0x90
.equ MainBattleData_94,             0x94
.equ MainBattleData_b8,             0xb8 @ MainBattleData_b8+0x34*x
.equ MainBattleData_19c,            0x19c @ 0x67*4
.equ MainBattleData_1a8,            0x1a8
.equ MainBattleData_1ac,            0x1ac
.equ MainBattleData_1b0,            0x1b0
.equ MainBattleData_1b4,            0x1b4
.equ MainBattleData_1b8,            0x1b8
.equ MainBattleData_1c0,            0x1c0 @ 0x7*64
.equ MainBattleData_1c4,            0x1c4
.equ MainBattleData_1c8,            0x1c8
.equ MainBattleData_1cc,            0x1cc
.equ MainBattleData_2228,           0x2228 @ size=0xe0
.equ MainBattleData_2308,           0x2308 @ size=0xe0
.equ MainBattleData_23fc,           0x23fc
.equ MainBattleData_23fd,           0x23fd
.equ MainBattleData_23fe,           0x23fe
.equ MainBattleData_BattleEnvironment, 0x2400 @ 0x9*1024 0-0x18
.equ BattleEnvironment_Cave,        0x5
.equ BattleEnvironment_Water,       0x7
.equ MainBattleData_2404,           0x2404
.equ MainBattleData_240c,           0x240c @ Flags
.equ MainBattleData_240c_1,         1<<0
.equ MainBattleData_240c_10,        1<<4
.equ MainBattleData_240c_40,        1<<6
.equ MainBattleData_Daytime,        0x2410 @ 3-4 Night
.equ MainBattleData_2414,           0x2414
.equ MainBattleData_241c,           0x241c
.equ MainBattleData_2420,           0x2420
.equ MainBattleData_2422,           0x2422
.equ MainBattleData_2424,           0x2424
.equ MainBattleData_PRNGSeed,       0x2434
.equ MainBattleData_2438,           0x2438
.equ MainBattleData_2446,           0x2446
.equ MainBattleData_2448,           0x2448
.equ MainBattleData_244c,           0x244c
.equ MainBattleData_245c,           0x245c
.equ MainBattleData_2468,           0x2468
.equ MainBattleData_Size,           0x2484


.equ BattleData2_0,                 0x0
.equ BattleData2_4,                 0x4
.equ BattleData2_8,                 0x8
.equ BattleData2_c,                 0xc @ Ptr to data with size 0x120
.equ BattleData2_1020,              0x1020
.equ BattleData2_1021,              0x1021
.equ BattleData2_1022,              0x1022
.equ BattleData2_1024,              0x1024
.equ BattleData2_Size,              0x1028

.equ BattleData_0,                  0x0 @ MainBattleData
.equ BattleData_4,                  0x4 @ BattleData
.equ BattleData_BattleFunctionNr,   0x8
.equ BattleData_c,                  0xc
.equ BattleData_d,                  0xd
.equ BattleData_e,                  0xe @ CmdNr 0-3 for Function_22623f0
.equ BattleData_f,                  0xf
.equ BattleData_10,                 0x10 @ LineNr, MsgNr
.equ BattleData_14,                 0x14
.equ BattleData_18,                 0x18
.equ BattleData_1a,                 0x1a
.equ BattleData_24,                 0x24
.equ BattleData_28,                 0x28
.equ BattleData_2c,                 0x2c
.equ BattleData_30,                 0x30
.equ BattleData_34,                 0x34
.equ BattleData_38,                 0x38
.equ BattleData_3c,                 0x3c
.equ BattleData_48,                 0x48
.equ BattleData_NrOfPkmn,           0x64
.equ BattleData_68,                 0x68
.equ BattleData_TargetPkmn,         0x6c @ Nr of TargetPkmn (<5) (i.e. the Pkmn that is tried to catch)
.equ BattleData_70,                 0x70
.equ BattleData_74,                 0x74
.equ BattleData_78,                 0x78
.equ BattleData_7c,                 0x7c
.equ BattleData_80,                 0x80
.equ BattleData_88,                 0x88
.equ BattleData_MoveEffectNr,       0x8c
.equ BattleData_MoveEffectUpperBits, 0x90
.equ BattleData_TargetForMoveEffect, 0x94 @ Pkmn that is attacked or gets the effect
.equ BattleData_98,                 0x98
.equ BattleData_ac,                 0xac
.equ BattleData_b0,                 0xb0
.equ BattleData_SkillPtr,           0xb4
.equ BattleData_ScriptCounter,      0xb8 @ Counts down to 0; if 0 then no more scripts to execute
.equ BattleData_ScriptNarcNrs,      0xbc
.equ BattleData_ScriptNarcFileNrs,  0xcc
.equ BattleData_ScriptStarpoints,   0xdc
.equ BattleData_ec,                 0xec
.equ BattleData_f0,                 0xf0
.equ BattleData_f4,                 0xf4
.equ BattleData_118,                0x118
.equ BattleData_11c,                0x11c
.equ BattleData_120,                0x120
.equ BattleData_124,                0x124 @ 0x49*4
.equ BattleData_UsedItem,           0x128 @ 0x4a*4 used i.e. to save chosen PokeBall
.equ BattleData_12c,                0x12c @ 0x4b*4
.equ BattleData_130,                0x130
.equ BattleData_134,                0x134 @ 0x4d*4
.equ BattleData_138,                0x138 @ 0x4e*4
.equ BattleData_14c,                0x14c
.equ BattleData_RoundNr,            0x150
.equ BattleData_170,                0x170
.equ BattleData_174,                0x174
.equ BattleData_178,                0x178
.equ BattleData_17c,                0x17c
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
.equ BattleData_WeatherCounter,     0x184 @ 0x61*4
.equ BattleData_1bc,                0x1bc
.equ BattleData_1d4,                0x1d4
.equ BattleData_1ec,                0x1ec @ 0x7b*4
.equ BattleData_204,                0x204 @ 0x81*4
.equ BattleData_208,                0x208 @ 0x82*4
.equ BattleData_210,                0x210 @ 0x21*16
.equ BattleData_2d4,                0x2d4 @ 0xb5*4
.equ BattleData_2d8,                0x2d8 @ 0xb6*4
.equ BattleData_2e8,                0x2e8 @ 0xba*4
.equ BattleData_2ec,                0x2ec @ 0xbb*4
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
.equ BattleData_360_1,                  0x1
.equ BattleData_360_80,                 0x80
.equ BattleData_364,                0x364 @ 0xd9*4
.equ BattleData_364_1,                  0x1
.equ BattleData_364_2,                  0x2
.equ BattleData_364_4,                  0x4
.equ BattleData_364_8,                  0x8
.equ BattleData_364_10,                 0x10
.equ BattleData_TrainerAIType,      0x365
.equ BattleData_36c,                0x36c
.equ BattleData_390,                0x390
.equ BattleData_3ac,                0x3ac
.equ BattleData_3cc,                0x3cc
.equ BattleData_3cd,                0x3cd
.equ BattleData_3ce,                0x3ce
.equ BattleData_3cf,                0x3cf @ PokemonNr 0-3
.equ BattleData_3d0,                0x3d0
.equ BattleData_3da,                0x3da
.equ BattleData_3de,                0x3de
.equ BattleData_3e0,                0x3e0
.equ BattleData_3e1,                0x3e1
.equ BattleData_3e2,                0x3e2
.equ BattleData_2120,               0x2120
.equ BattleData_AIScriptStartPtr,   0x2134
.equ BattleData_AIScriptRelativePtr, 0x2138
.equ BattleData_213c,               0x213c
.equ BattleData_213c_1,             1<<0
.equ BattleData_213c_100,           1<<8
.equ BattleData_213c_4000,          1<<14
.equ BattleData_2140,               0x2140
.equ BattleData_2140_4,             1<<2
.equ BattleData_Damage,             0x2144
.equ BattleData_2148,               0x2148
.equ BattleData_214c,               0x214c
.equ BattleData_DamageMultiplier,   0x2150
.equ BattleData_2154,               0x2154
.equ BattleData_2158,               0x2158
.equ BattleData_StatusEffectDamage, 0x215c @ StatusEffectDamage<<0, Multiplier<<8?
.equ BattleData_2160,               0x2160
.equ BattleData_2164,               0x2164
.equ BattleData_2168,               0x2168
.equ BattleData_216c,               0x216c
.equ BattleData_MoveEffect_SubSeq,  0x2170
.equ BattleData_2170_2_22,              2<<22
.equ BattleData_2170_1_28,              1<<28
.equ BattleData_2170_2_28,              2<<28
.equ BattleData_2170_1_30,              1<<30
.equ BattleData_2170_1_31,              1<<31
.equ BattleData_2174,               0x2174
.equ BattleData_2174_2_28,              2<<28
.equ BattleData_2178,               0x2178
.equ BattleData_2180,               0x2180 @ 0x86*64
.equ BattleData_219c,               0x219c @ 4 bytes
.equ BattleData_21a0,               0x21a0
.equ BattleData_21a4,               0x21a4
.equ BattleData_21a8,               0x21a8
.equ BattleData_21e8,               0x21e8
.equ BattleData_21ec,               0x21ec
.equ BattleData_2200,               0x2200 @ 0x22<<8

.equ BattleData_SeqFile,            0x2700 @ Place for the *_seq-file

/* PkmnBattleData
Size = 0xc0
*/
.equ PkmnBattleData_Size,           0xc0
.equ BattleData_BaseAdr,            0x2d40 @ 0x0 0xb5*64
.equ BattleData_Species,            0x2d40 @ 0x0
.equ BattleData_ATK,                0x2d42 @ 0x2
.equ BattleData_DEF,                0x2d44 @ 0x4
.equ BattleData_SPE,                0x2d46 @ 0x6
.equ BattleData_SPA,                0x2d48 @ 0x8
.equ BattleData_SPD,                0x2d4a @ 0xa
.equ BattleData_Move,               0x2d4c @ 0xc
.equ BattleData_Move1,              0x2d4c @ 0xc
.equ BattleData_Move2,              0x2d4e @ 0xe
.equ BattleData_Move3,              0x2d50 @ 0x10
.equ BattleData_Move4,              0x2d52 @ 0x12
.equ BattleData_2d54,               0x2d54 @ 0x14
.equ BattleData_StatLevel,          0x2d58 @ 0x18 8 bytes
.equ BattleData_2d59,               0x2d59 @ 0x19
.equ BattleData_2d5a,               0x2d5a @ 0x1a
.equ BattleData_2d5b,               0x2d5b @ 0x1b
.equ BattleData_2d5c,               0x2d5c @ 0x1c
.equ BattleData_2d5d,               0x2d5d @ 0x1d
.equ BattleData_2d60,               0x2d60 @ 0x20
.equ BattleData_Type1,              0x2d64 @ 0x24
.equ BattleData_Type2,              0x2d65 @ 0x25
.equ BattleData_2d66,               0x2d66 @ 0x26
.equ BattleData_Ability,            0x2d67 @ 0x27
.equ BattleData_2d68,               0x2d68 @ 0x28 todo
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
.equ BattleData_Nickname,           0x2d76 @ 0x36
.equ BattleData_CurHP,              0x2d8c @ 0x4c
.equ BattleData_MaxHP,              0x2d90 @ 0x50
.equ BattleData_2d94,               0x2d94 @ 0x54
.equ BattleData_ExpPts,             0x2da4 @ 0x64
.equ BattleData_PersonalityValue,   0x2da8 @ 0x68
.equ BattleData_StatusEffect,       0x2dac @ 0x6c
.equ BattleData_StatusEffect_Asleep, 0x7 @ 0-7 rounds
.equ BattleData_StatusEffect_Poisoned, 1<<3
.equ BattleData_StatusEffect_Burned, 1<<4
.equ BattleData_StatusEffect_Frozen, 1<<5
.equ BattleData_StatusEffect_Paralyzed, 1<<6
.equ BattleData_StatusEffect_Toxic, 1<<7
.equ BattleData_2db0,               0x2db0 @ 0x70
.equ BattleData_OTID,               0x2db4 @ 0x74
.equ BattleData_Item,               0x2db8 @ 0x78
.equ BattleData_2dbc,               0x2dbc @ 0x7c
.equ BattleData_2dbe,               0x2dbe @ 0x7e
.equ BattleData_Pokeball,           0x2dbf @ 0x7f
.equ BattleData_2dc0,               0x2dc0 @ 0x80
.equ BattleData_2dc4,               0x2dc4 @ 0x84
.equ BattleData_2dc8,               0x2dc8 @ 0x88
.equ BattleData_2dcc,               0x2dcc @ 0x8c
.equ BattleData_2ddc,               0x2ddc @ 0x9c
.equ BattleData_2de4,               0x2de4 @ 0xa4
.equ BattleData_2de8,               0x2de8 @ 0xa8
.equ BattleData_2dea,               0x2dea @ 0xaa
.equ BattleData_2dec,               0x2dec @ 0xac
.equ BattleData_2dee,               0x2dee @ 0xae
.equ BattleData_2df4,               0x2df4 @ 0xb4
.equ BattleData_2df8,               0x2df8 @ 0xb8
.equ BattleData_2dfa,               0x2dfa @ 0xba

.equ BattleData_BaseAdr2,           0x2e00 @ BattleData_BaseAdr + 1 * PkmnBattleData_Size
.equ BattleData_BaseAdr3,           0x2ec0 @ BattleData_BaseAdr + 2 * PkmnBattleData_Size
.equ BattleData_BaseAdr4,           0x2f80 @ BattleData_BaseAdr + 3 * PkmnBattleData_Size

.equ BattleData_3040,               0x3040
.equ BattleData_WazaSeqFileNr,      0x3044
.equ BattleData_3048,               0x3048
.equ BattleData_304c,               0x304c
.equ BattleData_305c,               0x305c
.equ BattleData_3064,               0x3064
.equ BattleData_306c,               0x306c
.equ BattleData_307c,               0x307c
.equ BattleData_3084,               0x3084
.equ BattleData_308c,               0x308c
.equ BattleData_30ac,               0x30ac
.equ BattleData_30bc,               0x30bc
.equ BattleData_30c4,               0x30c4
.equ BattleData_30cc,               0x30cc
.equ BattleData_30d4,               0x30d4
.equ BattleData_30e4,               0x30e4
.equ BattleData_30f4,               0x30f4
.equ BattleData_3104,               0x3104
.equ BattleData_3108,               0x3108
.equ BattleData_3109,               0x3109
.equ BattleData_310c,               0x310c
.equ BattleData_3114,               0x3114
.equ BattleData_3118,               0x3118
.equ BattleData_311c,               0x311c
.equ BattleData_311d,               0x311d
.equ BattleData_311e,               0x311e
.equ BattleData_311f,               0x311f
.equ BattleData_3120,               0x3120
.equ BattleData_3121,               0x3121
.equ BattleData_3122,               0x3122
.equ BattleData_3124,               0x3124
.equ BattleData_312c,               0x312c
.equ BattleData_3144,               0x3144
.equ BattleData_3148,               0x3148
.equ BattleData_314c,               0x314c
.equ BattleData_3150,               0x3150
.equ BattleData_EndOfScript,        0x3154 @ Flags
.equ BattleData_EndOfScript_1,          1<<0
.equ BattleData_Size,               0x3158 @ ?


.equ BattleMsg_0,                   0x0
.equ BattleMsg_1,                   0x1
.equ BattleMsg_2,                   0x2

.equ AttackMsg_0,                   0x0 @ MainBattleData
.equ AttackMsg_4,                   0x4
.equ AttackMsg_5,                   0x5
.equ AttackMsg_6,                   0x6
.equ AttackMsg_Size,                0x8


.equ BattleText_0,                  0x0 @ FunctionPtr
.equ BattleText_4,                  0x4 @ FunctionPtr
.equ BattleText_8,                  0x8 @ FunctionPtr
.equ BattleText_c,                  0xc @ FunctionPtr
.equ BattleText_10,                 0x10 @ FunctionPtr
.equ BattleText_14,                 0x14 @ FunctionPtr
.equ BattleText_94,                 0x94 @ TextFunctions-JumpTable-StateNr Jumptable_226f068
.equ BattleText_94_0,                   0x0
.equ BattleText_94_1,                   0x1
.equ BattleText_94_2,                   0x2
.equ BattleText_194,                0x194 @ 0x65*4
.equ BattleText_195,                0x195
.equ BattleText_196,                0x196
.equ BattleText_1a4,                0x1a4 @ 0x69*4 NARCFileHandler to PlPokeDataNARC
.equ BattleText_1a8,                0x1a8 @ 0x6a*4
.equ BattleText_Size,               0x1ac @ 0x6b*4


/* BattleSeqCmd: BattleSeqCmdStruct_2, VariableNr, VariableParameter
	Cmd_12 0xb5, 0x2, 0x1
    Cmd_12 0x2e, 0x6, 0xff
*/
.equ BattleSeqCmdStruct_0,          0x0
.equ BattleSeqCmdStruct_1,          0x1 @ VariableNr
.equ BattleSeqCmdStruct_2,          0x2
.equ BattleSeqCmdStruct_4,          0x4 @ VariableValue

.equ CatchStruct_MainBattleData,    0x0
.equ CatchStruct_BattleData,        0x4
.equ CatchStruct_8,                 0x8
.equ CatchStruct_24,                0x24
.equ CatchStruct_StateNr,           0x28 @ 0-0x20
.equ CatchStruct_State0,                0x0
.equ CatchStruct_State3,                0x3
.equ CatchStruct_State4,                0x4
.equ CatchStruct_State5,                0x5
.equ CatchStruct_2c,                0x2c
.equ CatchStruct_34,                0x34
.equ CatchStruct_38,                0x38
.equ CatchStruct_NrOfShakes,        0x3c
.equ CatchStruct_Size,              0x58

.equ CalculateCatchRate_Return0,    0x0 @ StartValue
.equ CalculateCatchRate_Return4,    0x4 @ Caught (not caught if value <4)


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
.equ ScriptHandler_74,              0x74 @ UnknownStruct01
.equ ScriptHandler_74_18,               0x18
.equ ScriptHandler_7c,              0x7c
.equ ScriptHandler_78,              0x78
.equ ScriptHandler_78_0,                0x0 @ 0 or 1
.equ ScriptHandler_78_2,                0x2
.equ ScriptHandler_78_6,                0x6
.equ ScriptHandler_78_8,                0x8 @ Ptr to Msg?
.equ ScriptHandler_OverWorldData,              0x80    @ Ptr to OverWorldData
.equ ScriptHandler_OverWorldData_0,            0x0


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
.equ Sprite_ScriptNr_8000,              8000
.equ Sprite_ScriptNr_8799,              8799
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
.equ TextInterpreter_ControlCommand,    0xfffe      @ 0xfffe = "\v" ControlCommand
.equ TextInterpreter_EndOfString,       0xffff
.equ TextInterpreter_4,             0x4 @ TextBox-Data
.equ TextInterpreter_9,             0x9
.equ TextInterpreter_StartPosX2,    0xa
.equ TextInterpreter_StartPosY2,    0xb
.equ TextInterpreter_dPosX,         0xc @ dPosX - starts at 0 and adds CharacterWidth
.equ TextInterpreter_dPosY,         0xe @ dPosY - 16 is normal LineWidth
.equ TextInterpreter_StartPosX,     0x10
.equ TextInterpreter_StartPosY,     0x12
.equ TextInterpreter_14,            0x14
.equ TextInterpreter_15,            0x15
.equ TextInterpreter_16,            0x16 @ ClearValue
.equ TextInterpreter_17,            0x17
.equ TextInterpreter_18,            0x18
.equ TextInterpreter_1a,            0x1a
.equ TextInterpreter_1b,            0x1b
.equ TextInterpreter_1c,            0x1c @ FunctionPtr
.equ TextInterpreter_20,            0x20
.equ TextInterpreter_20_0,          0x0 @ 0-3: nr, 4: ?,  5-7: ?
.equ TextInterpreter_20_0_f,            0xf
.equ TextInterpreter_20_0_10_activateFastText,           0x10
.equ TextInterpreter_20_1,          0x1 @ WaitCounter? - maybe arrow that goes up and down
.equ TextInterpreter_20_1_1f,           0x1f
.equ TextInterpreter_20_1_20,           0x20
.equ TextInterpreter_20_1_40,           0x40
.equ TextInterpreter_20_1_80,           0x80
.equ TextInterpreter_20_2,          0x2
.equ TextInterpreter_20_2_ff,           0xff
.equ TextInterpreter_27,            0x27
.equ TextInterpreter_27_0,          0x0
.equ TextInterpreter_28_StateNr,    0x28
.equ TextInterpreter_28_StateNr_0,      0x0
.equ TextInterpreter_28_StateNr_1,      0x1
.equ TextInterpreter_28_StateNr_EndOfParagraph,      0x2
.equ TextInterpreter_28_StateNr_NewLineScroll,      0x3
.equ TextInterpreter_28_StateNr_4,      0x4
.equ TextInterpreter_28_StateNr_6,      0x6
.equ TextInterpreter_29,            0x29
.equ TextInterpreter_29_7f,             0x7f @ lsl #25 saved in TextInterpreter_2a
.equ TextInterpreter_29_80,             0x80 @ lsl #24
.equ TextInterpreter_2a,            0x2a @ MsgFont-WaitCounter Countdown If =0 then draw new Character
.equ TextInterpreter_2b,            0x2b
.equ TextInterpreter_2b_0,          0x0
.equ TextInterpreter_2c,            0x2c
.equ TextInterpreter_2c_0,          0x0
.equ TextInterpreter_2d,            0x2d
.equ TextInterpreter_2d_0,          0x0
.equ TextInterpreter_2e,            0x2e
.equ TextInterpreter_Size,          0x34

.equ TextInterpreterReturn_NormalCharacter,       0x0
.equ TextInterpreterReturn_EndOfString,       0x1
.equ TextInterpreterReturn_2,       0x2
.equ TextInterpreterReturn_3,       0x3

.equ TextBox_0,                     0x0
.equ TextBox_4,                     0x4
.equ TextBox_7,                     0x7 @ Length
.equ TextBox_8,                     0x8 @ Length
.equ TextBox_c,                     0xc @ StartAdress of GraphicMemory?
@.equ TextBox_Size,                  0x4

.equ GraphicData_0,                 0x0
.equ GraphicData_4,                 0x4 @ TextBox
.equ GraphicData_8,                 0x8 @ TextInterpreter_9
.equ GraphicData_9,                 0x9
.equ GraphicData_a,                 0xa
.equ GraphicData_b,                 0xb
.equ GraphicData_c,                 0xc
.equ GraphicData_10,                0x10
.equ GraphicData_15,                0x15
.equ GraphicData_16,                0x16
.equ GraphicData_17,                0x17
.equ GraphicData_18,                0x18
.equ GraphicData_19,                0x19
.equ GraphicData_1a,                0x1a
.equ GraphicData_1c,                0x1c
.equ GraphicData_Size,              0x20

.equ UnknownGraphicData_0,          0x0 @ GraphicData_0
.equ UnknownGraphicData_4,          0x4 @ GraphicData_4 TextBox
.equ UnknownGraphicData_8,          0x8 @ GraphicData_8
.equ UnknownGraphicData_9,          0x9
.equ UnknownGraphicData_a,          0xa
.equ UnknownGraphicData_b,          0xb


.equ GraphicData2_0,                0x0
.equ GraphicData2_2,                0x2
.equ GraphicData2_4,                0x4
.equ GraphicData2_8,                0x8
.equ GraphicData2_c,                0xc
.equ GraphicData2_Size,             0x10 @ Size
.equ GraphicData2_Source,           0x14 @ Source

.equ GraphicData3_c,                0xc
.equ GraphicData3_10,               0x10
.equ GraphicData3_14,               0x14
.equ GraphicData3_18,               0x18
.equ GraphicData3_1c,               0x1c
.equ GraphicData3_20,               0x20


/*****************
MainGameData
*****************/
.equ MainGameData_size,             0x1c8
.equ MainGameData_0,                0x0
.equ MainGameData_PkmnParty,        0x4
.equ MainGameData_14,               0x14
.equ MainGameData_18,               0x18
.equ MainGameData_1c,               0x1c
.equ MainGameData_20,               0x20
.equ MainGameData_24,               0x24

@ NPC TrainerData
@ data copied from trdata.narc - LoadNPCTrainerData
@ 1st TrainerData
.equ MainGameData_NPCTrainer_Size,          0x34
.equ MainGameData_NPCTrainer_Start,         0x28
.equ MainGameData_NPCTrainer_Flag,          0x28 + TrData_Flag
.equ MainGameData_NPCTrainer_Class,         0x28 + TrData_Class
.equ MainGameData_NPCTrainer_BattleType,    0x28 + TrData_BattleType
.equ MainGameData_NPCTrainer_NrPkmn,        0x28 + TrData_NrOfPkmn
.equ MainGameData_NPCTrainer_Item1,         0x28 + TrData_Item1
.equ MainGameData_NPCTrainer_Item2,         0x28 + TrData_Item2
.equ MainGameData_NPCTrainer_Item3,         0x28 + TrData_Item3
.equ MainGameData_NPCTrainer_Item4,         0x28 + TrData_Item4
.equ MainGameData_NPCTrainer_AI,            0x28 + TrData_AI
.equ MainGameData_NPCTrainer_BattleType2,   0x28 + TrData_BattleType2
.equ MainGameData_39,                       0x39 @ Unknown1
.equ MainGameData_3a,                       0x3a @ Unknown2
.equ MainGameData_3b,                       0x3b @ Unknown3
.equ MainGameData_3c,                       0x3c

.equ MainGameData_5c,                       0x5c @ 2nd TrainerData
.equ MainGameData_NPCTrainer2_Class,        0x5d
.equ MainGameData_90,                       0x90 @ 3rd TrainerData
.equ MainGameData_c4,                       0xc4 @ 4th TrainerData
.equ MainGameData_TrainerData,      0xf8
.equ MainGameData_ItemList,         0x108
.equ MainGameData_10c,              0x10c
.equ MainGameData_PokedexMemory,              0x110
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
.equ TrainerData_Size,              0x20


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
SpriteList
*****************/
.equ SpriteList_Size,           0x12c
.equ SpriteList_0,              0x0
.equ SpriteList_NrOfSprites,    0x4 @ =SpriteList_MaxNrOfSprites
.equ SpriteList_MaxNrOfSprites,     0x40
.equ SpriteList_8,              0x8
.equ SpriteList_c,              0xc
.equ SpriteList_MModelNARCFileHandler,         0x14
.equ SpriteList_18,             0x18
.equ SpriteList_18_e0,              0xe0 @ =0xf8
.equ SpriteList_18_f0,              0xf0 @ =0x108
.equ SpriteList_18_100,             0x100 @ =0x118
.equ SpriteList_18_104,             0x104 @ =0x11c Ptr to SpriteList
.equ SpriteList_124,            0x124
.equ SpriteList_FirstSprite,    0x128

/* r0: SpriteList_18 TODO
Function_21d1878

Function_21ecc20
Function_21ece40
Function_21ed4e4
Function_21ed3b8
Function_21ed390 
Function_21ed334 2x
Function_21edf3c
Call_LoadFileFromMModel
*/

/*****************
OverworldData
*****************/
.equ OverworldData_SpriteList,      0x1c @ Ptr to OverworldPlayerData?
.equ OverworldData_70,              0x70

/*****************
OverWorldData
*****************/
.equ OverWorldData_size,                    0xcc
.equ OverWorldData_0,                       0x0
.equ OverWorldData_4,                       0x4
.equ OverWorldData_4_Size,                      0x28
.equ OverWorldData_4_TaskList,                  0x4
.equ OverWorldData_4_8,                         0x8
.equ OverWorldData_4_c,                         0xc
.equ OverWorldData_4_10,                        0x10
.equ OverWorldData_4_18,                        0x18
.equ OverWorldData_4_1c,                        0x1c
.equ OverWorldData_4_20,                        0x20
.equ OverWorldData_4_24,                        0x24
.equ OverWorldData_OverlayData,             0x8
.equ OverWorldData_VariableAreaAdress,      0xc
.equ OverWorldData_UnknownStruct01,         0x10
.equ OverWorldData_Overworlds,              0x14
.equ OverWorldData_Overworlds_size,                 0xac8
.equ OverWorldData_Overworlds_NrOfFurnitures,       0x0
.equ OverWorldData_Overworlds_NrOfOverworlds,       0x4
.equ OverWorldData_Overworlds_NrOfWarps,            0x8
.equ OverWorldData_Overworlds_NrOfTriggers,         0xc
.equ OverWorldData_Overworlds_PtrToFurnitures,      0x10
.equ OverWorldData_Overworlds_PtrToOverworlds,      0x14
.equ OverWorldData_Overworlds_PtrToWarps,           0x18
.equ OverWorldData_Overworlds_PtrToTriggers,        0x1c
.equ OverWorldData_Overworlds_PtrToZoneEventData,   0x20 @ pointer to the 'zone_event' of the map
.equ OverWorldData_Overworlds_820,                  0x820 @ level scripts of the map from scr_seq.narc
.equ OverWorldData_Overworlds_PtrToEncounterData,   0x920
.equ OverWorldData_18,                      0x18
.equ OverWorldData_MapData,                 0x1c @ Pointer to MapData
.equ OverWorldData_20,                      0x20
.equ OverWorldData_28,                      0x28
.equ OverWorldData_2c,                      0x2c
.equ OverWorldData_30,                      0x30
.equ OverWorldData_30_4,                        0x4
.equ OverWorldData_30_c04,                      0xc04 @ MapTexSet_Narc
.equ OverWorldData_30_c08,                      0xc08 @ AreabmTexset_Narc
.equ OverWorldData_30_c0c,                      0xc0c @ MapTexSet_Narc TexOffsets
.equ OverWorldData_30_c10,                      0xc10
.equ OverWorldData_30_c14,                      0xc14
.equ OverWorldData_30_c18,                      0xc18
.equ OverWorldData_30_c1a,                      0xc1a
.equ OverWorldData_30_c20,                      0xc20
.equ OverWorldData_30_c20_0,                        0x0
.equ OverWorldData_30_c20_4,                        0x4
.equ OverWorldData_30_c20_c,                        0xc
.equ OverWorldData_30_c20_Size,                     0x10
.equ OverWorldData_30_c24,                      0xc24
.equ OverWorldData_30_Size,                     0xc28
.equ OverWorldData_34,                      0x34
.equ OverWorldData_SpriteList,              0x38
.equ OverWorldData_SpriteStruct,            0x3c
.equ OverWorldData_40,                      0x40
.equ OverWorldData_44,                      0x44
.equ OverWorldData_48,                      0x48
.equ OverWorldData_4c,                      0x4c
.equ OverWorldData_50,                      0x50
.equ OverWorldData_54,                      0x54
.equ OverWorldData_64,                      0x64
.equ OverWorldData_68,                      0x68
.equ OverWorldData_70,                      0x70
.equ OverWorldData_74,                      0x74
.equ OverWorldData_EncounterCounter,        0x78
.equ OverWorldData_7a,                      0x7a
.equ OverWorldData_7c,                      0x7c
.equ OverWorldData_90,                      0x90
.equ OverWorldData_94,                      0x94
.equ OverWorldData_98,                      0x98
.equ OverWorldData_9c,                      0x9c
.equ OverWorldData_a4,                      0xa4
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

.equ VarArea6_Size,                         0xa0
.equ VarArea6_MapData0,                     0x0 @ = OverWorldData_MapData
.equ VarArea6_MapData1,                     0x14
.equ VarArea6_MapData2,                     0x28 @ = OverWorldData_MapData
.equ VarArea6_MapData3,                     0x3c
.equ VarArea6_MapData4,                     0x50
.equ VarArea6_64,                           0x64
.equ VarArea6_66,                           0x66
.equ VarArea6_68,                           0x68
.equ VarArea6_6a,                           0x6a
.equ VarArea6_6c,                           0x6c
.equ VarArea6_8c,                           0x8c
.equ VarArea6_8c_2,                             0x2
.equ VarArea6_94,                           0x94
.equ VarArea6_96,                           0x96
.equ VarArea6_98,                           0x98

.equ MapData_MapNr,                         0x0
.equ MapData_WarpNr,                        0x4
.equ MapData_StartWarpX,                    0x8
.equ MapData_StartWarpY,                    0xc
.equ MapData_FaceDirection,                 0x10


.equ MapNr_0,                               0x0
.equ MapNr_D02,                              0xc8
.equ MapNr_D03R0101,                         0xcb
.equ MapNr_TrophyGarden,                     0x11f @ D23R0101
.equ MapNr_R201,                             0x156
.equ MapNr_R202,                             0x157
.equ MapNr_R203,                             0x158
.equ MapNr_R206,                             0x15e
.equ MapNr_R207,                             0x161
.equ MapNr_R208,                             0x162
.equ MapNr_R209,                             0x164
.equ MapNr_R214,                             0x17c
.equ MapNr_R215,                             0x17e
.equ MapNr_R217,                             0x181
.equ MapNr_R218,                             0x184
.equ MapNr_R221,                             0x188
.equ MapNr_R222,                             0x18b
.equ MapNr_R224,                             0x18f
.equ MapNr_R225,                             0x190
.equ MapNr_R227,                             0x193
.equ MapNr_R228,                             0x196
.equ MapNr_R229,                             0x197
.equ MapNr_W226,                             0x1d5
.equ MapNr_W230,                             0x1d7
.equ MapNr_GreatMarsh,                       0x1f8

.equ VarArea11_Size,                        0x108 @ 6*0x2c
.equ VarArea11_0,                           0x0
.equ VarArea11_10,                          0x10
.equ VarArea11_20,                          0x20
.equ VarArea11_21,                          0x21
.equ VarArea11_24,                          0x24
.equ VarArea11_28,                          0x28
.equ VarArea11_StructSize,                  0x2c
.equ VarArea11_Field0,                      0x0
.equ VarArea11_Field1,                      0x1
.equ VarArea11_Field2,                      0x2
.equ VarArea11_Field3,                      0x3
.equ VarArea11_Field4,                      0x4
.equ VarArea11_Field5,                      0x5

.equ VarArea19_Size,                        0x154
.equ VarArea19_0,                           0x0 @ SwarmNr GreatMarsh
.equ VarArea19_4,                           0x4 @ SwarmNr
.equ VarArea19_8,                           0x8
.equ VarArea19_c,                           0xc
.equ VarArea19_e,                           0xe
.equ VarArea19_10,                          0x10
.equ VarArea19_52,                          0x52
.equ VarArea19_bc,                          0xbc
.equ VarArea19_c8,                          0xc8
.equ VarArea19_cc,                          0xcc
.equ VarArea19_d0,                          0xd0 @ +0x14 (UnkSwarmStruct_Size) * (0..5)
.equ VarArea19_e2,                          0xe2 @ +0x14 * (0..5)
.equ VarArea19_14e,                         0x14e
.equ VarArea19_14f,                         0x14f
.equ VarArea19_150,                         0x150
.equ VarArea19_151,                         0x151


/*****************
UnkSwarmStruct
*****************/
.equ UnkSwarmStruct_Size,           0x14
.equ UnkSwarmStruct_0,              0
.equ UnkSwarmStruct_1,              1
.equ UnkSwarmStruct_2,              2
.equ UnkSwarmStruct_3,              3
.equ UnkSwarmStruct_4,              4
.equ UnkSwarmStruct_5,              5
.equ UnkSwarmStruct_6,              6
.equ UnkSwarmStruct_7,              7
.equ UnkSwarmStruct_8,              8


/*****************
Pokedex - VariableAreaAdress_7
*****************/
.equ Pokedex_beefcafe,                      0xbeefcafe
.equ Pokedex_Size,                          0x324
.equ Pokedex_0,                             0x0 @ =0xbeefcafe
.equ Pokedex_10c,                           0x10c
.equ Pokedex_319,                           0x319
.equ Pokedex_Active,                        0x31a
.equ Pokedex_31b,                           0x31b
.equ Pokedex_31c,                           0x31c


/*****************
UnknownStruct01
*****************/
.equ UnknownStruct01_size,                  0x20
.equ UnknownStruct01_0,                     0x0
.equ UnknownStruct01_FunctionPtr,           0x4
.equ UnknownStruct01_8,                     0x8
.equ UnknownStruct01_c,                     0xc @ NPC/OverworldObject? Struct
.equ UnknownStruct01_c_0,                       0x0
.equ UnknownStruct01_c_0_3643f,                     0x3643f
.equ UnknownStruct01_c_4,                       0x4
.equ UnknownStruct01_c_5,                       0x5
.equ UnknownStruct01_c_6,                       0x6
.equ UnknownStruct01_c_7,                       0x7
.equ UnknownStruct01_c_8,                       0x8
.equ UnknownStruct01_c_9,                       0x9
.equ UnknownStruct01_c_SpriteScript,            0xa
.equ UnknownStruct01_c_c,                       0xc
.equ UnknownStruct01_c_10,                      0x10
.equ UnknownStruct01_c_14,                      0x14
.equ UnknownStruct01_c_24,                      0x24
.equ UnknownStruct01_c_PlayerFaceDirection,     0x28
.equ UnknownStruct01_c_PtrToSprite,             0x2c
.equ UnknownStruct01_c_30,                      0x30
.equ UnknownStruct01_c_34,                      0x34
.equ UnknownStruct01_c_ScriptHandler,           0x38
.equ UnknownStruct01_c_3c,                      0x3c @ 2nd ScriptHandler?
.equ UnknownStruct01_c_40,                      0x40
.equ UnknownStruct01_c_44,                      0x44 @ Msg
.equ UnknownStruct01_c_48,                      0x48 @ Msg
.equ UnknownStruct01_c_4c,                      0x4c
.equ UnknownStruct01_c_50,                      0x50
.equ UnknownStruct01_c_54,                      0x54
.equ UnknownStruct01_c_58,                      0x58
.equ UnknownStruct01_c_5c,                      0x5c
.equ UnknownStruct01_c_60,                      0x60
.equ UnknownStruct01_c_64,                      0x64
.equ UnknownStruct01_c_68,                      0x68
.equ UnknownStruct01_c_6c,                      0x6c
.equ UnknownStruct01_c_70,                      0x70
.equ UnknownStruct01_c_74,                      0x74
.equ UnknownStruct01_c_78,                      0x78
.equ UnknownStruct01_c_7c,                      0x7c
.equ UnknownStruct01_c_80,                      0x80
.equ UnknownStruct01_c_84,                      0x84
.equ UnknownStruct01_c_88,                      0x88
.equ UnknownStruct01_c_a4,                      0xa4 @ FunctionPtr
.equ UnknownStruct01_c_a8,                      0xa8
.equ UnknownStruct01_c_ac,                      0xac
.equ UnknownStruct01_c_b0,                      0xb0
.equ UnknownStruct01_c_b4,                      0xb4
.equ UnknownStruct01_c_b8,                      0xb8
.equ UnknownStruct01_c_c8,                      0xc8
.equ UnknownStruct01_c_d8,                      0xd8
.equ UnknownStruct01_c_Size,                    0xdc
.equ UnknownStruct01_10,                    0x10
.equ UnknownStruct01_14,                    0x14
.equ UnknownStruct01_OverWorldData,         0x18
.equ UnknownStruct01_UnknownStruct01Sub,    0x1c

/*****************
UnknownStruct01Sub
*****************/
.equ UnknownStruct01Sub_size,               0x20
@.equ UnknownStruct01Sub_0,                  0x0


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



/*****************
MSGFileHandler used by LoadFromNARC_9
*****************/
.equ MSGFileHandler_Size,               0xc
.equ MSGFileHandler_0,                  0x0
.equ MSGFileHandler_2,                  0x2
.equ MSGFileHandler_4,                  0x4
.equ MSGFileHandler_6,                  0x6
.equ MSGFileHandler_8,                  0x8


/*****************
NARCFileHandler
Returnvalue of LoadFromNARC_8
*****************/
.equ NARCFileHandler_Size,              0x54
.equ NARCFileHandler_0,                 0x0
.equ NARCFileHandler_4,                 0x4
.equ NARCFileHandler_8,                 0x8
.equ NARCFileHandler_c,                 0xc
.equ NARCFileHandler_10,                0x10
.equ NARCFileHandler_18,                0x18
.equ NARCFileHandler_1c,                0x1c
.equ NARCFileHandler_24,                0x24
.equ NARCFileHandler_28,                0x28
.equ NARCFileHandler_2c,                0x2c
.equ NARCFileHandler_30,                0x30
.equ NARCFileHandler_34,                0x34
.equ NARCFileHandler_38,                0x38
.equ NARCFileHandler_StartOfBTAF,       0x48
.equ NARCFileHandler_IMGStart,          0x4c
.equ NARCFileHandler_50,                0x50
@ FS_SeekFile - r2 mode
.equ SeekFile_AbsPos, 0 
.equ SeekFile_RelPos, 1
.equ SeekFile_EndPos, 2


/*****************
NARC
*****************/
.equ NARC_ChunkSize,                0xc
.equ NARC_ChunkSize_Size,           0x2
.equ NARC_BTAFChunkSize_Size,       0x4


/*****************
Generic FileHeader
*****************/
.equ BMD0_MagicConstant,            0x30444d42
.equ BTP0_MagicConstant,            0x30505442
.equ BTX0_MagicConstant,            0x30585442
.equ BVA0_MagicConstant,            0x30415642
.equ BMA0_MagicConstant,            0x30414d42 @ BVA0_MagicConstant-0x900
.equ BEA0_MagicConstant,            0x30414542 @ BVA0_MagicConstant-0x1300
.equ BTA0_MagicConstant,            0x30415442 @ BVA0_MagicConstant-0x200
.equ CHAR_MagicConstant,            0x43484152
.equ SCRN_MagicConstant,            0x5343524e
.equ FileHeader_Magic,              0x0
.equ FileHeader_HeaderSize,         0xc
.equ FileHeader_NumBlocks,          0xe


/*****************
BTX0
*****************/
.equ BTX0_TexOffsets,               0x0
.equ BTX0_TexInfo,                  0x8
.equ BTX0_TexInfo_DataOfs,          0xc


.equ MDL_HeaderSize,                0x8

@.equ Model_mat_offset,              0x8

/*****************
G3DResDict (PPRE/ntr/g3d/resdict.py)
*****************/
.equ G3DResDict_Version,            0x0
.equ G3DResDict_Num,                0x1
.equ G3DResDict_RefOffsets,         0x6 @ refofs



/*****************
MainMenu
*****************/
.equ MainMenu_Size,                 0x174 @ /4=0x5d
.equ MainMenu_0,                    0x0
.equ MainMenu_VariableAreaAdress,   0x4
.equ MainMenu_PokedexDataAdress,    0x8
.equ MainMenu_TrainerData,          0xc
.equ MainMenu_10,                   0x10
.equ MainMenu_14,                   0x14
.equ MainMenu_18,                   0x18
.equ MainMenu_24,                   0x24
.equ MainMenu_2c,                   0x2c
.equ MainMenu_30,                   0x30
.equ MainMenu_34,                   0x34
.equ MainMenu_38,                   0x38
.equ MainMenu_40,                   0x40
.equ MainMenu_44,                   0x44
.equ MainMenu_48,                   0x48
.equ MainMenu_PokedexActive,        0x4c
.equ MainMenu_NrOfBadges,           0x50
.equ MainMenu_54,                   0x54
.equ MainMenu_OptionNr,             0x58
.equ MainMenu_dc,                   0xdc
.equ MainMenu_11c,                  0x11c
.equ MainMenu_120,                  0x120
.equ MainMenu_124,                  0x124 @ 0x49*4
.equ MainMenu_128,                  0x128 @ 0x4a*4
.equ MainMenu_12c,                  0x12c @ 0x4b*4
.equ MainMenu_130,                  0x130
.equ MainMenu_134,                  0x134 @ 0x4d*4
.equ MainMenu_138,                  0x138
.equ MainMenu_14c,                  0x14c
.equ MainMenu_150,                  0x150
.equ MainMenu_154,                  0x154 @ 0x55*4
.equ MainMenu_158,                  0x158 @ 0x56*4
.equ MainMenu_170,                  0x170


/*****************
FlagMem
*****************/
.equ FlagMem_Size,                  0x3ac @ =0xeb*4
.equ FlagMem_0,                     0x0
.equ FlagMem_240,                   0x240
.equ FlagMem_16c,                   0x16c @ Memory for Flags<0x4000
.equ Flag_960,                      0x960


