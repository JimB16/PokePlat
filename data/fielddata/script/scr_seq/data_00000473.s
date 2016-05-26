.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x13b
	CompareLastResultJump 0x1, Script_branch_59
	Message 0x0
	SetVar 0x8004, 0xf7
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_4f
	SetFlag 0x13b
	SetFlag 0x25f
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4f

Script_branch_4f: @ 4f
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 59

Script_branch_59: @ 59
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 64

@ end_0x64
