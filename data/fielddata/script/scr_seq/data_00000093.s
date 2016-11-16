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
	script Script_26
	script Script_27
	script Script_28
	script Script_29
	script Script_30
	script Script_31
	script Script_32
	.hword 0xfd13
@ 82

Script_1: @ 82
	End
@ 84

Script_2: @ 84
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 97

Script_3: @ 97
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ aa

Script_4: @ aa
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x17
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ bd

Script_5: @ bd
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d0

Script_6: @ d0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e3

Script_7: @ e3
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ f6

Script_8: @ f6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 109

Script_9: @ 109
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x15
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 11c

Script_10: @ 11c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x1a1, 0x0
	Message 0x16
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 13b

Script_11: @ 13b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x1
	CompareLastResultJump EQUAL, Script_branch_1a7
	Message 0xe
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b2
	Message 0xf
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	CheckFacePosition 0x8004
	If 0x8004, 0x0
	CompareLastResultJump EQUAL, Script_branch_1bd
	If 0x8004, 0x1
	CompareLastResultJump EQUAL, Script_branch_1d7
	If 0x8004, 0x2
	CompareLastResultJump EQUAL, Script_branch_1f1
	If 0x8004, 0x3
	CompareLastResultJump EQUAL, Script_branch_20b
	End
@ 1a7

Script_branch_1a7: @ 1a7
	Message 0x11
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1b2

Script_branch_1b2: @ 1b2
	Message 0x12
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1bd

Script_branch_1bd: @ 1bd
	ApplyMovement 0x0, Movement_240
	ApplyMovement 0xff, Movement_27c
	WaitMovement
	Jump Script_branch_225
@ 1d5

.byte 0x2 @ 0x1d5
.byte 0x0 @ 0x1d6

Script_branch_1d7: @ 1d7
	ApplyMovement 0x0, Movement_240
	ApplyMovement 0xff, Movement_294
	WaitMovement
	Jump Script_branch_225
@ 1ef

.byte 0x2 @ 0x1ef
.byte 0x0 @ 0x1f0

Script_branch_1f1: @ 1f1
	ApplyMovement 0x0, Movement_240
	ApplyMovement 0xff, Movement_2ac
	WaitMovement
	Jump Script_branch_225
@ 209

.byte 0x2 @ 0x209
.byte 0x0 @ 0x20a

Script_branch_20b: @ 20b
	ApplyMovement 0x0, Movement_258
	ApplyMovement 0xff, Movement_2c4
	WaitMovement
	Jump Script_branch_225
@ 223

.byte 0x2 @ 0x223
.byte 0x0 @ 0x224

Script_branch_225: @ 225
	SetFlag 0x1
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 234

.byte 0x4b @ 0x234
.byte 0x0 @ 0x235
.byte 0x1 @ 0x236
.byte 0x0 @ 0x237
.byte 0x41 @ 0x238
.byte 0x0 @ 0x239
.byte 0x1 @ 0x23a
.byte 0x0 @ 0x23b
.byte 0xfe @ 0x23c
.byte 0x0 @ 0x23d
.byte 0x0 @ 0x23e
.byte 0x0 @ 0x23f

Movement_240: @ 240
	WalkLeftFast 0x14
	WalkUpFast 0xd
	WalkRightFast 0xc
	WalkUpFast 0x4
	MoveDownFast 0x1
	EndMovement 0x0
@ 258

Movement_258: @ 258
	WalkUpFast 0x1
	WalkLeftFast 0x2
	WalkDownFast 0x1
	WalkLeftFast 0x12
	WalkUpFast 0xd
	WalkRightFast 0xc
	WalkUpFast 0x4
	MoveDownFast 0x1
	EndMovement 0x0
@ 27c

Movement_27c: @ 27c
	WalkUpFast 0x1
	WalkLeftFast 0x14
	WalkUpFast 0xd
	WalkRightFast 0xc
	WalkUpFast 0x3
	EndMovement 0x0
@ 294

Movement_294: @ 294
	WalkDownFast 0x1
	WalkLeftFast 0x14
	WalkUpFast 0xd
	WalkRightFast 0xc
	WalkUpFast 0x3
	EndMovement 0x0
