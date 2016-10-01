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

Script_1: @ 22
	End
@ 24

Script_2: @ 24
	End
@ 26

Script_3: @ 26
	Cmd_142
	End
@ 2a

Script_4: @ 2a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	StoreYourDecisionUnion 0x800c
	CopyVar 0x8004, 0x800c
	If 0x800c, 0x5
	CompareLastResultJump EQUAL, Script_branch_497
	SetUnionFunctionId 0x0
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_4ad
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_53a
	If 0x800c, 0x4
	CompareLastResultJump EQUAL, Script_branch_5af
	CheckOtherDecisionUnion2 0x8004, 0x800c
	StoreYourDecisionUnion 0x800c
	If 0x800c, 0x5
	CompareLastResultJump EQUAL, Script_branch_497
	Message 0xc7
	StoreOtherDecisionUnion 0x800c
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_7ba
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_486
	Jump Script_branch_ba
	End
@ ba

Script_branch_ba: @ ba
	FriendBT 0x64
	SetVarUnionMessage 0x2, 0x800c
	Cmd_2c0 0x800c
	Jump Script_branch_ea
	End
@ d0

Script_branch_d0: @ d0
	FriendBT 0x64
	OpenUnionFunction2 0xb
	SetVarUnionMessage 0x16, 0x800c
	Message3 0x800c
	Jump Script_branch_ea
	End
@ ea

Script_branch_ea: @ ea
	Multi 0x1f, 0x3, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0xa5, 0x0
	Cmd_42 0x38, 0x1
	Cmd_42 0x31, 0x2
	Cmd_42 0x16, 0x3
	Cmd_42 0x8c, 0x4
	Cmd_42 0x8b, 0x5
	Cmd_42 0x17, 0x63
	CloseMultiUnion
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_182
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_334
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_274
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_1eb
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_394
	If 0x8008, 0x5
	CompareLastResultJump EQUAL, Script_branch_3f4
	If 0x8008, 0x7
	CompareLastResultJump EQUAL, Script_branch_792
	CheckOtherDecisionUnion 0x0, 0x7
	Jump Script_branch_776
	End
@ 182

Script_branch_182: @ 182
	CheckOtherDecisionUnion 0x0, 0x1
	SetVarUnionMessage 0x9, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_19f
	Message3 0x800c
Script_branch_19f: @ 19f
	StoreYourDecisionUnion2 0x800c
	If 0x800c, 0x7
	CompareLastResultJump EQUAL, Script_branch_6a0
	OpenUnionFunction2 0x5
	SetVarUnionMessage 0x1, 0x800c
	Message3 0x800c
	Return2 0x1e, 0x800c
	FriendBT 0x1
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	TrainerCaseUnion
	CallEnd
	Call Function_bb2
	Message2 0x10
	Jump Script_branch_d0
	End
@ 1eb

Script_branch_1eb: @ 1eb
	CheckPartyNumberUnion 0x800c
	If 0x800c, 0x2
	CompareLastResultJump LESSER, Script_branch_262
	CheckOtherDecisionUnion 0x0, 0x3
	SetVarUnionMessage 0x9, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_219
	Message3 0x800c
Script_branch_219: @ 219
	StoreYourDecisionUnion2 0x800c
	If 0x800c, 0x7
	CompareLastResultJump EQUAL, Script_branch_6e8
	OpenUnionFunction2 0x7
	SetVarUnionMessage 0x1, 0x800c
	Message3 0x800c
	Return2 0x1e, 0x800c
	FriendBT 0x3
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	TradeUnion
	CallEnd
	Call Function_bb2
	Jump Script_branch_d0
	End
@ 262

Script_branch_262: @ 262
	SetVarUnionMessage 0x14, 0x800c
	Message3 0x800c
	Jump Script_branch_d0
	End
@ 274

Script_branch_274: @ 274
	CheckPokemonLevel 0x800c, 0x1e
	If 0x800c, 0x2
	CompareLastResultJump LESSER, Script_branch_322
	CheckOtherDecisionUnion 0x0, 0x2
	SetVarUnionMessage 0x9, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2a4
	Message3 0x800c
