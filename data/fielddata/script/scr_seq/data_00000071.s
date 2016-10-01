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
	.hword 0xfd13
@ 72

Script_21: @ 72
	If 0x407a, 0x4
	CompareLastResultCall EQUAL, Script_branch_b5
	CheckItem 0x1c2, 0x1, 0x4000
	If 0x4000, 0x1
	CompareLastResultJump EQUAL, Script_branch_96
	End
@ 96

Script_branch_96: @ 96
	CheckItem 0x1ac, 0x1, 0x4000
	If 0x4000, 0x1
	CompareLastResultJump EQUAL, Script_branch_ad
	End
@ ad

Script_branch_ad: @ ad
	SetVar 0x4114, 0x0
	End
@ b5

Script_branch_b5: @ b5
	ChangeOwPosition 0xc, 0x133, 0x21d
	Return
@ bf

Script_5: @ bf
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x19
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d2

Script_7: @ d2
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1a
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e5

Script_6: @ e5
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x81
	CompareLastResultJump EQUAL, Script_branch_103
	Message 0x15
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 103

Script_branch_103: @ 103
	Message 0x16
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 10e

Script_8: @ 10e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x81
	CompareLastResultJump EQUAL, Script_branch_12c
	Message 0x17
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 12c

Script_branch_12c: @ 12c
	Message 0x18
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 137

Script_12: @ 137
	CallMessageBox 0x24, 0x0, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 14e

Script_13: @ 14e
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x25, 0x800c
	CallStandard 0x7d0
	End
@ 163

Script_14: @ 163
	CallMessageBox 0x26, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 17a

Script_15: @ 17a
	CallMessageBox 0x27, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 191

Script_16: @ 191
	CallMessageBox 0x28, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 1a8

Script_17: @ 1a8
	CallMessageBox 0x29, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 1bf

Script_1: @ 1bf
	LockAll
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x20a
	CompareLastResultJump EQUAL, Script_branch_1fd
	If 0x8005, 0x20b
	CompareLastResultJump EQUAL, Script_branch_256
	If 0x8005, 0x20c
	CompareLastResultJump EQUAL, Script_branch_266
	If 0x8005, 0x20d
	CompareLastResultJump EQUAL, Script_branch_276
	End
@ 1fd

Script_branch_1fd: @ 1fd
	If 0x8004, 0x130
	CompareLastResultJump EQUAL, Script_branch_226
	If 0x8004, 0x131
	CompareLastResultJump EQUAL, Script_branch_236
	If 0x8004, 0x132
	CompareLastResultJump EQUAL, Script_branch_246
	End
@ 226

Script_branch_226: @ 226
	ChangeOwPosition 0xc, 0x139, 0x20c
	Jump Script_branch_286
	End
@ 236

Script_branch_236: @ 236
	ChangeOwPosition 0xc, 0x13a, 0x20c
	Jump Script_branch_286
	End
@ 246

Script_branch_246: @ 246
	ChangeOwPosition 0xc, 0x13b, 0x20c
	Jump Script_branch_286
	End
@ 256

Script_branch_256: @ 256
	ChangeOwPosition 0xc, 0x139, 0x20b
	Jump Script_branch_286
	End
@ 266

Script_branch_266: @ 266
	ChangeOwPosition 0xc, 0x139, 0x20c
	Jump Script_branch_286
	End
@ 276

Script_branch_276: @ 276
	ChangeOwPosition 0xc, 0x139, 0x20d
	Jump Script_branch_286
	End
@ 286

Script_branch_286: @ 286
	ClearFlag 0x180
	AddPeople 0xc
	Lock 0xc
	If 0x8005, 0x20a
	CompareLastResultCall EQUAL, Script_branch_34b
	If 0x8005, 0x20a
	CompareLastResultCall 0x5, Script_branch_361
	SetVarHero 0x0
	Message 0x6
	CloseMsgOnKeyPress
	If 0x8005, 0x20a
	CompareLastResultCall EQUAL, Script_branch_377
	If 0x8005, 0x20a
	CompareLastResultCall 0x5, Script_branch_383
	Message 0x7
	SetVar 0x8004, 0x1a4
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	Message 0x8
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x20a
	CompareLastResultJump EQUAL, Script_branch_322
	If 0x8005, 0x20b
	CompareLastResultJump EQUAL, Script_branch_3dd
	If 0x8005, 0x20c
	CompareLastResultJump EQUAL, Script_branch_3f7
	If 0x8005, 0x20d
	CompareLastResultJump EQUAL, Script_branch_411
	End
