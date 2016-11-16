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
	.hword 0xfd13
@ 36

Script_1: @ 36
	ClearFlag 0x995
	SetFlag 0x9f3
	If 0x40f3, 0x0
	CompareLastResultJump 0x5, Script_branch_4d
	End
@ 4d

Script_branch_4d: @ 4d
	ChangeOwPosition 0x7, 0x8, 0x9
	ReleaseOw 0x7, 0x2
	End
@ 5d

Function_5d: @ 5d
	If 0x40e0, 0x7d0
	CompareLastResultJump EQUAL, Script_branch_74
	SetVarHero 0x1
	SetVariableNumber 0x2, 0x40e0
	Return
@ 74

Script_branch_74: @ 74
	SetVariableRival 0x1
	SetVariableNumber 0x2, 0x40e0
	Return
@ 7e

Script_2: @ 7e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_9d
	Jump Script_branch_d2
@ 9d

Script_branch_9d: @ 9d
	CheckFlag 0xd3
	CompareLastResultJump EQUAL, Script_branch_1d6
	SetFlag 0xd3
	SetVarHero 0x0
	Message 0x15
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_107
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1cb
	End
@ d2

Script_branch_d2: @ d2
	CheckFlag 0xd3
	CompareLastResultJump EQUAL, Script_branch_1e2
	SetFlag 0xd3
	SetVarHero 0x0
	Message 0x16
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_107
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1cb
	End
@ 107

Script_branch_107: @ 107
	Message 0x17
	Jump Script_branch_12b
@ 110

Script_branch_110: @ 110
	Message 0x18
	Jump Script_branch_12b
@ 119

Script_branch_119: @ 119
	Message 0x19
	Jump Script_branch_12b
@ 122

Script_branch_122: @ 122
	Message 0x1a
	Jump Script_branch_12b
@ 12b

Script_branch_12b: @ 12b
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0xc6, 0x0
	Cmd_42 0xc7, 0x1
	Cmd_42 0xc8, 0x2
	Cmd_42 0xca, 0x4
	CloseMulti
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_110
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_119
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_122
	Jump Script_branch_172
@ 172

Script_branch_172: @ 172
	Message 0x1c
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1cb
Script_branch_186: @ 186
	SetVar 0x800c, 0x0
	CheckBoxesNumber 0x800c
	If 0x800c, 0x6
	CompareLastResultJump LESSER, Script_branch_2ad
	SetVar 0x800c, 0x0
	CheckPokeCatchingShow 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_299
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_231
	Jump Script_branch_245
@ 1cb

Script_branch_1cb: @ 1cb
	Message 0x1d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1d6

Script_branch_1d6: @ 1d6
	SetVarHero 0x0
	Message 0x1e
	Jump Script_branch_1ee
@ 1e2

Script_branch_1e2: @ 1e2
	SetVarHero 0x0
	Message 0x1f
	Jump Script_branch_1ee
@ 1ee

Script_branch_1ee: @ 1ee
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0xcb, 0x0
	Cmd_42 0xcc, 0x1
	Cmd_42 0xcd, 0x2
	CloseMulti
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_186
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_2a4
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_1cb
	Jump Script_branch_1cb
@ 231

Script_branch_231: @ 231
	Call Function_5d
	SetVarHero 0x0
	Message 0x20
	CloseMsgOnKeyPress
	Jump Script_branch_259
@ 245

Script_branch_245: @ 245
	Call Function_5d
	SetVarHero 0x0
	Message 0x21
	CloseMsgOnKeyPress
	Jump Script_branch_259
@ 259

Script_branch_259: @ 259
	ApplyMovement 0x7, Movement_2b8
	WaitMovement
	ApplyMovement 0xff, Movement_2cc
	WaitMovement
	PlayFanfare 0x603
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0xfb, 0x0, 0x18, 0x2f, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 299

Script_branch_299: @ 299
	Message 0x22
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2a4

