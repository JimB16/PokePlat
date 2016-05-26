.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	LockAll
	ApplyMovement 0xff, Movement_8c
	ApplyMovement 0x6, Movement_64
	WaitMovement
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x6, Movement_70
	ApplyMovement 0xff, Movement_9c
	WaitMovement
	Message 0x1
	ApplyMovement 0x6, Movement_78
	WaitMovement
	Message 0x2
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_b0
	ApplyMovement 0x6, Movement_80
	WaitMovement
	RemovePeople 0x6
	SetVar 0x4096, 0x1
	ReleaseAll
	End
@ 63

.byte 0x0 @ 0x63

Movement_64: @ 64
	WalkDownFast 0x6
	MoveLeftFast 0x1
	EndMovement 0x0
@ 70

Movement_70: @ 70
	MoveUpFast 0x1
	EndMovement 0x0
@ 78

Movement_78: @ 78
	MoveLeftFast 0x1
	EndMovement 0x0
@ 80

Movement_80: @ 80
	Move_3f 0x3
	WalkLeftFast 0xa
	EndMovement 0x0
@ 8c

Movement_8c: @ 8c
	MoveUpFast 0x1
	Move_3f 0x4
	MoveRightFast 0x1
	EndMovement 0x0
@ 9c

Movement_9c: @ 9c
	Move_3f 0x3
	MoveUpFast 0x1
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ b0

Movement_b0: @ b0
	WalkDownFast 0x1
	MoveUpFast 0x1
	Move_3f 0x2
	MoveLeftFast 0x1
	EndMovement 0x0
@ c4

@ end_0xc4
