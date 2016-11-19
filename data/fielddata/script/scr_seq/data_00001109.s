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
	CheckFlag 0xfa
	CompareLastResultJump EQUAL, Script_branch_2f
	End
@ 2f

Script_branch_2f: @ 2f
	ChangeOwPosition 0x0, 0x10, 0xe
	ReleaseOw 0x0, 0x1
	End
@ 3f

Script_7: @ 3f
	LockAll
	Return2 0x14, 0x800c
	CheckRibbonNumber 0x8004
	If 0x8004, 0xa
	CompareLastResultJump LESSER, Script_branch_78
	SetVar 0x40a7, 0x1
	SetFlag 0xfa
	SetVarHero 0x0
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_ac
	WaitMovement
	ReleaseAll
	End
@ 78

Script_branch_78: @ 78
	Message 0x0
	CloseMsgOnKeyPress
	Return2 0x14, 0x800c
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x1c9, 0x0, 0x338, 0x1c6, 0x1
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ ab

.byte 0x0 @ 0xab

Movement_ac: @ ac
	SeeLeft 0x1
	Move_47 0x1
	WalkRightFast 0x1
	Move_48 0x1
	EndMovement 0x0
@ c0

Script_1: @ c0
	SetVarHero 0x0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d6

Script_2: @ d6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFirstPokeParty 0x8000
	SetVarHero 0x0
	SetVarPoke 0x2, 0x8000
	CheckRibbon 0x800c, 0x8000, 0x44
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_244
	CheckRibbon 0x800c, 0x8000, 0x43
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1e7
	CheckRibbon 0x800c, 0x8000, 0x42
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_18a
	Jump Script_branch_12f
@ 12f

Script_branch_12f: @ 12f
	ShowMoney 0x14, 0x2
	Message 0x3
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_25c
	CheckMoney 0x800c, 0x2710
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_24f
	Cmd_334 0x23, 0x2710
	TakeMoney 10000
	UpdateMoney
	PlayFanfare 0x644
	WaitFanfare 0x644
	Message 0x7
	Message 0x8
	WaitButton
	GiveRibbon 0x8000, 0x42
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 18a

Script_branch_18a: @ 18a
	ShowMoney 0x14, 0x2
	Message 0x4
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_25c
	CheckMoney 0x800c, 0x186a0
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_24f
	Cmd_335 0x23, 0x186a0
	TakeMoney 100000
	UpdateMoney
	PlayFanfare 0x644
	WaitFanfare 0x644
	Message 0x9
	Message 0xa
	WaitButton
	GiveRibbon 0x8000, 0x43
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 1e7

Script_branch_1e7: @ 1e7
	ShowMoney 0x14, 0x2
	Message 0x5
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_25c
	CheckMoney 0x800c, 0xf423f
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_24f
	Cmd_335 0x23, 0xf423f
	TakeMoney 999999
	UpdateMoney
	PlayFanfare 0x644
	WaitFanfare 0x644
	Message 0xb
	Message 0xc
	WaitButton
	GiveRibbon 0x8000, 0x44
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 244

Script_branch_244: @ 244
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 24f

Script_branch_24f: @ 24f
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 25c

Script_branch_25c: @ 25c
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 269

Script_3: @ 269
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 27c

Script_4: @ 27c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2a4
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_2af
	End
@ 2a4

Script_branch_2a4: @ 2a4
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2af

Script_branch_2af: @ 2af
	Message 0x11
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2ba

Script_5: @ 2ba
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x12c, 0x0
	Message 0x12
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2d9

Script_6: @ 2d9
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x36, 0x0
	Message 0x13
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2f8

@ end_0x2f8
