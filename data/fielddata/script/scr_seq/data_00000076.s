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
	ReleaseAll
	End
@ 19

.byte 0x0 @ 0x19
.byte 0x0 @ 0x1a
.byte 0x0 @ 0x1b

@ end_0x1c
