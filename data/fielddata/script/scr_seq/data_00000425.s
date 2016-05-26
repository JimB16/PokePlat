.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	LockAll
	SetVariableNumber 0x0, 0x8000
	Message 0x6a
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1c

Script_2: @ 1c
	LockAll
	Message 0x6b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 29

.byte 0x0 @ 0x29
.byte 0x0 @ 0x2a
.byte 0x0 @ 0x2b

@ end_0x2c
