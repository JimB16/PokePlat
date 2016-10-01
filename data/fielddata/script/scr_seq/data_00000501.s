.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	ActDcareFunction
	StorePDCareNum 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_4a
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_be
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_cb
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4a

Script_branch_4a: @ 4a
	Message 0x1
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_83
	Message 0xa
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_83
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ClearFlag 0x73
	ActEggDayCMan
	ReleaseAll
	End
@ 83

Script_branch_83: @ 83
	CheckPartyNumber 0x800c
	If 0x800c, 0x6
	CompareLastResultJump 0x5, Script_branch_9f
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9f

Script_branch_9f: @ 9f
	SetVarHero 0x0
	Message 0x5
	Soundfr 0x486
	Cmd_4f
	Cmd_30
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	DeactEggDayCMan
	ClearFlag 0x73
	ReleaseAll
	End
@ be

Script_branch_be: @ be
	ActDcareFunction
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ cb

Script_branch_cb: @ cb
	ActDcareFunction
	Message 0x9
	StorePokeDCareLove 0x800c
	If 0x800c, 0x0
	CompareLastResultCall EQUAL, Script_branch_110
	If 0x800c, 0x1
	CompareLastResultCall EQUAL, Script_branch_115
	If 0x800c, 0x2
	CompareLastResultCall EQUAL, Script_branch_11a
	If 0x800c, 0x3
	CompareLastResultCall EQUAL, Script_branch_11f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 110

Script_branch_110: @ 110
	Message 0xb
	Return
@ 115

Script_branch_115: @ 115
	Message 0xc
	Return
@ 11a

Script_branch_11a: @ 11a
	Message 0xd
	Return
@ 11f

Script_branch_11f: @ 11f
	Message 0xe
	Return
@ 124

Script_2: @ 124
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	ShowMoney 0x14, 0x2
	StorePDCareNum 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_2e2
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_309
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_4a0
	Message 0xf
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_17e
	Message 0x14
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 17e

Script_branch_17e: @ 17e
	CheckPartyNumberUnion 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_2bb
	CheckPokePartyNumDCare 0x800c
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_2d5
	Message 0x10
	CloseMsgOnKeyPress
	HideMoney
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	SetVar 0x800c, 0x0
Script_branch_1b9: @ 1b9
	ChoosePokeDCare 0x800c
	StorePokeDCare 0x8000, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1de
	ShowPokeInfo 0x8000
	StorePokeMove 0x800c
	Jump Script_branch_1b9
Script_branch_1de: @ 1de
	CallEnd
	ShowMoney 0x14, 0x2
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x8000, 0xff
	CompareLastResultJump EQUAL, Script_branch_292
	Cmd_31e 0x8000, 0x800c
	If 0x800c, 0xff
	CompareLastResultJump EQUAL, Script_branch_4ef
	CheckPokeEgg 0x8000, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_285
	CheckPokePartyHealth 0x800c, 0x8000
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2c8
	SetVarPokeChosenDCare 0x0, 0x8000, 0x8001
	GivePokeDCare 0x8000
	SetFlag 0xfe
	StorePDCareNum 0x800c
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_25f
	Jump Script_branch_270
Script_branch_25f: @ 25f
	PlayCry 0x8001, 0x0
	Message 0x11
	WaitCry
	Jump Script_branch_29f
Script_branch_270: @ 270
	PlayCry 0x8001, 0x0
	Message 0x24
	WaitButton
	CloseMsgOnKeyPress
	WaitCry
	HideMoney
	ReleaseAll
	End
@ 285

Script_branch_285: @ 285
	Message 0x23
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 292

Script_branch_292: @ 292
	Message 0x17
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 29f

Script_branch_29f: @ 29f
	Message 0x12
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_17e
	Jump Script_branch_292
	End
@ 2bb

Script_branch_2bb: @ 2bb
	Message 0x1f
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 2c8

Script_branch_2c8: @ 2c8
	Message 0x21
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 2d5

Script_branch_2d5: @ 2d5
	Message 0x22
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 2e2

