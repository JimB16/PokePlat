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

Script_8: @ 22
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
	ClearFlag 0x26a
	SetFlag 0x26b
	End
@ 73

Script_branch_73: @ 73
	ClearFlag 0x26b
	SetFlag 0x26a
	End
@ 7d

Script_2: @ 7d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xce
	CompareLastResultJump 0x1, Script_branch_c2
	Message 0x0
	SetVar 0x8004, 0x17f
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_cd
	CallStandard 0x7fc
	SetFlag 0xce
	Jump Script_branch_c2
@ c2

Script_branch_c2: @ c2
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ cd

Script_branch_cd: @ cd
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d7

Script_1: @ d7
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ea

Script_3: @ ea
	CallMessageBox 0x4, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 101

Script_4: @ 101
	CallMessageBox 0x5, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 118

Script_5: @ 118
	CallMessageBox 0x6, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 12f

Script_6: @ 12f
	CallMessageBox 0x7, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 146

Script_7: @ 146
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 159

.byte 0x0 @ 0x159
.byte 0x0 @ 0x15a
.byte 0x0 @ 0x15b

@ end_0x15c
