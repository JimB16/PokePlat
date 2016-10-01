.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	script Script_8
	script Script_9
	script Script_10
	script Script_11
	script Script_12
	script Script_13
	script Script_14
	script Script_15
	script Script_16
	script Script_17
	script Script_18
	script Script_19
	script Script_20
	script Script_21
	.hword 0xfd13
@ 56

Script_13: @ 56
	If 0x40d5, 0x6
	CompareLastResultCall EQUAL, Script_branch_65
	End
@ 65

Script_branch_65: @ 65
	RemovePeople2 0xff
	Return
@ 6b

Script_12: @ 6b
	LockAll
	Call Function_77
	ReleaseAll
	End
@ 77

Function_77: @ 77
	PrepareDoorAnimation 0x0, 0x0, 0x8, 0x2, 0x4d
	Call Function_c5
	AddPeople2 0xff
	ApplyMovement 0xff, Movement_d8
	WaitMovement
	Call Function_cd
	PrepareDoorAnimation 0x0, 0x0, 0x8, 0x4, 0x4d
	Call Function_c5
	ApplyMovement 0xff, Movement_e8
	WaitMovement
	Call Function_cd
	SetVar 0x40d5, 0x0
	Return
@ c5

Function_c5: @ c5
	OpenDoor 0x4d
	WaitAction 0x4d
	Return
@ cd

Function_cd: @ cd
	CloseDoor 0x4d
	WaitAction 0x4d
	WaitClose 0x4d
	Return
@ d8

Movement_d8: @ d8
	WalkDownFast 0x1
	EndMovement 0x0
@ e0

.byte 0xd @ 0xe0
.byte 0x0 @ 0xe1
.byte 0x1 @ 0xe2
.byte 0x0 @ 0xe3
.byte 0xfe @ 0xe4
.byte 0x0 @ 0xe5
.byte 0x0 @ 0xe6
.byte 0x0 @ 0xe7

Movement_e8: @ e8
	WalkDownFast 0x2
	EndMovement 0x0
@ f0

Script_1: @ f0
	End
@ f2

Script_2: @ f2
	End
@ f4

Script_3: @ f4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	StorePokeNumParty 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_368
	CheckFlag 0xc3
	CompareLastResultJump EQUAL, Script_branch_2fb
	SetFlag 0xc3
	Message 0x0
	Jump Script_branch_127
	End
@ 127

Script_branch_127: @ 127
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x81, 0x0
	Cmd_42 0x80, 0x1
	Cmd_42 0x82, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1e9
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_172
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_2ea
	Jump Script_branch_2ea
	End
@ 172

Script_branch_172: @ 172
	Message 0x2
	Jump Script_branch_17d
	End
@ 17d

Script_branch_17d: @ 17d
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x83, 0x0
	Cmd_42 0x84, 0x1
	Cmd_42 0x85, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1c8
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_1d3
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_1de
	Jump Script_branch_1de
	End
@ 1c8

Script_branch_1c8: @ 1c8
	Message 0x3
	Jump Script_branch_17d
	End
@ 1d3

Script_branch_1d3: @ 1d3
	Message 0x4
	Jump Script_branch_17d
	End
@ 1de

Script_branch_1de: @ 1de
	Message 0x5
	Jump Script_branch_127
	End
@ 1e9

Script_branch_1e9: @ 1e9
	CheckPartyNumberUnion 0x800c
	If 0x800c, 0x2
	CompareLastResultJump LESSER, Script_branch_202
	Jump Script_branch_306
	End
@ 202

Script_branch_202: @ 202
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 20d

Script_branch_20d: @ 20d
	CallStandard 0x7d6
	CopyVar 0x800c, 0x4000
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2ea
	HealPokemon
	SetVar 0x40d5, 0x6
	Message 0x7
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_344
	WaitMovement
	PrepareDoorAnimation 0x0, 0x0, 0x8, 0x4, 0x4d
	Call Function_c5
	ApplyMovement 0xff, Movement_358
	WaitMovement
	Call Function_cd
	PrepareDoorAnimation 0x0, 0x0, 0x8, 0x2, 0x4d
	Call Function_c5
	ApplyMovement 0xff, Movement_350
	WaitMovement
	RemovePeople2 0xff
	ApplyMovement 0xff, Movement_360
	WaitMovement
	Call Function_cd
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Cmd_2b2
	StartWfc 0x800c
	CopyVar 0x8004, 0x800c
	StoreWfcStatus 0x8004, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2ce
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Call Function_77
	ReleaseAll
	End
@ 2ce

Script_branch_2ce: @ 2ce
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Call Function_77
	Jump Script_branch_2ea
	End
@ 2ea

Script_branch_2ea: @ 2ea
	SetVar 0x40d5, 0x0
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2fb

Script_branch_2fb: @ 2fb
	Message 0x1
	Jump Script_branch_127
	End
@ 306

Script_branch_306: @ 306
	CheckPartyNumber 0x800c
	If 0x800c, 0x6
	CompareLastResultJump EQUAL, Script_branch_31f
	Jump Script_branch_20d
	End
@ 31f

Script_branch_31f: @ 31f
	CheckBoxesNumber 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_338
	Jump Script_branch_20d
	End
@ 338

Script_branch_338: @ 338
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 343

.byte 0x0 @ 0x343

Movement_344: @ 344
	WalkRightFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 350

Movement_350: @ 350
	WalkUpFast 0x1
	EndMovement 0x0
@ 358

Movement_358: @ 358
	WalkUpFast 0x2
	EndMovement 0x0
@ 360

Movement_360: @ 360
	SeeDown 0x1
	EndMovement 0x0
@ 368