@ 2ac

Movement_2ac: @ 2ac
	WalkLeftFast 0x1
	WalkLeftFast 0x14
	WalkUpFast 0xd
	WalkRightFast 0xc
	WalkUpFast 0x3
	EndMovement 0x0
@ 2c4

Movement_2c4: @ 2c4
	Move_3f 0x2
	Move_3e 0x1
	MoveLeftFast 0x1
	WalkLeftFast 0x13
	WalkUpFast 0xd
	WalkRightFast 0xc
	WalkUpFast 0x3
	EndMovement 0x0
@ 2e4

Script_12: @ 2e4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x13
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2f7

Script_13: @ 2f7
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 30a

Script_14: @ 30a
	PlayFanfare 0x5dc
	LockAll
	Message 0x14
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 31b

Script_15: @ 31b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x18
	Message 0x19
	CheckFlag 0x14a
	CompareLastResultJump LESSER, Script_branch_3ac
	CheckFlag 0x14b
	CompareLastResultJump LESSER, Script_branch_3ac
	CheckFlag 0x14c
	CompareLastResultJump LESSER, Script_branch_3ac
	CheckFlag 0x14d
	CompareLastResultJump LESSER, Script_branch_3ac
	CheckFlag 0x14e
	CompareLastResultJump LESSER, Script_branch_3ac
	CheckFlag 0x14f
	CompareLastResultJump LESSER, Script_branch_3ac
	CheckFlag 0x150
	CompareLastResultJump LESSER, Script_branch_3ac
	CheckFlag 0x151
	CompareLastResultJump LESSER, Script_branch_3ac
	CheckFlag 0x152
	CompareLastResultJump LESSER, Script_branch_3ac
	CheckFlag 0x153
	CompareLastResultJump LESSER, Script_branch_3ac
	CheckFlag 0x154
	CompareLastResultJump LESSER, Script_branch_3ac
	SetFlag 0x15b
	Jump Script_branch_6e8
@ 3ac

Script_branch_3ac: @ 3ac
	CheckFlag 0x14a
	CompareLastResultJump EQUAL, Script_branch_3f4
	CheckFlag 0x98c
	CompareLastResultJump LESSER, Script_branch_3f4
	Message 0x21
	SetVar 0x8004, 0x2e
	SetVar 0x8005, 0x1
	CheckUndergroundPcStatus 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_6f3
	CallStandard 0x7dc
	SetFlag 0x14a
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3f4

Script_branch_3f4: @ 3f4
	CheckFlag 0x14b
	CompareLastResultJump EQUAL, Script_branch_442
	DisableBadge 0x800c
	If 0x800c, 0x8
	CompareLastResultJump LESSER, Script_branch_442
	Message 0x22
	SetVar 0x8004, 0x2f
	SetVar 0x8005, 0x1
	CheckUndergroundPcStatus 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_6f3
	CallStandard 0x7dc
	SetFlag 0x14b
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 442

Script_branch_442: @ 442
	CheckFlag 0x14c
	CompareLastResultJump EQUAL, Script_branch_48a
	CheckFlag 0x96a
	CompareLastResultJump LESSER, Script_branch_48a
	Message 0x23
	SetVar 0x8004, 0x48
	SetVar 0x8005, 0x1
	CheckUndergroundPcStatus 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_6f3
	CallStandard 0x7dc
	SetFlag 0x14c
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 48a

Script_branch_48a: @ 48a
	CheckFlag 0x14d
	CompareLastResultJump EQUAL, Script_branch_4d2
	CheckFlag 0x968
	CompareLastResultJump LESSER, Script_branch_4d2
	Message 0x24
	SetVar 0x8004, 0x49
	SetVar 0x8005, 0x1
	CheckUndergroundPcStatus 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_6f3
	CallStandard 0x7dc
	SetFlag 0x14d
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4d2

Script_branch_4d2: @ 4d2
	CheckFlag 0x14e
	CompareLastResultJump EQUAL, Script_branch_51a
	CheckFlag 0x969
	CompareLastResultJump LESSER, Script_branch_51a
	Message 0x25
	SetVar 0x8004, 0x4a
	SetVar 0x8005, 0x1
	CheckUndergroundPcStatus 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_6f3
	CallStandard 0x7dc
	SetFlag 0x14e
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 51a

