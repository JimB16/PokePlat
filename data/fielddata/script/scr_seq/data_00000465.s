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
	StorePoketchApp 0xe, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x5, Script_branch_3a
	Message 0x0
	SetVar 0x8004, 0xe
	CallStandard 0x7d9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3a

Script_branch_3a: @ 3a
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 45

Script_2: @ 45
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	StorePoketchApp 0xe, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x5, Script_branch_71
	Jump Script_branch_66
Script_branch_66: @ 66
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 71

Script_branch_71: @ 71
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7c

@ end_0x7c
