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
	.hword 0xfd13
@ 4e

Script_19: @ 4e
	If 0x40a6, 0x2
	CompareLastResultCall EQUAL, Script_branch_77
	If 0x40a6, 0x3
	CompareLastResultCall EQUAL, Script_branch_77
	If 0x407e, 0x0
	CompareLastResultJump EQUAL, Script_branch_83
	End
@ 77

Script_branch_77: @ 77
	SetFlag 0x199
	SetVar 0x40a6, 0x4
	Return
@ 83

Script_branch_83: @ 83
	ChangeOwPosition 0x12, 0x349, 0x316
	ChangeOwMovement 0x12, 0x10
	ReleaseOw 0x12, 0x2
	End
@ 99

Script_8: @ 99
	LockAll
	ApplyMovement 0x9, Movement_4e8
	WaitMovement
	ClearFlag 0x255
	AddPeople 0x14
	Lock 0x14
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x355
	CompareLastResultJump EQUAL, Script_branch_fa
	If 0x8004, 0x356
	CompareLastResultJump EQUAL, Script_branch_114
	If 0x8004, 0x357
	CompareLastResultJump EQUAL, Script_branch_12e
	If 0x8004, 0x358
	CompareLastResultJump EQUAL, Script_branch_148
	If 0x8004, 0x359
	CompareLastResultJump EQUAL, Script_branch_162
	End
@ fa

Script_branch_fa: @ fa
	ApplyMovement 0x14, Movement_454
	ApplyMovement 0xff, Movement_4f4
	WaitMovement
	Jump Script_branch_17c
@ 112

.byte 0x2 @ 0x112
.byte 0x0 @ 0x113

Script_branch_114: @ 114
	ApplyMovement 0x14, Movement_464
	ApplyMovement 0xff, Movement_4f4
	WaitMovement
	Jump Script_branch_17c
@ 12c

.byte 0x2 @ 0x12c
.byte 0x0 @ 0x12d

Script_branch_12e: @ 12e
	ApplyMovement 0x14, Movement_474
	ApplyMovement 0xff, Movement_504
	WaitMovement
	Jump Script_branch_17c
@ 146

.byte 0x2 @ 0x146
.byte 0x0 @ 0x147

Script_branch_148: @ 148
	ApplyMovement 0x14, Movement_480
	ApplyMovement 0xff, Movement_50c
	WaitMovement
	Jump Script_branch_17c
@ 160

.byte 0x2 @ 0x160
.byte 0x0 @ 0x161

Script_branch_162: @ 162
	ApplyMovement 0x14, Movement_490
	ApplyMovement 0xff, Movement_50c
	WaitMovement
	Jump Script_branch_17c
@ 17a

.byte 0x2 @ 0x17a
.byte 0x0 @ 0x17b

Script_branch_17c: @ 17c
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0xa
	ApplyMovement 0x14, Movement_4a0
	WaitMovement
	Message 0xb
	If 0x8004, 0x355
	CompareLastResultCall EQUAL, Script_branch_2be
	If 0x8004, 0x356
	CompareLastResultCall EQUAL, Script_branch_2ca
	If 0x8004, 0x357
	CompareLastResultCall EQUAL, Script_branch_2d6
	If 0x8004, 0x358
	CompareLastResultCall EQUAL, Script_branch_2e2
	If 0x8004, 0x359
	CompareLastResultCall EQUAL, Script_branch_2ee
	Message 0xc
	CloseMsgOnKeyPress
	If 0x8004, 0x355
	CompareLastResultCall EQUAL, Script_branch_2fa
	If 0x8004, 0x356
	CompareLastResultCall EQUAL, Script_branch_30e
	If 0x8004, 0x357
	CompareLastResultCall EQUAL, Script_branch_322
	If 0x8004, 0x358
	CompareLastResultCall EQUAL, Script_branch_32e
	If 0x8004, 0x359
	CompareLastResultCall EQUAL, Script_branch_342
	RemovePeople 0x14
	If 0x8004, 0x355
	CompareLastResultCall EQUAL, Script_branch_356
	If 0x8004, 0x356
	CompareLastResultCall EQUAL, Script_branch_362
	If 0x8004, 0x357
	CompareLastResultCall EQUAL, Script_branch_36e
	If 0x8004, 0x358
	CompareLastResultCall EQUAL, Script_branch_37a
	If 0x8004, 0x359
	CompareLastResultCall EQUAL, Script_branch_386
	ApplyMovement 0xff, Movement_528
	WaitMovement
	Message 0xd
	Call Function_577
	CloseMsgOnKeyPress
	If 0x8004, 0x355
	CompareLastResultCall EQUAL, Script_branch_392
	If 0x8004, 0x356
	CompareLastResultCall EQUAL, Script_branch_39e
	If 0x8004, 0x357
	CompareLastResultCall EQUAL, Script_branch_3aa
	If 0x8004, 0x358
	CompareLastResultCall EQUAL, Script_branch_3b6
	If 0x8004, 0x359
	CompareLastResultCall EQUAL, Script_branch_3c2
	SetVar 0x407e, 0x3
	ReleaseAll
	End
