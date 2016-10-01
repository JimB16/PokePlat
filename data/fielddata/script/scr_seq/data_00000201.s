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
	script Script_22
	script Script_23
	script Script_24
	script Script_25
	.hword 0xfd13
@ 66

Script_15: @ 66
	If 0x4081, 0x1
	CompareLastResultJump EQUAL, Script_branch_82
	If 0x409e, 0x1
	CompareLastResultJump 0x4, Script_branch_98
	End
@ 82

Script_branch_82: @ 82
	ChangeOwPosition 0x7, 0x28f, 0x1aa
	ChangeOwMovement 0x7, 0xe
	ReleaseOw 0x7, 0x0
	End
@ 98

Script_branch_98: @ 98
	SetFlag 0x1d3
	End
@ 9e

.byte 0x34 @ 0x9e
.byte 0x2 @ 0x9f
.byte 0x0 @ 0xa0
.byte 0x40 @ 0xa1
.byte 0x11 @ 0xa2
.byte 0x0 @ 0xa3
.byte 0x0 @ 0xa4
.byte 0x40 @ 0xa5
.byte 0x0 @ 0xa6
.byte 0x0 @ 0xa7
.byte 0x1c @ 0xa8
.byte 0x0 @ 0xa9
.byte 0x1 @ 0xaa
.byte 0xf @ 0xab
.byte 0x0 @ 0xac
.byte 0x0 @ 0xad
.byte 0x0 @ 0xae
.byte 0x11 @ 0xaf
.byte 0x0 @ 0xb0
.byte 0x0 @ 0xb1
.byte 0x40 @ 0xb2
.byte 0x6 @ 0xb3
.byte 0x0 @ 0xb4
.byte 0x1c @ 0xb5
.byte 0x0 @ 0xb6
.byte 0x1 @ 0xb7
.byte 0x2 @ 0xb8
.byte 0x0 @ 0xb9
.byte 0x0 @ 0xba
.byte 0x0 @ 0xbb
.byte 0x2 @ 0xbc
.byte 0x0 @ 0xbd
.byte 0x86 @ 0xbe
.byte 0x1 @ 0xbf
.byte 0x7 @ 0xc0
.byte 0x0 @ 0xc1
.byte 0x92 @ 0xc2
.byte 0x2 @ 0xc3
.byte 0xae @ 0xc4
.byte 0x1 @ 0xc5
.byte 0x88 @ 0xc6
.byte 0x1 @ 0xc7
.byte 0x7 @ 0xc8
.byte 0x0 @ 0xc9
.byte 0xf @ 0xca
.byte 0x0 @ 0xcb
.byte 0x89 @ 0xcc
.byte 0x1 @ 0xcd
.byte 0x7 @ 0xce
.byte 0x0 @ 0xcf
.byte 0x1 @ 0xd0
.byte 0x0 @ 0xd1
.byte 0x1f @ 0xd2
.byte 0x0 @ 0xd3
.byte 0xd3 @ 0xd4
.byte 0x1 @ 0xd5
.byte 0x2 @ 0xd6
.byte 0x0 @ 0xd7

Script_1: @ d8
	LockAll
	Cmd_32d
	ApplyMovement 0x7, Movement_340
	WaitMovement
	ApplyMovement 0xff, Movement_3dc
	WaitMovement
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x0
	CloseMsgOnKeyPress
	CallStandard 0x800
	ApplyMovement 0xff, Movement_3e4
	ApplyMovement 0x7, Movement_354
	WaitMovement
	CallStandard 0x801
	SetVar 0x4081, 0x1
	Cmd_32e
	Message 0x1
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_2ee
	Call Function_14e
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_306
	Call Function_198
	ReleaseAll
	End
@ 14e

Function_14e: @ 14e
	SetVariableRival 0x0
	Message 0x2
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_3f8
	ApplyMovement 0x7, Movement_370
	WaitMovement
	ApplyMovement 0x19, Movement_448
	WaitMovement
	Message 0x7
	ApplyMovement 0x18, Movement_458
	WaitMovement
	Message 0x8
	CloseMsgOnKeyPress
	Call Function_30c
	DoubleBattle 0x8004, 0x399, 0x39a
	CheckTrainerLost 0x800c
	Return
@ 198

