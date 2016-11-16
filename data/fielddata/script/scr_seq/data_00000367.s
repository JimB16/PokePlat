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
	.hword 0xfd13
@ 62

Script_22: @ 62
	If 0x40d8, 0x1
	CompareLastResultCall EQUAL, Script_branch_f1
	If 0x40d8, 0x3
	CompareLastResultCall EQUAL, Script_branch_f1
	If 0x40d8, 0xff
	CompareLastResultCall EQUAL, Script_branch_f1
	CheckStatusPhraseBox 0x13, 0x4000
	If 0x4000, 0x0
	CompareLastResultCall EQUAL, Script_branch_144
	If 0x4000, 0x0
	CompareLastResultCall 0x5, Script_branch_14a
	StorePeopleIdBTower 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x5, Script_branch_df
	SetFlag 0x1e9
	Jump Script_branch_c6
@ c4

.byte 0x2 @ 0xc4
.byte 0x0 @ 0xc5

Script_branch_c6: @ c6
	CheckStatusPhraseBox 0x2, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x5, Script_branch_eb
	SetFlag 0x20e
	End
@ df

Script_branch_df: @ df
	ClearFlag 0x1e9
	Jump Script_branch_c6
@ e9

.byte 0x2 @ 0xe9
.byte 0x0 @ 0xea

Script_branch_eb: @ eb
	ClearFlag 0x20e
	End
@ f1

Script_branch_f1: @ f1
	Cmd_266
	Return
@ f5

Script_23: @ f5
	If 0x40d8, 0x1
	CompareLastResultJump 0x5, Script_branch_13a
	StorePeopleIdBTower 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x5, Script_branch_13c
	If 0x4000, 0x1
	CompareLastResultJump EQUAL, Script_branch_13c
	If 0x4000, 0x2
	CompareLastResultJump EQUAL, Script_branch_13c
	If 0x4000, 0x3
	CompareLastResultJump EQUAL, Script_branch_13c
Script_branch_13a: @ 13a
	End
@ 13c

Script_branch_13c: @ 13c
	SetOwsFollow 0x3, 0x2
	End
@ 144

Script_branch_144: @ 144
	SetFlag 0x2c3
	Return
@ 14a

Script_branch_14a: @ 14a
	ClearFlag 0x2c3
	Return
@ 150

.byte 0xdb @ 0x150
.byte 0x1 @ 0x151
.byte 0x0 @ 0x152
.byte 0x0 @ 0x153
.byte 0x1 @ 0x154
.byte 0x0 @ 0x155
.byte 0x1b @ 0x156
.byte 0x0 @ 0x157

Function_158: @ 158
	SetVar 0x40d8, 0xff
	SetVar 0x40db, 0x1
	SetVar 0x40dc, 0x1
	SetVar 0x40d9, 0x1
	Return
@ 172

Function_172: @ 172
	SetVar 0x40d8, 0xff
	SetVar 0x40db, 0x3
	SetVar 0x40dd, 0x1
	SetVar 0x40de, 0x1
	SetVar 0x40df, 0x1
	Return
@ 192

Function_192: @ 192
	SetVar 0x40d8, 0xff
	SetVar 0x40db, 0x1
	SetVar 0x40dc, 0x1
	SetVar 0x40d9, 0x2
	Return
@ 1ac

Script_7: @ 1ac
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVar 0x4001, 0x0
	StorePrizeNumBTower 0x4002
	Jump Script_branch_1c6
@ 1c4

.byte 0x2 @ 0x1c4
.byte 0x0 @ 0x1c5

Script_branch_1c6: @ 1c6
	CopyVar 0x8008, 0x4002
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_239
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_24c
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_25f
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_22e
	Message 0xf
	Jump Script_branch_20b
@ 209

.byte 0x2 @ 0x209
.byte 0x0 @ 0x20a

Script_branch_20b: @ 20b
	Cmd_30
	If 0x4001, 0x1
	CompareLastResultJump EQUAL, Script_branch_220
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 220

Script_branch_220: @ 220
	Call Function_79b
	Jump Script_branch_789
@ 22c

.byte 0x2 @ 0x22c
.byte 0x0 @ 0x22d

Script_branch_22e: @ 22e
	Message 0x59
	Jump Script_branch_20b
@ 237

.byte 0x2 @ 0x237
.byte 0x0 @ 0x238

Script_branch_239: @ 239
	SetVariableNumber 0x0, 0x14
	SetVar 0x8004, 0x55
	Jump Script_branch_272
@ 24a

.byte 0x2 @ 0x24a
.byte 0x0 @ 0x24b

Script_branch_24c: @ 24c
	SetVariableNumber 0x0, 0x32
	SetVar 0x8004, 0x56
	Jump Script_branch_272
@ 25d

.byte 0x2 @ 0x25d
.byte 0x0 @ 0x25e

Script_branch_25f: @ 25f
	SetVariableNumber 0x0, 0x64
	SetVar 0x8004, 0x57
	Jump Script_branch_272
@ 270

.byte 0x2 @ 0x270
.byte 0x0 @ 0x271

Script_branch_272: @ 272
	Message 0x58
	SetVar 0x8005, 0x1
	CallStandard 0x7fe
	Message 0xf
	Jump Script_branch_20b
@ 288

.byte 0x2 @ 0x288
.byte 0x0 @ 0x289