Script_branch_51a: @ 51a
	CheckFlag 0x14f
	CompareLastResultJump EQUAL, Script_branch_562
	CheckFlag 0x96c
	CompareLastResultJump LESSER, Script_branch_562
	Message 0x26
	SetVar 0x8004, 0x4b
	SetVar 0x8005, 0x1
	CheckUndergroundPcStatus 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_6f3
	CallStandard 0x7dc
	SetFlag 0x14f
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 562

Script_branch_562: @ 562
	CheckFlag 0x150
	CompareLastResultJump EQUAL, Script_branch_5aa
	CheckFlag 0x96b
	CompareLastResultJump LESSER, Script_branch_5aa
	Message 0x27
	SetVar 0x8004, 0x4c
	SetVar 0x8005, 0x1
	CheckUndergroundPcStatus 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_6f3
	CallStandard 0x7dc
	SetFlag 0x150
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5aa

Script_branch_5aa: @ 5aa
	CheckFlag 0x151
	CompareLastResultJump EQUAL, Script_branch_5f8
	CheckMasterRank 0x800c
	If 0x800c, 0x64
	CompareLastResultJump LESSER, Script_branch_5f8
	Message 0x28
	SetVar 0x8004, 0x4d
	SetVar 0x8005, 0x1
	CheckUndergroundPcStatus 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_6f3
	CallStandard 0x7dc
	SetFlag 0x151
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5f8

Script_branch_5f8: @ 5f8
	CheckFlag 0x152
	CompareLastResultJump EQUAL, Script_branch_646
	CheckUgPeopleNum 0x800c
	If 0x800c, 0x64
	CompareLastResultJump LESSER, Script_branch_646
	Message 0x29
	SetVar 0x8004, 0x4e
	SetVar 0x8005, 0x1
	CheckUndergroundPcStatus 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_6f3
	CallStandard 0x7dc
	SetFlag 0x152
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 646

Script_branch_646: @ 646
	CheckFlag 0x153
	CompareLastResultJump EQUAL, Script_branch_694
	CheckUgFossilNum 0x800c
	If 0x800c, 0x64
	CompareLastResultJump LESSER, Script_branch_694
	Message 0x2a
	SetVar 0x8004, 0x4f
	SetVar 0x8005, 0x1
	CheckUndergroundPcStatus 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_6f3
	CallStandard 0x7dc
	SetFlag 0x153
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 694

Script_branch_694: @ 694
	CheckFlag 0x154
	CompareLastResultJump EQUAL, Script_branch_6e2
	CheckUgTrapsNum 0x800c
	If 0x800c, 0x64
	CompareLastResultJump LESSER, Script_branch_6e2
	Message 0x2b
	SetVar 0x8004, 0x50
	SetVar 0x8005, 0x1
	CheckUndergroundPcStatus 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_6f3
	CallStandard 0x7dc
	SetFlag 0x154
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6e2

Script_branch_6e2: @ 6e2
	Jump Script_branch_6fe
@ 6e8

Script_branch_6e8: @ 6e8
	Message 0x1b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6f3

Script_branch_6f3: @ 6f3
	Message 0x1e
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6fe

Script_branch_6fe: @ 6fe
	Message 0x20
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 709

Script_17: @ 709
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 71c

Script_18: @ 71c
	PlayFanfare 0x5dc
	LockAll
	Message 0x30
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 72d

Script_19: @ 72d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x31
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 740

Script_20: @ 740
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x32
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 753

Script_21: @ 753
	LockAll
	ApplyMovement 0xff, Movement_87c
	WaitMovement
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x2d5
	CompareLastResultJump EQUAL, Script_branch_7a8
	If 0x8005, 0x2d6
	CompareLastResultJump EQUAL, Script_branch_7c0
	If 0x8005, 0x2d7
	CompareLastResultJump EQUAL, Script_branch_7d8
	If 0x8005, 0x2d8
	CompareLastResultJump EQUAL, Script_branch_7f0
	If 0x8005, 0x2d9
	CompareLastResultJump EQUAL, Script_branch_808
	End
