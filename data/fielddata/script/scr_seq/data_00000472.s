.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xde
	CompareLastResultJump EQUAL, Script_branch_39
	CheckItem 0x1ab, 0x1, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_44
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 39

Script_branch_39: @ 39
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 44

Script_branch_44: @ 44
	Message 0x1
	SetVar 0x8004, 0x12e
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_76
	CallStandard 0x7fc
	SetFlag 0xde
	Jump Script_branch_39
Script_branch_76: @ 76
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 80

@ end_0x80
