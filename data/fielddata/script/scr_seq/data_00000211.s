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
	script Script_23
	script Script_24
	script Script_25
	script Script_26
	script Script_27
	script Script_28
	script Script_29
	script Script_30
	script Script_31
	script Script_32
	script Script_33
	script Script_34
	script Script_35
	script Script_36
	script Script_37
	script Script_38
	script Script_39
	script Script_40
	script Script_41
	script Script_42
	script Script_43
	script Script_44
	script Script_45
	script Script_46
	script Script_47
	script Script_48
	script Script_49
	script Script_50
	script Script_51
	script Script_52
	script Script_53
	script Script_54
	script Script_55
	script Script_56
	script Script_57
	script Script_58
	.hword 0xfd13
@ ea

Script_11: @ ea
	End
@ ec

Script_8: @ ec
	End
@ ee

Script_3: @ ee
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	StoreTrainerCardStar 0x800c
	If 0x800c, 0x4
	CompareLastResultJump 0x4, Script_branch_27a
	SetVar 0x8004, 0x0
	CheckTime 0x800c
	StoreFurniture 0x800c
	SetVar 0x8004, 0x78
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_141
	SetVar 0x8004, 0x79
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_141
	SetVar 0x8004, 0x0
Script_branch_141: @ 141
	Message3 0x8004
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_172
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_165
	End
@ 165

Script_branch_165: @ 165
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	ExitStandard
	End
@ 172

Script_branch_172: @ 172
	GivePokeHiroAnm 0x100
	StopGivePokeHiroAnm
	ApplyMovement 0xff, Movement_2ec
	WaitMovement
	StoreTrainerCardStar 0x800c
	If 0x800c, 0x4
	CompareLastResultCall 0x4, Script_branch_1bc
	If 0x800c, 0x4
	CompareLastResultCall LESSER, Script_branch_1b7
	Call Function_1c1
	CheckFlag 0x6a
	CompareLastResultJump LESSER, Script_branch_242
	Jump Script_branch_1e1
@ 1b7

Script_branch_1b7: @ 1b7
	Message 0x1
	Return
@ 1bc

Script_branch_1bc: @ 1bc
	Message 0x7
	Return
@ 1c1

Function_1c1: @ 1c1
	ApplyMovement 0x8007, Movement_1260
	WaitMovement
	CheckPartyNumberUnion 0x8006
	HealPokemonAnimation 0x8006
	ApplyMovement 0x8007, Movement_1278
	WaitMovement
	HealPokemon
	Return
@ 1e1

Script_branch_1e1: @ 1e1
	If 0x8004, 0x1
	CompareLastResultJump EQUAL, Script_branch_218
	Message 0x2
	ApplyMovement 0xff, Movement_2f4
	WaitMovement
	GivePokeHiroAnm 0x1
	StopGivePokeHiroAnm
	ApplyMovement 0x8007, Movement_2e0
	WaitMovement
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	ExitStandard
	End
@ 218

Script_branch_218: @ 218
	Message 0x8
	ApplyMovement 0xff, Movement_2f4
	WaitMovement
	GivePokeHiroAnm 0x1
	StopGivePokeHiroAnm
	ApplyMovement 0x8007, Movement_2e0
	WaitMovement
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	ExitStandard
	End
@ 242

Script_branch_242: @ 242
	StorePokerus 0x8006
	If 0x8006, 0x1
	CompareLastResultJump EQUAL, Script_branch_259
	Jump Script_branch_1e1
@ 259

Script_branch_259: @ 259
	SetFlag 0x6a
	ApplyMovement 0xff, Movement_2f4
	WaitMovement
	GivePokeHiroAnm 0x1
	StopGivePokeHiroAnm
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	ExitStandard
	End
@ 27a

Script_branch_27a: @ 27a
	CheckFlag 0x69
	CompareLastResultJump EQUAL, Script_branch_2b0
	SetFlag 0x69
	Message 0x4
	SetVarHero 0x0
	Message 0x5
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2d4
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	ExitStandard
	End
@ 2b0

Script_branch_2b0: @ 2b0
	SetVarHero 0x0
	Message 0x6
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2d4
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	ExitStandard
	End
@ 2d4

Script_branch_2d4: @ 2d4
	SetVar 0x8004, 0x1
	Jump Script_branch_172
@ 2e0

Movement_2e0: @ 2e0
	Move_64 0x1
	Move_3e 0x1
	EndMovement 0x0
@ 2ec

Movement_2ec: @ 2ec
	Move_66 0x1
	EndMovement 0x0
@ 2f4

Movement_2f4: @ 2f4
	Move_68 0x1
	EndMovement 0x0
@ 2fc

Script_1: @ 2fc
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_33a
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_341
	StoreMenuStatus 0x800c
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_341
	TypeMessageBox 0x2
	ExitStandard
	End
@ 33a

Script_branch_33a: @ 33a
	TypeMessageBox 0x2
	ExitStandard
	End
@ 341

Script_branch_341: @ 341
	TypeMessageBox 0x4
	NoMapMessageBox
	ShowMenu
	ExitStandard
	End
@ 34c

Script_2: @ 34c
	Call Function_356
	ExitStandard
	End
@ 356

Function_356: @ 356
	StoreItemType 0x8004, 0x800c
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x7
	CompareLastResultJump EQUAL, Script_branch_3d8
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_3cc
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_3cc
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_3cc
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_3cc
	If 0x8008, 0x6
	CompareLastResultJump EQUAL, Script_branch_3cc
	If 0x8008, 0x5
	CompareLastResultJump EQUAL, Script_branch_3de
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_3d2
	End
@ 3cc

Script_branch_3cc: @ 3cc
	Soundfr 0x486
	Return
@ 3d2

Script_branch_3d2: @ 3d2
	Soundfr 0x48b
	Return
@ 3d8

Script_branch_3d8: @ 3d8
	Soundfr 0x485
	Return
