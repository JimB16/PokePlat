.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xd9
	CompareLastResultJump EQUAL, Script_branch_4b
	Message 0x0
	SetVar 0x8004, 0x1e
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_56
	CallStandard 0x7fc
	SetFlag 0xd9
	Jump Script_branch_4b
@ 4b

Script_branch_4b: @ 4b
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 56

Script_branch_56: @ 56
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 60

@ end_0x60
