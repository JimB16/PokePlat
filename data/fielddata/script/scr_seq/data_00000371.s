.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	.hword 0xfd13
@ 16

Script_1: @ 16
	If 0x40d9, 0x0
	CompareLastResultJump EQUAL, Script_branch_35
	SetFlag 0x1cb
	CallBTowerFunctions 0x37, 0x0, 0x4000
	CopyVar 0x4020, 0x4000
Script_branch_35: @ 35
	End
@ 37

Script_5: @ 37
	RemovePeople2 0xff
	If 0x40d9, 0x3
	CompareLastResultJump EQUAL, Script_branch_4a
	End
@ 4a

Script_branch_4a: @ 4a
	SetOwPosition 0x2, 0x5, 0x0, 0x6, 0x3
	End
@ 58

Script_4: @ 58
	SetVar 0x40d9, 0x0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Call Function_15d
	ReleaseAll
	End
@ 70

Function_70: @ 70
	Message 0x0
	Soundfr 0x48e
	Cmd_4f
	HealPokemon
	Return
@ 7d

Script_branch_7d: @ 7d
	Return2 0x1e, 0x800c
	SetVar 0x40d8, 0x1
	CallBTowerFunctions 0x2b, 0x0, 0x800c
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_d9
	If 0x8008, 0x5
	CompareLastResultJump EQUAL, Script_branch_d9
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x146, 0x0, 0xb, 0x6, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ d9

Script_branch_d9: @ d9
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x146, 0x0, 0xf, 0x6, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 101

Script_2: @ 101
	LockAll
	SetVar 0x40d9, 0x3
	CallBTowerFunctions 0x64, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_7d
	Call Function_43c
	Jump Script_branch_201
	End
@ 12c

Script_3: @ 12c
	LockAll
	SetVar 0x40d9, 0x3
	CallBTowerFunctions 0x64, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_7d
	Call Function_43c
	Call Function_448
	Jump Script_branch_2f7
	End
@ 15d

Function_15d: @ 15d
	CallBTowerFunctions 0x28, 0x0, 0x0
	Call Function_45c
	SetBCastleFunctionId 0x0
	Cmd_30
	CloseMsgOnKeyPress
	Call Function_47e
	CallBTowerFunctions 0x2a, 0x0, 0x0
	CheckTrainerLost 0x800c
	CopyVar 0x8004, 0x800c
	Return
@ 18c

Script_branch_18c: @ 18c
	CallBTowerFunctions 0x25, 0x0, 0x0
	Jump Script_branch_7d
	End
@ 19c

Script_branch_19c: @ 19c
	CallBTowerFunctions 0x26, 0x0, 0x0
	Jump Script_branch_7d
	End
@ 1ac

Script_branch_1ac: @ 1ac
	SetVar 0x40d8, 0x2
	CallBTowerFunctions 0x27, 0x0, 0x0
	CloseBTower
	Message 0x4
	ShowClockSave
	CheckSaveData 0x800c
	HideClockSave
	PlayFanfare 0x61b
	WaitFanfare 0x61b
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CloseMsgOnKeyPress
	CallBTowerFunctions 0x2, 0x0, 0x0
	End
@ 1e7

Script_branch_1e7: @ 1e7
	Jump Script_branch_18c
	End
@ 1ef

Function_1ef: @ 1ef
	CallBTowerFunctions 0x22, 0x0, 0x800c
	CallBTowerFunctions 0x23, 0x0, 0x800c
	Return
@ 201

Script_branch_201: @ 201
	Call Function_15d
	If 0x8004, 0x0
	CompareLastResultJump EQUAL, Script_branch_18c
	Call Function_1ef
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_19c
	Call Function_492
	Call Function_4a6
	Call Function_70
	Jump Script_branch_2f7
	End
@ 241