Function_198: @ 198
	ApplyMovement 0x18, Movement_460
	WaitMovement
	Message 0x9
	Message 0xa
	ApplyMovement 0x18, Movement_468
	WaitMovement
	Message 0xb
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	RemovePeople 0x19
	RemovePeople 0x18
	RemovePeople 0x1d
	RemovePeople 0x1c
	RemovePeople 0x1b
	RemovePeople 0x1e
	RemovePeople 0x1f
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ApplyMovement 0x7, Movement_378
	ApplyMovement 0xff, Movement_400
	WaitMovement
	SetVariableRival 0x0
	Message 0xc
	ClearFlag 0x1e3
	AddPeople 0x1a
	PlayFanfare2 0x5dc
	PlayFanfare 0x602
	Message2 0xd
	ApplyMovement 0x1a, Movement_3b4
	ApplyMovement 0x7, Movement_380
	ApplyMovement 0xff, Movement_408
	WaitMovement
	ApplyMovement 0x1a, Movement_3bc
	WaitMovement
	Message 0xe
	CloseMsgOnKeyPress
	SetVariableRival 0x0
	Message 0xf
	CloseMsgOnKeyPress
	ApplyMovement 0x7, Movement_39c
	WaitMovement
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x10
	Message 0x11
	CloseMsgOnKeyPress
	ApplyMovement 0x1a, Movement_3d4
	WaitMovement
	PlayFanfare 0x603
	RemovePeople 0x1a
	WaitFanfare 0x603
	SetVariableRival 0x0
	Message 0x12
	Message 0x13
	Message 0x14
	CloseMsgOnKeyPress
	ApplyMovement 0x7, Movement_3a4
	ApplyMovement 0xff, Movement_428
	WaitMovement
	RemovePeople 0x7
	ApplyMovement 0x8, Movement_478
	ApplyMovement 0xff, Movement_43c
	WaitMovement
	Message 0x16
	CloseMsgOnKeyPress
	ApplyMovement 0x8, Movement_484
	ApplyMovement 0xff, Movement_41c
	WaitMovement
	RemovePeople 0x8
	CheckNatPokedexStatus 0x2, 0x800c
	If 0x800c, 0x1
	CompareLastResultCall EQUAL, Script_branch_2e0
	SetVar 0x4081, 0x2
	Return
@ 2e0

Script_branch_2e0: @ 2e0
	RemovePeople 0x16
	RemovePeople 0x17
	SetFlag 0x294
	Return
@ 2ee

Script_branch_2ee: @ 2ee
	ApplyMovement 0x7, Movement_3ac
	WaitMovement
	SetVariableRival 0x0
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 306

Script_branch_306: @ 306
	LostGoPc
	ReleaseAll
	End
@ 30c

Function_30c: @ 30c
	StoreStarter 0x800c
	SetVar 0x8004, 0x39d
	If 0x800c, 0x186
	CompareLastResultJump EQUAL, Script_branch_33e
	SetVar 0x8004, 0x39c
	If 0x800c, 0x183
	CompareLastResultJump EQUAL, Script_branch_33e
	SetVar 0x8004, 0x39b
	Return
@ 33e

Script_branch_33e: @ 33e
	Return
@ 340

Movement_340: @ 340
	MoveLeftFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 34c

.byte 0xe @ 0x34c
.byte 0x0 @ 0x34d
.byte 0x1 @ 0x34e
.byte 0x0 @ 0x34f
.byte 0xfe @ 0x350
.byte 0x0 @ 0x351
.byte 0x0 @ 0x352
.byte 0x0 @ 0x353

Movement_354: @ 354
	WalkRightFast 0x11
	WalkUpFast 0x2
	WalkRightFast 0x9
	WalkUpFast 0x6
	WalkRightFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 370

Movement_370: @ 370
	WalkUpFast 0x1
	EndMovement 0x0
@ 378

Movement_378: @ 378
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 380

Movement_380: @ 380
	SeeUp 0x1
	Move_47 0x1
	WalkDownVeryFast  0x2
	Move_48 0x1
	EndMovement 0x0
@ 394

.byte 0x4b @ 0x394
.byte 0x0 @ 0x395
.byte 0x1 @ 0x396
.byte 0x0 @ 0x397
.byte 0xfe @ 0x398
.byte 0x0 @ 0x399
.byte 0x0 @ 0x39a
.byte 0x0 @ 0x39b

Movement_39c: @ 39c
	WalkUpVeryFast  0x2
	EndMovement 0x0
@ 3a4

Movement_3a4: @ 3a4
	WalkDownVeryFast  0x8
	EndMovement 0x0
@ 3ac

Movement_3ac: @ 3ac
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 3b4

Movement_3b4: @ 3b4
	WalkDownVeryFast  0x1
	EndMovement 0x0
@ 3bc

Movement_3bc: @ 3bc
	MoveLeftFast 0x1
	Move_3f 0x1
	MoveRightFast 0x1
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 3d4

Movement_3d4: @ 3d4
	WalkUpVeryFast  0x1
	EndMovement 0x0
@ 3dc

Movement_3dc: @ 3dc
	WalkRightFast 0x4
	EndMovement 0x0