Script_branch_2a4: @ 2a4
	StoreYourDecisionUnion2 0x800c
	If 0x800c, 0x7
	CompareLastResultJump EQUAL, Script_branch_6d0
	OpenUnionFunction2 0x6
	SetVarUnionMessage 0x1, 0x800c
	Message3 0x800c
	Return2 0x1e, 0x800c
	FriendBT 0x2
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ChsPokemenu2
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Message 0xca
	FriendBT 0x66
	CloseMsgOnKeyPress
	CheckBattleUnion 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_b63
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_b63
	Cmd_f6
	Call Function_bb2
	Jump Script_branch_d0
	End
@ 322

Script_branch_322: @ 322
	SetVarUnionMessage 0x13, 0x800c
	Message3 0x800c
	Jump Script_branch_d0
	End
@ 334

Script_branch_334: @ 334
	CheckOtherDecisionUnion 0x0, 0x4
	SetVarUnionMessage 0x9, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_351
	Message3 0x800c
Script_branch_351: @ 351
	StoreYourDecisionUnion2 0x800c
	If 0x800c, 0x7
	CompareLastResultJump EQUAL, Script_branch_6b8
	SetVarUnionMessage 0x1, 0x800c
	Message3 0x800c
	SetSaveData 0x1e
	FriendBT 0x4
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	DrawUnion
	CallEnd
	Call Function_bb2
	Jump Script_branch_476
	End
@ 394

Script_branch_394: @ 394
	CheckOtherDecisionUnion 0x0, 0x5
	SetVarUnionMessage 0x9, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3b1
	Message3 0x800c
Script_branch_3b1: @ 3b1
	StoreYourDecisionUnion2 0x800c
	If 0x800c, 0x7
	CompareLastResultJump EQUAL, Script_branch_718
	SetVarUnionMessage 0x1, 0x800c
	Message3 0x800c
	SetSaveData 0x1e
	FriendBT 0x5
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	RecordMixingUnion
	CallEnd
	Call Function_bb2
	Jump Script_branch_476
	End
@ 3f4

Script_branch_3f4: @ 3f4
	CheckEggUnion 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_741
	CheckVersionGame 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_753
	CheckOtherDecisionUnion 0x0, 0x6
	SetVarUnionMessage 0x9, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_433
	Message3 0x800c
Script_branch_433: @ 433
	StoreYourDecisionUnion2 0x800c
	If 0x800c, 0x7
	CompareLastResultJump EQUAL, Script_branch_75e
	SetVarUnionMessage 0x1, 0x800c
	Message3 0x800c
	SetSaveData 0x1e
	FriendBT 0x6
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	SpinTradeUnion
	CallEnd
	Call Function_bb2
	Jump Script_branch_476
	End
@ 476

Script_branch_476: @ 476
	ReleaseAll
	End
@ 47a

.byte 0x43 @ 0x47a
.byte 0x1 @ 0x47b
.byte 0x0 @ 0x47c
.byte 0x0 @ 0x47d
.byte 0x1 @ 0x47e
.byte 0x0 @ 0x47f
.byte 0x34 @ 0x480
.byte 0x0 @ 0x481
.byte 0x61 @ 0x482
.byte 0x0 @ 0x483
.byte 0x2 @ 0x484
.byte 0x0 @ 0x485

Script_branch_486: @ 486
	Message 0x26
	Return2 0x1e, 0x800c
	CloseMsgOnKeyPress
	LinkClosed
	ReleaseAll
	End
@ 497

Script_branch_497: @ 497
	StartUnion
	SetVarUnionMessage 0x0, 0x800c
	Message3 0x800c
	Cmd_30
	CloseMsgOnKeyPress
	LinkClosed
	ReleaseAll
	End
@ 4ad

Script_branch_4ad: @ 4ad
	StartUnion
	SetVarUnionMessage 0xa, 0x800c
	Message3 0x800c
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_522
	CheckOtherDecisionUnion2 0x8004, 0x800c
	If 0x800c, 0x5
	CompareLastResultJump EQUAL, Script_branch_486
	StoreOtherDecisionUnion 0x800c
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_486
	SetVarUnionMessage 0xd, 0x800c
	Message3 0x800c
	Return2 0x1e, 0x800c
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	DrawUnion
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	Jump Script_branch_476
	End