@ 322

Script_branch_322: @ 322
	If 0x8004, 0x130
	CompareLastResultJump EQUAL, Script_branch_38f
	If 0x8004, 0x131
	CompareLastResultJump EQUAL, Script_branch_3a9
	If 0x8004, 0x132
	CompareLastResultJump EQUAL, Script_branch_3c3
	End
@ 34b

Script_branch_34b: @ 34b
	ApplyMovement 0xc, Movement_43c
	WaitMovement
	ApplyMovement 0xff, Movement_4d4
	WaitMovement
	Return
@ 361

Script_branch_361: @ 361
	ApplyMovement 0xc, Movement_450
	WaitMovement
	ApplyMovement 0xff, Movement_4dc
	WaitMovement
	Return
@ 377

Script_branch_377: @ 377
	ApplyMovement 0xc, Movement_460
	WaitMovement
	Return
@ 383

Script_branch_383: @ 383
	ApplyMovement 0xc, Movement_470
	WaitMovement
	Return
@ 38f

Script_branch_38f: @ 38f
	ApplyMovement 0xc, Movement_480
	ApplyMovement 0xff, Movement_4e4
	WaitMovement
	Jump Script_branch_42b
	End
@ 3a9

Script_branch_3a9: @ 3a9
	ApplyMovement 0xc, Movement_48c
	ApplyMovement 0xff, Movement_4e4
	WaitMovement
	Jump Script_branch_42b
	End
@ 3c3

Script_branch_3c3: @ 3c3
	ApplyMovement 0xc, Movement_498
	ApplyMovement 0xff, Movement_4e4
	WaitMovement
	Jump Script_branch_42b
	End
@ 3dd

Script_branch_3dd: @ 3dd
	ApplyMovement 0xc, Movement_4a4
	ApplyMovement 0xff, Movement_4f0
	WaitMovement
	Jump Script_branch_42b
	End
@ 3f7

Script_branch_3f7: @ 3f7
	ApplyMovement 0xc, Movement_4b4
	ApplyMovement 0xff, Movement_4f0
	WaitMovement
	Jump Script_branch_42b
	End
@ 411

Script_branch_411: @ 411
	ApplyMovement 0xc, Movement_4c4
	ApplyMovement 0xff, Movement_4f0
	WaitMovement
	Jump Script_branch_42b
	End
@ 42b

Script_branch_42b: @ 42b
	RemovePeople 0xc
	SetVar 0x407a, 0x2
	ReleaseAll
	End
@ 439

.byte 0x0 @ 0x439
.byte 0x0 @ 0x43a
.byte 0x0 @ 0x43b

Movement_43c: @ 43c
	WalkLeftFast 0x4
	Exclamation 0x1
	WalkLeftFast 0x5
	WalkUpFast 0x1
	EndMovement 0x0
@ 450

Movement_450: @ 450
	WalkLeftFast 0x4
	Exclamation 0x1
	WalkLeftFast 0x4
	EndMovement 0x0
@ 460

Movement_460: @ 460
	MoveRightFast 0x1
	Move_3f 0x2
	MoveUpFast 0x1
	EndMovement 0x0
@ 470

Movement_470: @ 470
	MoveRightFast 0x1
	Move_3f 0x2
	MoveLeftFast 0x1
	EndMovement 0x0
@ 480

Movement_480: @ 480
	WalkLeftFast 0x5
	WalkDownFast 0xa
	EndMovement 0x0
@ 48c

Movement_48c: @ 48c
	WalkLeftFast 0x6
	WalkDownFast 0xa
	EndMovement 0x0
@ 498

Movement_498: @ 498
	WalkLeftFast 0x7
	WalkDownFast 0xa
	EndMovement 0x0
@ 4a4

Movement_4a4: @ 4a4
	WalkDownFast 0x1
	WalkLeftFast 0x6
	WalkDownFast 0xa
	EndMovement 0x0
@ 4b4

Movement_4b4: @ 4b4
	WalkDownFast 0x1
	WalkLeftFast 0x6
	WalkDownFast 0xa
	EndMovement 0x0
@ 4c4

Movement_4c4: @ 4c4
	WalkUpFast 0x1
	WalkLeftFast 0x6
	WalkDownFast 0xb
	EndMovement 0x0
