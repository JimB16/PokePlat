.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	Unownmsgbox 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 18

@ end_0x18