@ 522

Script_branch_522: @ 522
	SetVarUnionMessage 0x10, 0x800c
	Message3 0x800c
	Return2 0x1e, 0x800c
	LinkClosed
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 53a

Script_branch_53a: @ 53a
	StartUnion
	SetVarUnionMessage 0xb, 0x800c
	Message3 0x800c
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_646
	CheckOtherDecisionUnion2 0x8004, 0x800c
	If 0x800c, 0x5
	CompareLastResultJump EQUAL, Script_branch_486
	StoreOtherDecisionUnion 0x800c
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_486
	SetVarUnionMessage 0xe, 0x800c
	Message3 0x800c
	Return2 0x1e, 0x800c
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	RecordMixingUnion
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	Jump Script_branch_476
	End
@ 5af

Script_branch_5af: @ 5af
	StartUnion
	SetVarUnionMessage 0xc, 0x800c
	Message3 0x800c
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_65e
	CheckEggUnion 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_68a
	StorePokeNumParty 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_674
	CheckOtherDecisionUnion2 0x8004, 0x800c
	If 0x800c, 0x5
	CompareLastResultJump EQUAL, Script_branch_486
	StoreOtherDecisionUnion 0x800c
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_486
	SetVarUnionMessage 0xf, 0x800c
	Message3 0x800c
	Return2 0x1e, 0x800c
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	SpinTradeUnion
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	Jump Script_branch_476
	End
@ 646

Script_branch_646: @ 646
	SetVarUnionMessage 0x11, 0x800c
	Message3 0x800c
	Return2 0x1e, 0x800c
	CloseMsgOnKeyPress
	LinkClosed
	ReleaseAll
	End
@ 65e

Script_branch_65e: @ 65e
	SetVarUnionMessage 0x12, 0x800c
	Message3 0x800c
	Return2 0x1e, 0x800c
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 674

Script_branch_674: @ 674
	SetVarUnionMessage 0x1a, 0x800c
	Message3 0x800c
	Return2 0x1e, 0x800c
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 68a

Script_branch_68a: @ 68a
	SetVarUnionMessage 0x15, 0x800c
	Message3 0x800c
	Return2 0x1e, 0x800c
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6a0

Script_branch_6a0: @ 6a0
	SetVarUnionMessage 0x3, 0x800c
	Message3 0x800c
	Return2 0x1e, 0x800c
	Jump Script_branch_7ae
	End
@ 6b8

Script_branch_6b8: @ 6b8
	SetVarUnionMessage 0x4, 0x800c
	Message3 0x800c
	Return2 0x1e, 0x800c
	Jump Script_branch_7ae
	End
@ 6d0

Script_branch_6d0: @ 6d0
	SetVarUnionMessage 0x5, 0x800c
	Message3 0x800c
	Return2 0x1e, 0x800c
	Jump Script_branch_7ae
	End
@ 6e8

Script_branch_6e8: @ 6e8
	SetVarUnionMessage 0x6, 0x800c
	Message3 0x800c
	Return2 0x1e, 0x800c
	Jump Script_branch_7ae
	End
@ 700

.byte 0x3f @ 0x700
.byte 0x1 @ 0x701
.byte 0x7 @ 0x702
.byte 0x0 @ 0x703
.byte 0xc @ 0x704
.byte 0x80 @ 0x705
.byte 0x2d @ 0x706
.byte 0x0 @ 0x707
.byte 0xc @ 0x708
.byte 0x80 @ 0x709
.byte 0x3 @ 0x70a
.byte 0x0 @ 0x70b
.byte 0x1e @ 0x70c
.byte 0x0 @ 0x70d
.byte 0xc @ 0x70e
.byte 0x80 @ 0x70f
.byte 0x16 @ 0x710
.byte 0x0 @ 0x711
.byte 0x98 @ 0x712
.byte 0x0 @ 0x713
.byte 0x0 @ 0x714
.byte 0x0 @ 0x715
.byte 0x2 @ 0x716
.byte 0x0 @ 0x717