@ 4d4

Movement_4d4: @ 4d4
	MoveDownFast 0x1
	EndMovement 0x0
@ 4dc

Movement_4dc: @ 4dc
	MoveRightFast 0x1
	EndMovement 0x0
@ 4e4

Movement_4e4: @ 4e4
	Move_3f 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 4f0

Movement_4f0: @ 4f0
	Move_3f 0x2
	MoveLeftFast 0x1
	EndMovement 0x0
@ 4fc

Script_2: @ 4fc
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x12
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 50f

Script_3: @ 50f
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x13
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 522

Script_4: @ 522
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x14
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 535

Script_9: @ 535
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 548

Script_10: @ 548
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1c
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 55b

Script_11: @ 55b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 56e

Script_18: @ 56e
	PlayFanfare 0x5dc
	LockAll
	Message 0x2a
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 57f

Script_19: @ 57f
	CheckFlag 0x79
	CompareLastResultJump EQUAL, Script_branch_59d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 59d

Script_branch_59d: @ 59d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x20
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5b0

Script_20: @ 5b0
	LockAll
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x12f
	CompareLastResultCall EQUAL, Script_branch_657
	If 0x8004, 0x130
	CompareLastResultCall EQUAL, Script_branch_663
	If 0x8004, 0x131
	CompareLastResultCall EQUAL, Script_branch_66f
	If 0x8004, 0x132
	CompareLastResultCall EQUAL, Script_branch_67b
	If 0x8004, 0x133
	CompareLastResultCall EQUAL, Script_branch_687
	ApplyMovement 0xff, Movement_760
	WaitMovement
	Message 0x1e
	CloseMsgOnKeyPress
	If 0x8004, 0x12f
	CompareLastResultCall EQUAL, Script_branch_693
	If 0x8004, 0x130
	CompareLastResultCall EQUAL, Script_branch_695
	If 0x8004, 0x131
	CompareLastResultCall EQUAL, Script_branch_6a1
	If 0x8004, 0x132
	CompareLastResultCall EQUAL, Script_branch_6ad
	If 0x8004, 0x133
	CompareLastResultCall EQUAL, Script_branch_6b9
	ApplyMovement 0xff, Movement_768
	WaitMovement
	ReleaseAll
	End
@ 657

Script_branch_657: @ 657
	ApplyMovement 0x1c, Movement_6c8
	WaitMovement
	Return
@ 663

Script_branch_663: @ 663
	ApplyMovement 0x1c, Movement_6d8
	WaitMovement
	Return
@ 66f

Script_branch_66f: @ 66f
	ApplyMovement 0x1c, Movement_6ec
	WaitMovement
	Return
@ 67b

Script_branch_67b: @ 67b
	ApplyMovement 0x1c, Movement_700
	WaitMovement
	Return
@ 687

Script_branch_687: @ 687
	ApplyMovement 0x1c, Movement_714
	WaitMovement
	Return
@ 693

Script_branch_693: @ 693
	Return
@ 695

Script_branch_695: @ 695
	ApplyMovement 0x1c, Movement_730
	WaitMovement
	Return
@ 6a1

Script_branch_6a1: @ 6a1
	ApplyMovement 0x1c, Movement_73c
	WaitMovement
	Return
@ 6ad

Script_branch_6ad: @ 6ad
	ApplyMovement 0x1c, Movement_748
	WaitMovement
	Return
@ 6b9

Script_branch_6b9: @ 6b9
	ApplyMovement 0x1c, Movement_754
	WaitMovement
	Return
@ 6c5

.byte 0x0 @ 0x6c5
.byte 0x0 @ 0x6c6
.byte 0x0 @ 0x6c7

Movement_6c8: @ 6c8
	MoveRightVeryFast 0x1
	Exclamation 0x1
	Move_3e 0x1
	EndMovement 0x0
@ 6d8

Movement_6d8: @ 6d8
	MoveRightVeryFast 0x1
	Exclamation 0x1
	Move_3e 0x1
	WalkRightFast 0x1
	EndMovement 0x0
@ 6ec

Movement_6ec: @ 6ec
	MoveRightVeryFast 0x1
	Exclamation 0x1
	Move_3e 0x1
	WalkRightFast 0x2
	EndMovement 0x0
@ 700