Script_branch_2a4: @ 2a4
	Message 0x23
	Jump Script_branch_12b
@ 2ad

Script_branch_2ad: @ 2ad
	Message 0x25
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2b8

Movement_2b8: @ 2b8
	MoveUpVeryFast 0x1
	WalkUpFast 0x2
	WalkRightFast 0x1
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 2cc

Movement_2cc: @ 2cc
	WalkUpFast 0x5
	WaitDisappear 0x1
	EndMovement 0x0
@ 2d8

Script_12: @ 2d8
	LockAll
	SetVar 0x40f3, 0x0
	ApplyMovement 0xff, Movement_3e4
	WaitMovement
	ApplyMovement 0x7, Movement_3d8
	WaitMovement
	ReleaseAll
	End
@ 2f8

Script_3: @ 2f8
	LockAll
	SetVar 0x40f3, 0x0
	ApplyMovement 0xff, Movement_3ec
	WaitMovement
	CheckCatchingShowRecords 0x0, 0x800c
	SetVariableNumber 0x0, 0x800c
	CheckCatchingShowRecords 0x1, 0x800c
	SetVariableNumber 0x1, 0x800c
	CheckCatchingShowRecords 0x2, 0x800c
	SetVariableNumber 0x2, 0x800c
	CheckCatchingShowRecords 0x3, 0x800c
	SetVariableNumber 0x3, 0x800c
	Message 0x26
	CheckCatchingShowRecords 0x3, 0x800c
	If2 0x800c, 0x40e0
	CompareLastResultJump GREATER, Script_branch_35b
	Message 0x28
	Call Function_7be
	Jump Script_branch_370
@ 35b

Script_branch_35b: @ 35b
	Message 0x27
	Call Function_7be
	CheckCatchingShowRecords 0x3, 0x40e0
	Jump Script_branch_370
@ 370

Script_branch_370: @ 370
	Message 0x29
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3ab
	Message 0x2e
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_39e
	Jump Script_branch_370
@ 39e

Script_branch_39e: @ 39e
	Message 0x2b
	Cmd_30
	CloseMsgOnKeyPress
	Jump Script_branch_3bd
@ 3ab

Script_branch_3ab: @ 3ab
	CloseCatchingShow
	Message 0x2a
	Message 0x2c
	Cmd_30
	CloseMsgOnKeyPress
	Jump Script_branch_3bd
@ 3bd

Script_branch_3bd: @ 3bd
	ApplyMovement 0xff, Movement_3f8
	WaitMovement
	ApplyMovement 0x7, Movement_3d8
	WaitMovement
	ReleaseAll
	End
@ 3d5

.byte 0x0 @ 0x3d5
.byte 0x0 @ 0x3d6
.byte 0x0 @ 0x3d7

Movement_3d8: @ 3d8
	WalkLeftFast 0x1
	WalkDownFast 0x2
	EndMovement 0x0
@ 3e4

Movement_3e4: @ 3e4
	WalkDownFast 0x5
	EndMovement 0x0
@ 3ec

Movement_3ec: @ 3ec
	WalkDownFast 0x2
	MoveRightVeryFast 0x1
	EndMovement 0x0
@ 3f8

Movement_3f8: @ 3f8
	WalkDownFast 0x4
	EndMovement 0x0
@ 400

Script_4: @ 400
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x39
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 413

Script_5: @ 413
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVarHero 0x0
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_454
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_449
	Jump Script_branch_43e
@ 43e

Script_branch_43e: @ 43e
	Message 0x34
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 449

Script_branch_449: @ 449
	Message 0x35
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 454

Script_branch_454: @ 454
	Message 0x36
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 45f

Script_6: @ 45f
	SetVarHero 0x0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x37
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 475

Script_7: @ 475
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x38
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 488

Script_8: @ 488
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x41
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 49b

Script_9: @ 49b
	Call Function_5d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x39
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4b4

