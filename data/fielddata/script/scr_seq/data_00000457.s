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
	CompareLastResultJump 0x1, Script_branch_69
	If 0x4000, 0x1
	CompareLastResultJump 0x1, Script_branch_69
	If 0x4000, 0x2
	CompareLastResultJump 0x1, Script_branch_69
	If 0x4000, 0x3
	CompareLastResultJump 0x1, Script_branch_73
	If 0x4000, 0x4
	CompareLastResultJump 0x1, Script_branch_73
	End
@ 69

Script_branch_69: @ 69
	ClearFlag 0x268
	SetFlag 0x269
	End
@ 73

Script_branch_73: @ 73
	ClearFlag 0x269
	SetFlag 0x268
	End
@ 7d

Script_1: @ 7d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 90

Script_2: @ 90
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a3

Script_3: @ a3
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b6

Script_4: @ b6
	CallMessageBox 0x4, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ cd

Script_5: @ cd
	CallMessageBox 0x5, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ e4

Script_8: @ e4
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x6, 0x800c
	CallStandard 0x7d0
	End
@ f9

Script_6: @ f9
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 10c

@ end_0x10c