Script_branch_718: @ 718
	SetVarUnionMessage 0x8, 0x800c
	Message3 0x800c
	Return2 0x1e, 0x800c
	Jump Script_branch_7ae
	End
@ 730

Script_branch_730: @ 730
	CheckOtherDecisionUnion 0x1, 0x1
	Message 0x24
	Jump Script_branch_b9a
	End
@ 741

Script_branch_741: @ 741
	SetVarUnionMessage 0x15, 0x800c
	Message3 0x800c
	Jump Script_branch_d0
	End
@ 753

Script_branch_753: @ 753
	Message 0xda
	Jump Script_branch_d0
	End
@ 75e

Script_branch_75e: @ 75e
	SetVarUnionMessage 0x8, 0x800c
	Message3 0x800c
	Return2 0x1e, 0x800c
	Jump Script_branch_7ae
	End
@ 776

Script_branch_776: @ 776
	SetVarUnionMessage 0x17, 0x800c
	Message3 0x800c
	Return2 0x1e, 0x800c
	FriendBT 0x65
	CloseMsgOnKeyPress
	CloseUnionFunction2
	ReleaseAll
	End
@ 792

Script_branch_792: @ 792
	SetVarUnionMessage 0x18, 0x800c
	Message3 0x800c
	Return2 0x1e, 0x800c
	FriendBT 0x65
	CloseMsgOnKeyPress
	CloseUnionFunction2
	ReleaseAll
	End
@ 7ae

Script_branch_7ae: @ 7ae
	FriendBT 0x65
	CloseMsgOnKeyPress
	CloseUnionFunction2
	ReleaseAll
	End
@ 7ba

Script_5: @ 7ba
Script_branch_7ba: @ 7ba
	LockAll
	PlayFanfare 0x5e4
	SetUnionFunctionId 0x1
	Cmd_2c0 0x7
	SetSaveData 0x1e
	Jump Script_branch_7d4
	End
@ 7d4

Script_branch_7d4: @ 7d4
	Message 0x9
	FriendBT 0x64
	OpenUnionFunction2 0xb
	StoreOtherDecisionUnion2 0x800c
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_853
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_aed
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_95c
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_8c7
	If 0x8008, 0x5
	CompareLastResultJump EQUAL, Script_branch_a28
	If 0x8008, 0x6
	CompareLastResultJump EQUAL, Script_branch_a82
	If 0x8008, 0x7
	CompareLastResultJump EQUAL, Script_branch_b78
	If 0x8008, 0x8
	CompareLastResultJump EQUAL, Script_branch_b89
	End
@ 853

Script_branch_853: @ 853
	Message 0xb
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_8b6
	CheckOtherDecisionUnion 0x1, 0x0
	CloseMsgOnKeyPress
	StoreYourDecisionUnion2 0x800c
	If 0x800c, 0x7
	CompareLastResultJump EQUAL, Script_branch_b58
	Cmd_2af 0x800c
	Message3 0x800c
	Return2 0x1e, 0x800c
	FriendBT 0x1
	CloseMsgOnKeyPress
	OpenUnionFunction2 0x5
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	TrainerCaseUnion
	CallEnd
	Call Function_bb2
	Jump Script_branch_7d4
	End
@ 8b6

Script_branch_8b6: @ 8b6
	CheckOtherDecisionUnion 0x1, 0x1
	Message 0x11
	Jump Script_branch_b9a
	End
@ 8c7

Script_branch_8c7: @ 8c7
	Message 0x1a
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_93a
	CheckPartyNumberUnion 0x800c
	If 0x800c, 0x2
	CompareLastResultJump LESSER, Script_branch_94b
	CheckOtherDecisionUnion 0x1, 0x0
	CloseMsgOnKeyPress
	StoreYourDecisionUnion2 0x800c
	If 0x800c, 0x7
	CompareLastResultJump EQUAL, Script_branch_b78
	Message 0x1b
	Return2 0x1e, 0x800c
	FriendBT 0x3
	CloseMsgOnKeyPress
	OpenUnionFunction2 0x7
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	TradeUnion
	CallEnd
	OpenUnionFunction2 0xb
	Call Function_bb2
	Jump Script_branch_7d4
	End