Script_1: @ 28a
	LockAll
	PlayFanfare 0x5dc
	ActivateBTower
	Message 0x0
	Jump Script_branch_29d
@ 29b

.byte 0x2 @ 0x29b
.byte 0x0 @ 0x29c

Script_branch_29d: @ 29d
	Message 0x1
	Call Function_2e6
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_301
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_2db
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_784
	Jump Script_branch_784
@ 2d9

.byte 0x2 @ 0x2d9
.byte 0x0 @ 0x2da

Script_branch_2db: @ 2db
	Message 0x3
	Jump Script_branch_29d
@ 2e4

.byte 0x2 @ 0x2e4
.byte 0x0 @ 0x2e5

Function_2e6: @ 2e6
	Multi 0x1f, 0xb, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0x8d, 0x0
	Cmd_42 0x8e, 0x1
	Cmd_42 0x8f, 0x2
	CloseMulti
	Return
@ 301

Script_branch_301: @ 301
	Message 0x4
	Multi 0x1f, 0xb, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0x6, 0x0
	Cmd_42 0x7, 0x1
	Cmd_42 0x5e, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_352
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_385
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_784
	Jump Script_branch_784
@ 350

.byte 0x2 @ 0x350
.byte 0x0 @ 0x351

Script_branch_352: @ 352
	StoreBTowerData 0x0, 0x0
	Jump Script_branch_360
@ 35e

.byte 0x2 @ 0x35e
.byte 0x0 @ 0x35f

Script_branch_360: @ 360
	CallBTowerFunctions 0x1, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_3b0
	BCastleFunctReturn 0x5b, 0x3, 0x0, 0x0
	Jump Script_branch_787
@ 383

.byte 0x2 @ 0x383
.byte 0x0 @ 0x384

Script_branch_385: @ 385
	StoreBTowerData 0x0, 0x1
	CallBTowerFunctions 0x1, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_3b0
	BCastleFunctReturn 0x5b, 0x4, 0x0, 0x0
	Jump Script_branch_787
@ 3ae

.byte 0x2 @ 0x3ae
.byte 0x0 @ 0x3af

Script_branch_3b0: @ 3b0
	Message 0x8
	Call Function_4be
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_784
	CallBTowerFunctions 0x20, 0x0, 0x800c
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_4a8
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_4b3
	CallBTowerFunctions 0x35, 0x0, 0x800c
	Cmd_31e 0x800c, 0x800c
	If 0x800c, 0xff
	CompareLastResultJump EQUAL, Script_branch_13ce
	CallBTowerFunctions 0x35, 0x1, 0x800c
	Cmd_31e 0x800c, 0x800c
	If 0x800c, 0xff
	CompareLastResultJump EQUAL, Script_branch_13ce
	CallBTowerFunctions 0x35, 0x2, 0x800c
	Cmd_31e 0x800c, 0x800c
	If 0x800c, 0xff
	CompareLastResultJump EQUAL, Script_branch_13ce
	CallBTowerFunctions 0x2b, 0x0, 0x800c
	If 0x800c, 0x4
	CompareLastResultJump EQUAL, Script_branch_9b3
	Jump Script_branch_45c
@ 45a

.byte 0x2 @ 0x45a
.byte 0x0 @ 0x45b

Script_branch_45c: @ 45c
	Call Function_158
	CallBTowerFunctions 0x5, 0x0, 0x0
	HealPokemon
	Call Function_49c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_77e
	CallBTowerFunctions 0x39, 0x0, 0x800c
	CallBTowerFunctions 0x34, 0x0, 0x0
	Message 0xb
	Cmd_30
	Jump Script_branch_5ec
@ 49a

.byte 0x2 @ 0x49a
.byte 0x0 @ 0x49b

Function_49c: @ 49c
	CallStandard 0x7d6
	CopyVar 0x800c, 0x4000
	Return
@ 4a8

Script_branch_4a8: @ 4a8
	Message 0x9
	Jump Script_branch_784
@ 4b1

.byte 0x2 @ 0x4b1
.byte 0x0 @ 0x4b2

Script_branch_4b3: @ 4b3
	Message 0xa
	Jump Script_branch_784
@ 4bc

.byte 0x2 @ 0x4bc
.byte 0x0 @ 0x4bd

Function_4be: @ 4be
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CloseMsgOnKeyPress
	CallBTowerFunctions 0x1e, 0x0, 0x0
	CallEnd
	CallBTowerFunctions 0x1f, 0x0, 0x800c
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Return
@ 4ec

Script_5: @ 4ec
	LockAll
	SetVar 0x40d8, 0x0
	CallBTowerFunctions 0x4, 0x0, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_597
	Message 0x10
	StoreBTowerData 0x1, 0xffff
	CallBTowerFunctions 0x2b, 0x0, 0x800c
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_548
	Call Function_192
	CallBTowerFunctions 0x5, 0x0, 0x0
	Call Function_734
	Message 0xb
	Cmd_30
	Jump Script_branch_5ec
@ 546

.byte 0x2 @ 0x546
.byte 0x0 @ 0x547

Script_branch_548: @ 548
	Call Function_577
	CallBTowerFunctions 0x5, 0x0, 0x0
	Call Function_734
	CallBTowerFunctions 0x33, 0x0, 0x800c
	CopyVar 0x4009, 0x800c
	Message 0x20
	Cmd_30
	Jump Script_branch_5ec
@ 575