Movement_700: @ 700
	MoveRightVeryFast 0x1
	Exclamation 0x1
	Move_3e 0x1
	WalkRightFast 0x3
	EndMovement 0x0
@ 714

Movement_714: @ 714
	MoveRightVeryFast 0x1
	Exclamation 0x1
	Move_3e 0x1
	WalkRightFast 0x4
	EndMovement 0x0
@ 728

.byte 0x27 @ 0x728
.byte 0x0 @ 0x729
.byte 0x1 @ 0x72a
.byte 0x0 @ 0x72b
.byte 0xfe @ 0x72c
.byte 0x0 @ 0x72d
.byte 0x0 @ 0x72e
.byte 0x0 @ 0x72f

Movement_730: @ 730
	WalkLeftFast 0x1
	MoveRightVeryFast 0x1
	EndMovement 0x0
@ 73c

Movement_73c: @ 73c
	WalkLeftFast 0x2
	MoveRightVeryFast 0x1
	EndMovement 0x0
@ 748

Movement_748: @ 748
	WalkLeftFast 0x3
	MoveRightVeryFast 0x1
	EndMovement 0x0
@ 754

Movement_754: @ 754
	WalkLeftFast 0x4
	MoveRightVeryFast 0x1
	EndMovement 0x0
@ 760

Movement_760: @ 760
	MoveLeftFast 0x1
	EndMovement 0x0
@ 768

Movement_768: @ 768
	WalkUpFast 0x1
	EndMovement 0x0
@ 770

Script_22: @ 770
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x82
	CompareLastResultJump LESSER, Script_branch_7a5
	If 0x408c, 0x1
	CompareLastResultJump 0x4, Script_branch_7a5
	Message 0x22
	WaitButton
	CloseMsgOnKeyPress
	ApplyMovement 0x1e, Movement_898
	WaitMovement
	ReleaseAll
	End
@ 7a5

Script_branch_7a5: @ 7a5
	Message 0x23
	WaitButton
	CloseMsgOnKeyPress
	ApplyMovement 0x1e, Movement_898
	WaitMovement
	ReleaseAll
	End
@ 7ba

Script_23: @ 7ba
	LockAll
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x214
	CompareLastResultCall EQUAL, Script_branch_823
	If 0x8005, 0x215
	CompareLastResultCall EQUAL, Script_branch_82f
	If 0x8005, 0x216
	CompareLastResultCall EQUAL, Script_branch_83b
	ApplyMovement 0xff, Movement_890
	WaitMovement
	Message 0x21
	CloseMsgOnKeyPress
	If 0x8005, 0x214
	CompareLastResultCall EQUAL, Script_branch_847
	If 0x8005, 0x215
	CompareLastResultCall EQUAL, Script_branch_85b
	If 0x8005, 0x216
	CompareLastResultCall EQUAL, Script_branch_86f
	ReleaseAll
	End
@ 823

Script_branch_823: @ 823
	ApplyMovement 0x1e, Movement_8a0
	WaitMovement
	Return
@ 82f

Script_branch_82f: @ 82f
	ApplyMovement 0x1e, Movement_8ac
	WaitMovement
	Return
@ 83b

Script_branch_83b: @ 83b
	ApplyMovement 0x1e, Movement_8bc
	WaitMovement
	Return
@ 847

Script_branch_847: @ 847
	ApplyMovement 0x1e, Movement_8cc
	ApplyMovement 0xff, Movement_884
	WaitMovement
	Return
@ 85b

Script_branch_85b: @ 85b
	ApplyMovement 0x1e, Movement_8dc
	ApplyMovement 0xff, Movement_884
	WaitMovement
	Return
@ 86f

Script_branch_86f: @ 86f
	ApplyMovement 0x1e, Movement_8ec
	ApplyMovement 0xff, Movement_884
	WaitMovement
	Return
@ 883

.byte 0x0 @ 0x883

Movement_884: @ 884
	WalkRightFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 890

Movement_890: @ 890
	SeeUp 0x1
	EndMovement 0x0
@ 898

Movement_898: @ 898
	SeeDown 0x1
	EndMovement 0x0
@ 8a0

Movement_8a0: @ 8a0
	SeeDown 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 8ac

Movement_8ac: @ 8ac
	SeeDown 0x1
	Exclamation 0x1
	WalkDownFast 0x1
	EndMovement 0x0
@ 8bc