@ 3de

Script_branch_3de: @ 3de
	Soundfr 0x488
	Return
@ 3e4

.byte 0x15 @ 0x3e4
.byte 0x0 @ 0x3e5
.byte 0x2 @ 0x3e6
.byte 0x0 @ 0x3e7

Script_4: @ 3e8
	LockAll
	CheckPartyNumber 0x8004
	SetVar 0x8005, 0x0
Script_branch_3f4: @ 3f4
	CheckIsPokemonPoisoned 0x800c, 0x8005
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_40f
	SetVarPokeNick 0x0, 0x8005
	Message 0x42
Script_branch_40f: @ 40f
	ScriptCmd_AddValue 0x8005, 0x1
	If2 0x8004, 0x8005
	CompareLastResultJump 0x5, Script_branch_3f4
	CheckPokePartyHealth 0x800c, 0x6
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_457
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 43b

Script_5: @ 43b
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Cmd_30
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	End
@ 457

Script_branch_457: @ 457
	SetVarHero 0x0
	Message 0xb
	Cmd_30
	CloseMsgOnKeyPress
	SwitchMusic 0x0, 0xa
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	PreWfc
	DefeatGoPokecenter
	End
@ 479

Script_6: @ 479
	ClearFlag 0x1f
	Call Function_4a8
	Cmd_18f 0x800c
	CloseMsgOnKeyPress
	End
@ 48b

Script_35: @ 48b
	Message 0x14
	Cmd_30
	CloseMsgOnKeyPress
	End
@ 494

Script_7: @ 494
	SetFlag 0x1f
	Call Function_4a8
	CopyVar 0x4000, 0x800c
	ExitStandard
	End
@ 4a8

Function_4a8: @ 4a8
	StoreSaveData 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_4fc
	ShowSaveBox
	Message 0xd
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_5a0
	StoreSaveData 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_51d
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_509
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_526
	End
@ 4fc

Script_branch_4fc: @ 4fc
	Message 0x14
	Cmd_30
	SetVar 0x800c, 0x0
	Return
@ 509

Script_branch_509: @ 509
	Message 0xe
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_5a0
Script_branch_51d: @ 51d
	Message 0x15
	Jump Script_branch_552
@ 526

Script_branch_526: @ 526
	Message 0xe
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_5a0
	CheckFlag 0x1f
	CompareLastResultJump LESSER, Script_branch_5c6
	CheckFlag 0x1f
	CompareLastResultJump EQUAL, Script_branch_5d1
	End
@ 552

Script_branch_552: @ 552
	RetSprtSave
	Return2 0x2, 0x800c
	Call Function_568
	ElevLgAnimation
	Jump Script_branch_57d
@ 568

Function_568: @ 568
	ShowClockSave
	CheckFlag 0x1f
	CompareLastResultCall EQUAL, Script_branch_5be
	CheckSaveData 0x800c
	HideClockSave
	Return
@ 57d

Script_branch_57d: @ 57d
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_5aa
	SetVarHero 0x0
	Message 0x10
	PlayFanfare 0x61b
	WaitFanfare 0x61b
	SetSaveData 0x1e
	HideSaveBox
	Return
@ 5a0

Script_branch_5a0: @ 5a0
	HideSaveBox
	SetVar 0x800c, 0x0
	Return
@ 5aa

Script_branch_5aa: @ 5aa
	Message 0x12
	Cmd_30
	HideSaveBox
	Return
@ 5b3

Script_branch_5b3: @ 5b3
	Message 0x15
	Jump Script_branch_552
@ 5bc

.byte 0x2 @ 0x5bc
.byte 0x0 @ 0x5bd

Script_branch_5be: @ 5be
	Cmd_2d6
	ClearFlag 0x1f
	Return
@ 5c6

Script_branch_5c6: @ 5c6
	Message 0xf
	Jump Script_branch_552
@ 5cf

.byte 0x2 @ 0x5cf
.byte 0x0 @ 0x5d0

Script_branch_5d1: @ 5d1
	Cmd_2d7 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_5b3
	Jump Script_branch_5c6
@ 5e8

.byte 0x2 @ 0x5e8
.byte 0x0 @ 0x5e9

Script_9: @ 5ea
	PlayFanfare 0x5dc
	LockAll
	CheckItem 0x5e, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x5, Script_branch_632
	CheckIfHoneySlathered 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_65f
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_66a
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_6f4
	End
@ 632

Script_branch_632: @ 632
	CheckIfHoneySlathered 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_675
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_67e
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_6f4
	End
@ 65f

Script_branch_65f: @ 65f
	Message 0x2e
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 66a

Script_branch_66a: @ 66a
	Message 0x30
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 675

Script_branch_675: @ 675
	Message 0x2f
	Jump Script_branch_6bb
@ 67e

Script_branch_67e: @ 67e
	Message 0x31
	Jump Script_branch_6bb
@ 687

.byte 0x7e @ 0x687
.byte 0x0 @ 0x688
.byte 0x5e @ 0x689
.byte 0x0 @ 0x68a
.byte 0x1 @ 0x68b
.byte 0x0 @ 0x68c
.byte 0xc @ 0x68d
.byte 0x80 @ 0x68e
.byte 0x11 @ 0x68f
.byte 0x0 @ 0x690
.byte 0xc @ 0x691
.byte 0x80 @ 0x692
.byte 0x0 @ 0x693
.byte 0x0 @ 0x694
.byte 0x1c @ 0x695
.byte 0x0 @ 0x696
.byte 0x5 @ 0x697
.byte 0x1f @ 0x698
.byte 0x0 @ 0x699
.byte 0x0 @ 0x69a
.byte 0x0 @ 0x69b
.byte 0x34 @ 0x69c
.byte 0x0 @ 0x69d
.byte 0x61 @ 0x69e
.byte 0x0 @ 0x69f
.byte 0x2 @ 0x6a0
.byte 0x0 @ 0x6a1

