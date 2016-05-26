.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xa9
	CompareLastResultJump 0x1, Script_branch_2b
	SetFlag 0xa9
	SetVariableRival 0x0
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2b

Script_branch_2b: @ 2b
	SetVariableRival 0x0
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 39

.byte 0x0 @ 0x39
.byte 0x0 @ 0x3a
.byte 0x0 @ 0x3b

@ end_0x3c
