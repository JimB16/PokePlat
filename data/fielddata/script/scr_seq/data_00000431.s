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
	CheckFlag 0xc5
	CompareLastResultJump EQUAL, Script_branch_66
	Message 0x1
	SetVar 0x8004, 0x195
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_71
	CallStandard 0x7fc
	SetFlag 0xc5
	Jump Script_branch_66
@ 66

Script_branch_66: @ 66
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 71

Script_branch_71: @ 71
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7b

Script_3: @ 7b
	CallMessageBox 0x3, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 92

.byte 0x0 @ 0x92
.byte 0x0 @ 0x93

@ end_0x94
