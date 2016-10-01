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
	script Script_9
	script Script_10
	script Script_11
	script Script_12
	script Script_13
	script Script_14
	script Script_15
	script Script_16
	script Script_17
	script Script_18
	script Script_19
	script Script_20
	script Script_21
	script Script_22
	.hword 0xfd13
@ 5a

Script_1: @ 5a
	SetVar 0x8004, 0x0
	Jump Script_branch_ea
Script_2: @ 66
	SetVar 0x8004, 0x1
	Jump Script_branch_ea
Script_3: @ 72
	SetVar 0x8004, 0x2
	Jump Script_branch_ea
Script_4: @ 7e
	SetVar 0x8004, 0x3
	Jump Script_branch_ea
Script_5: @ 8a
	SetVar 0x8004, 0x4
	Jump Script_branch_ea
Script_6: @ 96
	SetVar 0x8004, 0x5
	Jump Script_branch_ea
Script_7: @ a2
	SetVar 0x8004, 0x6
	Jump Script_branch_ea
Script_8: @ ae
	SetVar 0x8004, 0x7
	Jump Script_branch_ea
Script_9: @ ba
	SetVar 0x8004, 0x8
	Jump Script_branch_ea
Script_10: @ c6
	SetVar 0x8004, 0x9
	Jump Script_branch_ea
Script_11: @ d2
	SetVar 0x8004, 0xa
	Jump Script_branch_ea
Script_12: @ de
	SetVar 0x8004, 0xb
	Jump Script_branch_ea
Script_branch_ea: @ ea
	PlayFanfare 0x5dc
	LockAll
	CheckItem 0x1bc, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_133
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	DeActivateLeader 0x10, 0x0, 0x0, 0x0, 0x0
	Pokecasino 0x8004
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 133

Script_branch_133: @ 133
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 13e

Script_13: @ 13e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	CheckItem 0x1bc, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_18d
	CheckFlag 0x130
	CompareLastResultJump EQUAL, Script_branch_198
	CheckFlag 0x165
	CompareLastResultJump EQUAL, Script_branch_2ca
	CheckRecordCasino 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_198
	Jump Script_branch_2ca
	End
@ 18d

Script_branch_18d: @ 18d
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 198

Script_branch_198: @ 198
	ShowCoins 0x14, 0x2
	ShowMoney 0x14, 0x7
Script_branch_1a4: @ 1a4
	Message 0x2
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x7d, 0x0
	Cmd_42 0x7e, 0x1
	Cmd_42 0x7f, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1e3
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_240
	Jump Script_branch_2bb
Script_branch_1e3: @ 1e3
	CheckMoney 0x800c, 0x3e8
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_29d
	CheckCoinsCasino 0x800c, 0x32
	Nop0
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2ac
	PlayFanfare 0x644
	Cmd_334 0x23, 0x3e8
	TakeMoney 0x3e8
	UpdateMoney
	WaitFanfare 0x644
	PlayFanfare 0x5d5
	GiveCoins 0x32
	UpdateCoins
	WaitFanfare 0x5d5
	Message 0x3
	Return2 0x1e, 0x800c
	Jump Script_branch_1a4
Script_branch_240: @ 240
	CheckMoney 0x800c, 0x2710
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_29d
	CheckCoinsCasino 0x800c, 0x1f4
	Nop0
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2ac
	PlayFanfare 0x644
	Cmd_334 0x23, 0x2710
	TakeMoney 0x2710
	UpdateMoney
	WaitFanfare 0x644
	PlayFanfare 0x5d5
	GiveCoins 0x1f4
	UpdateCoins
	WaitFanfare 0x5d5
	Message 0x3
	Return2 0x1e, 0x800c
	Jump Script_branch_1a4
Script_branch_29d: @ 29d
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	HideCoins
	HideMoney
	ReleaseAll
	End
@ 2ac

Script_branch_2ac: @ 2ac
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	HideCoins
	HideMoney
	ReleaseAll
	End
@ 2bb

Script_branch_2bb: @ 2bb
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	HideCoins
	HideMoney
	ReleaseAll
	End
@ 2ca

Script_branch_2ca: @ 2ca
	SetVar 0x8004, 0x187
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_327
	Jump Script_branch_2f3
	End
@ 2f3

Script_branch_2f3: @ 2f3
	CheckFlag 0x165
	CompareLastResultJump EQUAL, Script_branch_309
	Message 0x7
	Jump Script_branch_314
	End
@ 309

Script_branch_309: @ 309
	Message 0xa
	Jump Script_branch_314
	End
@ 314

Script_branch_314: @ 314
	CallStandard 0x7fc
	SetFlag 0x130
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 327

Script_branch_327: @ 327
	SetFlag 0x165
	Jump Script_branch_198
	End
@ 333

Script_14: @ 333
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 346

Script_15: @ 346
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckItem 0x1bc, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3a1
	CheckFlag 0x12e
	CompareLastResultJump EQUAL, Script_branch_3ac
	CheckCoinsCasino 0x800c, 0x14
	Nop0
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3ac
	SetFlag 0x12e
	SetVarHero 0x0
	Message 0xe
	WaitButton
	PlayFanfare 0x5d5
	GiveCoins 0x14
	WaitFanfare 0x5d5
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3a1

Script_branch_3a1: @ 3a1
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3ac

Script_branch_3ac: @ 3ac
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3b7

Script_16: @ 3b7
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckItem 0x1bc, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_412
	CheckFlag 0x12f
	CompareLastResultJump EQUAL, Script_branch_41d
	CheckCoinsCasino 0x800c, 0x32
	Nop0
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_41d
	SetFlag 0x12f
	SetVarHero 0x0
	Message 0x11
	WaitButton
	PlayFanfare 0x5d5
	GiveCoins 0x32
	WaitFanfare 0x5d5
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 412

Script_branch_412: @ 412
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 41d

Script_branch_41d: @ 41d
	Message 0x12
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 428

Script_17: @ 428
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x13
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 43b

Script_18: @ 43b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x14
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 44e

Script_19: @ 44e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x15
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 461

Script_20: @ 461
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x16
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 474

Script_21: @ 474
	If 0x4040, 0x3e7
	CompareLastResultJump GREATER, Script_branch_497
	SetVariableNumber 0x0, 0x4040
	PlayFanfare 0x5dc
	LockAll
	Message 0x19
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 497

Script_branch_497: @ 497
	SetVariableNumber 0x0, 0x3e7
	PlayFanfare 0x5dc
	LockAll
	Message 0x19
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4ad

Script_22: @ 4ad
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xd6
	CompareLastResultJump EQUAL, Script_branch_4cb
	Message 0x17
	Jump Script_branch_4d6
	End
@ 4cb

Script_branch_4cb: @ 4cb
	Message 0x18
	Jump Script_branch_4d6
	End
@ 4d6

Script_branch_4d6: @ 4d6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4de

.byte 0x0 @ 0x4de
.byte 0x0 @ 0x4df

@ end_0x4e0
