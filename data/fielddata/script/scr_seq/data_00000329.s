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
	ElevIrAnm
	CheckFlag 0xe5
	CompareLastResultJump LESSER, Script_branch_35
	End
@ 35

Script_branch_35: @ 35
	If 0x4092, 0x2
	CompareLastResultJump EQUAL, Script_branch_4a
	SetVar 0x4092, 0x0
	End
@ 4a

Script_branch_4a: @ 4a
	ChangeOwPosition 0x4, 0x13, 0x29
	ChangeOwMovement 0x4, 0x11
	ReleaseOw 0x4, 0x3
	End
@ 60

Script_2: @ 60
	StopElevAnm
	End
@ 64

Script_3: @ 64
	LockAll
	RideBike 0x0
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x2
	CompareLastResultCall EQUAL, Script_branch_d1
	If 0x8005, 0x3
	CompareLastResultCall EQUAL, Script_branch_dd
	SetVarHero 0x0
	CheckFlag 0xe1
	CompareLastResultCall LESSER, Script_branch_e9
	CheckFlag 0xe1
	CompareLastResultCall EQUAL, Script_branch_ee
	SetVarHero 0x0
	Soundfr 0x481
	Message 0x1
	Cmd_4f
	SetFlag 0xe1
	SetVar 0x4092, 0x1
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	SetVar 0x403f, 0x261
	StartFollow
	FollowHero 0x4, 0x30
	ReleaseAll
	End
@ d1

Script_branch_d1: @ d1
	ApplyMovement 0x4, Movement_170
	WaitMovement
	Return
@ dd

Script_branch_dd: @ dd
	ApplyMovement 0x4, Movement_184
	WaitMovement
	Return
@ e9

Script_branch_e9: @ e9
	Message 0x0
	Return
@ ee

Script_branch_ee: @ ee
	Message 0x3
	Return
@ f3

Script_4: @ f3
	LockAll
	ApplyMovement 0xff, Movement_158
	ApplyMovement 0x4, Movement_160
	WaitMovement
	Message 0x4
	CloseMsgOnKeyPress
	SetVar 0x4092, 0x0
	StopFollow
	FollowHero 0x4, 0x10
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x2
	CompareLastResultCall EQUAL, Script_branch_13e
	If 0x8005, 0x3
	CompareLastResultCall EQUAL, Script_branch_14a
	ReleaseAll
	End
@ 13e

Script_branch_13e: @ 13e
	ApplyMovement 0x4, Movement_190
	WaitMovement
	Return
@ 14a

Script_branch_14a: @ 14a
	ApplyMovement 0x4, Movement_1a0
	WaitMovement
	Return
@ 156

.byte 0x0 @ 0x156
.byte 0x0 @ 0x157

Movement_158: @ 158
	MoveLeftFast 0x1
	EndMovement 0x0
@ 160

Movement_160: @ 160
	SeeRight 0x1
	EndMovement 0x0
@ 168

.byte 0xe @ 0x168
.byte 0x0 @ 0x169
.byte 0x1 @ 0x16a
.byte 0x0 @ 0x16b
.byte 0xfe @ 0x16c
.byte 0x0 @ 0x16d
.byte 0x0 @ 0x16e
.byte 0x0 @ 0x16f

Movement_170: @ 170
	MoveRightFast 0x1
	Exclamation 0x1
	WalkUpFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 184

Movement_184: @ 184
	MoveRightFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 190

Movement_190: @ 190
	WalkLeftFast 0x1
	WalkDownFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 1a0

Movement_1a0: @ 1a0
	WalkLeftFast 0x1
	EndMovement 0x0
@ 1a8

Script_5: @ 1a8
	End
@ 1aa

Script_9: @ 1aa
	LockAll
	StopFollow
	FollowHero 0x4, 0x10
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x28
	CompareLastResultCall EQUAL, Script_branch_291
	If 0x8005, 0x29
	CompareLastResultCall EQUAL, Script_branch_2a5
	Message 0x5
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_384
	WaitMovement
	Message 0x6
	CloseMsgOnKeyPress
	ApplyMovement 0x6, Movement_38c
	WaitMovement
	Message 0x7
	CloseMsgOnKeyPress
	ApplyMovement 0x4, Movement_40c
	WaitMovement
	SetVarHero 0x0
	Message 0x8
	CloseMsgOnKeyPress
	StartFollow
	TrainerBattle 0x343, 0x344
	StopFollow
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_37d
	ApplyMovement 0x5, Movement_394
	WaitMovement
	Message 0x9
	CloseMsgOnKeyPress
	ApplyMovement 0x6, Movement_39c
	WaitMovement
	Message 0xa
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	RemovePeople 0x5
	RemovePeople 0x6
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x28
	CompareLastResultCall EQUAL, Script_branch_2d1
	If 0x8005, 0x29
	CompareLastResultCall EQUAL, Script_branch_2e5
	Call Function_2f9
	Cmd_2b6 0x4, 0x1
	ReleaseAll
	End
