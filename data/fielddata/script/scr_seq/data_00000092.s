.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	.hword 0xfd13
@ 1a

Script_1: @ 1a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x40b6, 0x9
	CompareLastResultJump 0x4, Script_branch_b2
	CheckFlag 0x113
	CompareLastResultJump EQUAL, Script_branch_164
	CheckFlag 0x79
	CompareLastResultJump EQUAL, Script_branch_7e
	Message 0x0
	SetVar 0x8004, 0x1ac
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	SetFlag 0x79
	ClearFlag 0x111
	Message 0x1
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_9c
	SetFlag 0x113
	Jump Script_branch_164
@ 7e

Script_branch_7e: @ 7e
	Message 0x2
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_9c
	SetFlag 0x113
	Jump Script_branch_164
@ 9c

Script_branch_9c: @ 9c
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a7

Script_branch_a7: @ a7
	Message 0x1d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b2

Script_branch_b2: @ b2
	Message 0x21
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ bd

Script_branch_bd: @ bd
	SetFlag 0x111
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ cc

Script_branch_cc: @ cc
	SetFlag 0x111
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ db

Script_branch_db: @ db
	SetFlag 0x111
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ea

Script_branch_ea: @ ea
	SetFlag 0x111
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ f9

Script_branch_f9: @ f9
	SetFlag 0x111
	Message 0x14
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 108

Script_branch_108: @ 108
	SetFlag 0x111
	Message 0x18
	CloseMsgOnKeyPress
	Call Function_57f
	Message 0x19
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 122

Script_branch_122: @ 122
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 12d

Script_branch_12d: @ 12d
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 138

Script_branch_138: @ 138
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 143

Script_branch_143: @ 143
	Message 0x11
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 14e

Script_branch_14e: @ 14e
	Message 0x15
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 159

Script_branch_159: @ 159
	Message 0x1a
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 164

Script_branch_164: @ 164
	If 0x40b6, 0x0
	CompareLastResultJump EQUAL, Script_branch_1df
	If 0x40b6, 0x1
	CompareLastResultJump EQUAL, Script_branch_23d
	If 0x40b6, 0x2
	CompareLastResultJump EQUAL, Script_branch_29b
	If 0x40b6, 0x3
	CompareLastResultJump EQUAL, Script_branch_2d9
	If 0x40b6, 0x4
	CompareLastResultJump EQUAL, Script_branch_347
	If 0x40b6, 0x5
	CompareLastResultJump EQUAL, Script_branch_3d9
	If 0x40b6, 0x6
	CompareLastResultJump EQUAL, Script_branch_448
	If 0x40b6, 0x7
	CompareLastResultJump EQUAL, Script_branch_4a9
	If 0x40b6, 0x8
	CompareLastResultJump EQUAL, Script_branch_50a
	Jump Script_branch_b2
@ 1df

Script_branch_1df: @ 1df
	CheckFlag 0x111
	CompareLastResultJump LESSER, Script_branch_bd
	CheckFlag 0x96e
	CompareLastResultJump LESSER, Script_branch_122
	SetVar 0x40b6, 0x1
	ClearFlag 0x111
	Message 0x6
	SetVar 0x8004, 0x1
	SetVar 0x8005, 0x1
	CallStandard 0x7dd
	SetVar 0x8004, 0x17
	SetVar 0x8005, 0x1
	CallStandard 0x7dd
	SetVar 0x8004, 0x1c
	SetVar 0x8005, 0x1
	CallStandard 0x7dd
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 23d

Script_branch_23d: @ 23d
	CheckFlag 0x111
	CompareLastResultJump LESSER, Script_branch_cc
	CheckFlag 0x96f
	CompareLastResultJump LESSER, Script_branch_12d
	SetVar 0x40b6, 0x2
	ClearFlag 0x111
	Message 0xa
	SetVar 0x8004, 0x1
	SetVar 0x8005, 0x1
	CallStandard 0x7de
	SetVar 0x8004, 0x3
	SetVar 0x8005, 0x1
	CallStandard 0x7de
	SetVar 0x8004, 0x4
	SetVar 0x8005, 0x1
	CallStandard 0x7de
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 29b

Script_branch_29b: @ 29b
	CheckFlag 0x111
	CompareLastResultJump LESSER, Script_branch_db
	CheckFlag 0x970
	CompareLastResultJump LESSER, Script_branch_138
	SetVar 0x40b6, 0x3
	ClearFlag 0x111
	Message 0xe
	SetVar 0x8004, 0x21
	SetVar 0x8005, 0x1
	CallStandard 0x7dd
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2d9