.byte 0x2 @ 0x575
.byte 0x0 @ 0x576

Function_577: @ 577
	SetVar 0x40d8, 0xff
	SetVar 0x40db, 0x2
	SetVar 0x40dd, 0x1
	SetVar 0x40de, 0x2
	SetVar 0x40df, 0x0
	Return
@ 597

Script_6: @ 597
Script_branch_597: @ 597
	LockAll
	Message 0x13
	CallBTowerFunctions 0xe, 0x0, 0x800c
	If 0x800c, 0x4
	CompareLastResultJump EQUAL, Script_branch_5b9
	Jump Script_branch_77e
@ 5b7

.byte 0x2 @ 0x5b7
.byte 0x0 @ 0x5b8

Script_branch_5b9: @ 5b9
	CallBTowerFunctions 0x9, 0x0, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_77e
	CallBTowerFunctions 0xa, 0x0, 0x800c
	CopyVar 0x8000, 0x800c
	SetVariableNumber 0x0, 0x8000
	Message 0x41
	Jump Script_branch_77e
@ 5ea

.byte 0x2 @ 0x5ea
.byte 0x0 @ 0x5eb

Script_branch_5ec: @ 5ec
	CloseMsgOnKeyPress
	CallBTowerFunctions 0x2b, 0x0, 0x800c
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_652
	If 0x8008, 0x5
	CompareLastResultJump EQUAL, Script_branch_652
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_66c
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_686
	Jump Script_branch_638
@ 636

.byte 0x2 @ 0x636
.byte 0x0 @ 0x637

Script_branch_638: @ 638
	SetVar 0x4002, 0x0
	SetVar 0x4003, 0xf
	Call Function_6ae
	Jump Script_branch_746
@ 650

.byte 0x2 @ 0x650
.byte 0x0 @ 0x651

Script_branch_652: @ 652
	SetVar 0x4002, 0x2
	SetVar 0x4003, 0x13
	Call Function_6ae
	Jump Script_branch_746
@ 66a

.byte 0x2 @ 0x66a
.byte 0x0 @ 0x66b

Script_branch_66c: @ 66c
	SetVar 0x4002, 0x1
	SetVar 0x4003, 0xb
	Call Function_6ae
	Jump Script_branch_6ee
@ 684

.byte 0x2 @ 0x684
.byte 0x0 @ 0x685

Script_branch_686: @ 686
	SetVar 0x4002, 0x1
	SetVar 0x4003, 0xb
	Call Function_6ae
	Jump Script_branch_6a0
@ 69e

.byte 0x2 @ 0x69e
.byte 0x0 @ 0x69f

Script_branch_6a0: @ 6a0
	SetVar 0x40db, 0x2
	Jump Script_branch_746
@ 6ac

.byte 0x2 @ 0x6ac
.byte 0x0 @ 0x6ad

Function_6ae: @ 6ae
	ApplyMovement 0x4002, Movement_1248
	ApplyMovement 0xff, Movement_1260
	WaitMovement
	PrepareDoorAnimation 0x0, 0x0, 0x4003, 0x2, 0x4d
	OpenDoor 0x4d
	WaitAction 0x4d
	ApplyMovement 0x4002, Movement_1254
	ApplyMovement 0xff, Movement_126c
	WaitMovement
	CloseDoor 0x4d
	WaitAction 0x4d
	WaitClose 0x4d
	Return
@ 6ee

Script_branch_6ee: @ 6ee
	Jump Script_branch_746
@ 6f4

.byte 0x2 @ 0x6f4
.byte 0x0 @ 0x6f5

Script_8: @ 6f6
	LockAll
	Call Function_724
	CallBTowerFunctions 0x64, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_784
	Message 0x38
	Call Function_734
	Jump Script_branch_77e
@ 722

.byte 0x2 @ 0x722
.byte 0x0 @ 0x723

Function_724: @ 724
	Call Function_7b9
	CallBTowerFunctions 0x6, 0x0, 0x0
	Return
@ 734

Function_734: @ 734
	ShowClockSave
	CheckSaveData 0x800c
	HideClockSave
	PlayFanfare 0x61b
	WaitFanfare 0x61b
	Return
@ 746

Script_branch_746: @ 746
	RandomEvent 0x3a
	DeActivateLeader 0x24, 0x0, 0x0, 0x0, 0x0
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x147, 0x0, 0x3, 0x6, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 77e

Script_branch_77e: @ 77e
	Call Function_79b
Script_branch_784: @ 784
	Message 0x2
Script_branch_787: @ 787
	WaitButton
Script_branch_789: @ 789
	CloseMsgOnKeyPress
	Call Function_7b5
	Call Function_7b9
	ReleaseAll
	End
@ 79b

Function_79b: @ 79b
	CallBTowerFunctions 0x6, 0x0, 0x0
	Call Function_7ab
	Return
@ 7ab

Function_7ab: @ 7ab
	CallBTowerFunctions 0x3, 0x0, 0x0
	Return
@ 7b5

Function_7b5: @ 7b5
	CloseBTower
	Return
@ 7b9

Function_7b9: @ 7b9
	SetVar 0x40d8, 0x0
	SetVar 0x40db, 0x0
	SetVar 0x40dc, 0x0
	SetVar 0x40dd, 0x0
	SetVar 0x40d9, 0x0
	SetVar 0x40de, 0x0
	SetVar 0x40df, 0x0
	Return
