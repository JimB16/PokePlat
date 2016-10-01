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
	End
@ 1c

Script_6: @ 1c
	CheckSpritePosition 0x4004, 0x4005
	If 0x4005, 0x3
	CompareLastResultCall 0x3, Script_branch_37
	SetVar 0x4003, 0x1
	End
@ 37

Script_branch_37: @ 37
	SetFlag 0x996
	Return
@ 3d

Script_2: @ 3d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 50

Script_3: @ 50
	LockAll
	CheckBike 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_80
	ApplyMovement 0x0, Movement_90
	WaitMovement
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_98
	WaitMovement
	ReleaseAll
	End
@ 80

Script_branch_80: @ 80
	SetFlag 0x996
	SetVar 0x4002, 0x1
	ReleaseAll
	End
@ 8e

.byte 0x0 @ 0x8e
.byte 0x0 @ 0x8f

Movement_90: @ 90
	Exclamation 0x1
	EndMovement 0x0
@ 98

Movement_98: @ 98
	WalkDownFast 0x1
	EndMovement 0x0
@ a0

Script_4: @ a0
	LockAll
	ClearFlag 0x996
	SetVar 0x4002, 0x0
	ReleaseAll
	End
@ b0

Script_5: @ b0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x12b
	CompareLastResultJump EQUAL, Script_branch_e5
	SetVar 0x8004, 0x60
	CheckAccessories3 0x0, 0x8004
	Message 0x3
	SetVar 0x8005, 0x1
	CallStandard 0x7df
	SetFlag 0x12b
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e5

Script_branch_e5: @ e5
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ end_0xf0
@ f0