@ 2be

Script_branch_2be: @ 2be
	ApplyMovement 0x14, Movement_4a8
	WaitMovement
	Return
@ 2ca

Script_branch_2ca: @ 2ca
	ApplyMovement 0x14, Movement_4a8
	WaitMovement
	Return
@ 2d6

Script_branch_2d6: @ 2d6
	ApplyMovement 0x14, Movement_4b0
	WaitMovement
	Return
@ 2e2

Script_branch_2e2: @ 2e2
	ApplyMovement 0x14, Movement_4b8
	WaitMovement
	Return
@ 2ee

Script_branch_2ee: @ 2ee
	ApplyMovement 0x14, Movement_4b8
	WaitMovement
	Return
@ 2fa

Script_branch_2fa: @ 2fa
	ApplyMovement 0x14, Movement_4c0
	ApplyMovement 0xff, Movement_51c
	WaitMovement
	Return
@ 30e

Script_branch_30e: @ 30e
	ApplyMovement 0x14, Movement_4c8
	ApplyMovement 0xff, Movement_51c
	WaitMovement
	Return
@ 322

Script_branch_322: @ 322
	ApplyMovement 0x14, Movement_4d0
	WaitMovement
	Return
@ 32e

Script_branch_32e: @ 32e
	ApplyMovement 0x14, Movement_4d8
	ApplyMovement 0xff, Movement_51c
	WaitMovement
	Return
@ 342

Script_branch_342: @ 342
	ApplyMovement 0x14, Movement_4e0
	ApplyMovement 0xff, Movement_51c
	WaitMovement
	Return
@ 356

Script_branch_356: @ 356
	ApplyMovement 0x9, Movement_3d0
	WaitMovement
	Return
@ 362

Script_branch_362: @ 362
	ApplyMovement 0x9, Movement_3dc
	WaitMovement
	Return
@ 36e

Script_branch_36e: @ 36e
	ApplyMovement 0x9, Movement_3e8
	WaitMovement
	Return
@ 37a

Script_branch_37a: @ 37a
	ApplyMovement 0x9, Movement_3f4
	WaitMovement
	Return
@ 386

Script_branch_386: @ 386
	ApplyMovement 0x9, Movement_400
	WaitMovement
	Return
@ 392

Script_branch_392: @ 392
	ApplyMovement 0x9, Movement_408
	WaitMovement
	Return
@ 39e

Script_branch_39e: @ 39e
	ApplyMovement 0x9, Movement_418
	WaitMovement
	Return
@ 3aa

Script_branch_3aa: @ 3aa
	ApplyMovement 0x9, Movement_428
	WaitMovement
	Return
@ 3b6

Script_branch_3b6: @ 3b6
	ApplyMovement 0x9, Movement_438
	WaitMovement
	Return
@ 3c2

Script_branch_3c2: @ 3c2
	ApplyMovement 0x9, Movement_448
	WaitMovement
	Return
@ 3ce

.byte 0x0 @ 0x3ce
.byte 0x0 @ 0x3cf

Movement_3d0: @ 3d0
	WalkLeftFast 0x4
	WalkDownFast 0x1
	EndMovement 0x0
@ 3dc

Movement_3dc: @ 3dc
	WalkLeftFast 0x3
	WalkDownFast 0x1
	EndMovement 0x0
@ 3e8

Movement_3e8: @ 3e8
	WalkLeftFast 0x2
	WalkDownFast 0x1
	EndMovement 0x0
@ 3f4

Movement_3f4: @ 3f4
	WalkLeftFast 0x1
	WalkDownFast 0x1
	EndMovement 0x0
@ 400

Movement_400: @ 400
	WalkDownFast 0x1
	EndMovement 0x0
@ 408

Movement_408: @ 408
	WalkUpFast 0x1
	WalkRightFast 0x4
	MoveDownFast 0x1
	EndMovement 0x0
@ 418