@ 7e5

Script_3: @ 7e5
	LockAll
	PlayFanfare 0x5dc
	ActivateBTower
	CallBTowerFunctions 0xc, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_922
	Message 0x24
	Jump Script_branch_80d
@ 80b

.byte 0x2 @ 0x80b
.byte 0x0 @ 0x80c

Script_branch_80d: @ 80d
	Jump Script_branch_815
@ 813

.byte 0x2 @ 0x813
.byte 0x0 @ 0x814

Script_branch_815: @ 815
	CallBTowerFunctions 0xf, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_8a7
	Jump Script_branch_832
@ 830

.byte 0x2 @ 0x830
.byte 0x0 @ 0x831

Script_branch_832: @ 832
	Message 0x25
	Call Function_87d
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_aa7
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_a5a
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_89c
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_784
	Jump Script_branch_784
@ 87b

.byte 0x2 @ 0x87b
.byte 0x0 @ 0x87c

Function_87d: @ 87d
	Multi 0x1f, 0x9, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0x8d, 0x0
	Cmd_42 0x97, 0x1
	Cmd_42 0x8e, 0x2
	Cmd_42 0x8f, 0x3
	CloseMulti
	Return
@ 89c

Script_branch_89c: @ 89c
	Message 0x26
	Jump Script_branch_815
@ 8a5

.byte 0x2 @ 0x8a5
.byte 0x0 @ 0x8a6

Script_branch_8a7: @ 8a7
	Message 0x25
	Call Function_8ff
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_aa7
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_a5a
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_ab5
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_89c
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_784
	Jump Script_branch_784
@ 8fd

.byte 0x2 @ 0x8fd
.byte 0x0 @ 0x8fe

Function_8ff: @ 8ff
	Multi 0x1f, 0x7, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0x8d, 0x0
	Cmd_42 0x97, 0x1
	Cmd_42 0x98, 0x2
	Cmd_42 0x8e, 0x3
	Cmd_42 0x8f, 0x4
	CloseMulti
	Return
@ 922

Script_branch_922: @ 922
	Message 0x3d
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_967
	Call Function_49c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_784
	Call Function_96f
	If 0x800c, 0x0
	CompareLastResultJump 0x5, Script_branch_784
	Message 0x3c
	Jump Script_branch_784
@ 965

.byte 0x2 @ 0x965
.byte 0x0 @ 0x966

Script_branch_967: @ 967
	Jump Script_branch_80d
@ 96d

.byte 0x2 @ 0x96d
.byte 0x0 @ 0x96e

Function_96f: @ 96f
	CloseMsgOnKeyPress
	SetVar 0x4001, 0x1
	Call Function_97f
	Return
@ 97f

Function_97f: @ 97f
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	StartWfc 0x4000
	CallBTowerFunctions 0x10, 0x4001, 0x4000
	CopyVar 0x4001, 0x4000
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	CopyVar 0x800c, 0x4001
	Return
@ 9b3

Script_branch_9b3: @ 9b3
	HealPokemon
	Call Function_49c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_77e
	Call Function_158
	CallBTowerFunctions 0x5, 0x0, 0x0
	HealPokemon
	CloseMsgOnKeyPress
	SetVar 0x4001, 0x0
	Call Function_97f
	If 0x800c, 0x0
	CompareLastResultJump 0x5, Script_branch_77e
	Jump Script_branch_9fb
@ 9f9

.byte 0x2 @ 0x9f9
.byte 0x0 @ 0x9fa

Script_branch_9fb: @ 9fb
	Message 0x2f
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_5ec
	Message 0x30
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_9fb
	SetVar 0x40d8, 0x2
	CallBTowerFunctions 0x27, 0x0, 0x0
	CloseBTower
	Message 0x38
	Call Function_734
	SetSaveData 0x1e
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CloseMsgOnKeyPress
	CallBTowerFunctions 0x2, 0x0, 0x0
	ReleaseAll
	End
@ a5a

Script_branch_a5a: @ a5a
	Call Function_49c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_784
	CloseMsgOnKeyPress
	SetVar 0x4001, 0x2
	Call Function_97f
	If 0x800c, 0x0
	CompareLastResultJump 0x5, Script_branch_784
	StoreRankDataWireBTower 0x8004, 0x8005
	SetVariableNumber 0x0, 0x8004
	SetvarIdNumber 0x1, 0x8005, 0x2, 0x3
	Message 0x34
	Cmd_30
	Jump Script_branch_789
@ aa5

.byte 0x2 @ 0xaa5
.byte 0x0 @ 0xaa6

Script_branch_aa7: @ aa7
	StoreBTowerData 0x0, 0x4
	Jump Script_branch_360
@ ab3

.byte 0x2 @ 0xab3
.byte 0x0 @ 0xab4

Script_branch_ab5: @ ab5
	StoreBTowerData 0x0, 0x5
	Jump Script_branch_360
@ ac1

.byte 0x2 @ 0xac1
.byte 0x0 @ 0xac2

Function_ac3: @ ac3
	ApplyMovement 0xff, Movement_1278
	WaitMovement
	Return
@ acf

Script_2: @ acf
	LockAll
	PlayFanfare 0x5dc
	ActivateBTower
	Message 0x14
	Jump Script_branch_ae2
@ ae0

.byte 0x2 @ 0xae0
.byte 0x0 @ 0xae1

