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
	CheckFlag 0xda
	CompareLastResultJump EQUAL, Script_branch_79
	Message 0x0
	SetVar 0x8004, 0x5c
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_84
	CallStandard 0x7fc
	SetFlag 0xda
	SetVar 0x8004, 0x5c
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_79
	Message 0x1
	CallStandard 0x7fc
	Jump Script_branch_79
@ 77

.byte 0x2 @ 0x77
.byte 0x0 @ 0x78

Script_branch_79: @ 79
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 84

Script_branch_84: @ 84
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 8e

Script_2: @ 8e
	CallMessageBox 0x3, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ a5

.byte 0x0 @ 0xa5
.byte 0x0 @ 0xa6
.byte 0x0 @ 0xa7

@ end_0xa8