Script_branch_368: @ 368
	CallStandard 0x2338
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 374

Script_4: @ 374
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 387

Script_5: @ 387
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 39a

Script_6: @ 39a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3ad

Script_7: @ 3ad
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3c0

Script_8: @ 3c0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3d3

Script_9: @ 3d3
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3e6

Script_10: @ 3e6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3f9

Script_11: @ 3f9
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x11
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 40c

Script_14: @ 40c
	PlayFanfare 0x5dc
	LockAll
	SetVar 0x8005, 0x3
	Jump Script_branch_420
	End
@ 420

Script_branch_420: @ 420
	Message 0x24
	Multi2 0x1f, 0xb, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0x26, 0x0
	Cmd_42 0x27, 0x1
	Cmd_42 0x28, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_46a
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_48b
	Jump Script_branch_464
	End
@ 464

Script_branch_464: @ 464
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 46a

Script_branch_46a: @ 46a
	CallStandard 0x7d6
	CopyVar 0x800c, 0x4000
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_464
	CloseMsgOnKeyPress
	CallStandard 0x802
	ReleaseAll
	End
@ 48b

Script_branch_48b: @ 48b
	Message 0x25
	Jump Script_branch_420
	End
@ 496

Script_15: @ 496
	PlayFanfare 0x5dc
	LockAll
	SetVar 0x8005, 0x4
	Jump Script_branch_4aa
	End
@ 4aa

Script_branch_4aa: @ 4aa
	Message 0x22
	Multi2 0x1f, 0xb, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0x26, 0x0
	Cmd_42 0x27, 0x1
	Cmd_42 0x28, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_4f4
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_515
	Jump Script_branch_4ee
	End
@ 4ee

Script_branch_4ee: @ 4ee
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4f4

Script_branch_4f4: @ 4f4
	CallStandard 0x7d6
	CopyVar 0x800c, 0x4000
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_4ee
	CloseMsgOnKeyPress
	CallStandard 0x802
	ReleaseAll
	End
@ 515

Script_branch_515: @ 515
	Message 0x23
	Jump Script_branch_4aa
	End
@ 520

Script_16: @ 520
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x20
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 533

Script_17: @ 533
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x21
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 546

Script_18: @ 546
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	StorePokeNumParty 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_5a0
	SetVar 0x8000, 0x0
	CheckPokeEgg 0x8000, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_5cb
	SetVarPoke 0x0, 0x0
	Message 0x12
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_5ab
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_5b8
	End
@ 5a0

Script_branch_5a0: @ 5a0
	Message 0x17
	Jump Script_branch_5f9
	End
@ 5ab

Script_branch_5ab: @ 5ab
	Cmd_300
	Message 0x14
	Jump Script_branch_5f9
	End
@ 5b8

Script_branch_5b8: @ 5b8
	SetVarPoke 0x0, 0x0
	Message 0x15
	Jump Script_branch_5f9
	End
@ 5c8

.byte 0x2c @ 0x5c8
.byte 0x0 @ 0x5c9
.byte 0x12 @ 0x5ca

Script_branch_5cb: @ 5cb
	Message 0x13
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_5ab
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_5ee
	End
@ 5ee

Script_branch_5ee: @ 5ee
	Message 0x16
	Jump Script_branch_5f9
	End
@ 5f9

Script_branch_5f9: @ 5f9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 601

Script_19: @ 601
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1d
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_647
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CloseMsgOnKeyPress
	Cmd_30e 0x8004
	If 0x8004, 0x0
	CompareLastResultJump EQUAL, Script_branch_647
	Message 0x1e
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 647

Script_branch_647: @ 647
	Message 0x1f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 652

Script_20: @ 652
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckItem 0x1b3, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_696
	CheckFlag 0xac3
	CompareLastResultJump EQUAL, Script_branch_6fd
	CheckFlag 0xcf
	CompareLastResultJump EQUAL, Script_branch_6f2
	Message 0x18
	SetVar 0x8004, 0x1
	Jump Script_branch_6a1
	End
@ 696

Script_branch_696: @ 696
	Message 0x2a
	Jump Script_branch_708
	End
@ 6a1

Script_branch_6a1: @ 6a1
	CheckAccessories2 0x8004, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_6d3
	ScriptCmd_AddValue 0x8004, 0x1
	If 0x8004, 0xd
	CompareLastResultJump 0x3, Script_branch_6a1
	SetFlag 0xcf
	Jump Script_branch_6f2
	End
@ 6d3

Script_branch_6d3: @ 6d3
	SetVar 0x8005, 0x1
	CallStandard 0x7fd
	Message 0x1c
	Call Function_710
	SetFlag 0xac3
	Jump Script_branch_708
	End
@ 6f2

Script_branch_6f2: @ 6f2
	Message 0x1b
	Jump Script_branch_708
	End
@ 6fd

Script_branch_6fd: @ 6fd
	Message 0x1a
	Jump Script_branch_708
	End
@ 708

Script_branch_708: @ 708
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 710

Function_710: @ 710
	SetVar 0x8004, 0x1
	Jump Script_branch_71e
	End
@ 71e

Script_branch_71e: @ 71e
	CheckAccessories2 0x8004, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_74a
	ScriptCmd_AddValue 0x8004, 0x1
	If 0x8004, 0xd
	CompareLastResultJump 0x3, Script_branch_71e
	SetFlag 0xcf
	Return
@ 74a

Script_branch_74a: @ 74a
	Return
@ 74c

Script_21: @ 74c
	PlayFanfare 0x5dc
	LockAll
	Message 0x29
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 75d

.byte 0x0 @ 0x75d
.byte 0x0 @ 0x75e
.byte 0x0 @ 0x75f

@ end_0x760