Script_branch_ae2: @ ae2
	Message 0x15
	Call Function_2e6
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_b2b
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_b20
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_784
	Jump Script_branch_784
@ b1e

.byte 0x2 @ 0xb1e
.byte 0x0 @ 0xb1f

Script_branch_b20: @ b20
	Message 0x17
	Jump Script_branch_ae2
@ b29

.byte 0x2 @ 0xb29
.byte 0x0 @ 0xb2a

Script_branch_b2b: @ b2b
	CallBTowerFunctions 0x1, 0x2, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_b50
	BCastleFunctReturn 0x5b, 0x2, 0x0, 0x0
	Jump Script_branch_787
@ b4e

.byte 0x2 @ 0xb4e
.byte 0x0 @ 0xb4f

Script_branch_b50: @ b50
	Message 0x1a
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_b80
	Jump Script_branch_b6c
@ b6a

.byte 0x2 @ 0xb6a
.byte 0x0 @ 0xb6b

Script_branch_b6c: @ b6c
	StoreBTowerData 0x0, 0x2
	SetVar 0x4001, 0x0
	Jump Script_branch_b94
@ b7e

.byte 0x2 @ 0xb7e
.byte 0x0 @ 0xb7f

Script_branch_b80: @ b80
	StoreBTowerData 0x0, 0x3
	SetVar 0x4001, 0x1
	Jump Script_branch_b94
@ b92

.byte 0x2 @ 0xb92
.byte 0x0 @ 0xb93

Script_branch_b94: @ b94
	Message 0x8
	Call Function_4be
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_784
	CallBTowerFunctions 0x20, 0x0, 0x800c
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_4a8
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_4b3
	CallBTowerFunctions 0x35, 0x0, 0x800c
	Cmd_31e 0x800c, 0x800c
	If 0x800c, 0xff
	CompareLastResultJump EQUAL, Script_branch_13ce
	CallBTowerFunctions 0x35, 0x1, 0x800c
	Cmd_31e 0x800c, 0x800c
	If 0x800c, 0xff
	CompareLastResultJump EQUAL, Script_branch_13ce
	If 0x4001, 0x1
	CompareLastResultJump EQUAL, Script_branch_c53
	Call Function_172
	CallBTowerFunctions 0x5, 0x0, 0x0
	HealPokemon
	Call Function_49c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_77e
	CallBTowerFunctions 0x39, 0x0, 0x800c
	CallBTowerFunctions 0x34, 0x0, 0x0
	Message 0x23
	Jump Script_branch_5ec
@ c51

.byte 0x2 @ 0xc51
.byte 0x0 @ 0xc52

Script_branch_c53: @ c53
	HealPokemon
	Call Function_49c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_77e
	Jump Script_branch_c70
@ c6e

.byte 0x2 @ 0xc6e
.byte 0x0 @ 0xc6f

Script_branch_c70: @ c70
	Message 0x1b
	Multi 0x1e, 0x1, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0xd, 0x0
	Cmd_42 0xe, 0x1
	Cmd_42 0x5, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_cb4
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_d08
	Jump Script_branch_77e
@ cb2

.byte 0x2 @ 0xcb2
.byte 0x0 @ 0xcb3

Script_branch_cb4: @ cb4
	Message 0x70
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_c70
	CloseMsgOnKeyPress
	ChsFriend 0x10, 0x0, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_cf6
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_cfe
	Jump Script_branch_d5c
@ cf4

.byte 0x2 @ 0xcf4
.byte 0x0 @ 0xcf5

Script_branch_cf6: @ cf6
	Jump Script_branch_c70
@ cfc

.byte 0x2 @ 0xcfc
.byte 0x0 @ 0xcfd

Script_branch_cfe: @ cfe
	DeleteEntry
	Jump Script_branch_c70
@ d06

.byte 0x2 @ 0xd06
.byte 0x0 @ 0xd07

Script_branch_d08: @ d08
	Message 0x70
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_c70
	CloseMsgOnKeyPress
	WireBattleWait 0x10, 0x0, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_d4a
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_d52
	Jump Script_branch_d5c
@ d48

.byte 0x2 @ 0xd48
.byte 0x0 @ 0xd49

Script_branch_d4a: @ d4a
	Jump Script_branch_c70
@ d50

.byte 0x2 @ 0xd50
.byte 0x0 @ 0xd51

Script_branch_d52: @ d52
	DeleteEntry
	Jump Script_branch_c70
@ d5a

.byte 0x2 @ 0xd5a
.byte 0x0 @ 0xd5b

Script_branch_d5c: @ d5c
	FriendBT2
	FriendBT 0x1
	CallBTowerFunctions 0x3a, 0x0, 0x0
	Jump Script_branch_d72
@ d70

.byte 0x2 @ 0xd70
.byte 0x0 @ 0xd71

Script_branch_d72: @ d72
	CallBTowerWireFunction 0x0, 0x0, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_d72
	StorePChosenWireBTower 0x0, 0x4000
	CopyVar 0x8008, 0x4000
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_de7
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_e05
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_e23
	FriendBT2
	FriendBT 0x2
	CallBTowerFunctions 0x39, 0x0, 0x8004
	StorePokeColosseumLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_e8a
	StorePChosenWireBTower 0x1, 0x4000
	Jump Script_branch_e58
@ de5

.byte 0x2 @ 0xde5
.byte 0x0 @ 0xde6