Script_branch_241: @ 241
	CallBTowerFunctions 0x21, 0x0, 0x8004
	SetVariableNumber 0x0, 0x8004
	Message 0x1
	Multi3 0x1f, 0xb, 0x0, 0x0, 0x800c
	Cmd_33a 0x1
	TxtMsgScrpMulti 0x92, 0xff, 0x0
	TxtMsgScrpMulti 0x93, 0xff, 0x1
	TxtMsgScrpMulti 0x94, 0xff, 0x2
	CloseMulti4
	CloseMsgOnKeyPress
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_2ad
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_2bb
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_2d9
	Jump Script_branch_2ad
	End
@ 2ad

Script_branch_2ad: @ 2ad
	Call Function_4ba
	Jump Script_branch_201
	End
@ 2bb

Script_branch_2bb: @ 2bb
	Message 0x2
	YesNoBox 0x800c
	CloseMsgOnKeyPress
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1ac
	Jump Script_branch_241
	End
@ 2d9

Script_branch_2d9: @ 2d9
	Message 0x3
	YesNoBox 0x800c
	CloseMsgOnKeyPress
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1e7
	Jump Script_branch_241
	End
@ 2f7

Script_branch_2f7: @ 2f7
	CallBTowerFunctions 0x2b, 0x0, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x5, Script_branch_241
	CallBTowerFunctions 0x24, 0x0, 0x800c
	If 0x800c, 0x14
	CompareLastResultJump EQUAL, Script_branch_336
	If 0x800c, 0x30
	CompareLastResultJump EQUAL, Script_branch_336
	Jump Script_branch_241
	End
@ 336

Script_branch_336: @ 336
	Message 0xe
	Multi3 0x1f, 0xb, 0x0, 0x0, 0x800c
	Cmd_33a 0x1
	TxtMsgScrpMulti 0x92, 0xff, 0x0
	TxtMsgScrpMulti 0x93, 0xff, 0x1
	TxtMsgScrpMulti 0x94, 0xff, 0x2
	CloseMulti4
	CloseMsgOnKeyPress
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_395
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_2bb
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_2d9
	Jump Script_branch_395
	End
@ 395

Script_branch_395: @ 395
	Call Function_4ba
	CallBTowerFunctions 0x28, 0x0, 0x0
	Call Function_4ce
	CallBTowerFunctions 0x24, 0x0, 0x800c
	If 0x800c, 0x30
	CompareLastResultJump EQUAL, Script_branch_41e
	SetVarHero 0x0
	SetVariableRival 0x1
	Message 0xf
Script_branch_3c7: @ 3c7
	CloseMsgOnKeyPress
	Call Function_47e
	CallBTowerFunctions 0x2a, 0x0, 0x0
	CheckTrainerLost 0x800c
	CopyVar 0x8004, 0x800c
	If 0x8004, 0x0
	CompareLastResultJump EQUAL, Script_branch_18c
	CallBTowerFunctions 0x24, 0x0, 0x800c
	If 0x800c, 0x30
	CompareLastResultJump EQUAL, Script_branch_429
	Message 0x11
	CallBTowerFunctions 0x2c, 0x1, 0x0
Script_branch_40e: @ 40e
	CloseMsgOnKeyPress
	Call Function_1ef
	Jump Script_branch_19c
	End
@ 41e

Script_branch_41e: @ 41e
	Message 0x10
	Jump Script_branch_3c7
	End
@ 429

Script_branch_429: @ 429
	Message 0x12
	CallBTowerFunctions 0x2c, 0x2, 0x0
	Jump Script_branch_40e
	End
@ 43c

Function_43c: @ 43c
	ApplyMovement 0x2, Movement_504
	WaitMovement
	Return
@ 448

Function_448: @ 448
	ApplyMovement 0x0, Movement_580
	ApplyMovement 0x2, Movement_5a0
	WaitMovement
	Return
@ 45c

Function_45c: @ 45c
	CallBTowerFunctions 0x29, 0x0, 0x800c
	CopyVar 0x4021, 0x800c
	ClearFlag 0x1cb
	AddPeople 0x1
	ApplyMovement 0x1, Movement_524
	WaitMovement
	Return
@ 47e