Movement_8bc: @ 8bc
	SeeDown 0x1
	Exclamation 0x1
	WalkDownFast 0x2
	EndMovement 0x0
@ 8cc

Movement_8cc: @ 8cc
	WalkDownFast 0x1
	WalkUpFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 8dc

Movement_8dc: @ 8dc
	WalkDownFast 0x1
	WalkUpFast 0x2
	MoveDownFast 0x1
	EndMovement 0x0
@ 8ec

Movement_8ec: @ 8ec
	WalkDownFast 0x1
	WalkUpFast 0x3
	MoveDownFast 0x1
	EndMovement 0x0
@ 8fc

Script_24: @ 8fc
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVariableRival 0x0
	Message 0x11
	CloseMsgOnKeyPress
	ApplyMovement 0x1f, Movement_944
	WaitMovement
	PrepareDoorAnimation 0x9, 0x11, 0x18, 0x12, 0x4d
	OpenDoor 0x4d
	WaitAction 0x4d
	ApplyMovement 0x1f, Movement_94c
	WaitMovement
	RemovePeople 0x1f
	CloseDoor 0x4d
	WaitAction 0x4d
	WaitClose 0x4d
	ReleaseAll
	End
@ 942

.byte 0x0 @ 0x942
.byte 0x0 @ 0x943

Movement_944: @ 944
	MoveUpFast 0x1
	EndMovement 0x0
@ 94c

Movement_94c: @ 94c
	WalkUpFast 0x1
	EndMovement 0x0
@ 954

Script_25: @ 954
	LockAll
	Cmd_32d
	Cmd_331
	ChangeOwPosition 0x21, 0x12b, 0x215
	ClearFlag 0x18c
	AddPeople 0x21
	Lock 0x21
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x20b
	CompareLastResultJump EQUAL, Script_branch_99d
	If 0x8005, 0x20c
	CompareLastResultJump EQUAL, Script_branch_9b7
	If 0x8005, 0x20d
	CompareLastResultJump EQUAL, Script_branch_9d1
	End
@ 99d

Script_branch_99d: @ 99d
	ApplyMovement 0x21, Movement_b58
	ApplyMovement 0xff, Movement_bdc
	WaitMovement
	Jump Script_branch_9eb
	End
@ 9b7

Script_branch_9b7: @ 9b7
	ApplyMovement 0x21, Movement_b64
	ApplyMovement 0xff, Movement_bfc
	WaitMovement
	Jump Script_branch_9eb
	End
@ 9d1

Script_branch_9d1: @ 9d1
	ApplyMovement 0x21, Movement_b70
	ApplyMovement 0xff, Movement_c1c
	WaitMovement
	Jump Script_branch_9eb
	End
@ 9eb

Script_branch_9eb: @ 9eb
	PlayFanfare 0x602
	Message 0x0
	CloseMsgOnKeyPress
	CallStandard 0x7fa
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x1
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x20b
	CompareLastResultJump EQUAL, Script_branch_a32
	If 0x8005, 0x20c
	CompareLastResultJump EQUAL, Script_branch_a5e
	If 0x8005, 0x20d
	CompareLastResultJump EQUAL, Script_branch_a8a
	End
@ a32

Script_branch_a32: @ a32
	ApplyMovement 0x21, Movement_b7c
	ApplyMovement 0xff, Movement_c3c
	WaitMovement
	ApplyMovement 0x21, Movement_bb0
	ApplyMovement 0xff, Movement_c74
	WaitMovement
	Jump Script_branch_ab6
	End
@ a5e

Script_branch_a5e: @ a5e
	ApplyMovement 0x21, Movement_b8c
	ApplyMovement 0xff, Movement_c4c
	WaitMovement
	ApplyMovement 0x21, Movement_bb8
	ApplyMovement 0xff, Movement_c88
	WaitMovement
	Jump Script_branch_ab6
	End
@ a8a

Script_branch_a8a: @ a8a
	ApplyMovement 0x21, Movement_ba0
	ApplyMovement 0xff, Movement_c64
	WaitMovement
	ApplyMovement 0x21, Movement_bb0
	ApplyMovement 0xff, Movement_c98
	WaitMovement
	Jump Script_branch_ab6
	End
@ ab6

