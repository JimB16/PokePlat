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
	.hword 0xfd13
@ 26

Script_1: @ 26
	CheckFlag 0x106
	CompareLastResultCall EQUAL, Script_branch_4b
	CheckFlag 0x15e
	CompareLastResultJump LESSER, Script_branch_79
	CheckFlag 0x15e
	CompareLastResultJump EQUAL, Script_branch_8b
	End
@ 49

.byte 0x2 @ 0x49
.byte 0x0 @ 0x4a

Script_branch_4b: @ 4b
	ChangeOwPosition 0x5, 0x2d3, 0x301
	ReleaseOw 0x5, 0x0
	ChangeOwMovement 0x5, 0xe
	Return
@ 61

Script_2: @ 61
	CheckFlag 0x15e
	CompareLastResultJump LESSER, Script_branch_79
	CheckFlag 0x15e
	CompareLastResultJump EQUAL, Script_branch_8b
	End
@ 79

Script_branch_79: @ 79
	SetTilePassable 0x5, 0x2c9, 0x2f8
	SetTilePassable 0x6, 0x2c9, 0x2f9
	End
@ 8b

Script_branch_8b: @ 8b
	SetTilePassable 0x3, 0x2c9, 0x2f8
	SetTilePassable 0x4, 0x2c9, 0x2f9
	End
@ 9d

Script_3: @ 9d
	PlayFanfare 0x5dc
	LockAll
	CheckFlag 0x106
	CompareLastResultJump EQUAL, Script_branch_13a
	Message 0x0
	FacePlayer
	ApplyMovement 0x5, Movement_214
	WaitMovement
	Message 0x1
	CloseMsgOnKeyPress
	CheckFacePosition 0x8004
	If 0x8004, 0x1
	CompareLastResultJump EQUAL, Script_branch_e6
	If 0x8004, 0x0
	CompareLastResultJump EQUAL, Script_branch_fe
	Jump Script_branch_10e
@ e6

Script_branch_e6: @ e6
	ApplyMovement 0x5, Movement_21c
	ApplyMovement 0xff, Movement_1e0
	WaitMovement
	Jump Script_branch_126
@ fe

Script_branch_fe: @ fe
	ApplyMovement 0x5, Movement_228
	WaitMovement
	Jump Script_branch_126
@ 10e

Script_branch_10e: @ 10e
	ApplyMovement 0x5, Movement_228
	ApplyMovement 0xff, Movement_1ec
	WaitMovement
	Jump Script_branch_126
@ 126

Script_branch_126: @ 126
	SetOwPosition 0x5, 0x2d3, 0x1, 0x301, 0x0
	SetFlag 0x106
	ReleaseAll
	End
@ 13a

Script_branch_13a: @ 13a
	CheckFacePosition 0x8000
	FacePlayer
	Message 0x2
	CloseMsgOnKeyPress
	TrainerBattle 0x34f, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1d9
	Message 0x3
	CloseMsgOnKeyPress
	CheckFacePosition 0x8004
	If 0x8004, 0x1
	CompareLastResultJump EQUAL, Script_branch_185
	If 0x8004, 0x0
	CompareLastResultJump EQUAL, Script_branch_19d
	Jump Script_branch_1ad
@ 185

Script_branch_185: @ 185
	ApplyMovement 0x5, Movement_230
	ApplyMovement 0xff, Movement_1f4
	WaitMovement
	Jump Script_branch_1c5
@ 19d

Script_branch_19d: @ 19d
	ApplyMovement 0x5, Movement_23c
	WaitMovement
	Jump Script_branch_1c5
@ 1ad

Script_branch_1ad: @ 1ad
	ApplyMovement 0x5, Movement_23c
	ApplyMovement 0xff, Movement_208
	WaitMovement
	Jump Script_branch_1c5
@ 1c5

Script_branch_1c5: @ 1c5
	RemovePeople 0x5
	SetFlag 0x211
	ClearFlag 0x156
	Jump Script_branch_248
