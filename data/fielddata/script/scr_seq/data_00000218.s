.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	SetFlag 0x9c4
	End
@ 18

Script_4: @ 18
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x12a
	CompareLastResultJump EQUAL, Script_branch_4d
	SetVar 0x8004, 0x5f
	CheckAccessories3 0x0, 0x8004
	Message 0x0
	SetVar 0x8005, 0x1
	CallStandard 0x7df
	SetFlag 0x12a
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4d

Script_branch_4d: @ 4d
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 58

Script_2: @ 58
	CallMessageBox 0x2, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 6f

Script_3: @ 6f
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x3, 0x800c
	CallStandard 0x7d0
	End
@ 84

@ end_0x84