Function_47e: @ 47e
	ApplyMovement 0x2, Movement_540
	ApplyMovement 0x1, Movement_548
	WaitMovement
	Return
@ 492

Function_492: @ 492
	ApplyMovement 0x1, Movement_550
	WaitMovement
	SetFlag 0x1cb
	RemovePeople 0x1
	Return
@ 4a6

Function_4a6: @ 4a6
	ApplyMovement 0x2, Movement_574
	ApplyMovement 0x0, Movement_580
	WaitMovement
	Return
@ 4ba

Function_4ba: @ 4ba
	ApplyMovement 0x2, Movement_588
	ApplyMovement 0x0, Movement_590
	WaitMovement
	Return
@ 4ce

Function_4ce: @ 4ce
	SetVar 0x4021, 0xa9
	ClearFlag 0x1cb
	AddPeople 0x1
	ApplyMovement 0x1, Movement_5a8
	WaitMovement
	Return
@ 4e8

.byte 0x3e @ 0x4e8
.byte 0x0 @ 0x4e9
.byte 0x1 @ 0x4ea
.byte 0x0 @ 0x4eb
.byte 0x2 @ 0x4ec
.byte 0x0 @ 0x4ed
.byte 0x1 @ 0x4ee
.byte 0x0 @ 0x4ef
.byte 0xe @ 0x4f0
.byte 0x0 @ 0x4f1
.byte 0x5 @ 0x4f2
.byte 0x0 @ 0x4f3
.byte 0x0 @ 0x4f4
.byte 0x0 @ 0x4f5
.byte 0x1 @ 0x4f6
.byte 0x0 @ 0x4f7
.byte 0xc @ 0x4f8
.byte 0x0 @ 0x4f9
.byte 0x3 @ 0x4fa
.byte 0x0 @ 0x4fb
.byte 0x3 @ 0x4fc
.byte 0x0 @ 0x4fd
.byte 0x1 @ 0x4fe
.byte 0x0 @ 0x4ff
.byte 0xfe @ 0x500
.byte 0x0 @ 0x501
.byte 0x0 @ 0x502
.byte 0x0 @ 0x503

Movement_504: @ 504
	Move_3e 0x1
	WalkUpFast 0x1
	SeeLeft 0x1
	WalkLeftFast 0x3
	SeeUp 0x1
	WalkUpFast 0x3
	SeeRight 0x1
	EndMovement 0x0
@ 524

Movement_524: @ 524
	WalkDownFast 0x1
	SeeRight 0x1
	WalkRightFast 0x3
	SeeDown 0x1
	WalkDownFast 0x3
	SeeLeft 0x1
	EndMovement 0x0
@ 540

Movement_540: @ 540
	WalkRightFast 0x1
	EndMovement 0x0
@ 548

Movement_548: @ 548
	WalkLeftFast 0x1
	EndMovement 0x0
@ 550

Movement_550: @ 550
	SeeRight 0x1
	WalkRightFast 0x1
	SeeUp 0x1
	WalkUpFast 0x3
	SeeLeft 0x1
	WalkLeftFast 0x3
	SeeUp 0x1
	WalkUpFast 0x1
	EndMovement 0x0
@ 574

Movement_574: @ 574
	WalkLeftFast 0x1
	SeeLeft 0x1
	EndMovement 0x0
@ 580

Movement_580: @ 580
	WalkRightFast 0x1
	EndMovement 0x0
@ 588

Movement_588: @ 588
	SeeRight 0x1
	EndMovement 0x0
@ 590

Movement_590: @ 590
	SeeLeft 0x1
	WalkLeftFast 0x1
	SeeRight 0x1
	EndMovement 0x0
@ 5a0

Movement_5a0: @ 5a0
	SeeLeft 0x1
	EndMovement 0x0
@ 5a8

Movement_5a8: @ 5a8
	WalkDown 0x1
	SeeRight 0x1
	WalkRight 0x3
	SeeDown 0x1
	WalkDown 0x3
	SeeLeft 0x1
	EndMovement 0x0
@ 5c4

@ end_0x5c4
