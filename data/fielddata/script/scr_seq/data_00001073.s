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
	CheckFlag 0xaaa
	CompareLastResultJump 0x1, Script_branch_59
	Message 0x0
	CheckIdPlayer 0x8004, 0x5
	SetValue 0x8004, 0x95
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_64
	SetFlag 0xaaa
	CallStandard 0x7e0
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

Script_branch_64: @ 64
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6e

Script_2: @ 6e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x80
	CompareLastResultJump 0x1, Script_branch_9e
	Message 0x2
	SetVar 0x8004, 0x1c0
	SetVar 0x8005, 0x1
	SetFlag 0x80
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9e

Script_branch_9e: @ 9e
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a9

Script_3: @ a9
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SprtSave
	ReleaseAll
	End
@ b7

.byte 0x0 @ 0xb7

@ end_0xb8