Movement_418: @ 418
	WalkUpFast 0x1
	WalkRightFast 0x3
	MoveDownFast 0x1
	EndMovement 0x0
@ 428

Movement_428: @ 428
	WalkUpFast 0x1
	WalkRightFast 0x2
	MoveDownFast 0x1
	EndMovement 0x0
@ 438

Movement_438: @ 438
	WalkUpFast 0x1
	WalkRightFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 448

Movement_448: @ 448
	WalkUpFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 454

Movement_454: @ 454
	Move_3f 0x1
	WalkUpVeryFast  0x4
	WalkLeftVeryFast 0x1
	EndMovement 0x0
@ 464

Movement_464: @ 464
	Move_3f 0x1
	WalkUpVeryFast  0x4
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 474

Movement_474: @ 474
	Move_3f 0x1
	WalkUpVeryFast  0x3
	EndMovement 0x0
@ 480

Movement_480: @ 480
	Move_3f 0x1
	WalkUpVeryFast  0x4
	MoveRightVeryFast 0x1
	EndMovement 0x0
@ 490

Movement_490: @ 490
	Move_3f 0x1
	WalkUpVeryFast  0x4
	WalkRightVeryFast 0x1
	EndMovement 0x0
@ 4a0

Movement_4a0: @ 4a0
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ 4a8

Movement_4a8: @ 4a8
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 4b0

Movement_4b0: @ 4b0
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ 4b8

Movement_4b8: @ 4b8
	MoveRightVeryFast 0x1
	EndMovement 0x0
@ 4c0

Movement_4c0: @ 4c0
	WalkDownVeryFast  0x8
	EndMovement 0x0
@ 4c8

Movement_4c8: @ 4c8
	WalkDownVeryFast  0x8
	EndMovement 0x0
@ 4d0

Movement_4d0: @ 4d0
	WalkDownVeryFast  0x8
	EndMovement 0x0
@ 4d8

Movement_4d8: @ 4d8
	WalkDownVeryFast  0x8
	EndMovement 0x0
@ 4e0

Movement_4e0: @ 4e0
	WalkDownVeryFast  0x8
	EndMovement 0x0
@ 4e8

Movement_4e8: @ 4e8
	MoveDownFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 4f4

Movement_4f4: @ 4f4
	MoveDownFast 0x1
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 504

Movement_504: @ 504
	MoveDownFast 0x1
	EndMovement 0x0
@ 50c

Movement_50c: @ 50c
	MoveDownFast 0x1
	Move_3f 0x2
	MoveLeftFast 0x1
	EndMovement 0x0
@ 51c

Movement_51c: @ 51c
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 528

Movement_528: @ 528
	MoveUpFast 0x1
	EndMovement 0x0
@ 530

Script_9: @ 530
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x9a
	CompareLastResultJump EQUAL, Script_branch_56c
	Message 0x8
	CheckBadge 7, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_561
	Jump Script_branch_56c
@ 55f

.byte 0x2 @ 0x55f
.byte 0x0 @ 0x560

Script_branch_561: @ 561
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 56c

Script_branch_56c: @ 56c
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 577

Function_577: @ 577
	Message 0x6
	SetVar 0x8004, 0x1aa
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	SetFlag 0x9a
	Message 0x7
	Return
@ 593

Script_1: @ 593
	LockAll
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x316
	CompareLastResultJump EQUAL, Script_branch_5b7
	If 0x8005, 0x317
	CompareLastResultJump EQUAL, Script_branch_5c7
	End
@ 5b7

Script_branch_5b7: @ 5b7
	ApplyMovement 0x12, Movement_63c
	WaitMovement
	Jump Script_branch_5d7
@ 5c7

Script_branch_5c7: @ 5c7
	ApplyMovement 0x12, Movement_650
	WaitMovement
	Jump Script_branch_5d7
@ 5d7

Script_branch_5d7: @ 5d7
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x12, Movement_668
	WaitMovement
	Return2 0xf, 0x800c
	ApplyMovement 0x12, Movement_670
	WaitMovement
	Message 0x1
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	ApplyMovement 0x12, Movement_678
	WaitMovement
	RemovePeople 0x12
	Return2 0x1, 0x800c
	ChangeOwPosition 0x12, 0x34d, 0x2ec
	ChangeOwMovement 0x12, 0xf
	ReleaseOw 0x12, 0x1
	ClearFlag 0x239
	AddPeople 0x12
	SetVar 0x407e, 0x1
	ReleaseAll
	End
@ 63b

