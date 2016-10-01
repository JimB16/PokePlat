.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 21

Script_2: @ 21
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x83
	CompareLastResultJump EQUAL, Script_branch_94
	Message 0x1
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_62
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_57
	End
@ 57

Script_branch_57: @ 57
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 62

Script_branch_62: @ 62
	Message 0x2
	SetVar 0x8004, 0x19f
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_9f
	SetFlag 0x83
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 94

Script_branch_94: @ 94
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9f

Script_branch_9f: @ 9f
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a9

Script_3: @ a9
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x23, 0x0
	Message 0x5
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c8

@ end_0xc8
