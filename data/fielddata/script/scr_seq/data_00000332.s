.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	SetFlag 0x9dc
	End
@ 10

Script_2: @ 10
	PlayFanfare 0x5dc
	LockAll
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 21

.byte 0x0 @ 0x21
.byte 0x0 @ 0x22
.byte 0x0 @ 0x23

@ end_0x24
