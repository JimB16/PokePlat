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
	CheckFlag 0xc2
	CompareLastResultJump EQUAL, Script_branch_5d
	Message 0x0
	SetVar 0x8004, 0x18a
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_53
	SetFlag 0xc2
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 53

Script_branch_53: @ 53
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5d

Script_branch_5d: @ 5d
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 68

Script_2: @ 68
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7b

Script_3: @ 7b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 8e

.byte 0x0 @ 0x8e
.byte 0x0 @ 0x8f

@ end_0x90
