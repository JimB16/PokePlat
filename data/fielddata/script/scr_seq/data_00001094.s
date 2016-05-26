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
	StorePoketchApp 0xb, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_3a
	Message 0x0
	SetVar 0x8004, 0xb
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
	WaitFanfare 0x5dc
	PlayCry 0x1b8, 0x0
	Message 0x2
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 64

@ end_0x64
