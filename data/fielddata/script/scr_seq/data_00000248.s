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
	CheckFlag 0xab4
	CompareLastResultJump EQUAL, Script_branch_bc
	Message 0x0
	CheckIdPlayer 0x8004, 0x4
	CopyVar 0x8008, 0x8004
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_5b
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_69
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_77
	Jump Script_branch_85
@ 59

.byte 0x2 @ 0x59
.byte 0x0 @ 0x5a

Script_branch_5b: @ 5b
	SetVar 0x8004, 0x48
	Jump Script_branch_93
@ 67

.byte 0x2 @ 0x67
.byte 0x0 @ 0x68

Script_branch_69: @ 69
	SetVar 0x8004, 0x49
	Jump Script_branch_93
@ 75

.byte 0x2 @ 0x75
.byte 0x0 @ 0x76

Script_branch_77: @ 77
	SetVar 0x8004, 0x4a
	Jump Script_branch_93
@ 83

.byte 0x2 @ 0x83
.byte 0x0 @ 0x84

Script_branch_85: @ 85
	SetVar 0x8004, 0x4b
	Jump Script_branch_93
@ 91

.byte 0x2 @ 0x91
.byte 0x0 @ 0x92

Script_branch_93: @ 93
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_c7
	SetFlag 0xab4
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ bc

Script_branch_bc: @ bc
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c7

Script_branch_c7: @ c7
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d1

Script_2: @ d1
	CallMessageBox 0x2, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ e8

@ end_0xe8
