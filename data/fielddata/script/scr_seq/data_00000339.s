.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	Cmd_292 0x19, 0x4000
	If 0x4000, 0x1
	CompareLastResultJump EQUAL, Script_branch_22
	SetFlag 0x27c
	End
@ 22

Script_branch_22: @ 22
	ClearFlag 0x27c
	SetVar 0x4111, 0x1
	End
@ 2e

Script_2: @ 2e
	LockAll
	ApplyMovement 0x1, Movement_4c
	WaitMovement
	SetFlag 0x27c
	RemovePeople 0x1
	SetVar 0x4111, 0x0
	ReleaseAll
	End
@ 4c

Movement_4c: @ 4c
	Move_41 0x1
	SeeDown 0x1
	Move_41 0x1
	Move_49 0x1
	WalkDownFast 0x2
	Move_4a 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 6c

@ end_0x6c