@ 1d7

.byte 0x2 @ 0x1d7
.byte 0x0 @ 0x1d8

Script_branch_1d9: @ 1d9
	LostGoPc
	ReleaseAll
	End
@ 1df

.byte 0x0 @ 0x1df

Movement_1e0: @ 1e0
	MoveRightFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 1ec

Movement_1ec: @ 1ec
	MoveUpFast 0x1
	EndMovement 0x0
@ 1f4

Movement_1f4: @ 1f4
	Move_3f 0x1
	MoveRightFast 0x1
	Move_3f 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 208

Movement_208: @ 208
	Move_3f 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 214

Movement_214: @ 214
	Exclamation 0x1
	EndMovement 0x0
@ 21c

Movement_21c: @ 21c
	WalkRightVeryFast 0x1
	WalkUpVeryFast  0xb
	EndMovement 0x0
@ 228

Movement_228: @ 228
	WalkUpVeryFast  0xa
	EndMovement 0x0
@ 230

Movement_230: @ 230
	WalkRightFast 0x1
	WalkUp 0x9
	EndMovement 0x0
@ 23c

Movement_23c: @ 23c
	WalkUpFast 0x1
	WalkUp 0x9
	EndMovement 0x0
@ 248

Script_branch_248: @ 248
	If 0x8000, 0x0
	CompareLastResultCall EQUAL, Script_branch_3ec
	If 0x8000, 0x1
	CompareLastResultCall EQUAL, Script_branch_3f6
	If 0x8000, 0x2
	CompareLastResultCall EQUAL, Script_branch_400
	If 0x8000, 0x3
	CompareLastResultCall EQUAL, Script_branch_40a
	ClearFlag 0x1ad
	ReleaseOw 0x0, 0x1
	ChangeOwMovement 0x0, 0xf
	AddPeople 0x0
	ApplyMovement 0x0, Movement_594
	WaitMovement
	Message 0x4
	CloseMsgOnKeyPress
	If 0x8000, 0x0
	CompareLastResultCall EQUAL, Script_branch_444
	If 0x8000, 0x1
	CompareLastResultCall EQUAL, Script_branch_44e
	If 0x8000, 0x2
	CompareLastResultCall EQUAL, Script_branch_458
	If 0x8000, 0x3
	CompareLastResultCall EQUAL, Script_branch_462
	ClearFlag 0x1d5
	ReleaseOw 0xa, 0x0
	ChangeOwMovement 0xa, 0xe
	AddPeople 0xa
	CallStandard 0x7fa
	If 0x8000, 0x0
	CompareLastResultCall EQUAL, Script_branch_46c
	If 0x8000, 0x1
	CompareLastResultCall EQUAL, Script_branch_480
	If 0x8000, 0x2
	CompareLastResultCall EQUAL, Script_branch_494
	If 0x8000, 0x3
	CompareLastResultCall EQUAL, Script_branch_4a8
	SetVarHero 0x0
	SetVariableRival 0x1
	Message 0x5
	ApplyMovement 0xa, Movement_574
	WaitMovement
	Message 0x6
	If 0x8000, 0x0
	CompareLastResultCall EQUAL, Script_branch_4bc
	If 0x8000, 0x1
	CompareLastResultCall EQUAL, Script_branch_4c8
	If 0x8000, 0x2
	CompareLastResultCall EQUAL, Script_branch_4d4
	If 0x8000, 0x3
	CompareLastResultCall EQUAL, Script_branch_4e0
	Message 0x7
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_5a8
	ApplyMovement 0xff, Movement_5e8
	ApplyMovement 0xa, Movement_58c
	WaitMovement
	RemovePeople 0xa
	CallStandard 0x7fb
	Message 0x8
	CloseMsgOnKeyPress
	If 0x8000, 0x0
	CompareLastResultCall EQUAL, Script_branch_414
	If 0x8000, 0x1
	CompareLastResultCall EQUAL, Script_branch_420
	If 0x8000, 0x2
	CompareLastResultCall EQUAL, Script_branch_42c
	If 0x8000, 0x3
	CompareLastResultCall EQUAL, Script_branch_438
	Message 0x9
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_4ec
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_4f7
	End