Script_branch_ab6: @ ab6
	SetVariableRival 0x0
	Message 0x2
	CloseMsgOnKeyPress
	CallStandard 0x7fb
	Cmd_32e
	Cmd_332
	LockCam 0x143, 0x20c
	ApplyMovement 0xf1, Movement_cd4
	WaitMovement
	Message 0x3
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	ApplyMovement 0x20, Movement_ce4
	ApplyMovement 0xf1, Movement_cdc
	WaitMovement
	ZoomCam
	Message 0x4
	CloseMsgOnKeyPress
	ApplyMovement 0x20, Movement_cf4
	ApplyMovement 0x21, Movement_bc0
	ApplyMovement 0xff, Movement_cac
	WaitMovement
	RemovePeople 0x20
	Return2 0x23, 0x800c
	ApplyMovement 0x21, Movement_bd4
	ApplyMovement 0xff, Movement_cc0
	WaitMovement
	SetVariableRival 0x0
	Message 0x5
	CloseMsgOnKeyPress
	ApplyMovement 0x21, Movement_bcc
	ApplyMovement 0xff, Movement_cc8
	WaitMovement
	RemovePeople 0x21
	SetVar 0x407a, 0x1
	ReleaseAll
	End
@ b58

Movement_b58: @ b58
	WalkUpVeryFast  0xa
	WalkRightVeryFast 0x4
	EndMovement 0x0
@ b64

Movement_b64: @ b64
	WalkUpVeryFast  0x9
	WalkRightVeryFast 0x4
	EndMovement 0x0
@ b70

Movement_b70: @ b70
	WalkUpVeryFast  0x8
	WalkRightVeryFast 0x4
	EndMovement 0x0
@ b7c

Movement_b7c: @ b7c
	WalkDownFast 0x1
	WalkRightFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ b8c

Movement_b8c: @ b8c
	WalkDownFast 0x1
	WalkRightFast 0x2
	WalkUpFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ ba0

Movement_ba0: @ ba0
	WalkUpFast 0x1
	WalkRightFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ bb0

Movement_bb0: @ bb0
	WalkRightFast 0x13
	EndMovement 0x0
@ bb8

Movement_bb8: @ bb8
	WalkRightFast 0x12
	EndMovement 0x0
@ bc0

Movement_bc0: @ bc0
	Move_3f 0x3
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ bcc

Movement_bcc: @ bcc
	WalkLeftVeryFast 0xc
	EndMovement 0x0
@ bd4

Movement_bd4: @ bd4
	WalkDownVeryFast  0x1
	EndMovement 0x0
@ bdc

Movement_bdc: @ bdc
	Move_3e 0xa
	Move_3d 0x1
	Move_3c 0x1
	Move_47 0x1
	WalkRightVeryFast 0x1
	Move_48 0x1
	SeeLeft 0x1
	EndMovement 0x0
@ bfc

Movement_bfc: @ bfc
	Move_3e 0x9
	Move_3d 0x1
	Move_3c 0x1
	Move_47 0x1
	WalkRightVeryFast 0x1
	Move_48 0x1
	SeeLeft 0x1
	EndMovement 0x0
@ c1c

Movement_c1c: @ c1c
	Move_3e 0x8
	Move_3d 0x1
	Move_3c 0x1
	Move_47 0x1
	WalkRightVeryFast 0x1
	Move_48 0x1
	SeeLeft 0x1
	EndMovement 0x0
@ c3c

Movement_c3c: @ c3c
	Move_3f 0x1
	Move_3e 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ c4c

Movement_c4c: @ c4c
	Move_3f 0x1
	Move_3e 0x1
	MoveDownFast 0x1
	Move_3e 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ c64

Movement_c64: @ c64
	Move_3f 0x1
	Move_3e 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ c74

Movement_c74: @ c74
	WalkDownFast 0x1
	WalkRightFast 0x12
	WalkDownFast 0x1
	WalkRightFast 0x1
	EndMovement 0x0
@ c88

Movement_c88: @ c88
	WalkRightFast 0x12
	WalkDownFast 0x1
	WalkRightFast 0x1
	EndMovement 0x0
@ c98

Movement_c98: @ c98
	WalkUpFast 0x1
	WalkRightFast 0x12
	WalkDownFast 0x1
	WalkRightFast 0x1
	EndMovement 0x0
@ cac

Movement_cac: @ cac
	WalkDownFast 0x1
	MoveRightFast 0x1
	Move_3f 0x2
	MoveLeftFast 0x1
	EndMovement 0x0
@ cc0

