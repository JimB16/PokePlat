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
	.hword 0xfd13
@ 3e

Script_1: @ 3e
	If 0x40a6, 0x2
	CompareLastResultCall EQUAL, Script_branch_5a
	If 0x40a6, 0x3
	CompareLastResultCall EQUAL, Script_branch_5a
	End
@ 5a

Script_branch_5a: @ 5a
	ClearFlag 0x198
	ChangeOwPosition 0x0, 0x7, 0xe
	ReleaseOw 0x0, 0x1
	ChangeOwMovement 0x0, 0xf
	ClearFlag 0x199
	ChangeOwPosition 0x3, 0x6, 0xe
	ReleaseOw 0x3, 0x1
	ChangeOwMovement 0x3, 0xf
	Return
@ 8c

Script_3: @ 8c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Call Function_8a0
	If 0x8006, 0x1
	CompareLastResultJump EQUAL, Script_branch_106
	Jump Script_branch_b7
@ ad

.byte 0x2 @ 0xad
.byte 0x0 @ 0xae

Script_branch_af: @ af
	SetVar 0x40aa, 0x3
	Return
@ b7

Script_branch_b7: @ b7
	CheckNatPokedexStatus 0x2, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_7ae
	CheckFlag 0x9ba
	CompareLastResultJump LESSER, Script_branch_e5
	CheckSinnohPokedex 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_60e
Script_branch_e5: @ e5
	If 0x4071, 0x2
	CompareLastResultJump 0x4, Script_branch_100
	SetVarHero 0x0
	Message 0x12
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 100

Script_branch_100: @ 100
	CallStandard 0x26de
	End
@ 106

Script_branch_106: @ 106
	SetVarHero 0x0
	Message 0x37
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 114

Script_15: @ 114
	LockAll
	If 0x40aa, 0x2
	CompareLastResultCall EQUAL, Script_branch_af
	SetVarHero 0x1
	Message 0x33
	CloseMsgOnKeyPress
	ApplyMovement 0x3, Movement_19c
	WaitMovement
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_14e
	Jump Script_branch_15c
@ 14c

.byte 0x2 @ 0x14c
.byte 0x0 @ 0x14d

Script_branch_14e: @ 14e
	SetVarHero 0x1
	Message 0x34
	Jump Script_branch_16a
@ 15a

.byte 0x2 @ 0x15a
.byte 0x0 @ 0x15b

Script_branch_15c: @ 15c
	SetVarHero 0x1
	Message 0x35
	Jump Script_branch_16a
@ 168

.byte 0x2 @ 0x168
.byte 0x0 @ 0x169

Script_branch_16a: @ 16a
	StoreSinPokemonSeen 0x800c
	SetVariableNumber 0x1, 0x800c
	Message 0x36
	WaitButton
	CloseMsgOnKeyPress
	SetFlag 0x27d
	SetVar 0x4112, 0x1
	ClearFlag 0x1df
	ClearFlag 0x1e0
	ClearFlag 0x1e1
	SetVar 0x40a6, 0x3
	ReleaseAll
	End
@ 19a

.byte 0x0 @ 0x19a
.byte 0x0 @ 0x19b

Movement_19c: @ 19c
	MoveRightFast 0x1
	Move_3e 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 1ac

Script_4: @ 1ac
	End
@ 1ae

Script_2: @ 1ae
	LockAll
	ApplyMovement 0x3, Movement_484
	ApplyMovement 0xff, Movement_4a8
	WaitMovement
	SetVarHero 0x0
	Message 0x0
	CloseMsgOnKeyPress
	GivePokeHiroAnm 0x100
	StopGivePokeHiroAnm
	ApplyMovement 0xff, Movement_4e0
	WaitMovement
	SetVar 0x8004, 0x0
	CheckPokeEgg 0x8004, 0x800c
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x183
	CompareLastResultJump EQUAL, Script_branch_219
	If 0x8008, 0x186
	CompareLastResultJump EQUAL, Script_branch_219
	If 0x8008, 0x189
	CompareLastResultJump EQUAL, Script_branch_219
	Jump Script_branch_222
@ 219

Script_branch_219: @ 219
	Message 0x1
	Jump Script_branch_22b
@ 222

Script_branch_222: @ 222
	Message 0x2
	Jump Script_branch_22b
@ 22b

Script_branch_22b: @ 22b
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_4e8
	WaitMovement
	GivePokeHiroAnm 0x1
	StopGivePokeHiroAnm
	SetVarPoke 0x0, 0x0
	Message 0x3
	Message 0x4
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_2bc
	Jump Script_branch_261
@ 25f

.byte 0x2 @ 0x25f
.byte 0x0 @ 0x260

