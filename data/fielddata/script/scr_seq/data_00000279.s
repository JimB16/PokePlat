.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	SetFlag 0x9cf
	End
@ 14

Script_2: @ 14
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 0, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3a
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3a

Script_branch_3a: @ 3a
	CheckFlag 0x93
	CompareLastResultJump EQUAL, Script_branch_64
	Message 0x0
	SetVar 0x8004, 0x1a9
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	Call Function_6f
	Jump Script_branch_64
@ 64

Script_branch_64: @ 64
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6f

Function_6f: @ 6f
	SetFlag 0x93
	SetVar 0x4093, 0x2
	Return
@ 7b

Script_3: @ 7b
	LockAll
	ApplyMovement 0xa, Movement_c0
	ApplyMovement 0xff, Movement_b4
	WaitMovement
	Message 0x0
	SetVar 0x8004, 0x1a9
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	Call Function_6f
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b3

.byte 0x0 @ 0xb3

Movement_b4: @ b4
	Move_3f 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ c0

Movement_c0: @ c0
	MoveDownFast 0x1
	Exclamation 0x1
	WalkDownFast 0x1
	EndMovement 0x0
@ d0

@ end_0xd0