Script_10: @ 4b4
	LockAll
	ClearFlag 0x242
	SetVar 0x40e0, 0x7d0
	ApplyMovement 0x1, Movement_548
	WaitMovement
	CheckGender 0x4000
	SetVarHero 0x0
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_4e4
	Jump Script_branch_4ed
@ 4e4

Script_branch_4e4: @ 4e4
	Message 0x0
	Jump Script_branch_4f6
@ 4ed

Script_branch_4ed: @ 4ed
	Message 0x1
	Jump Script_branch_4f6
@ 4f6

Script_branch_4f6: @ 4f6
	Message 0x2
	CloseMsgOnKeyPress
	ApplyMovement 0x1, Movement_558
	WaitMovement
	Message 0x3
	SetVar 0x8004, 0x13
	CallStandard 0x7d9
	Message 0x4
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	ApplyMovement 0xff, Movement_570
	WaitMovement
	ApplyMovement 0x1, Movement_564
	WaitMovement
	PlayFanfare 0x603
	RemovePeople 0x1
	WaitFanfare 0x603
	SetVar 0x40c6, 0x1
	ReleaseAll
	End
@ 547

.byte 0x0 @ 0x547

Movement_548: @ 548
	Exclamation 0x1
	Move_3f 0x1
	WalkDownFast 0x3
	EndMovement 0x0
@ 558

Movement_558: @ 558
	Exclamation 0x1
	Move_3f 0x1
	EndMovement 0x0
@ 564

Movement_564: @ 564
	WalkDownFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 570

Movement_570: @ 570
	WalkRightFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 57c

Script_11: @ 57c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x400a, 0x1
	CompareLastResultJump EQUAL, Script_branch_62c
	If 0x400a, 0x2
	CompareLastResultJump EQUAL, Script_branch_63c
	StorePoketchApp 0x15, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_657
	Message 0x5
	Message 0x6
	StorePoketchApp 0x14, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_5fb
	Message 0xa
	CheckPokeParty 0x800c, 0x8f
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_64c
	Message 0xb
	SetVar 0x8004, 0x14
	CallStandard 0x7d9
	WaitButton
	SetVar 0x400a, 0x1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5fb

Script_branch_5fb: @ 5fb
	Message 0xd
	CheckPokeParty 0x800c, 0x160
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_64c
	Message 0xe
	SetVar 0x8004, 0x15
	CallStandard 0x7d9
	WaitButton
	SetVar 0x400a, 0x2
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 62c

Script_branch_62c: @ 62c
	SetVarObj 0x0, 0x14
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 63c

Script_branch_63c: @ 63c
	SetVarObj 0x0, 0x15
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 64c

Script_branch_64c: @ 64c
	Message 0x13
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 657

Script_branch_657: @ 657
	Message 0x14
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 662

Script_13: @ 662
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x4009, 0x1
	CompareLastResultJump EQUAL, Script_branch_6cf
	CheckPCatchingShow 0x800c
	If 0x800c, 0x4
	CompareLastResultJump EQUAL, Script_branch_6da
	If 0x800c, 0x5
	CompareLastResultJump EQUAL, Script_branch_706
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_732
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_756
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_77a
	Jump Script_branch_6c4
@ 6c2

.byte 0x2 @ 0x6c2
.byte 0x0 @ 0x6c3

Script_branch_6c4: @ 6c4
	Message 0x42
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6cf

Script_branch_6cf: @ 6cf
	Message 0x48
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6da

Script_branch_6da: @ 6da
	SetVar 0x8004, 0x61
	SetVar 0x8005, 0x1
	CheckAccessories 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_6c4
	Message 0x43
	Jump Script_branch_79e
@ 704

.byte 0x2 @ 0x704
.byte 0x0 @ 0x705

Script_branch_706: @ 706
	SetVar 0x8004, 0x62
	SetVar 0x8005, 0x1
	CheckAccessories 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_6c4
	Message 0x44
	Jump Script_branch_79e
@ 730

.byte 0x2 @ 0x730
.byte 0x0 @ 0x731