@ 3ec

Script_branch_3ec: @ 3ec
	ChangeOwPosition 0x0, 0x2d3, 0x2f9
	Return
@ 3f6

Script_branch_3f6: @ 3f6
	ChangeOwPosition 0x0, 0x2d3, 0x2f7
	Return
@ 400

Script_branch_400: @ 400
	ChangeOwPosition 0x0, 0x2d4, 0x2f8
	Return
@ 40a

Script_branch_40a: @ 40a
	ChangeOwPosition 0x0, 0x2d2, 0x2f8
	Return
@ 414

Script_branch_414: @ 414
	ApplyMovement 0x0, Movement_5b4
	WaitMovement
	Return
@ 420

Script_branch_420: @ 420
	ApplyMovement 0x0, Movement_5b4
	WaitMovement
	Return
@ 42c

Script_branch_42c: @ 42c
	ApplyMovement 0x0, Movement_5b4
	WaitMovement
	Return
@ 438

Script_branch_438: @ 438
	ApplyMovement 0x0, Movement_5b4
	WaitMovement
	Return
@ 444

Script_branch_444: @ 444
	ChangeOwPosition 0xa, 0x2d4, 0x30c
	Return
@ 44e

Script_branch_44e: @ 44e
	ChangeOwPosition 0xa, 0x2d4, 0x30a
	Return
@ 458

Script_branch_458: @ 458
	ChangeOwPosition 0xa, 0x2d3, 0x30b
	Return
@ 462

Script_branch_462: @ 462
	ChangeOwPosition 0xa, 0x2d3, 0x30b
	Return
@ 46c

Script_branch_46c: @ 46c
	ApplyMovement 0xff, Movement_5d0
	ApplyMovement 0xa, Movement_55c
	WaitMovement
	Return
@ 480

Script_branch_480: @ 480
	ApplyMovement 0xff, Movement_5d0
	ApplyMovement 0xa, Movement_55c
	WaitMovement
	Return
@ 494

Script_branch_494: @ 494
	ApplyMovement 0xff, Movement_5dc
	ApplyMovement 0xa, Movement_568
	WaitMovement
	Return
@ 4a8

Script_branch_4a8: @ 4a8
	ApplyMovement 0xff, Movement_5d0
	ApplyMovement 0xa, Movement_55c
	WaitMovement
	Return
@ 4bc

Script_branch_4bc: @ 4bc
	ApplyMovement 0xa, Movement_57c
	WaitMovement
	Return
@ 4c8

Script_branch_4c8: @ 4c8
	ApplyMovement 0xa, Movement_57c
	WaitMovement
	Return
@ 4d4

Script_branch_4d4: @ 4d4
	ApplyMovement 0xa, Movement_584
	WaitMovement
	Return
@ 4e0

Script_branch_4e0: @ 4e0
	ApplyMovement 0xa, Movement_57c
	WaitMovement
	Return
@ 4ec

Script_branch_4ec: @ 4ec
	Message 0xa
	Jump Script_branch_502
@ 4f5

.byte 0x2 @ 0x4f5
.byte 0x0 @ 0x4f6

Script_branch_4f7: @ 4f7
	Message 0xb
	Jump Script_branch_502
@ 500

.byte 0x2 @ 0x500
.byte 0x0 @ 0x501

Script_branch_502: @ 502
	Message 0xc
	SetVar 0x8004, 0x1d0
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	Message 0xd
	CloseMsgOnKeyPress
	Jump Script_branch_522
@ 520

.byte 0x2 @ 0x520
.byte 0x0 @ 0x521