Script_branch_6a2: @ 6a2
	CheckItem 0x5e, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x5, Script_branch_6bb
	ReleaseAll
	End
@ 6bb

Script_branch_6bb: @ 6bb
	Message 0x32
	YesNoBox 0x800c
	CloseMsgOnKeyPress
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_6d5
	ReleaseAll
	End
@ 6d5

Script_branch_6d5: @ 6d5
	GiveItem 0x5e, 0x1, 0x800c
	MainEvent 0x1
	HoneyTreeBattle
	Return2 0xa, 0x800c
	Message 0x33
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6f4

Script_branch_6f4: @ 6f4
	RandomEvent 0x75
	RandomBattle
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_713
	StopRandomBattle
	Jump Script_branch_6a2
@ 713

Script_branch_713: @ 713
	LostGoPc
	ReleaseAll
	End
@ 719

Script_10: @ 719
	Call Function_723
	ExitStandard
	End
@ 723

Function_723: @ 723
	SetVarHero 0x0
	SetVarObj 0x1, 0x8004
	Soundfr 0x48a
	Message 0x18
	Cmd_4f
	Message 0x1a
	ActPktchAppl 0x8004
	If 0x8004, 0x0
	CompareLastResultCall EQUAL, Script_branch_882
	If 0x8004, 0x1
	CompareLastResultCall EQUAL, Script_branch_887
	If 0x8004, 0x2
	CompareLastResultCall EQUAL, Script_branch_88c
	If 0x8004, 0x3
	CompareLastResultCall EQUAL, Script_branch_891
	If 0x8004, 0x4
	CompareLastResultCall EQUAL, Script_branch_896
	If 0x8004, 0x5
	CompareLastResultCall EQUAL, Script_branch_89b
	If 0x8004, 0x6
	CompareLastResultCall EQUAL, Script_branch_8a0
	If 0x8004, 0x7
	CompareLastResultCall EQUAL, Script_branch_8a5
	If 0x8004, 0x8
	CompareLastResultCall EQUAL, Script_branch_8aa
	If 0x8004, 0x9
	CompareLastResultCall EQUAL, Script_branch_8af
	If 0x8004, 0xa
	CompareLastResultCall EQUAL, Script_branch_8b4
	If 0x8004, 0xb
	CompareLastResultCall EQUAL, Script_branch_8b9
	If 0x8004, 0xc
	CompareLastResultCall EQUAL, Script_branch_8be
	If 0x8004, 0xd
	CompareLastResultCall EQUAL, Script_branch_8c3
	If 0x8004, 0xe
	CompareLastResultCall EQUAL, Script_branch_8c8
	If 0x8004, 0xf
	CompareLastResultCall EQUAL, Script_branch_8cd
	If 0x8004, 0x10
	CompareLastResultCall EQUAL, Script_branch_8d2
	If 0x8004, 0x11
	CompareLastResultCall EQUAL, Script_branch_8d7
	If 0x8004, 0x12
	CompareLastResultCall EQUAL, Script_branch_8dc
	If 0x8004, 0x13
	CompareLastResultCall EQUAL, Script_branch_8e1
	If 0x8004, 0x14
	CompareLastResultCall EQUAL, Script_branch_8e6
	If 0x8004, 0x15
	CompareLastResultCall EQUAL, Script_branch_8eb
	If 0x8004, 0x16
	CompareLastResultCall EQUAL, Script_branch_8f0
	If 0x8004, 0x17
	CompareLastResultCall EQUAL, Script_branch_8f5
	If 0x8004, 0x18
	CompareLastResultCall EQUAL, Script_branch_8fa
	Return
@ 882

Script_branch_882: @ 882
	Message 0x53
	Return
@ 887

Script_branch_887: @ 887
	Message 0x54
	Return
@ 88c

Script_branch_88c: @ 88c
	Message 0x55
	Return
@ 891

Script_branch_891: @ 891
	Message 0x56
	Return
@ 896

Script_branch_896: @ 896
	Message 0x57
	Return
@ 89b

Script_branch_89b: @ 89b
	Message 0x58
	Return
@ 8a0

Script_branch_8a0: @ 8a0
	Message 0x59
	Return
@ 8a5

Script_branch_8a5: @ 8a5
	Message 0x5a
	Return
@ 8aa

Script_branch_8aa: @ 8aa
	Message 0x5b
	Return
@ 8af

Script_branch_8af: @ 8af
	Message 0x5c
	Return
@ 8b4

Script_branch_8b4: @ 8b4
	Message 0x5d
	Return
@ 8b9

Script_branch_8b9: @ 8b9
	Message 0x5e
	Return
@ 8be

Script_branch_8be: @ 8be
	Message 0x5f
	Return
@ 8c3

Script_branch_8c3: @ 8c3
	Message 0x60
	Return
@ 8c8

Script_branch_8c8: @ 8c8
	Message 0x61
	Return
@ 8cd

Script_branch_8cd: @ 8cd
	Message 0x62
	Return
@ 8d2

Script_branch_8d2: @ 8d2
	Message 0x63
	Return
@ 8d7

Script_branch_8d7: @ 8d7
	Message 0x64
	Return
@ 8dc

Script_branch_8dc: @ 8dc
	Message 0x65
	Return
@ 8e1

Script_branch_8e1: @ 8e1
	Message 0x66
	Return
@ 8e6

Script_branch_8e6: @ 8e6
	Message 0x67
	Return
@ 8eb

Script_branch_8eb: @ 8eb
	Message 0x68
	Return
@ 8f0

Script_branch_8f0: @ 8f0
	Message 0x69
	Return
@ 8f5

Script_branch_8f5: @ 8f5
	Message 0x6a
	Return
@ 8fa

Script_branch_8fa: @ 8fa
	Message 0x6b
	Return
@ 8ff