Script_branch_261: @ 261
	SetVar 0x800c, 0x0
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ChoosePokeNick 0x0, 0x800c
	CopyVar 0x8002, 0x800c
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Message 0x5
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_261
	If 0x8002, 0x1
	CompareLastResultCall 0x5, Script_branch_2b6
	Jump Script_branch_2bc
@ 2b4

.byte 0x2 @ 0x2b4
.byte 0x0 @ 0x2b5

Script_branch_2b6: @ 2b6
	RandomEvent 0x31
	Return
@ 2bc

Script_branch_2bc: @ 2bc
	SetVarPoke 0x0, 0x0
	SetVariableRival 0x1
	Message 0x6
	CloseMsgOnKeyPress
	ApplyMovement 0x3, Movement_498
	WaitMovement
	ApplyMovement 0xff, Movement_4bc
	WaitMovement
	Return2 0xf, 0x800c
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2fc
	Jump Script_branch_316
@ 2fa

.byte 0x2 @ 0x2fa
.byte 0x0 @ 0x2fb

Script_branch_2fc: @ 2fc
	SetVarAlter 0x0
	Message 0x7
	CloseMsgOnKeyPress
	ApplyMovement 0x3, Movement_4d0
	WaitMovement
	Jump Script_branch_330
@ 314

.byte 0x2 @ 0x314
.byte 0x0 @ 0x315

Script_branch_316: @ 316
	SetVarAlter 0x0
	Message 0x8
	CloseMsgOnKeyPress
	ApplyMovement 0x3, Movement_4d0
	WaitMovement
	Jump Script_branch_330
@ 32e

.byte 0x2 @ 0x32e
.byte 0x0 @ 0x32f

Script_branch_330: @ 330
	SwitchMusic 0x0, 0x28
	ApplyMovement 0x0, Movement_47c
	ApplyMovement 0xff, Movement_4b4
	WaitMovement
	Return2 0x23, 0x800c
	SetFlag 0x993
	PlaySound 0x44a
	Message 0x9
	Message 0xa
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_375
	Jump Script_branch_394
@ 373

.byte 0x2 @ 0x373
.byte 0x0 @ 0x374

Script_branch_375: @ 375
	SetVarHero 0x0
	Message 0xb
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_375
	Jump Script_branch_394
@ 392

.byte 0x2 @ 0x392
.byte 0x0 @ 0x393

Script_branch_394: @ 394
	Message 0xc
	ActivatePokedex
	SetFlag 0x90
	SetVarHero 0x0
	Message 0xd
	Soundfr 0x486
	Cmd_4f
	SetVarHero 0x0
	Message 0xe
	CloseMsgOnKeyPress
	ApplyMovement 0x3, Movement_4a0
	WaitMovement
	Return2 0xf, 0x800c
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3da
	Jump Script_branch_3e8
@ 3d8

.byte 0x2 @ 0x3d8
.byte 0x0 @ 0x3d9

Script_branch_3da: @ 3da
	SetVarAlter 0x0
	Message 0xf
	Jump Script_branch_3f6
@ 3e6

.byte 0x2 @ 0x3e6
.byte 0x0 @ 0x3e7

Script_branch_3e8: @ 3e8
	SetVarAlter 0x0
	Message 0x10
	Jump Script_branch_3f6
@ 3f4

.byte 0x2 @ 0x3f4
.byte 0x0 @ 0x3f5

Script_branch_3f6: @ 3f6
	SetVarHero 0x0
	Message 0x11
	CloseMsgOnKeyPress
	ApplyMovement 0x3, Movement_4a0
	WaitMovement
	ApplyMovement 0xff, Movement_4bc
	WaitMovement
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_42b
	Jump Script_branch_43c
@ 429

.byte 0x2 @ 0x429
.byte 0x0 @ 0x42a

Script_branch_42b: @ 42b
	SetVarHero 0x0
	Cmd_342 0x1
	Message 0x13
	Jump Script_branch_44d
@ 43a

.byte 0x2 @ 0x43a
.byte 0x0 @ 0x43b

Script_branch_43c: @ 43c
	SetVarHero 0x0
	SetVarStrRival 0x1
	Message 0x14
	Jump Script_branch_44d
@ 44b

.byte 0x2 @ 0x44b
.byte 0x0 @ 0x44c

Script_branch_44d: @ 44d
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_4c4
	ApplyMovement 0x3, Movement_4d8
	WaitMovement
	RemovePeople 0x3
	ClearFlag 0x177
	SetVar 0x40a6, 0x1
	ReleaseAll
	End
@ 473

.byte 0x0 @ 0x473
.byte 0x21 @ 0x474
.byte 0x0 @ 0x475
.byte 0x1 @ 0x476
.byte 0x0 @ 0x477
.byte 0xfe @ 0x478
.byte 0x0 @ 0x479
.byte 0x0 @ 0x47a
.byte 0x0 @ 0x47b

