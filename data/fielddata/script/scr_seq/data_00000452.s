.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	PlayFanfare 0x5dc
	LockAll
	CheckFlag 0xc6
	CompareLastResultJump EQUAL, Script_branch_66
	Message 0x0
	CloseMsgOnKeyPress
	FacePlayer
	ApplyMovement 0x800d, Movement_80
	WaitMovement
	Message 0x1
	SetVar 0x8004, 0x194
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_73
	CallStandard 0x7fc
	SetFlag 0xc6
	Jump Script_branch_66
@ 66

Script_branch_66: @ 66
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 73

Script_branch_73: @ 73
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7d

.byte 0x0 @ 0x7d
.byte 0x0 @ 0x7e
.byte 0x0 @ 0x7f

Movement_80: @ 80
	Exclamation 0x1
	EndMovement 0x0
@ 88

Script_2: @ 88
	CallMessageBox 0x3, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 9f

Script_3: @ 9f
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x4, 0x800c
	CallStandard 0x7d0
	End
@ b4

Script_4: @ b4
	CallMessageBox 0x5, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ cb

.byte 0x0 @ 0xcb

@ end_0xcc