Script_12: @ 8ff
	End
@ 901

Script_13: @ 901
	Call Function_91d
	Message 0x6d
	WaitButton
	ExitStandard
	End
@ 910

Script_47: @ 910
	Call Function_91d
	Message 0x80
	ExitStandard
	End
@ 91d

Function_91d: @ 91d
	Soundfr 0x486
	SendItemType1 0x8004, 0x8005, 0x800c
	Cmd_33e 0x0, 0x8004
	Message 0x6c
	Cmd_df 0x0, 0x8004
	Cmd_4f
	Return
@ 93a

Script_14: @ 93a
	Call Function_944
	ExitStandard
	End
@ 944

Function_944: @ 944
	Soundfr 0x486
	SendItemType2 0x8004, 0x8005, 0x800c
	SetVarItemStored 0x0, 0x8004
	Message 0x50
	Cmd_4f
	Return
@ 95c

Script_15: @ 95c
	Call Function_966
	ExitStandard
	End
@ 966

Function_966: @ 966
	Soundfr 0x486
	SendItemType3 0x8004, 0x8005, 0x800c
	SetVarItemStored2 0x0, 0x8004
	SetVariableNumber 0x1, 0x8005
	Message 0x51
	Cmd_4f
	Return
@ 983

Script_16: @ 983
	Call Function_99f
	Message 0x1f
	WaitButton
	ExitStandard
	End
@ 992

Script_48: @ 992
	Call Function_99f
	Message 0x7f
	ExitStandard
	End
@ 99f

Function_99f: @ 99f
	Soundfr 0x48c
	GiveAccessories 0x8004, 0x8005
	CheckAccessories3 0x0, 0x8004
	Message 0x19
	Cmd_4f
	SetVarHero 0x0
	CheckAccessories3 0x1, 0x8004
	Return
@ 9bd

Script_37: @ 9bd
	Call Function_9d9
	Message 0x1f
	WaitButton
	ExitStandard
	End
@ 9cc

Script_46: @ 9cc
	Call Function_9d9
	Message 0x7f
	ExitStandard
	End
@ 9d9

Function_9d9: @ 9d9
	Soundfr 0x486
	GiveAccessories2 0x8004
	SetvarAccessories2 0x0, 0x8004
	Message 0x19
	Cmd_4f
	SetVarHero 0x0
	SetvarAccessories2 0x1, 0x8004
	Return
@ 9f5

Script_17: @ 9f5
	Call Function_9ff
	ExitStandard
	End
@ 9ff

Function_9ff: @ 9ff
	Call Function_356
	TakeItem 0x8004, 0x8005, 0x800c
	StoreItemType 0x8004, 0x800c
	If 0x800c, 0x7
	CompareLastResultCall EQUAL, Script_branch_a71
	If 0x800c, 0x7
	CompareLastResultCall 0x5, Script_branch_a82
	Message 0x1e
	WaitButton
	Return
@ a34

Script_45: @ a34
	Call Function_a3e
	ExitStandard
	End
@ a3e

Function_a3e: @ a3e
	Call Function_356
	TakeItem 0x8004, 0x8005, 0x800c
	StoreItemType 0x8004, 0x800c
	If 0x800c, 0x7
	CompareLastResultCall EQUAL, Script_branch_a71
	If 0x800c, 0x7
	CompareLastResultCall 0x5, Script_branch_a82
	Message 0x7e
	Return
@ a71

Script_branch_a71: @ a71
	SetVarHero 0x0
	SetVarItem 0x1, 0x8004
	Message 0x1c
	Jump Script_branch_aa8
@ a82

Script_branch_a82: @ a82
	If 0x8005, 0x1
	CompareLastResultJump GREATER, Script_branch_a9a
	SetVarItem 0x0, 0x8004
	Jump Script_branch_a9f
@ a9a

Script_branch_a9a: @ a9a
	Cmd_33d 0x0, 0x8004
Script_branch_a9f: @ a9f
	Message 0x19
	Jump Script_branch_aa8
@ aa8

Script_branch_aa8: @ aa8
	Cmd_4f
	CheckPlate 0x8004, 0x800c
	If 0x800c, 0x1
	CompareLastResultCall EQUAL, Script_branch_13c8
	SetVarHero 0x0
	If 0x8005, 0x1
	CompareLastResultJump GREATER, Script_branch_ad8
	SetVarItem 0x1, 0x8004
	Jump Script_branch_add
@ ad8

Script_branch_ad8: @ ad8
	Cmd_33d 0x1, 0x8004
Script_branch_add: @ add
	StoreItemType 0x8004, 0x800c
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x7
	CompareLastResultJump EQUAL, Script_branch_b64
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_b53
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_ba8
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_b97
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_bb9
	If 0x8008, 0x6
	CompareLastResultJump EQUAL, Script_branch_b75
	If 0x8008, 0x5
	CompareLastResultJump EQUAL, Script_branch_b86
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_bca
	End
@ b53

Script_branch_b53: @ b53
	StoreItemType 0x8004, 0x800c
	SetVarItemNum 0x2, 0x800c
	Jump Script_branch_bdb
@ b64

Script_branch_b64: @ b64
	StoreItemType 0x8004, 0x800c
	SetVarItemNum 0x2, 0x800c
	Jump Script_branch_bdb
@ b75

Script_branch_b75: @ b75
	StoreItemType 0x8004, 0x800c
	SetVarItemNum 0x2, 0x800c
	Jump Script_branch_bdb
@ b86

Script_branch_b86: @ b86
	StoreItemType 0x8004, 0x800c
	SetVarItemNum 0x2, 0x800c
	Jump Script_branch_bdb
@ b97

Script_branch_b97: @ b97
	StoreItemType 0x8004, 0x800c
	SetVarItemNum 0x2, 0x800c
	Jump Script_branch_bdb
@ ba8

