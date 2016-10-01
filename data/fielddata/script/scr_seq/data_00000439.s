.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	.hword 0xfd13
@ 16

Script_1: @ 16
	CallMessageBox 0x2, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 2d

Script_2: @ 2d
	CallMessageBox 0x3, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 44

Script_3: @ 44
	CallMessageBox 0x4, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 5b

Script_5: @ 5b
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x5, 0x800c
	CallStandard 0x7d0
	End
@ 70

Script_4: @ 70
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x13f
	CompareLastResultJump EQUAL, Script_branch_b5
	Message 0x0
	SetVar 0x8004, 0x6f
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_c0
	SetFlag 0x13f
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b5

Script_branch_b5: @ b5
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c0

Script_branch_c0: @ c0
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ca

.byte 0x0 @ 0xca
.byte 0x0 @ 0xcb

@ end_0xcc
