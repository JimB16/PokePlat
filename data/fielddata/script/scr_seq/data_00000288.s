.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_3: @ e
	CheckFlag 0x121
	CompareLastResultCall EQUAL, Script_branch_1b
	End
@ 1b

Script_branch_1b: @ 1b
	ClearFlag 0x278
	Return
@ 21

Script_1: @ 21
	LockAll
	PortalEffect 0x0
	DarkraiFunction 0x10a, 0x2fa, 0x2ca
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_a0
	WaitMovement
	ApplyMovement 0xff, Movement_98
	WaitMovement
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_b8
	WaitMovement
	SetVarHero 0x0
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	SetVar 0x40aa, 0x2
	SetVar 0x40a6, 0x2
	SetFlag 0x1c7
	ClearFlag 0x132
	SetFlag 0x28f
	SetFlag 0x295
	SetFlag 0x29f
	SetFlag 0x986
	ClearFlag 0x292
	SetFlag 0x15e
	SetFlag 0x295
	ReleaseAll
	End
@ 95

.byte 0x0 @ 0x95
.byte 0x0 @ 0x96
.byte 0x0 @ 0x97

Movement_98: @ 98
	MoveLeftFast 0x1
	EndMovement 0x0
@ a0

Movement_a0: @ a0
	MoveLeftVeryFast 0x1
	Move_3f 0x1
	MoveRightVeryFast 0x1
	Move_3f 0x2
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ b8

Movement_b8: @ b8
	MoveRightFast 0x1
	EndMovement 0x0
@ c0

Script_2: @ c0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x40aa, 0x3
	CompareLastResultJump 0x4, Script_branch_e0
	Message 0x3
	Jump Script_branch_eb
	End
@ e0

Script_branch_e0: @ e0
	Message 0x4
	Jump Script_branch_eb
	End
@ eb

Script_branch_eb: @ eb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ f3

.byte 0x0 @ 0xf3

@ end_0xf4