Script_branch_ba8: @ ba8
	StoreItemType 0x8004, 0x800c
	SetVarItemNum 0x2, 0x800c
	Jump Script_branch_bdb
@ bb9

Script_branch_bb9: @ bb9
	StoreItemType 0x8004, 0x800c
	SetVarItemNum 0x2, 0x800c
	Jump Script_branch_bdb
@ bca

Script_branch_bca: @ bca
	StoreItemType 0x8004, 0x800c
	SetVarItemNum 0x2, 0x800c
	Jump Script_branch_bdb
@ bdb

Script_branch_bdb: @ bdb
	Return
@ bdd

Script_18: @ bdd
	Call Function_be7
	ExitStandard
	End
@ be7

Function_be7: @ be7
	Message 0x1b
	WaitButton
	Return
@ bee

Script_19: @ bee
	LockAll
	PlayFanfare 0x60c
	Call Function_c06
	SetVarHero 0x0
	Message 0x20
	Jump Script_branch_c1c
@ c06

Function_c06: @ c06
	PreparePcAnimation 0x5a
	OpenPcAnimation 0x5a
	WaitAction 0x5a
	Return
@ c11

Function_c11: @ c11
	ClosePcAnimation 0x5a
	WaitAction 0x5a
	WaitClose 0x5a
	Return
@ c1c

Script_branch_c1c: @ c1c
	SetVarHero 0x0
	Message 0x21
	Multi 0x1, 0x1, 0x0, 0x1, 0x8006
	CheckFlag 0x97e
	CompareLastResultCall LESSER, Script_branch_c7b
	CheckFlag 0x97e
	CompareLastResultCall EQUAL, Script_branch_c81
	Cmd_42 0x3c, 0x1
	CheckNatPokedexStatus 0x2, 0x800c
	If 0x800c, 0x0
	CompareLastResultCall EQUAL, Script_branch_c87
	If 0x800c, 0x1
	CompareLastResultCall EQUAL, Script_branch_c8d
	CheckFlag 0x964
	CompareLastResultJump EQUAL, Script_branch_c93
	CheckFlag 0x964
	CompareLastResultJump LESSER, Script_branch_cdd
	End
@ c7b

Script_branch_c7b: @ c7b
	Cmd_42 0x3a, 0x0
	Return
@ c81

Script_branch_c81: @ c81
	Cmd_42 0x3b, 0x0
	Return
@ c87

Script_branch_c87: @ c87
	Cmd_42 0x3f, 0x2
	Return
@ c8d

Script_branch_c8d: @ c8d
	Cmd_42 0x3e, 0x2
	Return
@ c93

Script_branch_c93: @ c93
	Cmd_42 0x3d, 0x3
	Cmd_42 0x40, 0x4
	CloseMulti
	CopyVar 0x8008, 0x8006
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_d16
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_e45
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_f62
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_f2c
	Jump Script_branch_f70
@ cdd

Script_branch_cdd: @ cdd
	Cmd_42 0x40, 0x3
	CloseMulti
	CopyVar 0x8008, 0x8006
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_d16
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_e45
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_f62
	Jump Script_branch_f70
@ d16

Script_branch_d16: @ d16
	PlayFanfare 0x60d
	SetVarHero 0x0
	Message 0x22
	Call Function_d2c
	Jump Script_branch_d73
@ d2c

Function_d2c: @ d2c
	Multi3 0x1, 0x1, 0x0, 0x1, 0x800c
	TxtMsgScrpMulti 0x41, 0x4a, 0x0
	TxtMsgScrpMulti 0x42, 0x4b, 0x1
	TxtMsgScrpMulti 0x43, 0x4c, 0x2
	TxtMsgScrpMulti 0x44, 0x4d, 0x3
	CheckFlag 0x978
	CompareLastResultCall EQUAL, Script_branch_d69
	TxtMsgScrpMulti 0x46, 0x4f, 0x5
	Return
@ d69

Script_branch_d69: @ d69
	TxtMsgScrpMulti 0x45, 0x4e, 0x4
	Return
@ d73

Script_branch_d73: @ d73
	CloseMulti4
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_dc2
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_dd5
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_de8
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_dfb
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_e0e
	Jump Script_branch_c1c
@ dc2

Script_branch_dc2: @ dc2
	CloseMsgOnKeyPress
	Call Function_f94
	OpenPcFunction 0x0
	CallEnd
	Jump Script_branch_e21
@ dd5

Script_branch_dd5: @ dd5
	CloseMsgOnKeyPress
	Call Function_f94
	OpenPcFunction 0x1
	CallEnd
	Jump Script_branch_e21
@ de8

Script_branch_de8: @ de8
	CloseMsgOnKeyPress
	Call Function_f94
	OpenPcFunction 0x2
	CallEnd
	Jump Script_branch_e21
@ dfb

Script_branch_dfb: @ dfb
	CloseMsgOnKeyPress
	Call Function_f94
	OpenPcFunction 0x3
	CallEnd
	Jump Script_branch_e21
@ e0e

Script_branch_e0e: @ e0e
	CloseMsgOnKeyPress
	Call Function_f94
	OpenPcFunction 0x4
	CallEnd
	Jump Script_branch_e21
@ e21

Script_branch_e21: @ e21
	Cmd_30b
	SetVarHero 0x0
	Message2 0x21
	Call Function_d2c
	Call Function_c06
	FadeScreen 0x6, 0x1, 0x1, 0x0
	Jump Script_branch_d73
@ e45

Script_branch_e45: @ e45
	PlayFanfare 0x60d
	SetVarHero 0x0
	Message 0x23
	Jump Script_branch_e55
@ e55

Script_branch_e55: @ e55
	Call Function_e61
	Jump Script_branch_e83
@ e61

Function_e61: @ e61
	Multi3 0x1, 0x1, 0x0, 0x1, 0x800c
	TxtMsgScrpMulti 0x47, 0x50, 0x0
	TxtMsgScrpMulti 0x48, 0x51, 0x1
	TxtMsgScrpMulti 0x49, 0x52, 0x3
	Return
