.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 17

.byte 0x0 @ 0x17

@ end_0x18