@ 291

Script_branch_291: @ 291
	ApplyMovement 0x4, Movement_3d4
	ApplyMovement 0xff, Movement_434
	WaitMovement
	Return
@ 2a5

Script_branch_2a5: @ 2a5
	ApplyMovement 0x4, Movement_3e4
	ApplyMovement 0xff, Movement_44c
	WaitMovement
	Return
@ 2b9

.byte 0x5e @ 0x2b9
.byte 0x0 @ 0x2ba
.byte 0x4 @ 0x2bb
.byte 0x0 @ 0x2bc
.byte 0x33 @ 0x2bd
.byte 0x1 @ 0x2be
.byte 0x0 @ 0x2bf
.byte 0x0 @ 0x2c0
.byte 0x5f @ 0x2c1
.byte 0x0 @ 0x2c2
.byte 0x1b @ 0x2c3
.byte 0x0 @ 0x2c4
.byte 0x5e @ 0x2c5
.byte 0x0 @ 0x2c6
.byte 0x4 @ 0x2c7
.byte 0x0 @ 0x2c8
.byte 0x33 @ 0x2c9
.byte 0x1 @ 0x2ca
.byte 0x0 @ 0x2cb
.byte 0x0 @ 0x2cc
.byte 0x5f @ 0x2cd
.byte 0x0 @ 0x2ce
.byte 0x1b @ 0x2cf
.byte 0x0 @ 0x2d0

Script_branch_2d1: @ 2d1
	ApplyMovement 0x4, Movement_414
	ApplyMovement 0xff, Movement_424
	WaitMovement
	Return
@ 2e5

Script_branch_2e5: @ 2e5
	ApplyMovement 0x4, Movement_41c
	ApplyMovement 0xff, Movement_42c
	WaitMovement
	Return
@ 2f9

Function_2f9: @ 2f9
Script_branch_2f9: @ 2f9
	Message 0xb
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_31c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_366
	End
@ 31c

Script_branch_31c: @ 31c
	CheckPartyNumber 0x800c
	If 0x800c, 0x6
	CompareLastResultJump EQUAL, Script_branch_353
	Soundfr 0x486
	Cmd_4f
	Message 0xc
	GiveEgg 0x1bf, 0xa
	SetFlag 0x1e5
	ClearFlag 0xe2
	Call Function_371
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	Return
@ 353

Script_branch_353: @ 353
	SetFlag 0xe2
	SetVar 0x4092, 0x2
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	Return
@ 366

Script_branch_366: @ 366
	Message 0xe
	Jump Function_2f9
	End
@ 371

Function_371: @ 371
	SetFlag 0xe5
	SetVar 0x4092, 0x2
	Return
@ 37d

Script_branch_37d: @ 37d
	LostGoPc
	ReleaseAll
	End
@ 383

.byte 0x0 @ 0x383

Movement_384: @ 384
	MoveRightFast 0x1
	EndMovement 0x0
@ 38c

Movement_38c: @ 38c
	MoveRightFast 0x1
	EndMovement 0x0
@ 394

Movement_394: @ 394
	MoveDownFast 0x1
	EndMovement 0x0
@ 39c

Movement_39c: @ 39c
	MoveUpFast 0x1
	EndMovement 0x0
@ 3a4

.byte 0xe @ 0x3a4
.byte 0x0 @ 0x3a5
.byte 0x1 @ 0x3a6
.byte 0x0 @ 0x3a7
.byte 0x23 @ 0x3a8
.byte 0x0 @ 0x3a9
.byte 0x1 @ 0x3aa
.byte 0x0 @ 0x3ab
.byte 0xfe @ 0x3ac
.byte 0x0 @ 0x3ad
.byte 0x0 @ 0x3ae
.byte 0x0 @ 0x3af
.byte 0xc @ 0x3b0
.byte 0x0 @ 0x3b1
.byte 0x1 @ 0x3b2
.byte 0x0 @ 0x3b3
.byte 0x22 @ 0x3b4
.byte 0x0 @ 0x3b5
.byte 0x1 @ 0x3b6
.byte 0x0 @ 0x3b7
.byte 0xfe @ 0x3b8
.byte 0x0 @ 0x3b9
.byte 0x0 @ 0x3ba
.byte 0x0 @ 0x3bb
.byte 0x20 @ 0x3bc
.byte 0x0 @ 0x3bd
.byte 0x1 @ 0x3be
.byte 0x0 @ 0x3bf
.byte 0x3f @ 0x3c0
.byte 0x0 @ 0x3c1
.byte 0x2 @ 0x3c2
.byte 0x0 @ 0x3c3
.byte 0x22 @ 0x3c4
.byte 0x0 @ 0x3c5
.byte 0x1 @ 0x3c6
.byte 0x0 @ 0x3c7
.byte 0xfe @ 0x3c8
.byte 0x0 @ 0x3c9
.byte 0x0 @ 0x3ca
.byte 0x0 @ 0x3cb
.byte 0xc @ 0x3cc
.byte 0x0 @ 0x3cd
.byte 0x1 @ 0x3ce
.byte 0x0 @ 0x3cf
.byte 0xfe @ 0x3d0
.byte 0x0 @ 0x3d1
.byte 0x0 @ 0x3d2
.byte 0x0 @ 0x3d3

