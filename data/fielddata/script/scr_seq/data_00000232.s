.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ApplyMovement 0x10, Movement_24
	WaitMovement
	ReleaseAll
	End
@ 23

.byte 0x0 @ 0x23

Movement_24: @ 24
	SeeUp 0x1
	EndMovement 0x0
@ 2c

@ end_0x2c