Script_branch_de7: @ de7
	Call Function_e4e
	CallBTowerFunctions 0x35, 0x0, 0x800c
	SetVarPoke 0x0, 0x800c
	Message 0x21
	Jump Script_branch_77e
@ e03

.byte 0x2 @ 0xe03
.byte 0x0 @ 0xe04

Script_branch_e05: @ e05
	Call Function_e4e
	CallBTowerFunctions 0x35, 0x1, 0x800c
	SetVarPoke 0x0, 0x800c
	Message 0x21
	Jump Script_branch_77e
@ e21

.byte 0x2 @ 0xe21
.byte 0x0 @ 0xe22

Script_branch_e23: @ e23
	Call Function_e4e
	CallBTowerFunctions 0x35, 0x0, 0x800c
	SetVarPoke 0x0, 0x800c
	CallBTowerFunctions 0x35, 0x1, 0x800c
	SetVarPoke 0x1, 0x800c
	Message 0x22
	Jump Script_branch_77e
@ e4c

.byte 0x2 @ 0xe4c
.byte 0x0 @ 0xe4d

Function_e4e: @ e4e
	FriendBT2
	FriendBT 0x8
	DeleteEntry
	Return
@ e58

Script_branch_e58: @ e58
	Call Function_172
	CallBTowerFunctions 0x5, 0x0, 0x0
	HealPokemon
	Message 0x45
	Call Function_734
	Cmd_330
	Message 0x20
	Return2 0x1e, 0x800c
	FriendBT2
	FriendBT 0x3
	Jump Script_branch_5ec
@ e88

.byte 0x2 @ 0xe88
.byte 0x0 @ 0xe89

Script_branch_e8a: @ e8a
	CallBTowerFunctions 0x34, 0x0, 0x0
	CallBTowerFunctions 0x3a, 0x0, 0x0
	Jump Script_branch_ea2
@ ea0

.byte 0x2 @ 0xea0
.byte 0x0 @ 0xea1

Script_branch_ea2: @ ea2
	CallBTowerWireFunction 0x1, 0x0, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_ea2
	Jump Script_branch_e58
@ ebd

.byte 0x2 @ 0xebd
.byte 0x0 @ 0xebe

Script_4: @ ebf
	LockAll
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Call Function_724
	CallBTowerFunctions 0x64, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_784
	CallBTowerFunctions 0x23, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_f7e
	Jump Script_branch_f05
@ f03

.byte 0x2 @ 0xf03
.byte 0x0 @ 0xf04

Script_branch_f05: @ f05
	Message 0x35
	CallBTowerFunctions 0x2b, 0x0, 0x800c
	CopyVar 0x4000, 0x800c
	CopyVar 0x8008, 0x4000
	If 0x8008, 0x5
	CompareLastResultJump EQUAL, Script_branch_f53
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_11ba
	CallBTowerFunctions 0x31, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultCall EQUAL, Script_branch_f73
	Jump Script_branch_f53
@ f51

.byte 0x2 @ 0xf51
.byte 0x0 @ 0xf52

Script_branch_f53: @ f53
	Message 0x38
	Call Function_734
	CloseMsgOnKeyPress
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_118a
	Jump Script_branch_77e
@ f71

.byte 0x2 @ 0xf71
.byte 0x0 @ 0xf72

Script_branch_f73: @ f73
	Message 0x49
	Soundfr 0x483
	Cmd_4f
	Return
@ f7e

Script_branch_f7e: @ f7e
	CallBTowerFunctions 0x2b, 0x0, 0x800c
	CopyVar 0x4000, 0x800c
	If 0x4000, 0x5
	CompareLastResultJump EQUAL, Script_branch_116c
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_1091
	If 0x4000, 0x4
	CompareLastResultJump EQUAL, Script_branch_fea
	CallBTowerFunctions 0x31, 0x0, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x5, Script_branch_fd6
	Call Function_1167
	Jump Script_branch_1177
@ fd4

.byte 0x2 @ 0xfd4
.byte 0x0 @ 0xfd5

Script_branch_fd6: @ fd6
	Message 0xc
	Message 0x49
	Soundfr 0x483
	Cmd_4f
	Jump Script_branch_1177
@ fe8

.byte 0x2 @ 0xfe8
.byte 0x0 @ 0xfe9

Script_branch_fea: @ fea
	Message 0xc
	CallBTowerFunctions 0x36, 0x0, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_105e
	Jump Script_branch_100a
@ 1008

.byte 0x2 @ 0x1008
.byte 0x0 @ 0x1009

Script_branch_100a: @ 100a
	CallBTowerFunctions 0xa, 0x0, 0x800c
	CopyVar 0x4000, 0x800c
	SetVarHero 0x0
	SetVariableNumber 0x1, 0x4000
	Message 0x37
	Jump Script_branch_102b
@ 1029

.byte 0x2 @ 0x1029
.byte 0x0 @ 0x102a

Script_branch_102b: @ 102b
	CallBTowerFunctions 0x31, 0x0, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_11f5
	Jump Script_branch_1048
@ 1046

.byte 0x2 @ 0x1046
.byte 0x0 @ 0x1047

Script_branch_1048: @ 1048
	SetVariableNumber 0x0, 0x4000
	Message 0x46
	Soundfr 0x483
	Cmd_4f
	Jump Script_branch_11f5
@ 105c

