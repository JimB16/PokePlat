.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	script Script_8
	.hword 0xfd13
@ 22

Script_7: @ 22
	CheckTime 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_69
	If 0x4000, 0x1
	CompareLastResultJump EQUAL, Script_branch_7b
	If 0x4000, 0x2
	CompareLastResultJump EQUAL, Script_branch_7b
	If 0x4000, 0x3
	CompareLastResultJump EQUAL, Script_branch_7b
	If 0x4000, 0x4
	CompareLastResultJump EQUAL, Script_branch_7b
	End
@ 69

Script_branch_69: @ 69
	ClearFlag 0x273
	ClearFlag 0x275
	SetFlag 0x272
	SetFlag 0x274
	End
@ 7b

Script_branch_7b: @ 7b
	ClearFlag 0x272
	ClearFlag 0x274
	SetFlag 0x273
	SetFlag 0x275
	End
@ 8d

Script_1: @ 8d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a0

Script_2: @ a0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xcd
	CompareLastResultJump EQUAL, Script_branch_e5
	Message 0x1
	SetVar 0x8004, 0x189
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_f0
	CallStandard 0x7fc
	SetFlag 0xcd
	Jump Script_branch_e5
Script_branch_e5: @ e5
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ f0

Script_branch_f0: @ f0
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ fa

Script_3: @ fa
	CallMessageBox 0x5, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 111

Script_4: @ 111
	CallMessageBox 0x6, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 128

Script_8: @ 128
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x7, 0x800c
	CallStandard 0x7d0
	End
@ 13d

Script_5: @ 13d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 150

Script_6: @ 150
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 163

.byte 0x0 @ 0x163

@ end_0x164