Script_branch_522: @ 522
	ApplyMovement 0x0, Movement_5bc
	ApplyMovement 0xff, Movement_600
	WaitMovement
	Jump Script_branch_53a
@ 53a

Script_branch_53a: @ 53a
	RemovePeople 0x0
	SetVar 0x4083, 0x2
	SetFlag 0xb7
	SetFlag 0x1a9
	ClearFlag 0x20f
	SetVar 0x407c, 0x6
	ReleaseAll
	End
@ 55a

.byte 0x0 @ 0x55a
.byte 0x0 @ 0x55b

Movement_55c: @ 55c
	WalkUpVeryFast  0xa
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 568

Movement_568: @ 568
	WalkUpVeryFast  0xa
	MoveRightVeryFast 0x1
	EndMovement 0x0
@ 574

Movement_574: @ 574
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ 57c

Movement_57c: @ 57c
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 584

Movement_584: @ 584
	MoveRightVeryFast 0x1
	EndMovement 0x0
@ 58c

Movement_58c: @ 58c
	WalkUpVeryFast  0x8
	EndMovement 0x0
@ 594

Movement_594: @ 594
	WalkDownFast 0x4
	MoveUpFast 0x1
	Move_3f 0x2
	WalkDownFast 0x4
	EndMovement 0x0
@ 5a8

Movement_5a8: @ 5a8
	Move_3f 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 5b4

Movement_5b4: @ 5b4
	MoveDownFast 0x1
	EndMovement 0x0
@ 5bc

Movement_5bc: @ 5bc
	WalkUpFast 0x9
	EndMovement 0x0
@ 5c4

.byte 0x3f @ 0x5c4
.byte 0x0 @ 0x5c5
.byte 0x1 @ 0x5c6
.byte 0x0 @ 0x5c7
.byte 0x23 @ 0x5c8
.byte 0x0 @ 0x5c9
.byte 0x1 @ 0x5ca
.byte 0x0 @ 0x5cb
.byte 0xfe @ 0x5cc
.byte 0x0 @ 0x5cd
.byte 0x0 @ 0x5ce
.byte 0x0 @ 0x5cf

Movement_5d0: @ 5d0
	Move_3f 0x4
	MoveRightFast 0x1
	EndMovement 0x0
@ 5dc

Movement_5dc: @ 5dc
	Move_3f 0x4
	MoveLeftFast 0x1
	EndMovement 0x0
@ 5e8

Movement_5e8: @ 5e8
	Move_3f 0x2
	MoveUpFast 0x1
	EndMovement 0x0
@ 5f4

.byte 0x3f @ 0x5f4
.byte 0x0 @ 0x5f5
.byte 0x3 @ 0x5f6
.byte 0x0 @ 0x5f7
.byte 0x20 @ 0x5f8
.byte 0x0 @ 0x5f9
.byte 0x1 @ 0x5fa
.byte 0x0 @ 0x5fb
.byte 0xfe @ 0x5fc
.byte 0x0 @ 0x5fd
.byte 0x0 @ 0x5fe
.byte 0x0 @ 0x5ff

Movement_600: @ 600
	Move_3f 0x1
	SeeUp 0x1
	EndMovement 0x0
@ 60c

Script_4: @ 60c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 61f

Script_6: @ 61f
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 632

Script_5: @ 632
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckItem 0x1c3, 0x1, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_65a
	Message 0x12
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 65a

Script_branch_65a: @ 65a
	Message 0x13
	CloseMsgOnKeyPress
	GiveItem 0x1c3, 0x1, 0x800c
	ApplyMovement 0x8, Movement_6a8
	WaitMovement
	PrepareDoorAnimation 0x16, 0x18, 0xb, 0xd, 0x4d
	OpenDoor 0x4d
	WaitAction 0x4d
	ApplyMovement 0x8, Movement_6b0
	WaitMovement
	RemovePeople 0x8
	CloseDoor 0x4d
	WaitAction 0x4d
	WaitClose 0x4d
	ClearFlag 0x25e
	SetFlag 0x25d
	ReleaseAll
	End