Script_branch_732: @ 732
	SetVar 0x8004, 0xe
	CheckAccessories2 0x8004, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_6c4
	Message 0x45
	Jump Script_branch_7ae
@ 754

.byte 0x2 @ 0x754
.byte 0x0 @ 0x755

Script_branch_756: @ 756
	SetVar 0x8004, 0xf
	CheckAccessories2 0x8004, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_6c4
	Message 0x46
	Jump Script_branch_7ae
@ 778

.byte 0x2 @ 0x778
.byte 0x0 @ 0x779

Script_branch_77a: @ 77a
	SetVar 0x8004, 0x10
	CheckAccessories2 0x8004, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_6c4
	Message 0x47
	Jump Script_branch_7ae
@ 79c

.byte 0x2 @ 0x79c
.byte 0x0 @ 0x79d

Script_branch_79e: @ 79e
	CallStandard 0x7df
	SetVar 0x4009, 0x1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7ae

Script_branch_7ae: @ 7ae
	CallStandard 0x7f4
	SetVar 0x4009, 0x1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7be

Function_7be: @ 7be
	CheckCatchingShowRecords 0x3, 0x800c
	If 0x800c, 0xbb8
	CompareLastResultCall LESSER, Script_branch_7fa
	If 0x800c, 0xce4
	CompareLastResultCall LESSER, Script_branch_870
	If 0x800c, 0xdac
	CompareLastResultCall LESSER, Script_branch_8bf
	If 0x800c, 0x2710
	CompareLastResultCall LESSER, Script_branch_928
	Return
@ 7fa

Script_branch_7fa: @ 7fa
	CheckIdPlayer 0x8006, 0x8
	If 0x8006, 0x0
	CompareLastResultCall EQUAL, Script_branch_9b6
	If 0x8006, 0x1
	CompareLastResultCall EQUAL, Script_branch_9be
	If 0x8006, 0x2
	CompareLastResultCall EQUAL, Script_branch_9c6
	If 0x8006, 0x3
	CompareLastResultCall EQUAL, Script_branch_9ce
	If 0x8006, 0x4
	CompareLastResultCall EQUAL, Script_branch_9d6
	If 0x8006, 0x5
	CompareLastResultCall EQUAL, Script_branch_9de
	If 0x8006, 0x6
	CompareLastResultCall EQUAL, Script_branch_9e6
	If 0x8006, 0x7
	CompareLastResultCall EQUAL, Script_branch_9ee
	Call Function_984
	Return
@ 870

Script_branch_870: @ 870
	CheckIdPlayer 0x8006, 0x5
	If 0x8006, 0x0
	CompareLastResultCall EQUAL, Script_branch_9f6
	If 0x8006, 0x1
	CompareLastResultCall EQUAL, Script_branch_9fe
	If 0x8006, 0x2
	CompareLastResultCall EQUAL, Script_branch_a06
	If 0x8006, 0x3
	CompareLastResultCall EQUAL, Script_branch_a0e
	If 0x8006, 0x4
	CompareLastResultCall EQUAL, Script_branch_a16
	Call Function_984
	Return
@ 8bf

Script_branch_8bf: @ 8bf
	CheckIdPlayer 0x8006, 0x7
	If 0x8006, 0x0
	CompareLastResultCall EQUAL, Script_branch_a1e
	If 0x8006, 0x1
	CompareLastResultCall EQUAL, Script_branch_a26
	If 0x8006, 0x2
	CompareLastResultCall EQUAL, Script_branch_a2e
	If 0x8006, 0x3
	CompareLastResultCall EQUAL, Script_branch_a36
	If 0x8006, 0x4
	CompareLastResultCall EQUAL, Script_branch_a3e
	If 0x8006, 0x5
	CompareLastResultCall EQUAL, Script_branch_a46
	If 0x8006, 0x6
	CompareLastResultCall EQUAL, Script_branch_a4e
	Call Function_984
	Return
@ 928