.byte 0x0 @ 0x63b

Movement_63c: @ 63c
	WalkLeftFast 0x3
	MoveLeftFast 0x1
	Exclamation 0x1
	WalkLeftFast 0x5
	EndMovement 0x0
@ 650

Movement_650: @ 650
	WalkDownFast 0x1
	WalkLeftFast 0x3
	MoveLeftFast 0x1
	Exclamation 0x1
	WalkLeftFast 0x5
	EndMovement 0x0
@ 668

Movement_668: @ 668
	MoveDownFast 0x1
	EndMovement 0x0
@ 670

Movement_670: @ 670
	MoveLeftFast 0x1
	EndMovement 0x0
@ 678

Movement_678: @ 678
	WalkRightFast 0x9
	EndMovement 0x0
@ 680

Script_2: @ 680
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 693

Script_3: @ 693
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x14
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6a6

Script_4: @ 6a6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6b9

Script_5: @ 6b9
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x11
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6cc

Script_6: @ 6cc
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x12
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6df

Script_7: @ 6df
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x13
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6f2

Script_10: @ 6f2
	CallMessageBox 0x15, 0x0, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 709

Script_11: @ 709
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x16, 0x800c
	CallStandard 0x7d0
	End
@ 71e

Script_12: @ 71e
	CallMessageBox 0x17, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 735

Script_13: @ 735
	CallMessageBox 0x18, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 74c

Script_14: @ 74c
	CallMessageBox 0x19, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 763

Script_15: @ 763
	CallMessageBox 0x1a, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 77a

Script_16: @ 77a
	CallMessageBox 0x1b, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 791

Script_17: @ 791
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CallStandard StdFunc_PkmnMarket
	FreezeMessageBox
	CheckPokemart 0x800c
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_806
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_810
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_81a
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_824
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_82e
	If 0x8008, 0x5
	CompareLastResultJump EQUAL, Script_branch_838
	If 0x8008, 0x6
	CompareLastResultJump EQUAL, Script_branch_842
	End
@ 806

Script_branch_806: @ 806
	Pokemart3 0x0
	Jump Script_branch_84c
@ 810

Script_branch_810: @ 810
	Pokemart3 0x1
	Jump Script_branch_84c
@ 81a

Script_branch_81a: @ 81a
	Pokemart3 0x2
	Jump Script_branch_84c
@ 824

Script_branch_824: @ 824
	Pokemart3 0x3
	Jump Script_branch_84c
@ 82e

Script_branch_82e: @ 82e
	Pokemart3 0x4
	Jump Script_branch_84c
@ 838

Script_branch_838: @ 838
	Pokemart3 0x5
	Jump Script_branch_84c
@ 842

Script_branch_842: @ 842
	Pokemart3 0x6
	Jump Script_branch_84c
@ 84c

Script_branch_84c: @ 84c
	ReleaseAll
	End
@ 850

Script_18: @ 850
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x162
	CompareLastResultJump EQUAL, Script_branch_86e
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 86e

Script_branch_86e: @ 86e
	Message 0x3
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	CheckFacePosition 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_8a6
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_8be
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_8d6
	End
@ 8a6

Script_branch_8a6: @ 8a6
	ApplyMovement 0x12, Movement_8f8
	ApplyMovement 0xff, Movement_914
	WaitMovement
	Jump Script_branch_8ee
@ 8be

Script_branch_8be: @ 8be
	ApplyMovement 0x12, Movement_908
	ApplyMovement 0xff, Movement_920
	WaitMovement
	Jump Script_branch_8ee
@ 8d6

Script_branch_8d6: @ 8d6
	ApplyMovement 0x12, Movement_908
	ApplyMovement 0xff, Movement_914
	WaitMovement
	Jump Script_branch_8ee
@ 8ee

Script_branch_8ee: @ 8ee
	RemovePeople 0x12
	ReleaseAll
	End
@ 8f6

.byte 0x0 @ 0x8f6
.byte 0x0 @ 0x8f7

Movement_8f8: @ 8f8
	WalkRightFast 0x1
	WalkDownFast 0x2
	WalkRightFast 0x8
	EndMovement 0x0
@ 908

Movement_908: @ 908
	WalkDownFast 0x2
	WalkRightFast 0x9
	EndMovement 0x0
@ 914

Movement_914: @ 914
	Move_3f 0x1
	SeeRight 0x1
	EndMovement 0x0
@ 920

Movement_920: @ 920
	Move_3f 0x1
	MoveDownFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 930

@ end_0x930