@ 6a5

.byte 0x0 @ 0x6a5
.byte 0x0 @ 0x6a6
.byte 0x0 @ 0x6a7

Movement_6a8: @ 6a8
	MoveUpFast 0x1
	EndMovement 0x0
@ 6b0

Movement_6b0: @ 6b0
	WalkUpFast 0x1
	EndMovement 0x0
@ 6b8

Script_7: @ 6b8
	CallMessageBox 0x14, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 6cf

Script_8: @ 6cf
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x11
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6e2

Script_9: @ 6e2
	LockAll
	ApplyMovement 0x9, Movement_7a8
	WaitMovement
	CheckSpritePosition 0x8000, 0x8001
	If 0x8001, 0x315
	CompareLastResultCall EQUAL, Script_branch_75d
	If 0x8001, 0x316
	CompareLastResultCall EQUAL, Script_branch_769
	If 0x8001, 0x317
	CompareLastResultCall EQUAL, Script_branch_775
	ApplyMovement 0x9, Movement_7fc
	ApplyMovement 0xff, Movement_804
	WaitMovement
	Message 0x10
	CloseMsgOnKeyPress
	If 0x8001, 0x315
	CompareLastResultCall EQUAL, Script_branch_781
	If 0x8001, 0x316
	CompareLastResultCall EQUAL, Script_branch_78d
	If 0x8001, 0x317
	CompareLastResultCall EQUAL, Script_branch_799
	ReleaseAll
	End
@ 75d

Script_branch_75d: @ 75d
	ApplyMovement 0x9, Movement_7b4
	WaitMovement
	Return
@ 769

Script_branch_769: @ 769
	ApplyMovement 0x9, Movement_7c0
	WaitMovement
	Return
@ 775

Script_branch_775: @ 775
	ApplyMovement 0x9, Movement_7cc
	WaitMovement
	Return
@ 781

Script_branch_781: @ 781
	ApplyMovement 0x9, Movement_7d8
	WaitMovement
	Return
@ 78d

Script_branch_78d: @ 78d
	ApplyMovement 0x9, Movement_7e4
	WaitMovement
	Return
@ 799

Script_branch_799: @ 799
	ApplyMovement 0x9, Movement_7f0
	WaitMovement
	Return
@ 7a5

.byte 0x0 @ 0x7a5
.byte 0x0 @ 0x7a6
.byte 0x0 @ 0x7a7

Movement_7a8: @ 7a8
	Exclamation 0x1
	Move_41 0x1
	EndMovement 0x0
@ 7b4

Movement_7b4: @ 7b4
	WalkRightFast 0x1
	WalkDownFast 0x1
	EndMovement 0x0
@ 7c0

Movement_7c0: @ 7c0
	WalkRightFast 0x1
	WalkDownFast 0x2
	EndMovement 0x0
@ 7cc

Movement_7cc: @ 7cc
	WalkRightFast 0x1
	WalkDownFast 0x3
	EndMovement 0x0
@ 7d8

Movement_7d8: @ 7d8
	WalkUpFast 0x1
	SeeDown 0x1
	EndMovement 0x0
@ 7e4

Movement_7e4: @ 7e4
	WalkUpFast 0x2
	SeeDown 0x1
	EndMovement 0x0
@ 7f0

Movement_7f0: @ 7f0
	WalkUpFast 0x3
	SeeDown 0x1
	EndMovement 0x0
@ 7fc

Movement_7fc: @ 7fc
	WalkLeftFast 0x1
	EndMovement 0x0
@ 804

Movement_804: @ 804
	Move_47 0x1
	WalkLeftFast 0x1
	Move_48 0x1
	EndMovement 0x0
@ 814

@ end_0x814