@ 3e4

Movement_3e4: @ 3e4
	WalkRightFast 0x12
	WalkUpFast 0x2
	WalkRightFast 0x9
	WalkUpFast 0x6
	EndMovement 0x0
@ 3f8

Movement_3f8: @ 3f8
	WalkUpFast 0x1
	EndMovement 0x0
@ 400

Movement_400: @ 400
	MoveRightFast 0x1
	EndMovement 0x0
@ 408

Movement_408: @ 408
	Move_3f 0x1
	MoveDownVeryFast 0x1
	Move_3e 0x1
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ 41c

Movement_41c: @ 41c
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 428

Movement_428: @ 428
	MoveDownFast 0x1
	EndMovement 0x0
@ 430

.byte 0x3f @ 0x430
.byte 0x0 @ 0x431
.byte 0x1 @ 0x432
.byte 0x0 @ 0x433
.byte 0x20 @ 0x434
.byte 0x0 @ 0x435
.byte 0x1 @ 0x436
.byte 0x0 @ 0x437
.byte 0xfe @ 0x438
.byte 0x0 @ 0x439
.byte 0x0 @ 0x43a
.byte 0x0 @ 0x43b

Movement_43c: @ 43c
	Move_3f 0x2
	MoveRightFast 0x1
	EndMovement 0x0
@ 448

Movement_448: @ 448
	MoveDownFast 0x1
	EndMovement 0x0
@ 450

Movement_450: @ 450
	SeeDown 0x1
	EndMovement 0x0
@ 458

Movement_458: @ 458
	MoveDownFast 0x1
	EndMovement 0x0
@ 460

Movement_460: @ 460
	MoveLeftFast 0x1
	EndMovement 0x0
@ 468

Movement_468: @ 468
	MoveDownFast 0x1
	EndMovement 0x0
@ 470

Movement_470: @ 470
	SeeDown 0x1
	EndMovement 0x0
@ 478

Movement_478: @ 478
	WalkUpFast 0x1
	WalkLeftFast 0x2
	EndMovement 0x0
@ 484

Movement_484: @ 484
	WalkDownFast 0x8
	EndMovement 0x0
@ 48c

.byte 0x22 @ 0x48c
.byte 0x0 @ 0x48d
.byte 0x1 @ 0x48e
.byte 0x0 @ 0x48f
.byte 0xfe @ 0x490
.byte 0x0 @ 0x491
.byte 0x0 @ 0x492
.byte 0x0 @ 0x493
.byte 0xf @ 0x494
.byte 0x0 @ 0x495
.byte 0xa @ 0x496
.byte 0x0 @ 0x497
.byte 0xfe @ 0x498
.byte 0x0 @ 0x499
.byte 0x0 @ 0x49a
.byte 0x0 @ 0x49b

Script_2: @ 49c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4af

Script_3: @ 4af
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x21
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4c2

Script_4: @ 4c2
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x22
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4d5

Script_5: @ 4d5
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x23
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4e8

Script_6: @ 4e8
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x24
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4fb

Script_13: @ 4fb
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x25
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 50e

Script_7: @ 50e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x29
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 521

Script_8: @ 521
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVarItem 0x0, 0x1bf
	CheckFlag 0x6b
	CompareLastResultJump EQUAL, Script_branch_57a
	Message 0x2a
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_56f
	Message 0x2b
	SetVar 0x8004, 0x1bf
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	SetFlag 0x6b
	Message 0x2c
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 56f

Script_branch_56f: @ 56f
	Message 0x2d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 57a

Script_branch_57a: @ 57a
	Message 0x2e
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 585

Script_9: @ 585
	CallMessageBox 0x2f, 0x0, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 59c

Script_10: @ 59c
	CallMessageBox 0x30, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 5b3

Script_11: @ 5b3
	CallMessageBox 0x31, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 5ca

Script_12: @ 5ca
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	FacePlayer
	CheckFacePosition 0x8004
	Message 0x26
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_606
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_5fb
	End
@ 5fb

Script_branch_5fb: @ 5fb
	Message 0x28
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 606

Script_branch_606: @ 606
	Message 0x27
	CloseMsgOnKeyPress
	Call Function_646
	If 0x8004, 0x1
	CompareLastResultCall EQUAL, Script_branch_660
	If 0x8004, 0x3
	CompareLastResultCall EQUAL, Script_branch_67a
	If 0x8004, 0x2
	CompareLastResultCall EQUAL, Script_branch_694
	ShipAnimation 0x1, 0x0, 0xa5, 0x164, 0xf6
	ReleaseAll
	End
@ 646