Movement_3d4: @ 3d4
	MoveLeftFast 0x1
	WalkDownFast 0x1
	WalkLeftFast 0x2
	EndMovement 0x0
@ 3e4

Movement_3e4: @ 3e4
	MoveLeftFast 0x1
	WalkUpFast 0x1
	WalkLeftFast 0x2
	EndMovement 0x0
@ 3f4

.byte 0xd @ 0x3f4
.byte 0x0 @ 0x3f5
.byte 0x1 @ 0x3f6
.byte 0x0 @ 0x3f7
.byte 0xe @ 0x3f8
.byte 0x0 @ 0x3f9
.byte 0x1 @ 0x3fa
.byte 0x0 @ 0x3fb
.byte 0xfe @ 0x3fc
.byte 0x0 @ 0x3fd
.byte 0x0 @ 0x3fe
.byte 0x0 @ 0x3ff
.byte 0xc @ 0x400
.byte 0x0 @ 0x401
.byte 0x1 @ 0x402
.byte 0x0 @ 0x403
.byte 0xe @ 0x404
.byte 0x0 @ 0x405
.byte 0x1 @ 0x406
.byte 0x0 @ 0x407
.byte 0xfe @ 0x408
.byte 0x0 @ 0x409
.byte 0x0 @ 0x40a
.byte 0x0 @ 0x40b

Movement_40c: @ 40c
	MoveLeftFast 0x1
	EndMovement 0x0
@ 414

Movement_414: @ 414
	MoveUpFast 0x1
	EndMovement 0x0
@ 41c

Movement_41c: @ 41c
	MoveDownFast 0x1
	EndMovement 0x0
@ 424

Movement_424: @ 424
	MoveDownFast 0x1
	EndMovement 0x0
@ 42c

Movement_42c: @ 42c
	MoveUpFast 0x1
	EndMovement 0x0
@ 434

Movement_434: @ 434
	Move_3f 0x2
	MoveDownFast 0x1
	Move_3f 0x1
	Move_3d 0x1
	WalkLeftFast 0x1
	EndMovement 0x0
@ 44c

Movement_44c: @ 44c
	Move_3f 0x2
	MoveUpFast 0x1
	Move_3f 0x1
	Move_3d 0x1
	WalkLeftFast 0x1
	EndMovement 0x0
@ 464

Script_6: @ 464
	End
@ 466

Script_7: @ 466
	End
@ 468

Script_8: @ 468
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xe2
	CompareLastResultJump EQUAL, Script_branch_504
	If 0x4092, 0x2
	CompareLastResultJump EQUAL, Script_branch_513
	If 0x40e3, 0x4
	CompareLastResultJump 0x4, Script_branch_4eb
	If 0x40e3, 0x3
	CompareLastResultJump EQUAL, Script_branch_4e0
	If 0x40e3, 0x2
	CompareLastResultJump EQUAL, Script_branch_4d5
	If 0x40e3, 0x1
	CompareLastResultJump EQUAL, Script_branch_4ca
	SetVarHero 0x0
	Message 0x12
	Jump Script_branch_4f6
	End
@ 4ca

Script_branch_4ca: @ 4ca
	Message 0x13
	Jump Script_branch_4f6
	End
@ 4d5

Script_branch_4d5: @ 4d5
	Message 0x14
	Jump Script_branch_4f6
	End
@ 4e0

Script_branch_4e0: @ 4e0
	Message 0x15
	Jump Script_branch_4f6
	End
@ 4eb

Script_branch_4eb: @ 4eb
	Message 0x16
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4f6

Script_branch_4f6: @ 4f6
	ScriptCmd_AddValue 0x40e3, 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 504

Script_branch_504: @ 504
	Call Function_2f9
	Cmd_2b6 0x4, 0x1
	ReleaseAll
	End
@ 513

Script_branch_513: @ 513
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 51e

.byte 0x0 @ 0x51e
.byte 0x0 @ 0x51f

@ end_0x520