.byte 0x2 @ 0x105c
.byte 0x0 @ 0x105d

Script_branch_105e: @ 105e
	CallBTowerFunctions 0x31, 0x0, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_11f5
	Jump Script_branch_107b
@ 1079

.byte 0x2 @ 0x1079
.byte 0x0 @ 0x107a

Script_branch_107b: @ 107b
	SetVariableNumber 0x0, 0x4000
	Message 0x84
	Soundfr 0x483
	Cmd_4f
	Jump Script_branch_11f5
@ 108f

.byte 0x2 @ 0x108f
.byte 0x0 @ 0x1090

Script_branch_1091: @ 1091
	CallBTowerFunctions 0x2d, 0x0, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_10ae
	Jump Script_branch_10f5
@ 10ac

.byte 0x2 @ 0x10ac
.byte 0x0 @ 0x10ad

Script_branch_10ae: @ 10ae
	Call Function_1167
	Jump Script_branch_10bc
@ 10ba

.byte 0x2 @ 0x10ba
.byte 0x0 @ 0x10bb

Script_branch_10bc: @ 10bc
	Message 0xe
	Call Function_734
	StorePrizeNumBTower 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_77e
	Message 0x71
	CloseMsgOnKeyPress
	CopyVar 0x4002, 0x800c
	SetVar 0x4001, 0x1
	Call Function_ac3
	Jump Script_branch_1c6
@ 10f3

.byte 0x2 @ 0x10f3
.byte 0x0 @ 0x10f4

Script_branch_10f5: @ 10f5
	If 0x404f, 0x1
	CompareLastResultCall EQUAL, Script_branch_1135
	If 0x404f, 0x3
	CompareLastResultCall EQUAL, Script_branch_114c
	CallBTowerFunctions 0x30, 0x0, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_10bc
	Message 0x54
	Soundfr 0x483
	Cmd_4f
	Jump Script_branch_10bc
@ 1133

.byte 0x2 @ 0x1133
.byte 0x0 @ 0x1134

Script_branch_1135: @ 1135
	Message 0x55
	SetVarHero 0x0
	Message 0x57
	Soundfr 0x486
	Cmd_4f
	SetVar 0x404f, 0x2
	Return
@ 114c

Script_branch_114c: @ 114c
	Message 0x55
	SetVarHero 0x0
	Message 0x56
	Soundfr 0x486
	Cmd_4f
	SetVar 0x404f, 0x4
	CallStandard 0x806
	Return
@ 1167

Function_1167: @ 1167
	Message 0xc
	Return
@ 116c

Script_branch_116c: @ 116c
	Message 0x36
	Jump Script_branch_1177
@ 1175

.byte 0x2 @ 0x1175
.byte 0x0 @ 0x1176

Script_branch_1177: @ 1177
	Message 0xe
	Call Function_734
	CloseMsgOnKeyPress
	Jump Script_branch_77e
@ 1188

.byte 0x2 @ 0x1188
.byte 0x0 @ 0x1189

Script_branch_118a: @ 118a
	StorePrizeNumBTower 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_77e
	Message 0x71
	CloseMsgOnKeyPress
	CopyVar 0x4002, 0x800c
	SetVar 0x4001, 0x1
	Call Function_ac3
	Jump Script_branch_1c6
@ 11b8

.byte 0x2 @ 0x11b8
.byte 0x0 @ 0x11b9

Script_branch_11ba: @ 11ba
	CallBTowerFunctions 0x9, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_11d7
	Jump Script_branch_11f5
@ 11d5

.byte 0x2 @ 0x11d5
.byte 0x0 @ 0x11d6

Script_branch_11d7: @ 11d7
	CallBTowerFunctions 0xa, 0x0, 0x800c
	CopyVar 0x8000, 0x800c
	SetVariableNumber 0x0, 0x8000
	Message 0x41
	Jump Script_branch_11f5
@ 11f3

.byte 0x2 @ 0x11f3
.byte 0x0 @ 0x11f4

Script_branch_11f5: @ 11f5
	CallBTowerFunctions 0xb, 0x1, 0x0
	Jump Script_branch_1205
@ 1203

.byte 0x2 @ 0x1203
.byte 0x0 @ 0x1204

Script_branch_1205: @ 1205
	Call Function_79b
	Message 0x38
	Call Function_734
	Message 0x39
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_784
	Call Function_96f
	If 0x800c, 0x0
	CompareLastResultJump 0x5, Script_branch_784
	Message 0x3c
	Jump Script_branch_784
@ 1244

.byte 0x2 @ 0x1244
.byte 0x0 @ 0x1245
.byte 0x0 @ 0x1246
.byte 0x0 @ 0x1247

Movement_1248: @ 1248
	Move_3e 0x1
	WalkUpFast 0x2
	EndMovement 0x0
@ 1254

Movement_1254: @ 1254
	WalkUpFast 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 1260

Movement_1260: @ 1260
	Move_3e 0x1
	WalkUpFast 0x2
	EndMovement 0x0
@ 126c

Movement_126c: @ 126c
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 1278

Movement_1278: @ 1278
	SeeRight 0x1
	EndMovement 0x0
@ 1280

Script_10: @ 1280
	PlayFanfare 0x5dc
	LockAll
	SetVar 0x8000, 0x0
	SetVar 0x8001, 0x0
	Call Function_1304
	End
@ 129a

