.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	.hword 0xfd13
@ 1e

Script_1: @ 1e
	SetFlag 0x9ce
	End
@ 24

Script_2: @ 24
	LockAll
	Call Function_cc
	TrainerBattle 0x128, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_6e
	Call Function_ee
	TrainerBattle 0x129, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_6e
	Call Function_10e
	SetFlag 0x989
	ReleaseAll
	End
@ 6e

Script_branch_6e: @ 6e
	LostGoPc
	ReleaseAll
	End
@ 74

Movement_74: @ 74
	MoveDownFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 80

Movement_80: @ 80
	MoveRightFast 0x1
	EndMovement 0x0
@ 88

Movement_88: @ 88
	MoveDownFast 0x1
	EndMovement 0x0
@ 90

.byte 0xc @ 0x90
.byte 0x0 @ 0x91
.byte 0x9 @ 0x92
.byte 0x0 @ 0x93
.byte 0xfe @ 0x94
.byte 0x0 @ 0x95
.byte 0x0 @ 0x96
.byte 0x0 @ 0x97
.byte 0xc @ 0x98
.byte 0x0 @ 0x99
.byte 0x9 @ 0x9a
.byte 0x0 @ 0x9b
.byte 0xfe @ 0x9c
.byte 0x0 @ 0x9d
.byte 0x0 @ 0x9e
.byte 0x0 @ 0x9f

Movement_a0: @ a0
	WalkDownFast 0x1
	MoveRightFast 0x1
	Move_3f 0x3
	MoveDownFast 0x1
	EndMovement 0x0
@ b4

Movement_b4: @ b4
	WalkDownFast 0x1
	MoveRightFast 0x1
	Move_3f 0x3
	WalkRightFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ cc

Function_cc: @ cc
	Message 0x0
	Message 0x1
	ApplyMovement 0x0, Movement_74
	ApplyMovement 0x1, Movement_74
	WaitMovement
	Message 0x2
	Message 0x3
	CloseMsgOnKeyPress
	Return
@ ee

Function_ee: @ ee
	ApplyMovement 0x0, Movement_80
	WaitMovement
	Message 0x4
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_88
	WaitMovement
	Message 0x5
	CloseMsgOnKeyPress
	Return
@ 10e

Function_10e: @ 10e
	Message 0x6
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	RemovePeople 0x0
	RemovePeople 0x1
	SetVar 0x40e9, 0x1
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ClearFlag 0x19e
	AddPeople 0x3
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0xc
	CompareLastResultCall 0x1, Script_branch_1ba
	If 0x8004, 0xd
	CompareLastResultCall 0x1, Script_branch_1c6
	RemovePeople 0x3
	Message 0x7
	SetVar 0x8004, 0x1b6
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	SetFlag 0x9f
	Message 0x8
	SetVar 0x8004, 0x5e
	SetVar 0x8005, 0xa
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1ad
	CallStandard 0x7fc
	Message 0x9
	Jump Script_branch_1b0
@ 1ad

Script_branch_1ad: @ 1ad
	Message 0xc
Script_branch_1b0: @ 1b0
	SetFlag 0xa0
	WaitButton
	CloseMsgOnKeyPress
	Return
@ 1ba

Script_branch_1ba: @ 1ba
	ApplyMovement 0x2, Movement_a0
	WaitMovement
	Return
@ 1c6

Script_branch_1c6: @ 1c6
	ApplyMovement 0x2, Movement_b4
	WaitMovement
	Return
@ 1d2

.byte 0xeb @ 0x1d2
.byte 0x0 @ 0x1d3
.byte 0x61 @ 0x1d4
.byte 0x0 @ 0x1d5
.byte 0x2 @ 0x1d6
.byte 0x0 @ 0x1d7

Script_3: @ 1d8
Script_4: @ 1d8
	End
@ 1da

Script_5: @ 1da
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xa
	ShowMoney 0x14, 0x2
	Jump Script_branch_1f3
@ 1f1

.byte 0x2 @ 0x1f1
.byte 0x0 @ 0x1f2

Script_branch_1f3: @ 1f3
	Multi2 0x1e, 0xb, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0xf, 0x0
	Cmd_42 0x10, 0x1
	Cmd_42 0x11, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump 0x1, Script_branch_241
	If 0x8008, 0x1
	CompareLastResultJump 0x1, Script_branch_26a
	If 0x8008, 0x2
	CompareLastResultJump 0x1, Script_branch_2c8
	Jump Script_branch_2c8
@ 23f

.byte 0x2 @ 0x23f
.byte 0x0 @ 0x240

Script_branch_241: @ 241
	CheckMoney 0x800c, 0x64
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_2e2
	SetVar 0x8005, 0x1
	SetVar 0x8006, 0x64
	Jump Script_branch_293
@ 268

.byte 0x2 @ 0x268
.byte 0x0 @ 0x269

Script_branch_26a: @ 26a
	CheckMoney 0x800c, 0x3e8
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_2e2
	SetVar 0x8005, 0xa
	SetVar 0x8006, 0x3e8
	Jump Script_branch_293
@ 291

.byte 0x2 @ 0x291
.byte 0x0 @ 0x292

Script_branch_293: @ 293
	SetVar 0x8004, 0x5e
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_2d5
	TakeMoneyDCare 0x8006
	UpdateMoney
	PlayFanfare 0x644
	WaitFanfare 0x644
	CallStandard 0x7e0
	HideMoney
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2c8

Script_branch_2c8: @ 2c8
	Message 0xe
	WaitButton
	HideMoney
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2d5

Script_branch_2d5: @ 2d5
	Message 0xc
	WaitButton
	HideMoney
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2e2

Script_branch_2e2: @ 2e2
	Message 0xd
	WaitButton
	HideMoney
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2ef

Script_6: @ 2ef
	CallMessageBox 0x12, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 306

Script_7: @ 306
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVar 0x8004, 0x1b6
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	CloseMsgOnKeyPress
	SetFlag 0x9f
	RemovePeople 0x3
	ReleaseAll
	End
@ 32c

@ end_0x32c