Movement_cc0: @ cc0
	MoveUpFast 0x1
	EndMovement 0x0
@ cc8

Movement_cc8: @ cc8
	Move_3f 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ cd4

Movement_cd4: @ cd4
	WalkRightFast 0x4
	EndMovement 0x0
@ cdc

Movement_cdc: @ cdc
	WalkLeftFast 0x4
	EndMovement 0x0
@ ce4

Movement_ce4: @ ce4
	WalkLeftFast 0x3
	WalkUpFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ cf4

Movement_cf4: @ cf4
	Move_3f 0x2
	WalkLeftFast 0xe
	EndMovement 0x0
@ d00

Script_26: @ d00
	LockAll
	ReleaseOw 0xc, 0x3
	ChangeOwMovement 0xc, 0x11
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x21c
	CompareLastResultJump EQUAL, Script_branch_d64
	If 0x8005, 0x21d
	CompareLastResultJump EQUAL, Script_branch_d7a
	If 0x8005, 0x21e
	CompareLastResultJump EQUAL, Script_branch_d90
	If 0x8005, 0x21f
	CompareLastResultJump EQUAL, Script_branch_da6
	If 0x8005, 0x220
	CompareLastResultJump EQUAL, Script_branch_dbc
	If 0x8005, 0x221
	CompareLastResultJump EQUAL, Script_branch_dd2
	End
@ d64

Script_branch_d64: @ d64
	ChangeOwPosition 0xc, 0x130, 0x224
	Call Function_de8
	Jump Script_branch_df6
	End
@ d7a

Script_branch_d7a: @ d7a
	ChangeOwPosition 0xc, 0x130, 0x225
	Call Function_de8
	Jump Script_branch_df6
	End
@ d90

Script_branch_d90: @ d90
	ChangeOwPosition 0xc, 0x130, 0x226
	Call Function_de8
	Jump Script_branch_df6
	End
@ da6

Script_branch_da6: @ da6
	ChangeOwPosition 0xc, 0x130, 0x227
	Call Function_de8
	Jump Script_branch_df6
	End
@ dbc

Script_branch_dbc: @ dbc
	ChangeOwPosition 0xc, 0x130, 0x228
	Call Function_de8
	Jump Script_branch_df6
	End
@ dd2

Script_branch_dd2: @ dd2
	ChangeOwPosition 0xc, 0x130, 0x229
	Call Function_de8
	Jump Script_branch_df6
	End
@ de8

Function_de8: @ de8
	ClearFlag 0x180
	AddPeople 0xc
	Lock 0xc
	Return
@ df6

Script_branch_df6: @ df6
	ApplyMovement 0xc, Movement_e88
	WaitMovement
	ApplyMovement 0xff, Movement_eac
	WaitMovement
	Message 0x9
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_e75
	CheckPartyNumber 0x800c
	If 0x800c, 0x6
	CompareLastResultJump 0x4, Script_branch_e67
	Call Function_e4b
	ApplyMovement 0xc, Movement_ea0
	WaitMovement
	RemovePeople 0xc
	Jump Script_branch_e83
	End
@ e4b

Function_e4b: @ e4b
	Soundfr 0x486
	Cmd_4f
	Message 0xa
	Message 0x10
	CloseMsgOnKeyPress
	GiveEgg 0xaf, 0xb
	SetVar 0x407a, 0x5
	Return
@ e67

Script_branch_e67: @ e67
	Call Function_fbe
	Jump Script_branch_e83
	End
@ e75

Script_branch_e75: @ e75
	Call Function_fcd
	Jump Script_branch_e83
	End
@ e83

Script_branch_e83: @ e83
	ReleaseAll
	End
@ e87

.byte 0x0 @ 0xe87

Movement_e88: @ e88
	WalkUpFast 0x3
	Exclamation 0x1
	WalkUpFast 0x5
	WalkRightFast 0x2
	WalkRightFast 0x1
	EndMovement 0x0
@ ea0

Movement_ea0: @ ea0
	WalkLeftFast 0x3
	WalkDownFast 0x9
	EndMovement 0x0
@ eac

Movement_eac: @ eac
	MoveLeftFast 0x1
	EndMovement 0x0
@ eb4

Script_28: @ eb4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x407a, 0x4
	CompareLastResultJump EQUAL, Script_branch_ecd
	ReleaseAll
	End
@ ecd