@ e83

Script_branch_e83: @ e83
	CloseMulti4
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_eab
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_ee0
	Jump Script_branch_c1c
@ eab

Script_branch_eab: @ eab
	CloseMsgOnKeyPress
	CheckMail 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_ec6
	MailBox
	Jump Script_branch_ecf
@ ec6

Script_branch_ec6: @ ec6
	Message 0x34
	Jump Script_branch_e55
@ ecf

Script_branch_ecf: @ ecf
	SetVarHero 0x0
	Cmd_33
	Call Function_e61
	Jump Script_branch_e83
@ ee0

Script_branch_ee0: @ ee0
	StoreSealNum 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_f01
	CloseMsgOnKeyPress
	Call Function_f94
	OpenBallCapsule
	Jump Script_branch_f0a
@ f01

Script_branch_f01: @ f01
	Message 0x76
	Jump Script_branch_e55
@ f0a

Script_branch_f0a: @ f0a
	SetVarHero 0x0
	Message2 0x21
	Call Function_e61
	Call Function_c06
	FadeScreen 0x6, 0x1, 0x1, 0x0
	Jump Script_branch_e83
@ f2c

Script_branch_f2c: @ f2c
	PlayFanfare 0x60d
	CloseMsgOnKeyPress
	Cmd_336 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_f59
	Call Function_f94
	HallFameAnm
	CallEnd
	Call Function_f80
	Jump Script_branch_c1c
@ f59

Script_branch_f59: @ f59
	Message 0x83
	Jump Script_branch_c1c
@ f62

Script_branch_f62: @ f62
	PlayFanfare 0x60d
	CallStandard 0x26df
	Jump Script_branch_c1c
@ f70

Script_branch_f70: @ f70
	CloseMsgOnKeyPress
	PlayFanfare 0x60e
	Call Function_c11
	ReleaseAll
	End
@ f80

Function_f80: @ f80
	Call Function_c06
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Return
@ f94

Function_f94: @ f94
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	WaitClose 0x5a
	Return
@ fa5

Script_23: @ fa5
	End
@ fa7

Script_24: @ fa7
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	OpenBallCapsule
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ fc3

Script_20: @ fc3
	Message 0x25
	ExitStandard
	End
@ fca

Script_21: @ fca
	LockAll
	ApplyMovement 0xff, Movement_1250
	ApplyMovement 0x0, Movement_1258
	WaitMovement
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	SetVarHero 0x0
	Message 0x28
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CloseMsgOnKeyPress
	Soundfr 0x48e
	Cmd_4f
	HealPokemon
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	CheckFlag 0x90
	CompareLastResultCall EQUAL, Script_branch_1030
	CheckFlag 0x90
	CompareLastResultCall LESSER, Script_branch_1035
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1030

Script_branch_1030: @ 1030
	Message 0x29
	Return
@ 1035

Script_branch_1035: @ 1035
	Message 0x2a
	Return
@ 103a

Script_22: @ 103a
	LockAll
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	GivePokeHiroAnm 0x100
	StopGivePokeHiroAnm
	ApplyMovement 0xff, Movement_2ec
	WaitMovement
	Message 0x2b
	Call Function_10c7
	Call Function_1c1
	CheckBadge 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_10a2
	Message 0x2c
	ApplyMovement 0xff, Movement_2f4
	WaitMovement
	GivePokeHiroAnm 0x1
	StopGivePokeHiroAnm
	ApplyMovement 0x8007, Movement_2e0
	WaitMovement
	Message 0x2d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 10a2

Script_branch_10a2: @ 10a2
	ApplyMovement 0xff, Movement_2f4
	WaitMovement
	GivePokeHiroAnm 0x1
	StopGivePokeHiroAnm
	ApplyMovement 0x8007, Movement_2e0
	WaitMovement
	Message 0x27
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 10c7

Function_10c7: @ 10c7
	CheckEffectHm 0x8004
	If 0x8004, 0x6
	CompareLastResultJump EQUAL, Script_branch_11bd
	If 0x8004, 0x24
	CompareLastResultJump EQUAL, Script_branch_11c5
	If 0x8004, 0x30
	CompareLastResultJump EQUAL, Script_branch_11cd
	If 0x8004, 0x45
	CompareLastResultJump EQUAL, Script_branch_11d5
	If 0x8004, 0x65
	CompareLastResultJump EQUAL, Script_branch_11dd
	If 0x8004, 0x7b
	CompareLastResultJump EQUAL, Script_branch_11e5
	If 0x8004, 0x86
	CompareLastResultJump EQUAL, Script_branch_11ed
	If 0x8004, 0x97
	CompareLastResultJump EQUAL, Script_branch_11f5
	If 0x8004, 0xa8
	CompareLastResultJump EQUAL, Script_branch_11fd
	If 0x8004, 0xad
	CompareLastResultJump EQUAL, Script_branch_1205
	If 0x8004, 0xbd
	CompareLastResultJump EQUAL, Script_branch_120d
	If 0x8004, 0x1a4
	CompareLastResultJump EQUAL, Script_branch_1215
	If 0x8004, 0x1ac
	CompareLastResultJump EQUAL, Script_branch_121d
	If 0x8004, 0x1b3
	CompareLastResultJump EQUAL, Script_branch_1225
	If 0x8004, 0x1bb
	CompareLastResultJump EQUAL, Script_branch_122d
	If 0x8004, 0x1c4
	CompareLastResultJump EQUAL, Script_branch_1235
	If 0x8004, 0x1cb
	CompareLastResultJump EQUAL, Script_branch_123d
	If 0x8004, 0xaf
	CompareLastResultJump EQUAL, Script_branch_1245
	SetVar 0x8007, 0x0
	Return
@ 11bd

