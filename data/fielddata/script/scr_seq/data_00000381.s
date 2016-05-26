.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	Cmd_2f2
	End
@ 12

Script_2: @ 12
	LockAll
	ApplyMovement 0xff, Movement_78
	ApplyMovement 0x80, Movement_a8
	WaitMovement
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x80, Movement_b4
	ApplyMovement 0xff, Movement_80
	WaitMovement
	Cmd_312 0x80
	SetVar 0x4055, 0x3
	ReleaseAll
	End
@ 4b

Script_3: @ 4b
	LockAll
	PlayCry 0x1e1, 0x0
	Message 0x1
	CloseMsgOnKeyPress
	WaitCry
	Cmd_311 0x81
	ApplyMovement 0xff, Movement_90
	ApplyMovement 0x81, Movement_d8
	WaitMovement
	Cmd_312 0x81
	ReleaseAll
	End
@ 78

Movement_78: @ 78
	MoveUpFast 0x1
	EndMovement 0x0
@ 80

Movement_80: @ 80
	Move_41 0x1
	Move_3f 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 90

Movement_90: @ 90
	SeeLeft 0x1
	Move_3c 0x8
	Move_42 0x1
	Move_41 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ a8

Movement_a8: @ a8
	Move_41 0x3
	MoveDownFast 0x1
	EndMovement 0x0
@ b4

Movement_b4: @ b4
	WalkLeftFast 0x1
	WalkDownFast 0x2
	MoveLeftFast 0x1
	Move_41 0x1
	Move_77 0x2
	Move_76 0x1
	Move_77 0x1
	Move_41 0x1
	EndMovement 0x0
@ d8

Movement_d8: @ d8
	Move_41 0x3
	WalkUp 0x1
	WalkUpFast 0x1
	WalkUpVeryFast  0x1
	RunUp 0x8
	EndMovement 0x0
@ end_0xf0
@ f0