@ 93a

Script_branch_93a: @ 93a
	CheckOtherDecisionUnion 0x1, 0x1
	Message 0x14
	Jump Script_branch_b9a
	End
@ 94b

Script_branch_94b: @ 94b
	CheckOtherDecisionUnion 0x1, 0x1
	Message 0x1d
	Jump Script_branch_b9a
	End
@ 95c

Script_branch_95c: @ 95c
	Message 0x15
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_a06
	CheckPokemonLevel 0x800c, 0x1e
	If 0x800c, 0x2
	CompareLastResultJump LESSER, Script_branch_a17
	CheckOtherDecisionUnion 0x1, 0x0
	CloseMsgOnKeyPress
	StoreYourDecisionUnion2 0x800c
	If 0x800c, 0x7
	CompareLastResultJump EQUAL, Script_branch_b78
	Message 0x16
	Return2 0x1e, 0x800c
	FriendBT 0x2
	CloseMsgOnKeyPress
	OpenUnionFunction2 0x6
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ChsPokemenu2
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Message 0xca
	FriendBT 0x66
	CloseMsgOnKeyPress
	CheckBattleUnion 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_b63
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_b63
	Cmd_f6
	OpenUnionFunction2 0xb
	Call Function_bb2
	Jump Script_branch_7d4
	End
@ a06

Script_branch_a06: @ a06
	CheckOtherDecisionUnion 0x1, 0x1
	Message 0x17
	Jump Script_branch_b9a
	End
@ a17

Script_branch_a17: @ a17
	CheckOtherDecisionUnion 0x1, 0x1
	Message 0x18
	Jump Script_branch_b9a
	End
@ a28

Script_branch_a28: @ a28
	Message 0x1e
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_a06
	CheckOtherDecisionUnion 0x1, 0x0
	CloseMsgOnKeyPress
	StoreYourDecisionUnion2 0x800c
	If 0x800c, 0x7
	CompareLastResultJump EQUAL, Script_branch_b78
	Message 0x1f
	Return2 0x1e, 0x800c
	FriendBT 0x5
	CloseMsgOnKeyPress
	OpenUnionFunction2 0x2
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	RecordMixingUnion
	CallEnd
	Call Function_bb2
	ReleaseAll
	End
@ a82

Script_branch_a82: @ a82
	Message 0x21
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_a06
	CheckOtherDecisionUnion 0x1, 0x0
	CloseMsgOnKeyPress
	CheckEggUnion 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_730
	StoreYourDecisionUnion2 0x800c
	If 0x800c, 0x7
	CompareLastResultJump EQUAL, Script_branch_b78
	Message 0x22
	Return2 0x1e, 0x800c
	FriendBT 0x6
	CloseMsgOnKeyPress
	OpenUnionFunction2 0xd
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	SpinTradeUnion
	CallEnd
	Call Function_bb2
	ReleaseAll
	End
@ aed

Script_branch_aed: @ aed
	Message 0x12
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_b47
	CheckOtherDecisionUnion 0x1, 0x0
	CloseMsgOnKeyPress
	StoreYourDecisionUnion2 0x800c
	If 0x800c, 0x7
	CompareLastResultJump EQUAL, Script_branch_b78
	Message 0x13
	Return2 0x1e, 0x800c
	FriendBT 0x4
	CloseMsgOnKeyPress
	OpenUnionFunction2 0x1
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	DrawUnion
	CallEnd
	Call Function_bb2
	ReleaseAll
	End
@ b47

Script_branch_b47: @ b47
	CheckOtherDecisionUnion 0x1, 0x1
	Message 0x1c
	Jump Script_branch_b9a
	End
@ b58

Script_branch_b58: @ b58
	Message 0x23
	Jump Script_branch_b9a
	End
@ b63