Script_branch_2d9: @ 2d9
	CheckFlag 0x111
	CompareLastResultJump LESSER, Script_branch_ea
	CheckFlag 0x971
	CompareLastResultJump LESSER, Script_branch_143
	SetVar 0x40b6, 0x4
	ClearFlag 0x111
	Message 0x12
	SetVar 0x8004, 0xb
	SetVar 0x8005, 0x1
	CallStandard 0x7fe
	SetVar 0x8004, 0x9
	SetVar 0x8005, 0x1
	CallStandard 0x7fe
	SetVar 0x8004, 0x11
	SetVar 0x8005, 0x1
	CallStandard 0x7fe
	SetVar 0x8004, 0x71
	SetVar 0x8005, 0x1
	CallStandard 0x7fe
	Message 0x13
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 347

Script_branch_347: @ 347
	CheckFlag 0x111
	CompareLastResultJump LESSER, Script_branch_f9
	CheckFlag 0x972
	CompareLastResultJump LESSER, Script_branch_14e
	SetVar 0x40b6, 0x5
	ClearFlag 0x111
	ClearFlag 0xfc
	Message 0x16
	Call Function_37f
	Message 0x17
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 37f

Function_37f: @ 37f
	StoreStarter 0x800c
	If 0x800c, 0x186
	CompareLastResultJump EQUAL, Script_branch_3a3
	If 0x800c, 0x183
	CompareLastResultJump EQUAL, Script_branch_3b5
	Jump Script_branch_3c7
@ 3a3

Script_branch_3a3: @ 3a3
	SetVar 0x8004, 0x65
	SetVar 0x8005, 0x1
	CallStandard 0x7fe
	Return
@ 3b5

Script_branch_3b5: @ 3b5
	SetVar 0x8004, 0x66
	SetVar 0x8005, 0x1
	CallStandard 0x7fe
	Return
@ 3c7

Script_branch_3c7: @ 3c7
	SetVar 0x8004, 0x67
	SetVar 0x8005, 0x1
	CallStandard 0x7fe
	Return
@ 3d9

Script_branch_3d9: @ 3d9
	CheckFlag 0x111
	CompareLastResultJump LESSER, Script_branch_108
	CheckFlag 0x973
	CompareLastResultJump LESSER, Script_branch_159
	CheckFlag 0xfc
	CompareLastResultCall EQUAL, Script_branch_57a
	CheckFlag 0xfc
	CompareLastResultCall LESSER, Script_branch_443
	SetVar 0x8004, 0x51
	SetVar 0x8005, 0x1
	CheckUndergroundPcStatus 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_56b
	CallStandard 0x7fe
	SetVar 0x40b6, 0x6
	ClearFlag 0x111
	ClearFlag 0xfc
	Message 0x1c
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 443

Script_branch_443: @ 443
	Message 0x1b
	Return
@ 448

Script_branch_448: @ 448
	StoreUndTime 0x800c
	If 0x800c, 0x3
	CompareLastResultJump LESSER, Script_branch_a7
	CheckFlag 0xfc
	CompareLastResultCall EQUAL, Script_branch_57a
	CheckFlag 0xfc
	CompareLastResultCall LESSER, Script_branch_4a4
	SetVar 0x8004, 0x52
	SetVar 0x8005, 0x1
	CheckUndergroundPcStatus 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_56b
	CallStandard 0x7dc
	SetVar 0x40b6, 0x7
	ClearFlag 0xfc
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4a4

Script_branch_4a4: @ 4a4
	Message 0x1e
	Return
@ 4a9

Script_branch_4a9: @ 4a9
	StoreUndTime 0x800c
	If 0x800c, 0xa
	CompareLastResultJump LESSER, Script_branch_a7
	CheckFlag 0xfc
	CompareLastResultCall EQUAL, Script_branch_57a
	CheckFlag 0xfc
	CompareLastResultCall LESSER, Script_branch_505
	SetVar 0x8004, 0x53
	SetVar 0x8005, 0x1
	CheckUndergroundPcStatus 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_56b
	CallStandard 0x7dc
	SetVar 0x40b6, 0x8
	ClearFlag 0xfc
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 505

Script_branch_505: @ 505
	Message 0x1f
	Return
@ 50a

