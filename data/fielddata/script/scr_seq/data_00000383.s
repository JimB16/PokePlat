.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	Cmd_2f2
	End
@ e

Script_2: @ e
	LockAll
	Cmd_311 0x80
	ApplyMovement 0x80, Movement_60
	WaitMovement
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_3b
	Message 0x1
	Jump Script_branch_3e
@ 3b

Script_branch_3b: @ 3b
	Message 0x2
Script_branch_3e: @ 3e
	Message 0x3
	Message 0x4
	CloseMsgOnKeyPress
	ApplyMovement 0x80, Movement_68
	WaitMovement
	Cmd_312 0x80
	SetVar 0x4055, 0x6
	ReleaseAll
	End
@ 5e

.byte 0x0 @ 0x5e
.byte 0x0 @ 0x5f

Movement_60: @ 60
	WalkUpFast 0x7
	EndMovement 0x0
@ 68

Movement_68: @ 68
	WalkDownFast 0x7
	EndMovement 0x0
@ 70

@ end_0x70