Script_branch_b63: @ b63
	OpenUnionFunction2 0xb
	Message 0x19
	Return2 0x1e, 0x800c
	Jump Script_branch_b9a
	End
@ b78

Script_branch_b78: @ b78
	Message 0x8
	Return2 0x1e, 0x800c
	Jump Script_branch_b9a
	End
@ b89

Script_branch_b89: @ b89
	Message 0xa
	Return2 0x1e, 0x800c
	Jump Script_branch_b9a
	End
@ b9a

Script_branch_b9a: @ b9a
	FriendBT 0x65
	CloseMsgOnKeyPress
	CloseUnionFunction2
	ReleaseAll
	End
@ ba6

.byte 0x43 @ 0xba6
.byte 0x1 @ 0xba7
.byte 0x1 @ 0xba8
.byte 0x0 @ 0xba9
.byte 0x1 @ 0xbaa
.byte 0x0 @ 0xbab
.byte 0x34 @ 0xbac
.byte 0x0 @ 0xbad
.byte 0x61 @ 0xbae
.byte 0x0 @ 0xbaf
.byte 0x2 @ 0xbb0
.byte 0x0 @ 0xbb1

Function_bb2: @ bb2
	CloseUnionFunction
	FadeScreen 0x6, 0x1, 0x1, 0x0
	Return
@ bc0

Script_6: @ bc0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xcf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ bd3

Script_7: @ bd3
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Jump Script_branch_497
	End
@ be3

Script_8: @ be3
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Jump Script_branch_bf3
	End
@ bf3

Script_branch_bf3: @ bf3
	StartUnion
	CheckFlag 0xbb
	CompareLastResultCall EQUAL, Script_branch_c50
	CheckFlag 0xbb
	CompareLastResultCall LESSER, Script_branch_c55
	SetFlag 0xbb
	Multi 0x1f, 0xb, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0xa, 0x0
	Cmd_42 0xa6, 0x1
	Cmd_42 0x17, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_c72
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_c5a
	Jump Script_branch_c6a
	End
@ c50

Script_branch_c50: @ c50
	Message 0x9e
	Return
@ c55

Script_branch_c55: @ c55
	Message 0x9d
	Return
@ c5a

Script_branch_c5a: @ c5a
	Cmd_138 0x800c
	Message3 0x800c
	Jump Script_branch_bf3
	End
@ c6a

Script_branch_c6a: @ c6a
	LinkClosed
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c72

Script_branch_c72: @ c72
	Message 0x9f
	Multi 0x1f, 0x3, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0x31, 0x0
	Cmd_42 0x16, 0x1
	Cmd_42 0x8c, 0x2
	Cmd_42 0x38, 0x3
	Cmd_42 0xa7, 0x4
	Cmd_42 0x8b, 0x5
	Cmd_42 0xc, 0x6
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_cfa
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_d05
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_d10
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_d1b
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_d26
	If 0x8008, 0x5
	CompareLastResultJump EQUAL, Script_branch_d31
	Jump Script_branch_bf3
	End
@ cfa

Script_branch_cfa: @ cfa
	Message 0xa0
	Jump Script_branch_c72
	End
@ d05

Script_branch_d05: @ d05
	Message 0xa1
	Jump Script_branch_c72
	End
@ d10

Script_branch_d10: @ d10
	Message 0xa2
	Jump Script_branch_c72
	End
@ d1b

Script_branch_d1b: @ d1b
	Message 0xa4
	Jump Script_branch_c72
	End
@ d26

Script_branch_d26: @ d26
	Message 0xa5
	Jump Script_branch_c72
	End
@ d31

Script_branch_d31: @ d31
	Message 0xa3
	Jump Script_branch_c72
	End
@ d3c

.byte 0x16 @ 0xd3c
.byte 0x0 @ 0xd3d
.byte 0xb1 @ 0xd3e
.byte 0xfe @ 0xd3f
.byte 0xff @ 0xd40
.byte 0xff @ 0xd41
.byte 0x2 @ 0xd42
.byte 0x0 @ 0xd43

@ end_0xd44