Script_11: @ 129a
	PlayFanfare 0x5dc
	LockAll
	SetVar 0x8000, 0x0
	SetVar 0x8001, 0x1
	Call Function_1304
	End
@ 12b4

Script_12: @ 12b4
	PlayFanfare 0x5dc
	LockAll
	SetVar 0x8000, 0x0
	SetVar 0x8001, 0x2
	Call Function_1304
	End
@ 12ce

Script_13: @ 12ce
	PlayFanfare 0x5dc
	LockAll
	Cmd_1e4 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_12f9
	SetVar 0x8000, 0x1
	SetVar 0x8001, 0x0
	Call Function_1304
	End
@ 12f9

Script_branch_12f9: @ 12f9
	Message 0x6f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1304

Function_1304: @ 1304
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	BattleRoomResult 0x8000, 0x8001
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	Return
@ 1328

Script_14: @ 1328
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4a
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 133b

Script_15: @ 133b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 134e

Script_16: @ 134e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4c
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1361

Script_17: @ 1361
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1374

Script_18: @ 1374
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4e
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1387

Script_19: @ 1387
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 139a

Script_20: @ 139a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x50
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 13ad

Script_9: @ 13ad
	End
@ 13af

Script_21: @ 13af
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x19, 0x0
	Message 0x51
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 13ce

Script_branch_13ce: @ 13ce
	Call Function_7b5
	Call Function_7b9
	CallStandard 0x809
	End
@ 13e0

Script_24: @ 13e0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xff
	CompareLastResultCall LESSER, Script_branch_1492
	CheckFlag 0xff
	CompareLastResultCall EQUAL, Script_branch_1497
	SetFlag 0xff
	Jump Script_branch_140a
@ 1408

.byte 0x2 @ 0x1408
.byte 0x0 @ 0x1409

Script_branch_140a: @ 140a
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CloseMsgOnKeyPress
	ChsPokemenu
	StorePokeMenu2 0x800c
	CallEnd
	CopyVar 0x8000, 0x800c
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x8000, 0xff
	CompareLastResultJump EQUAL, Script_branch_1549
	CheckPokeEgg 0x8000, 0x8004
	If 0x8004, 0x0
	CompareLastResultJump EQUAL, Script_branch_149c
	Cmd_2ee 0x8000, 0x8001, 0x8002, 0x8003
	If 0x8001, 0x5a
	CompareLastResultJump 0x3, Script_branch_14e9
	If 0x8001, 0x78
	CompareLastResultJump 0x3, Script_branch_14f4
	If 0x8001, 0x96
	CompareLastResultJump 0x3, Script_branch_14ff
	If 0x8001, 0x97
	CompareLastResultJump 0x4, Script_branch_150a
	End
@ 1492

Script_branch_1492: @ 1492
	Message 0x72
	Return
@ 1497

Script_branch_1497: @ 1497
	Message 0x73
	Return
@ 149c

Script_branch_149c: @ 149c
	Message 0x75
	Jump Script_branch_140a
@ 14a5

.byte 0x2 @ 0x14a5
.byte 0x0 @ 0x14a6

Script_branch_14a7: @ 14a7
	Message3 0x8002
	Jump Script_branch_14b3
@ 14b1

.byte 0x2 @ 0x14b1
.byte 0x0 @ 0x14b2

Script_branch_14b3: @ 14b3
	If 0x8003, 0xf
	CompareLastResultJump 0x3, Script_branch_1515
	If 0x8003, 0x19
	CompareLastResultJump 0x3, Script_branch_1520
	If 0x8003, 0x1e
	CompareLastResultJump 0x3, Script_branch_152b
	If 0x8003, 0x1f
	CompareLastResultJump 0x4, Script_branch_1536
	End
@ 14e9

Script_branch_14e9: @ 14e9
	Message 0x76
	Jump Script_branch_14a7
@ 14f2

.byte 0x2 @ 0x14f2
.byte 0x0 @ 0x14f3

Script_branch_14f4: @ 14f4
	Message 0x77
	Jump Script_branch_14a7
@ 14fd

.byte 0x2 @ 0x14fd
.byte 0x0 @ 0x14fe

Script_branch_14ff: @ 14ff
	Message 0x78
	Jump Script_branch_14a7
@ 1508

.byte 0x2 @ 0x1508
.byte 0x0 @ 0x1509

Script_branch_150a: @ 150a
	Message 0x79
	Jump Script_branch_14a7
@ 1513

.byte 0x2 @ 0x1513
.byte 0x0 @ 0x1514

Script_branch_1515: @ 1515
	Message 0x80
	Jump Script_branch_1541
@ 151e

.byte 0x2 @ 0x151e
.byte 0x0 @ 0x151f

Script_branch_1520: @ 1520
	Message 0x81
	Jump Script_branch_1541
@ 1529

.byte 0x2 @ 0x1529
.byte 0x0 @ 0x152a

Script_branch_152b: @ 152b
	Message 0x82
	Jump Script_branch_1541
@ 1534

.byte 0x2 @ 0x1534
.byte 0x0 @ 0x1535

Script_branch_1536: @ 1536
	Message 0x83
	Jump Script_branch_1541
@ 153f

.byte 0x2 @ 0x153f
.byte 0x0 @ 0x1540

Script_branch_1541: @ 1541
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1549

Script_branch_1549: @ 1549
	Message 0x74
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1554

@ end_0x1554
