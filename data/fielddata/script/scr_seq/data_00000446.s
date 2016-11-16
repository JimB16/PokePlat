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
	CheckFlag 0x7b
	CompareLastResultJump LESSER, Script_branch_67
	CheckFlag 0xa1
	CompareLastResultJump EQUAL, Script_branch_5c
	Message 0x0
	SetVar 0x8004, 0xf7
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_cf
	CallStandard 0x7fc
	SetFlag 0xa1
	Jump Script_branch_5c
@ 5a

.byte 0x2 @ 0x5a
.byte 0x0 @ 0x5b

Script_branch_5c: @ 5c
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 67

Script_branch_67: @ 67
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 72

Script_2: @ 72
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x7b
	CompareLastResultJump LESSER, Script_branch_d9
	CheckFlag 0x116
	CompareLastResultJump EQUAL, Script_branch_c4
	Message 0x3
	SetVar 0x8004, 0xe0
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_cf
	CallStandard 0x7fc
	SetFlag 0x116
	Jump Script_branch_c4
@ c2

.byte 0x2 @ 0xc2
.byte 0x0 @ 0xc3

Script_branch_c4: @ c4
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ cf

Script_branch_cf: @ cf
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d9

Script_branch_d9: @ d9
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e4

@ end_0xe4
