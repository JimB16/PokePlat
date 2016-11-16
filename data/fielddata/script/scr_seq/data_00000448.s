.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	SetFlag 0x9e9
	End
@ 18

Script_2: @ 18
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2b

Script_3: @ 2b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	ShowMoney 0x14, 0x2
	Message 0x1
	Jump Script_branch_44
@ 42

.byte 0x2 @ 0x42
.byte 0x0 @ 0x43

Script_branch_44: @ 44
	Multi2 0x1e, 0xb, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0x7, 0x0
	Cmd_42 0x8, 0x1
	Cmd_42 0x9, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_92
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_bb
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_15d
	Jump Script_branch_15d
@ 90

.byte 0x2 @ 0x90
.byte 0x0 @ 0x91

Script_branch_92: @ 92
	CheckMoney 0x800c, 0x1f4
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_150
	SetVar 0x8005, 0x1
	SetVar 0x8006, 0x1f4
	Jump Script_branch_e4
@ b9

.byte 0x2 @ 0xb9
.byte 0x0 @ 0xba

Script_branch_bb: @ bb
	CheckMoney 0x800c, 0x1770
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_150
	SetVar 0x8005, 0xc
	SetVar 0x8006, 0x1770
	Jump Script_branch_e4
@ e2

.byte 0x2 @ 0xe2
.byte 0x0 @ 0xe3

Script_branch_e4: @ e4
	SetVar 0x8004, 0x21
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_143
	Cmd_334 0x23, 0x8006
	TakeMoneyDCare 0x8006
	UpdateMoney
	PlayFanfare 0x644
	WaitFanfare 0x644
	If 0x8006, 0x1f4
	CompareLastResultCall EQUAL, Script_branch_139
	If 0x8006, 0x1770
	CompareLastResultCall EQUAL, Script_branch_13e
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 139

Script_branch_139: @ 139
	Message 0x2
	Return
@ 13e

Script_branch_13e: @ 13e
	Message 0x6
	Return
@ 143

Script_branch_143: @ 143
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 150

Script_branch_150: @ 150
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 15d

Script_branch_15d: @ 15d
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 16a

Script_4: @ 16a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x107
	CompareLastResultJump EQUAL, Script_branch_188
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 188

Script_branch_188: @ 188
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 193

.byte 0x0 @ 0x193

@ end_0x194
