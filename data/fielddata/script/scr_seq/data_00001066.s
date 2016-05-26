.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	SetVarHero 0x0
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1a

.byte 0x0 @ 0x1a
.byte 0x0 @ 0x1b

@ end_0x1c
