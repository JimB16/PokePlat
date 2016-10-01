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
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 34

Script_3: @ 34
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xc1
	CompareLastResultJump EQUAL, Script_branch_a1
	CheckPokeParty 0x800c, 0x4a
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_96
	Message 0x3
	SetVar 0x8004, 0xe
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_8c
	SetFlag 0xc1
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 8c

Script_branch_8c: @ 8c
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 96

Script_branch_96: @ 96
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a1

Script_branch_a1: @ a1
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ac

@ end_0xac