Script_branch_2e2: @ 2e2
	Message 0x13
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 2ef

Script_branch_2ef: @ 2ef
	Message 0x19
	Return
@ 2f4

Function_2f4: @ 2f4
	SetVarPokeAndLevelDCare 0x800c, 0x8000
	If 0x800c, 0x0
	CompareLastResultCall 0x5, Script_branch_2ef
	Return
@ 309

Script_branch_309: @ 309
	Message 0x18
	SetVar 0x8000, 0x0
	Call Function_2f4
	Message 0x12
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_17e
	Message 0x20
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_346
	Jump Script_branch_292
Script_branch_346: @ 346
	CheckPartyNumber 0x800c
	If 0x800c, 0x6
	CompareLastResultJump EQUAL, Script_branch_45e
	StorePDCareNum 0x800c
	SetVar 0x8001, 0x0
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_3be
	Multi 0x1, 0x1, 0x0, 0x1, 0x8001
	SetVarDataDayCare 0x0, 0x1, 0x2, 0x0
	Cmd_42 0x86, 0x0
	SetVarDataDayCare 0x0, 0x1, 0x2, 0x1
	Cmd_42 0x87, 0x1
	Cmd_42 0x88, 0x2
	CloseMulti
	CopyVar 0x8008, 0x8001
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_3be
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_3be
	Jump Script_branch_292
Script_branch_3be: @ 3be
	SetVarPokeAndMoneyDCare 0x8004, 0x8001
	Message 0x1c
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3de
	Jump Script_branch_292
Script_branch_3de: @ 3de
	CheckMoneyDCare 0x800c, 0x8004
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_3fe
	Message 0x15
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 3fe

Script_branch_3fe: @ 3fe
	ApplyMovement 0x0, Movement_46c
	WaitMovement
	TakePokemonDCare 0x8002, 0x8001
	TakeMoneyDCare 0x8004
	UpdateMoney
	PlayFanfare 0x644
	WaitFanfare 0x644
	Message 0x1d
	PlayCry 0x8002, 0x0
	SetVarHero 0x1
	Message 0x1e
	WaitCry
	StorePDCareNum 0x800c
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_444
	Jump Script_branch_292
Script_branch_444: @ 444
	Message 0x16
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_346
	Jump Script_branch_292
Script_branch_45e: @ 45e
	Message 0x1a
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 46b

.byte 0x0 @ 0x46b

Movement_46c: @ 46c
	Move_3e 0x3
	SeeLeft 0x1
	Move_3e 0x3
	SeeRight 0x1
	Move_3e 0x3
	SeeUp 0x1
	WalkUpFast 0x2
	WaitDisappear 0x1
	Move_3f 0x3
	SeeDown 0x1
	Move_46 0x1
	WalkDownFast 0x2
	EndMovement 0x0
@ 4a0

Script_branch_4a0: @ 4a0
	Message 0x18
	SetVar 0x8000, 0x0
	Call Function_2f4
	SetVar 0x8000, 0x1
	Call Function_2f4
	Message 0x20
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_346
	Message 0x17
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 4dc

.byte 0x49 @ 0x4dc
.byte 0x0 @ 0x4dd
.byte 0xdc @ 0x4de
.byte 0x5 @ 0x4df
.byte 0x60 @ 0x4e0
.byte 0x0 @ 0x4e1
.byte 0x2c @ 0x4e2
.byte 0x0 @ 0x4e3
.byte 0x25 @ 0x4e4
.byte 0xac @ 0x4e5
.byte 0x1 @ 0x4e6
.byte 0x34 @ 0x4e7
.byte 0x0 @ 0x4e8
.byte 0x73 @ 0x4e9
.byte 0x0 @ 0x4ea
.byte 0x61 @ 0x4eb
.byte 0x0 @ 0x4ec
.byte 0x2 @ 0x4ed
.byte 0x0 @ 0x4ee

Script_branch_4ef: @ 4ef
	HideMoney
	CallStandard 0x809
	End
@ 4f7

.byte 0x0 @ 0x4f7

@ end_0x4f8