Movement_47c: @ 47c
	MoveDownFast 0x1
	EndMovement 0x0
@ 484

Movement_484: @ 484
	Move_41 0x1
	WalkUpFast 0x8
	WalkRightFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 498

Movement_498: @ 498
	MoveLeftFast 0x1
	EndMovement 0x0
@ 4a0

Movement_4a0: @ 4a0
	MoveLeftFast 0x1
	EndMovement 0x0
@ 4a8

Movement_4a8: @ 4a8
	Move_41 0x1
	WalkUpFast 0x9
	EndMovement 0x0
@ 4b4

Movement_4b4: @ 4b4
	MoveUpFast 0x1
	EndMovement 0x0
@ 4bc

Movement_4bc: @ 4bc
	MoveRightFast 0x1
	EndMovement 0x0
@ 4c4

Movement_4c4: @ 4c4
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 4d0

Movement_4d0: @ 4d0
	MoveLeftFast 0x1
	EndMovement 0x0
@ 4d8

Movement_4d8: @ 4d8
	WalkDownFast 0xa
	EndMovement 0x0
@ 4e0

Movement_4e0: @ 4e0
	Move_66 0x1
	EndMovement 0x0
@ 4e8

Movement_4e8: @ 4e8
	Move_68 0x1
	EndMovement 0x0
@ 4f0

Script_5: @ 4f0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Call Function_8a0
	If 0x8006, 0x1
	CompareLastResultJump EQUAL, Script_branch_539
	CheckNatPokedexStatus 0x2, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_52b
	SetVarAlter 0x0
	Message 0x15
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 52b

Script_branch_52b: @ 52b
	SetVarAlter 0x0
	Message 0x31
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 539

Script_branch_539: @ 539
	Message 0x3b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 544

Script_6: @ 544
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Call Function_8a0
	If 0x8006, 0x1
	CompareLastResultJump EQUAL, Script_branch_587
	CheckNatPokedexStatus 0x2, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_57c
	Message 0x16
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 57c

Script_branch_57c: @ 57c
	Message 0x32
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 587

Script_branch_587: @ 587
	Message 0x3c
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 592

Script_7: @ 592
	End
@ 594

Script_8: @ 594
	PlayFanfare 0x5dc
	LockAll
	Message 0x17
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5a5

Script_9: @ 5a5
	PlayFanfare 0x5dc
	LockAll
	Message 0x18
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5b6

Script_10: @ 5b6
	PlayFanfare 0x5dc
	LockAll
	Message 0x19
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5c7

Script_11: @ 5c7
	PlayFanfare 0x5dc
	LockAll
	Message 0x1a
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5d8

Script_12: @ 5d8
	SetVarHero 0x0
	PlayFanfare 0x5dc
	LockAll
	Message 0x2e
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5ec

Script_13: @ 5ec
	PlayFanfare 0x5dc
	LockAll
	Message 0x2f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5fd

Script_14: @ 5fd
	PlayFanfare 0x5dc
	LockAll
	Message 0x30
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 60e

Script_branch_60e: @ 60e
	CheckFlag 0x110
	CompareLastResultJump EQUAL, Script_branch_621
	Jump Script_branch_631
@ 61f

.byte 0x2 @ 0x61f
.byte 0x0 @ 0x620

Script_branch_621: @ 621
	SetVarHero 0x0
	Message 0x1f
	CloseMsgOnKeyPress
	Jump Script_branch_677
@ 62f

.byte 0x2 @ 0x62f
.byte 0x0 @ 0x630

Script_branch_631: @ 631
	SetVarHero 0x0
	Message 0x1b
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_650
	Jump Script_branch_65b
@ 64e

.byte 0x2 @ 0x64e
.byte 0x0 @ 0x64f

Script_branch_650: @ 650
	Message 0x1d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 65b

Script_branch_65b: @ 65b
	StoreSinPokemonSeen 0x800c
	SetVariableNumber 0x0, 0x800c
	Message 0x1c
	SetVarHero 0x0
	Message 0x1e
	CloseMsgOnKeyPress
	Jump Script_branch_677
@ 675

.byte 0x2 @ 0x675
.byte 0x0 @ 0x676

