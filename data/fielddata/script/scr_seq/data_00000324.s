.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	SetFlag 0x9da
	End
@ 14

Script_2: @ 14
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFacePosition 0x8004
	FacePlayer
	Message 0x3
	YesNoBox 0x800c
	CloseMsgOnKeyPress
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3e
	Jump Script_branch_71
@ 3e

Script_branch_3e: @ 3e
	Message 0x4
	CloseMsgOnKeyPress
	Call Function_7c
	If 0x8004, 0x1
	CompareLastResultCall EQUAL, Script_branch_96
	If 0x8004, 0x2
	CompareLastResultCall EQUAL, Script_branch_b0
	ShipAnimation 0x0, 0x2, 0x21, 0x2c, 0x2ee
	ReleaseAll
	End
@ 71

Script_branch_71: @ 71
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7c

Function_7c: @ 7c
	ApplyMovement 0x0, Movement_cc
	WaitMovement
	PlayFanfare 0x603
	ApplyMovement 0x0, Movement_d8
	WaitMovement
	Return
@ 96

Script_branch_96: @ 96
	ApplyMovement 0xff, Movement_e0
	WaitMovement
	PlayFanfare 0x603
	ApplyMovement 0xff, Movement_d8
	WaitMovement
	Return
@ b0

Script_branch_b0: @ b0
	ApplyMovement 0xff, Movement_f0
	WaitMovement
	PlayFanfare 0x603
	ApplyMovement 0xff, Movement_d8
	WaitMovement
	Return
@ ca

.byte 0x0 @ 0xca
.byte 0x0 @ 0xcb

Movement_cc: @ cc
	SeeLeft 0x1
	Move_40 0x1
	EndMovement 0x0
@ d8

Movement_d8: @ d8
	WaitDisappear 0x1
	EndMovement 0x0
@ e0

Movement_e0: @ e0
	WalkDownFast 0x1
	SeeLeft 0x1
	Move_40 0x1
	EndMovement 0x0
@ f0

Movement_f0: @ f0
	WalkLeftFast 0x1
	Move_40 0x1
	EndMovement 0x0
@ fc

Script_3: @ fc
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVarHero 0x0
	Message 0x0
	SetVar 0x8004, 0x1a7
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	CheckBadge 5, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_140
	Jump Script_branch_135
@ 133

.byte 0x2 @ 0x133
.byte 0x0 @ 0x134

Script_branch_135: @ 135
	Message 0x1
	Jump Script_branch_14b
@ 13e

.byte 0x2 @ 0x13e
.byte 0x0 @ 0x13f

Script_branch_140: @ 140
	Message 0x2
	Jump Script_branch_14b
@ 149

.byte 0x2 @ 0x149
.byte 0x0 @ 0x14a

Script_branch_14b: @ 14b
	CloseMsgOnKeyPress
	ApplyMovement 0x1, Movement_168
	WaitMovement
	PlayFanfare 0x603
	RemovePeople 0x1
	WaitFanfare 0x603
	ReleaseAll
	End
@ 167

.byte 0x0 @ 0x167

Movement_168: @ 168
	MoveUpFast 0x1
	EndMovement 0x0
@ 170

@ end_0x170
