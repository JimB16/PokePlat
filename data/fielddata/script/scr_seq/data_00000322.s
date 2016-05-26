.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_2: @ a
	SetFlag 0x9d8
	End
@ 10

Script_1: @ 10
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 23

.byte 0x0 @ 0x23

@ end_0x24