Script_branch_ecd: @ ecd
	Message 0xe
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_fac
	CheckPartyNumber 0x800c
	If 0x800c, 0x6
	CompareLastResultJump 0x4, Script_branch_f9e
	Call Function_e4b
	CheckFacePosition 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_f32
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_f4c
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_f66
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_f78
	End
@ f32

Script_branch_f32: @ f32
	ApplyMovement 0xc, Movement_10bc
	ApplyMovement 0xff, Movement_10e0
	WaitMovement
	Jump Script_branch_f92
	End
@ f4c

Script_branch_f4c: @ f4c
	ApplyMovement 0xc, Movement_10bc
	ApplyMovement 0xff, Movement_10e0
	WaitMovement
	Jump Script_branch_f92
	End
@ f66

Script_branch_f66: @ f66
	ApplyMovement 0xc, Movement_10bc
	WaitMovement
	Jump Script_branch_f92
	End
@ f78

Script_branch_f78: @ f78
	ApplyMovement 0xc, Movement_10c8
	ApplyMovement 0xff, Movement_10ec
	WaitMovement
	Jump Script_branch_f92
	End
@ f92

Script_branch_f92: @ f92
	RemovePeople 0xc
	Jump Script_branch_fba
	End
@ f9e

Script_branch_f9e: @ f9e
	Call Function_fbe
	Jump Script_branch_fba
	End
@ fac

Script_branch_fac: @ fac
	Call Function_fcd
	Jump Script_branch_fba
	End
@ fba

Script_branch_fba: @ fba
	ReleaseAll
	End
@ fbe

Function_fbe: @ fbe
	SetVar 0x407a, 0x4
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	Return
@ fcd

Function_fcd: @ fcd
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	SetVar 0x407a, 0x4
	Return
@ fdc

Script_27: @ fdc
	LockAll
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x21c
	CompareLastResultJump EQUAL, Script_branch_1034
	If 0x8005, 0x21d
	CompareLastResultJump EQUAL, Script_branch_1046
	If 0x8005, 0x21e
	CompareLastResultJump EQUAL, Script_branch_1058
	If 0x8005, 0x21f
	CompareLastResultJump EQUAL, Script_branch_106a
	If 0x8005, 0x220
	CompareLastResultJump EQUAL, Script_branch_107c
	If 0x8005, 0x221
	CompareLastResultJump EQUAL, Script_branch_108e
	End
@ 1034

Script_branch_1034: @ 1034
	ApplyMovement 0xc, Movement_10b4
	WaitMovement
	Jump Script_branch_10a0
	End
@ 1046

Script_branch_1046: @ 1046
	ApplyMovement 0xc, Movement_10b4
	WaitMovement
	Jump Script_branch_10a0
	End
@ 1058

Script_branch_1058: @ 1058
	ApplyMovement 0xc, Movement_10b4
	WaitMovement
	Jump Script_branch_10a0
	End
@ 106a

Script_branch_106a: @ 106a
	ApplyMovement 0xc, Movement_10b4
	WaitMovement
	Jump Script_branch_10a0
	End
@ 107c

Script_branch_107c: @ 107c
	ApplyMovement 0xc, Movement_10b4
	WaitMovement
	Jump Script_branch_10a0
	End
@ 108e

Script_branch_108e: @ 108e
	ApplyMovement 0xc, Movement_10b4
	WaitMovement
	Jump Script_branch_10a0
	End
@ 10a0

Script_branch_10a0: @ 10a0
	Message 0xd
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_10d8
	WaitMovement
	ReleaseAll
	End
@ 10b3

.byte 0x0 @ 0x10b3

Movement_10b4: @ 10b4
	MoveRightFast 0x1
	EndMovement 0x0
@ 10bc

Movement_10bc: @ 10bc
	WalkLeftFast 0x3
	WalkDownFast 0x9
	EndMovement 0x0
@ 10c8

Movement_10c8: @ 10c8
	WalkDownFast 0x1
	WalkLeftFast 0x3
	WalkDownFast 0x8
	EndMovement 0x0
@ 10d8

Movement_10d8: @ 10d8
	WalkLeftFast 0x1
	EndMovement 0x0
@ 10e0

Movement_10e0: @ 10e0
	Move_3f 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 10ec

Movement_10ec: @ 10ec
	Move_3f 0x2
	Move_3e 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 10fc

@ end_0x10fc