Script_branch_11bd: @ 11bd
	SetVar 0x8007, 0x3
	Return
@ 11c5

Script_branch_11c5: @ 11c5
	SetVar 0x8007, 0x1
	Return
@ 11cd

Script_branch_11cd: @ 11cd
	SetVar 0x8007, 0x3
	Return
@ 11d5

Script_branch_11d5: @ 11d5
	SetVar 0x8007, 0x3
	Return
@ 11dd

Script_branch_11dd: @ 11dd
	SetVar 0x8007, 0x0
	Return
@ 11e5

Script_branch_11e5: @ 11e5
	SetVar 0x8007, 0x0
	Return
@ 11ed

Script_branch_11ed: @ 11ed
	SetVar 0x8007, 0x0
	Return
@ 11f5

Script_branch_11f5: @ 11f5
	SetVar 0x8007, 0x0
	Return
@ 11fd

Script_branch_11fd: @ 11fd
	SetVar 0x8007, 0x0
	Return
@ 1205

Script_branch_1205: @ 1205
	SetVar 0x8007, 0x0
	Return
@ 120d

Script_branch_120d: @ 120d
	SetVar 0x8007, 0x0
	Return
@ 1215

Script_branch_1215: @ 1215
	SetVar 0x8007, 0x3
	Return
@ 121d

Script_branch_121d: @ 121d
	SetVar 0x8007, 0x2
	Return
@ 1225

Script_branch_1225: @ 1225
	SetVar 0x8007, 0x0
	Return
@ 122d

Script_branch_122d: @ 122d
	SetVar 0x8007, 0x0
	Return
@ 1235

Script_branch_1235: @ 1235
	SetVar 0x8007, 0x0
	Return
@ 123d

Script_branch_123d: @ 123d
	SetVar 0x8007, 0x0
	Return
@ 1245

Script_branch_1245: @ 1245
	SetVar 0x8007, 0x3
	Return
@ 124d

.byte 0x0 @ 0x124d
.byte 0x0 @ 0x124e
.byte 0x0 @ 0x124f

Movement_1250: @ 1250
	SeeLeft 0x1
	EndMovement 0x0
@ 1258

Movement_1258: @ 1258
	SeeRight 0x1
	EndMovement 0x0
@ 1260

Movement_1260: @ 1260
	SeeLeft 0x1
	EndMovement 0x0
@ 1268

.byte 0x0 @ 0x1268
.byte 0x0 @ 0x1269
.byte 0x1 @ 0x126a
.byte 0x0 @ 0x126b
.byte 0xfe @ 0x126c
.byte 0x0 @ 0x126d
.byte 0x0 @ 0x126e
.byte 0x0 @ 0x126f
.byte 0x3 @ 0x1270
.byte 0x0 @ 0x1271
.byte 0x1 @ 0x1272
.byte 0x0 @ 0x1273
.byte 0xfe @ 0x1274
.byte 0x0 @ 0x1275
.byte 0x0 @ 0x1276
.byte 0x0 @ 0x1277

Movement_1278: @ 1278
	SeeDown 0x1
	EndMovement 0x0
@ 1280

Script_25: @ 1280
	End
@ 1282

Script_26: @ 1282
	PlayFanfare 0x5dc
	LockAll
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	OpenGeoNet
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 12a8

Script_27: @ 12a8
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Cmd_20c
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 12ba

Script_28: @ 12ba
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x43
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 12cd

Script_29: @ 12cd
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x46
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 12e0

Script_30: @ 12e0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x47
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 12f3

Script_31: @ 12f3
	CheckItem 0x1c2, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_135f
	LockAll
	PlayFanfare 0x5dc
	CheckBike 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_133c
	Message 0x49
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1359
	RideBike 0x1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 133c

Script_branch_133c: @ 133c
	Message 0x4a
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1359
	RideBike 0x0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1359

Script_branch_1359: @ 1359
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 135f

Script_branch_135f: @ 135f
	End
@ 1361

Script_32: @ 1361
	PlayFanfare 0x5dc
	LockAll
	Message 0x4c
	Cmd_30
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CloseMsgOnKeyPress
	EggAnimation
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 138c

Script_33: @ 138c
	PlayFanfare 0x5dc
	LockAll
	Message 0x4f
	Cmd_30
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 139d

Script_34: @ 139d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Interview
	ReleaseAll
	End
@ 13ab

Script_36: @ 13ab
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x52
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 13be

Script_39: @ 13be
	Call Script_branch_13c8
	ExitStandard
	End
@ 13c8

Function_13c8: @ 13c8
Script_branch_13c8: @ 13c8
	ScriptCmd_AddValue 0x4115, 0x1
	If 0x4115, 0x9
	CompareLastResultCall 0x4, Script_branch_1445
	If 0x4115, 0x1
	CompareLastResultCall EQUAL, Script_branch_144d
	If 0x4115, 0x2
	CompareLastResultCall EQUAL, Script_branch_1452
	If 0x4115, 0x3
	CompareLastResultCall EQUAL, Script_branch_1457
	If 0x4115, 0x4
	CompareLastResultCall EQUAL, Script_branch_145c
	If 0x4115, 0x5
	CompareLastResultCall EQUAL, Script_branch_1461
	If 0x4115, 0x6
	CompareLastResultCall EQUAL, Script_branch_1466
	If 0x4115, 0x7
	CompareLastResultCall EQUAL, Script_branch_146b
	If 0x4115, 0x8
	CompareLastResultCall EQUAL, Script_branch_1470
	Return
@ 1445

Script_branch_1445: @ 1445
	SetVar 0x4115, 0x1
	Return
@ 144d

Script_branch_144d: @ 144d
	Message 0x6e
	Return
@ 1452

Script_branch_1452: @ 1452
	Message 0x6f
	Return
@ 1457

Script_branch_1457: @ 1457
	Message 0x70
	Return
@ 145c

