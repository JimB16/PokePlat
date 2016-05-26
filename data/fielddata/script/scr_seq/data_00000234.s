.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1d

Script_2: @ 1d
	PlayFanfare 0x5dc
	LockAll
	ApplyMovement 0x10, Movement_58
	WaitMovement
	Message 0x1
	ApplyMovement 0x11, Movement_60
	WaitMovement
	Message 0x2
	CloseMsgOnKeyPress
	ApplyMovement 0x10, Movement_68
	ApplyMovement 0x11, Movement_68
	WaitMovement
	ReleaseAll
	End
@ 55

.byte 0x0 @ 0x55
.byte 0x0 @ 0x56
.byte 0x0 @ 0x57

Movement_58: @ 58
	MoveDownFast 0x1
	EndMovement 0x0
@ 60

Movement_60: @ 60
	MoveUpFast 0x1
	EndMovement 0x0
@ 68

Movement_68: @ 68
	MoveLeftFast 0x1
	EndMovement 0x0
@ 70

@ end_0x70
