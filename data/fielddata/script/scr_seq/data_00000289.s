.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	SetFlag 0x9d4
	Call Function_1c
	CheckTurnBack 0x410b, 0x410c
	End
@ 1c

Function_1c: @ 1c
	SetVar 0x410b, 0x0
	SetVar 0x410c, 0x0
	Return
@ 2a

Script_2: @ 2a
	CheckFlag 0x121
	CompareLastResultJump 0x1, Script_branch_46
	PlayFanfare 0x5dc
	LockAll
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 46

Script_branch_46: @ 46
	PlayFanfare 0x5dc
	LockAll
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 57

.byte 0x0 @ 0x57

@ end_0x58
