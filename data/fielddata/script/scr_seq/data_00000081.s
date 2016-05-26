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
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2e

.byte 0x0 @ 0x2e
.byte 0x0 @ 0x2f

@ end_0x30