Function_646: @ 646
	ApplyMovement 0x12, Movement_6b0
	WaitMovement
	PlayFanfare 0x603
	ApplyMovement 0x12, Movement_6bc
	WaitMovement
	Return
@ 660

Script_branch_660: @ 660
	ApplyMovement 0xff, Movement_6c4
	WaitMovement
	PlayFanfare 0x603
	ApplyMovement 0xff, Movement_6bc
	WaitMovement
	Return
@ 67a

Script_branch_67a: @ 67a
	ApplyMovement 0xff, Movement_6d0
	WaitMovement
	PlayFanfare 0x603
	ApplyMovement 0xff, Movement_6bc
	WaitMovement
	Return
@ 694

Script_branch_694: @ 694
	ApplyMovement 0xff, Movement_6e0
	WaitMovement
	PlayFanfare 0x603
	ApplyMovement 0xff, Movement_6bc
	WaitMovement
	Return
@ 6ae

.byte 0x0 @ 0x6ae
.byte 0x0 @ 0x6af

Movement_6b0: @ 6b0
	SeeDown 0x1
	Move_40 0x1
	EndMovement 0x0
@ 6bc

Movement_6bc: @ 6bc
	WaitDisappear 0x1
	EndMovement 0x0
@ 6c4

Movement_6c4: @ 6c4
	WalkDownFast 0x1
	Move_40 0x1
	EndMovement 0x0
@ 6d0

Movement_6d0: @ 6d0
	WalkRightFast 0x1
	SeeDown 0x1
	Move_40 0x1
	EndMovement 0x0
@ 6e0

Movement_6e0: @ 6e0
	WalkLeftFast 0x1
	SeeDown 0x1
	Move_40 0x1
	EndMovement 0x0
@ 6f0

Script_14: @ 6f0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	ApplyMovement 0x7, Movement_7a0
	WaitMovement
	CheckFacePosition 0x8004
	If 0x8004, 0x3
	CompareLastResultCall EQUAL, Script_branch_76e
	If 0x8004, 0x2
	CompareLastResultCall EQUAL, Script_branch_77a
	If 0x8004, 0x1
	CompareLastResultCall EQUAL, Script_branch_786
	If 0x8004, 0x0
	CompareLastResultCall EQUAL, Script_branch_792
	SetVariableRival 0x0
	Message 0x4
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_2ee
	Call Function_14e
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_306
	Call Function_198
	ReleaseAll
	End
@ 76e

Script_branch_76e: @ 76e
	ApplyMovement 0xff, Movement_7a8
	WaitMovement
	Return
@ 77a

Script_branch_77a: @ 77a
	ApplyMovement 0xff, Movement_7b0
	WaitMovement
	Return
@ 786

Script_branch_786: @ 786
	ApplyMovement 0xff, Movement_7c0
	WaitMovement
	Return
@ 792

Script_branch_792: @ 792
	ApplyMovement 0xff, Movement_7d0
	WaitMovement
	Return
@ 79e

.byte 0x0 @ 0x79e
.byte 0x0 @ 0x79f

Movement_7a0: @ 7a0
	MoveUpFast 0x1
	EndMovement 0x0
@ 7a8

Movement_7a8: @ 7a8
	MoveUpFast 0x1
	EndMovement 0x0
@ 7b0

Movement_7b0: @ 7b0
	WalkDownFast 0x1
	WalkLeftFast 0x2
	WalkUpFast 0x1
	EndMovement 0x0
@ 7c0

Movement_7c0: @ 7c0
	WalkLeftFast 0x1
	WalkDownFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 7d0

Movement_7d0: @ 7d0
	WalkLeftFast 0x1
	WalkUpFast 0x1
	EndMovement 0x0
@ 7dc

Script_16: @ 7dc
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7ef

Script_17: @ 7ef
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1e
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 802

Script_18: @ 802
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5
	WaitButton
	ApplyMovement 0x19, Movement_450
	WaitMovement
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 81f

Script_19: @ 81f
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x6
	WaitButton
	ApplyMovement 0x18, Movement_470
	WaitMovement
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 83c

Script_25: @ 83c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x15
	WaitButton
	ApplyMovement 0x8, Movement_85c
	WaitMovement
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 859

.byte 0x0 @ 0x859
.byte 0x0 @ 0x85a
.byte 0x0 @ 0x85b

Movement_85c: @ 85c
	MoveLeftFast 0x1
	EndMovement 0x0
@ 864

Script_20: @ 864
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x18
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 877

Script_21: @ 877
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x19
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 88a

Script_22: @ 88a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1a
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 89d

Script_23: @ 89d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 8b0

Script_24: @ 8b0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1c
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 8c3

.byte 0x0 @ 0x8c3

@ end_0x8c4
