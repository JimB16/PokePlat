.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	Cmd_292 0xa, 0x4000
	If 0x4000, 0x1
	CompareLastResultJump EQUAL, Script_branch_22
	SetFlag 0x27b
	End
@ 22

Script_branch_22: @ 22
	ClearFlag 0x27b
	SetVar 0x4110, 0x1
	End
@ 2e

Script_2: @ 2e
	LockAll
	ApplyMovement 0xff, Movement_54
	ApplyMovement 0x0, Movement_64
	WaitMovement
	SetFlag 0x27b
	RemovePeople 0x0
	SetVar 0x4110, 0x0
	ReleaseAll
	End
@ 54

Movement_54: @ 54
	WalkUpFast 0x1
	Move_42 0x1
	SeeLeft 0x1
	EndMovement 0x0
@ 64

Movement_64: @ 64
	Move_3f 0x1
	SeeLeft 0x1
	Move_41 0x1
	Move_49 0x1
	WalkLeftFast 0xa
	Move_4a 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 84

@ end_0x84