@ 7a8

Script_branch_7a8: @ 7a8
	ChangeOwPosition 0x20, 0x1d7, 0x2d5
	ChangeOwPosition 0x1f, 0x1d7, 0x2d5
	Jump Script_branch_820
@ 7be

.byte 0x2 @ 0x7be
.byte 0x0 @ 0x7bf

Script_branch_7c0: @ 7c0
	ChangeOwPosition 0x20, 0x1d7, 0x2d6
	ChangeOwPosition 0x1f, 0x1d7, 0x2d6
	Jump Script_branch_820
@ 7d6

.byte 0x2 @ 0x7d6
.byte 0x0 @ 0x7d7

Script_branch_7d8: @ 7d8
	ChangeOwPosition 0x20, 0x1d7, 0x2d7
	ChangeOwPosition 0x1f, 0x1d7, 0x2d7
	Jump Script_branch_820
@ 7ee

.byte 0x2 @ 0x7ee
.byte 0x0 @ 0x7ef

Script_branch_7f0: @ 7f0
	ChangeOwPosition 0x20, 0x1d7, 0x2d8
	ChangeOwPosition 0x1f, 0x1d7, 0x2d8
	Jump Script_branch_820
@ 806

.byte 0x2 @ 0x806
.byte 0x0 @ 0x807

Script_branch_808: @ 808
	ChangeOwPosition 0x20, 0x1d7, 0x2d9
	ChangeOwPosition 0x1f, 0x1d7, 0x2d9
	Jump Script_branch_820
@ 81e

.byte 0x2 @ 0x81e
.byte 0x0 @ 0x81f

Script_branch_820: @ 820
	ClearFlag 0x23c
	ClearFlag 0x23d
	AddPeople 0x20
	AddPeople 0x1f
	ApplyMovement 0x1f, Movement_884
	WaitMovement
	PlayCry 0x1ab, 0x0
	WaitCry
	ApplyMovement 0x20, Movement_894
	WaitMovement
	Message 0x0
	Message 0x1
	PlayCry 0x1ab, 0x0
	WaitCry
	RemovePeople 0x1f
	Message 0x2
	CloseMsgOnKeyPress
	ApplyMovement 0x20, Movement_89c
	WaitMovement
	RemovePeople 0x20
	SetVar 0x40f6, 0x1
	ReleaseAll
	End
@ 87b

.byte 0x0 @ 0x87b

Movement_87c: @ 87c
	Exclamation 0x1
	EndMovement 0x0
@ 884

Movement_884: @ 884
	WalkLeftVeryFast 0x9
	EndMovement 0x0
@ 88c

.byte 0x13 @ 0x88c
.byte 0x0 @ 0x88d
.byte 0x8 @ 0x88e
.byte 0x0 @ 0x88f
.byte 0xfe @ 0x890
.byte 0x0 @ 0x891
.byte 0x0 @ 0x892
.byte 0x0 @ 0x893

Movement_894: @ 894
	WalkLeftVeryFast 0x8
	EndMovement 0x0
@ 89c

Movement_89c: @ 89c
	WalkRightFast 0x8
	EndMovement 0x0
@ 8a4

Script_22: @ 8a4
	CallMessageBox 0x34, 0x0, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 8bb

Script_23: @ 8bb
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x35, 0x800c
	CallStandard 0x7d0
	End
@ 8d0

Script_24: @ 8d0
	CallMessageBox 0x36, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 8e7

Script_25: @ 8e7
	CallMessageBox 0x37, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 8fe

Script_26: @ 8fe
	CallMessageBox 0x38, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 915

Script_27: @ 915
	CallMessageBox 0x39, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 92c

Script_28: @ 92c
	CallMessageBox 0x3a, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 943

Script_29: @ 943
	CallMessageBox 0x3b, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 95a

Script_30: @ 95a
	CallMessageBox 0x3c, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 971

Script_31: @ 971
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 984

Script_16: @ 984
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 997

Script_32: @ 997
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x33
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9aa

.byte 0x0 @ 0x9aa
.byte 0x0 @ 0x9ab

@ end_0x9ac
