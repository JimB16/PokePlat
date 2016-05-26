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
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1d

Script_2: @ 1d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVar 0x8004, 0x1bd
	SetVarItem 0x0, 0x8004
	CheckFlag 0x84
	CompareLastResultJump 0x1, Script_branch_5e
	Message 0x1
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_a7
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_9c
	End
@ 5e

Script_branch_5e: @ 5e
	SetVarItem 0x0, 0x8004
	Message 0x3
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_86
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_91
	End
@ 86

Script_branch_86: @ 86
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 91

Script_branch_91: @ 91
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9c

Script_branch_9c: @ 9c
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a7

Script_branch_a7: @ a7
	SetVarItem 0x0, 0x8004
	Message 0x2
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	SetFlag 0x84
	Jump Script_branch_5e
@ c3

.byte 0x0 @ 0xc3

@ end_0xc4
