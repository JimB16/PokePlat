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
	CheckFlag 0xca
	CompareLastResultJump EQUAL, Script_branch_53
	Message 0x0
	SetVar 0x8004, 0x1a3
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_5e
	CallStandard 0x7fc
	SetFlag 0xca
	Jump Script_branch_53
@ 53

Script_branch_53: @ 53
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5e

Script_branch_5e: @ 5e
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 68

Script_2: @ 68
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x161
	CompareLastResultJump EQUAL, Script_branch_12f
	SetFlag 0x161
	Message 0x2
	CheckIdPlayer 0x800c, 0xa
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_103
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_103
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_103
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_103
	If 0x800c, 0x4
	CompareLastResultJump EQUAL, Script_branch_10e
	If 0x800c, 0x5
	CompareLastResultJump EQUAL, Script_branch_10e
	If 0x800c, 0x6
	CompareLastResultJump EQUAL, Script_branch_10e
	If 0x800c, 0x7
	CompareLastResultJump EQUAL, Script_branch_119
	If 0x800c, 0x8
	CompareLastResultJump EQUAL, Script_branch_119
	Jump Script_branch_124
@ 103

Script_branch_103: @ 103
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 10e

Script_branch_10e: @ 10e
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 119

Script_branch_119: @ 119
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 124

Script_branch_124: @ 124
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 12f

Script_branch_12f: @ 12f
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 13a

Script_3: @ 13a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 14d

.byte 0x0 @ 0x14d
.byte 0x0 @ 0x14e
.byte 0x0 @ 0x14f

@ end_0x150