Script_branch_50a: @ 50a
	StoreUndTime 0x800c
	If 0x800c, 0x32
	CompareLastResultJump LESSER, Script_branch_a7
	CheckFlag 0xfc
	CompareLastResultCall EQUAL, Script_branch_57a
	CheckFlag 0xfc
	CompareLastResultCall LESSER, Script_branch_566
	SetVar 0x8004, 0x54
	SetVar 0x8005, 0x1
	CheckUndergroundPcStatus 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_56b
	CallStandard 0x7dc
	SetVar 0x40b6, 0x9
	ClearFlag 0xfc
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 566

Script_branch_566: @ 566
	Message 0x20
	Return
@ 56b

Script_branch_56b: @ 56b
	SetFlag 0xfc
	Message 0x22
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 57a

Script_branch_57a: @ 57a
	Message 0x23
	Return
@ 57f

Function_57f: @ 57f
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x5
	CompareLastResultJump EQUAL, Script_branch_5b2
	If 0x8004, 0x7
	CompareLastResultJump EQUAL, Script_branch_5be
	If 0x8005, 0x4
	CompareLastResultJump EQUAL, Script_branch_5ca
	Jump Script_branch_5d6
@ 5b2

Script_branch_5b2: @ 5b2
	ApplyMovement 0x2, Movement_5e4
	WaitMovement
	Return
@ 5be

Script_branch_5be: @ 5be
	ApplyMovement 0x2, Movement_5f8
	WaitMovement
	Return
@ 5ca

Script_branch_5ca: @ 5ca
	ApplyMovement 0x2, Movement_60c
	WaitMovement
	Return
@ 5d6

Script_branch_5d6: @ 5d6
	ApplyMovement 0x2, Movement_620
	WaitMovement
	Return
@ 5e2

.byte 0x0 @ 0x5e2
.byte 0x0 @ 0x5e3

Movement_5e4: @ 5e4
	WalkUp 0x1
	WalkDown 0x2
	WalkUp 0x1
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 5f8

Movement_5f8: @ 5f8
	WalkUp 0x1
	WalkDown 0x2
	WalkUp 0x1
	MoveRightVeryFast 0x1
	EndMovement 0x0
@ 60c

Movement_60c: @ 60c
	WalkLeft 0x1
	WalkRight 0x2
	WalkLeft 0x1
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ 620

Movement_620: @ 620
	WalkLeft 0x1
	WalkRight 0x2
	WalkLeft 0x1
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ 634

Script_2: @ 634
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x24
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 647

Script_3: @ 647
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xbd
	CompareLastResultJump EQUAL, Script_branch_669
	SetFlag 0xbd
	Message 0x26
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 669

Script_branch_669: @ 669
	Message 0x27
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 674

Script_4: @ 674
	PlayFanfare 0x5dc
	LockAll
	Message 0x28
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 685

Script_5: @ 685
	PlayFanfare 0x5dc
	LockAll
	Message 0x29
	Jump Script_branch_696
@ 694

.byte 0x2 @ 0x694
.byte 0x0 @ 0x695

Script_branch_696: @ 696
	Message 0x2a
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0xb4, 0x0
	Cmd_42 0xb5, 0x1
	Cmd_42 0xb6, 0x2
	Cmd_42 0xb7, 0x3
	Cmd_42 0xb8, 0x4
	Cmd_42 0xc, 0x5
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_70a
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_715
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_720
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_72b
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_736
	Jump Script_branch_741
@ 708

.byte 0x2 @ 0x708
.byte 0x0 @ 0x709

Script_branch_70a: @ 70a
	Message 0x2b
	Jump Script_branch_696
@ 713

.byte 0x2 @ 0x713
.byte 0x0 @ 0x714

Script_branch_715: @ 715
	Message 0x2c
	Jump Script_branch_696
@ 71e

.byte 0x2 @ 0x71e
.byte 0x0 @ 0x71f

Script_branch_720: @ 720
	Message 0x2d
	Jump Script_branch_696
@ 729

.byte 0x2 @ 0x729
.byte 0x0 @ 0x72a

Script_branch_72b: @ 72b
	Message 0x2e
	Jump Script_branch_696
@ 734

.byte 0x2 @ 0x734
.byte 0x0 @ 0x735

Script_branch_736: @ 736
	Message 0x2f
	Jump Script_branch_696
@ 73f

.byte 0x2 @ 0x73f
.byte 0x0 @ 0x740

Script_branch_741: @ 741
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 747

Script_6: @ 747
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x25
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 75a

.byte 0x0 @ 0x75a
.byte 0x0 @ 0x75b

@ end_0x75c