Script_branch_928: @ 928
	CheckIdPlayer 0x8006, 0x6
	If 0x8006, 0x0
	CompareLastResultCall EQUAL, Script_branch_a56
	If 0x8006, 0x1
	CompareLastResultCall EQUAL, Script_branch_a5e
	If 0x8006, 0x2
	CompareLastResultCall EQUAL, Script_branch_a66
	If 0x8006, 0x3
	CompareLastResultCall EQUAL, Script_branch_a6e
	If 0x8006, 0x4
	CompareLastResultCall EQUAL, Script_branch_a76
	If 0x8006, 0x5
	CompareLastResultCall EQUAL, Script_branch_a7e
	Call Function_984
	Return
@ 984

Function_984: @ 984
	CheckStoreItem 0x8006, 0x1, 0x8007
	If 0x8007, 0x0
	CompareLastResultCall 0x5, Script_branch_9a1
	SetVar 0x800c, 0x2710
	Return
@ 9a1

Script_branch_9a1: @ 9a1
	Message 0x2d
	CopyVar 0x8004, 0x8006
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	Return
@ 9b6

Script_branch_9b6: @ 9b6
	SetVar 0x8006, 0x95
	Return
@ 9be

Script_branch_9be: @ 9be
	SetVar 0x8006, 0x96
	Return
@ 9c6

Script_branch_9c6: @ 9c6
	SetVar 0x8006, 0x97
	Return
@ 9ce

Script_branch_9ce: @ 9ce
	SetVar 0x8006, 0x98
	Return
@ 9d6

Script_branch_9d6: @ 9d6
	SetVar 0x8006, 0x99
	Return
@ 9de

Script_branch_9de: @ 9de
	SetVar 0x8006, 0x9a
	Return
@ 9e6

Script_branch_9e6: @ 9e6
	SetVar 0x8006, 0x9b
	Return
@ 9ee

Script_branch_9ee: @ 9ee
	SetVar 0x8006, 0x9c
	Return
@ 9f6

Script_branch_9f6: @ 9f6
	SetVar 0x8006, 0x9f
	Return
@ 9fe

Script_branch_9fe: @ 9fe
	SetVar 0x8006, 0xa0
	Return
@ a06

Script_branch_a06: @ a06
	SetVar 0x8006, 0xa1
	Return
@ a0e

Script_branch_a0e: @ a0e
	SetVar 0x8006, 0xa2
	Return
@ a16

Script_branch_a16: @ a16
	SetVar 0x8006, 0xa3
	Return
@ a1e

Script_branch_a1e: @ a1e
	SetVar 0x8006, 0xa4
	Return
@ a26

Script_branch_a26: @ a26
	SetVar 0x8006, 0xa5
	Return
@ a2e

Script_branch_a2e: @ a2e
	SetVar 0x8006, 0xa6
	Return
@ a36

Script_branch_a36: @ a36
	SetVar 0x8006, 0xa7
	Return
@ a3e

Script_branch_a3e: @ a3e
	SetVar 0x8006, 0xa8
	Return
@ a46

Script_branch_a46: @ a46
	SetVar 0x8006, 0x9d
	Return
@ a4e

Script_branch_a4e: @ a4e
	SetVar 0x8006, 0x9e
	Return
@ a56

Script_branch_a56: @ a56
	SetVar 0x8006, 0xa9
	Return
@ a5e

Script_branch_a5e: @ a5e
	SetVar 0x8006, 0xaa
	Return
@ a66

Script_branch_a66: @ a66
	SetVar 0x8006, 0xab
	Return
@ a6e

Script_branch_a6e: @ a6e
	SetVar 0x8006, 0xac
	Return
@ a76

Script_branch_a76: @ a76
	SetVar 0x8006, 0xad
	Return
@ a7e

Script_branch_a7e: @ a7e
	SetVar 0x8006, 0xae
	Return
@ a86

.byte 0x0 @ 0xa86
.byte 0x0 @ 0xa87

@ end_0xa88