Script_branch_677: @ 677
	CheckFacePosition 0x8007
	If 0x8007, 0x0
	CompareLastResultCall EQUAL, Script_branch_7b9
	If 0x8007, 0x1
	CompareLastResultCall EQUAL, Script_branch_7bb
	If 0x8007, 0x2
	CompareLastResultCall EQUAL, Script_branch_7cf
	If 0x8007, 0x3
	CompareLastResultCall EQUAL, Script_branch_7e3
	ClearFlag 0x22a
	AddPeople 0x4
	ApplyMovement 0xff, Movement_858
	ApplyMovement 0x4, Movement_884
	ApplyMovement 0x0, Movement_804
	WaitMovement
	Message 0x20
	Message 0x21
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_80c
	WaitMovement
	Return2 0xf, 0x800c
	Message 0x22
	CloseMsgOnKeyPress
	ApplyMovement 0x4, Movement_88c
	ApplyMovement 0xff, Movement_86c
	WaitMovement
	Message 0x23
	CheckFlag 0x964
	CompareLastResultCall EQUAL, Script_branch_7a2
	If 0x4081, 0x2
	CompareLastResultCall 0x4, Script_branch_79c
	CheckNatPokedexStatus 0x1, 0x800c
	SetVarHero 0x0
	Soundfr 0x486
	Message 0x24
	Cmd_4f
	Message 0x25
	Message 0x26
	Message 0x27
	SetVarHero 0x0
	CheckGender 0x8004
	If 0x8004, 0x0
	CompareLastResultCall EQUAL, Script_branch_7a4
	If 0x8004, 0x1
	CompareLastResultCall EQUAL, Script_branch_7a9
	CloseMsgOnKeyPress
	ApplyMovement 0x4, Movement_898
	WaitMovement
	RemovePeople 0x4
	Message 0x2a
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	ApplyMovement 0xff, Movement_878
	WaitMovement
	SetVarHero 0x0
	Message 0x2b
	SetVar 0x8004, 0x1af
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	Message 0x2c
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 79c

Script_branch_79c: @ 79c
	SetFlag 0x294
	Return
@ 7a2

Script_branch_7a2: @ 7a2
	Return
@ 7a4

Script_branch_7a4: @ 7a4
	Message 0x28
	Return
@ 7a9

Script_branch_7a9: @ 7a9
	Message 0x29
	Return
@ 7ae

Script_branch_7ae: @ 7ae
	Message 0x2d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7b9

Script_branch_7b9: @ 7b9
	Return
@ 7bb

Script_branch_7bb: @ 7bb
	ApplyMovement 0xff, Movement_824
	ApplyMovement 0x0, Movement_7f8
	WaitMovement
	Return
@ 7cf

Script_branch_7cf: @ 7cf
	ApplyMovement 0xff, Movement_838
	ApplyMovement 0x0, Movement_7f8
	WaitMovement
	Return
@ 7e3

Script_branch_7e3: @ 7e3
	ApplyMovement 0xff, Movement_848
	ApplyMovement 0x0, Movement_7f8
	WaitMovement
	Return
@ 7f7

.byte 0x0 @ 0x7f7

Movement_7f8: @ 7f8
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 804

Movement_804: @ 804
	Exclamation 0x1
	EndMovement 0x0
@ 80c

Movement_80c: @ 80c
	MoveLeftFast 0x1
	Move_3f 0x2
	MoveDownFast 0x1
	EndMovement 0x0
@ 81c

.byte 0x22 @ 0x81c
.byte 0x0 @ 0x81d
.byte 0x1 @ 0x81e
.byte 0x0 @ 0x81f
.byte 0xfe @ 0x820
.byte 0x0 @ 0x821
.byte 0x0 @ 0x822
.byte 0x0 @ 0x823

Movement_824: @ 824
	WalkLeftFast 0x1
	WalkDownFast 0x2
	WalkRightFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 838

Movement_838: @ 838
	WalkDownFast 0x1
	WalkLeftFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 848

Movement_848: @ 848
	WalkDownFast 0x1
	WalkRightFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 858

Movement_858: @ 858
	MoveDownFast 0x1
	Move_3f 0x5
	WalkLeftFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 86c

Movement_86c: @ 86c
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 878

Movement_878: @ 878
	WalkRightFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 884

Movement_884: @ 884
	WalkUpFast 0x7
	EndMovement 0x0
@ 88c

Movement_88c: @ 88c
	WalkLeftFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 898

Movement_898: @ 898
	WalkDownFast 0x9
	EndMovement 0x0
@ 8a0

Function_8a0: @ 8a0
	SetVar 0x8006, 0x0
	If 0x40a6, 0x3
	CompareLastResultJump EQUAL, Script_branch_8b5
	Return
@ 8b5

Script_branch_8b5: @ 8b5
	CheckFlag 0x9be
	CompareLastResultJump LESSER, Script_branch_8c2
	Return
@ 8c2

Script_branch_8c2: @ 8c2
	SetVar 0x8006, 0x1
	Return
@ 8ca

.byte 0x0 @ 0x8ca
.byte 0x0 @ 0x8cb

@ end_0x8cc
