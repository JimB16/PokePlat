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
	CheckFlag 0x90
	CompareLastResultJump EQUAL, Script_branch_28
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 28

Script_branch_28: @ 28
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 33

Script_2: @ 33
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVarHero 0x0
	CheckFlag 0x90
	CompareLastResultJump EQUAL, Script_branch_54
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 54

Script_branch_54: @ 54
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5f

.byte 0x0 @ 0x5f

@ end_0x60
