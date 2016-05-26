.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	Call Function_18
	CheckTurnBack 0x410b, 0x410c
	End
@ 18

Function_18: @ 18
	SetValue 0x410b, 0x1
	SetValue 0x410c, 0x1
	Return
@ 26

Script_2: @ 26
	PlayFanfare 0x5dc
	LockAll
	CopyVar 0x8004, 0x410b
	CopyVar 0x8005, 0x410c
	SetVariableNumber 0x0, 0x8004
	SetVariableNumber 0x1, 0x8005
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4d

.byte 0x0 @ 0x4d
.byte 0x0 @ 0x4e
.byte 0x0 @ 0x4f

@ end_0x50