Script_branch_145c: @ 145c
	Message 0x71
	Return
@ 1461

Script_branch_1461: @ 1461
	Message 0x72
	Return
@ 1466

Script_branch_1466: @ 1466
	Message 0x73
	Return
@ 146b

Script_branch_146b: @ 146b
	Message 0x74
	Return
@ 1470

Script_branch_1470: @ 1470
	Message 0x75
	Return
@ 1475

Script_38: @ 1475
	End
@ 1477

Script_40: @ 1477
	LockAll
	CheckEffectHm 0x8004
	If 0x8004, 0xdc
	CompareLastResultJump EQUAL, Script_branch_14ac
	If 0x8004, 0x248
	CompareLastResultJump EQUAL, Script_branch_14ac
	If 0x8004, 0x249
	CompareLastResultJump EQUAL, Script_branch_14ac
	Jump Script_branch_1570
@ 14aa

.byte 0x2 @ 0x14aa
.byte 0x0 @ 0x14ab

Script_branch_14ac: @ 14ac
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x1f
	CompareLastResultJump 0x5, Script_branch_1570
	If 0x8005, 0x34
	CompareLastResultJump 0x5, Script_branch_1570
	Cmd_166 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_1570
	CheckNatPokedexStatus 0x2, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_1570
	UnkFunct2 0x2, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_1570
	CheckFlag 0x11e
	CompareLastResultJump EQUAL, Script_branch_1570
	SetVarHero 0x0
	Message 0x7a
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_157b
	SetVarHero 0x0
	Message 0x7b
	CloseMsgOnKeyPress
	Return2 0x1e, 0x800c
	PlaySound 0x447
	Return2 0x21c, 0x800c
	CheckSpritePosition 0x8004, 0x8005
	FadeScreen 0x6, 0x6, 0x0, 0x7fff
	ResetScreen
	Warp 0x1fe, 0x0, 0x8004, 0x8005, 0x0
	FadeScreen 0x6, 0x6, 0x1, 0x7fff
	ResetScreen
	Message 0x7c
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1570

Script_branch_1570: @ 1570
	Message 0x7d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 157b

Script_branch_157b: @ 157b
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1581

Script_41: @ 1581
	Stop 0x0
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultCall EQUAL, Script_branch_15a7
	If 0x800c, 0x1
	CompareLastResultCall EQUAL, Script_branch_15ad
	ExitStandard
	End
@ 15a7

Script_branch_15a7: @ 15a7
	PlaySound2 0x477
	Return
@ 15ad

Script_branch_15ad: @ 15ad
	PlaySound2 0x476
	Return
@ 15b3

Script_43: @ 15b3
	Stop 0x0
	PlaySound2 0x473
	ExitStandard
	End
@ 15bf

Script_49: @ 15bf
	Stop 0x0
	PlaySound2 0x472
	ExitStandard
	End
@ 15cb

Script_56: @ 15cb
	Stop 0x0
	PlaySound2 0x4b0
	ExitStandard
	End
@ 15d7

Script_42: @ 15d7
Script_44: @ 15d7
Script_50: @ 15d7
Script_57: @ 15d7
	SwitchMusic 0x0, 0x1e
	Stop 0x0
	Restart
	ExitStandard
	End
@ 15e7

Script_51: @ 15e7
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	StartWfc 0x800c
	CopyVar 0x8004, 0x800c
	Cmd_2f6 0x8005, 0x8004, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1624
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ExitStandard
	End
@ 1624

Script_branch_1624: @ 1624
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ExitStandard
	End
@ 1636

Script_52: @ 1636
	PlayFanfare 0x5dc
	LockAll
	SetVar 0x8004, 0x0
	Jump Script_branch_1672
@ 1648

.byte 0x2 @ 0x1648
.byte 0x0 @ 0x1649

Script_53: @ 164a
	PlayFanfare 0x5dc
	LockAll
	SetVar 0x8004, 0x1
	Jump Script_branch_1672
@ 165c

.byte 0x2 @ 0x165c
.byte 0x0 @ 0x165d

Script_54: @ 165e
	PlayFanfare 0x5dc
	LockAll
	SetVar 0x8004, 0x2
	Jump Script_branch_1672
@ 1670

.byte 0x2 @ 0x1670
.byte 0x0 @ 0x1671

Script_branch_1672: @ 1672
	Message 0x81
	Cmd_2e6 0xff, 0x8004, 0x800c
	CopyVar 0x8003, 0x800c
	If 0x8003, 0xfffe
	CompareLastResultJump EQUAL, Script_branch_16a4
	Cmd_2ec 0x15, 0x1, 0x8003, 0x800c
	Cmd_30
	Cmd_2ed
	Jump Script_branch_16a4
@ 16a2

.byte 0x2 @ 0x16a2
.byte 0x0 @ 0x16a3

Script_branch_16a4: @ 16a4
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 16aa

Script_55: @ 16aa
	CheckFlag 0x89
	CompareLastResultJump EQUAL, Script_branch_1706
	If 0x4050, 0x4
	CompareLastResultJump 0x5, Script_branch_1706
	If 0x4051, 0x4
	CompareLastResultJump 0x5, Script_branch_1706
	If 0x4052, 0x4
	CompareLastResultJump 0x5, Script_branch_1706
	If 0x4053, 0x4
	CompareLastResultJump 0x5, Script_branch_1706
	If 0x404f, 0x4
	CompareLastResultJump 0x5, Script_branch_1706
	SetFlag 0x89
	Cmd_30a 0x2a
	Jump Script_branch_1706
@ 1704

.byte 0x2 @ 0x1704
.byte 0x0 @ 0x1705

Script_branch_1706: @ 1706
	ExitStandard
	End
@ 170a

Script_58: @ 170a
	Message 0x82
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	ExitStandard
	End
@ 1717

.byte 0x0 @ 0x1717

@ end_0x1718
