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
	.hword 0xfd13
@ 2e

Script_1: @ 2e
	If 0x40a4, 0x3
	CompareLastResultCall 0x1, Script_branch_48
	CheckFlag 0x8f
	CompareLastResultCall 0x1, Script_branch_5e
	End
@ 48

Script_branch_48: @ 48
	ChangeOwPosition 0x0, 0x2, 0x4
	ReleaseOw 0x0, 0x0
	ChangeOwMovement 0x0, 0xe
	Return
@ 5e

Script_branch_5e: @ 5e
	SetFlag 0x1f1
	Return
@ 64

Script_2: @ 64
	LockAll
	ApplyMovement 0xff, Movement_a4
	ApplyMovement 0x0, Movement_b0
	WaitMovement
	SetFlag 0x87
	SetVarHero 0x0
	SetVariableRival 0x1
	Message 0x0
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	ApplyMovement 0x0, Movement_cc
	WaitMovement
	SetVar 0x40a4, 0x1
	ReleaseAll
	End
@ a1


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00001055.bin", 0xa1, 0xa4 - 0xa1


Movement_a4: @ a4
	Move_3e 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ b0

Movement_b0: @ b0
	MoveUpFast 0x1
	Exclamation 0x1
	Move_3f 0x1
	WalkUpFast 0x1
	WalkRightFast 0x3
	WalkUpFast 0x3
	EndMovement 0x0
@ cc

Movement_cc: @ cc
	WalkDownFast 0x2
	WalkLeftFast 0x3
	WalkDownFast 0x2
	MoveUpFast 0x1
	EndMovement 0x0
@ e0

Script_11: @ e0
	LockAll
	SetVar 0x410f, 0x2
	CheckFlag 0x15c
	CompareLastResultJump 0x1, Script_branch_14b
	CheckFlag 0x15d
	CompareLastResultJump 0x0, Script_branch_110
	CheckNatPokedexStatus 0x2, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_14b
Script_branch_110: @ 110
	ApplyMovement 0xff, Movement_164
	ApplyMovement 0x0, Movement_170
	WaitMovement
	SetVarHero 0x0
	SetVariableRival 0x1
	CheckNatPokedexStatus 0x2, 0x800c
	If 0x800c, 0x1
	CompareLastResultCall 0x1, Script_branch_14f
	If 0x800c, 0x0
	CompareLastResultCall 0x1, Script_branch_158
	WaitButton
	CloseMsgOnKeyPress
Script_branch_14b: @ 14b
	ReleaseAll
	End
@ 14f

Script_branch_14f: @ 14f
	SetFlag 0x15c
	Message 0x23
	Return
@ 158

Script_branch_158: @ 158
	SetFlag 0x15d
	Message 0x24
	Return
@ 161


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00001055.bin", 0x161, 0x164 - 0x161


Movement_164: @ 164
	Move_3e 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 170

Movement_170: @ 170
	MoveUpFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 17c

Script_3: @ 17c
	LockAll
	Return2 0x1e, 0x800c
	ApplyMovement 0x0, Movement_1d4
	ApplyMovement 0xff, Movement_1f8
	WaitMovement
	Return2 0x1e, 0x800c
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x6
	CloseMsgOnKeyPress
	Return2 0x1e, 0x800c
	SetVarHero 0x0
	Message 0x7
	GiveRunningShoes
	SetVarHero 0x0
	Message 0x8
	Soundfr 0x486
	Cmd_4f
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	SetVar 0x40a4, 0x4
	ReleaseAll
	End
@ 1d2


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00001055.bin", 0x1d2, 0x1d4 - 0x1d2


Movement_1d4: @ 1d4
	WalkLeftFast 0x1
	SeeUp 0x1
	Move_3f 0x2
	WalkRightFast 0x3
	WalkDownFast 0x2
	WalkRightFast 0x3
	WalkDownFast 0x2
	MoveLeftFast 0x1
	EndMovement 0x0
@ 1f8

Movement_1f8: @ 1f8
	Move_3f 0x4
	MoveRightFast 0x1
	Move_3f 0x4
	WalkRightFast 0x3
	WalkDownFast 0x2
	WalkRightFast 0x1
	EndMovement 0x0
@ 214

Script_4: @ 214
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x2
	CompareLastResultJump 0x1, Script_branch_2af
	If 0x40a4, 0x7
	CompareLastResultJump 0x4, Script_branch_792
	If 0x40a4, 0x6
	CompareLastResultJump 0x1, Script_branch_35e
	CheckFlag 0x90
	CompareLastResultJump 0x1, Script_branch_36c
	If 0x40a4, 0x5
	CompareLastResultJump 0x4, Script_branch_788
	If 0x40a4, 0x4
	CompareLastResultJump 0x4, Script_branch_711
	CheckFlag 0xf8
	CompareLastResultJump 0x1, Script_branch_75a
	If 0x40a4, 0x2
	CompareLastResultJump 0x4, Script_branch_768
	CheckFlag 0x87
	CompareLastResultJump 0x1, Script_branch_77a
	SetFlag 0x87
	SetVarHero 0x0
	SetVariableRival 0x1
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 29e


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00001055.bin", 0x29e, 0x2af - 0x29e


Script_branch_2af: @ 2af
	If 0x40b2, 0x2
	CompareLastResultJump 0x4, Script_branch_300
	Jump Script_branch_2c4
	End
@ 2c4

Script_branch_2c4: @ 2c4
	CheckIdPlayer 0x800c, 0x4
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_31b
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_329
	If 0x800c, 0x2
	CompareLastResultJump 0x1, Script_branch_337
	If 0x800c, 0x3
	CompareLastResultJump 0x1, Script_branch_345
	End
@ 300

Script_branch_300: @ 300
	If 0x40aa, 0x2
	CompareLastResultJump 0x4, Script_branch_2c4
	SetVarHero 0x0
	Message 0x29
	Jump Script_branch_356
	End
@ 31b

Script_branch_31b: @ 31b
	SetVarHero 0x0
	Message 0x25
	Jump Script_branch_356
	End
@ 329

Script_branch_329: @ 329
	SetVarHero 0x0
	Message 0x26
	Jump Script_branch_356
	End
@ 337

Script_branch_337: @ 337
	SetVarHero 0x0
	Message 0x27
	Jump Script_branch_356
	End
@ 345

Script_branch_345: @ 345
	SetVarHero 0x0
	SetVariableRival 0x1
	Message 0x28
	Jump Script_branch_356
	End
@ 356

Script_branch_356: @ 356
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 35e

Script_branch_35e: @ 35e
	SetVarHero 0x0
	Message 0x1c
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 36c

Script_branch_36c: @ 36c
	Call Function_688
	SetVarHero 0x0
	Message 0xf
	SetVar 0x8004, 0x1b1
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	Cmd_1cc
	Message 0x10
	CheckFacePosition 0x8007
	If 0x8007, 0x1
	CompareLastResultJump 0x1, Script_branch_3a6
	Jump Script_branch_3b8
	End
@ 3a6

Script_branch_3a6: @ 3a6
	ApplyMovement 0x0, Movement_79c
	WaitMovement
	Jump Script_branch_3ca
	End
@ 3b8

Script_branch_3b8: @ 3b8
	ApplyMovement 0x0, Movement_7a4
	WaitMovement
	Jump Script_branch_3ca
	End
@ 3ca

Script_branch_3ca: @ 3ca
	Message 0x11
	FacePlayer
	SetVarHero 0x0
	Message 0x12
	CloseMsgOnKeyPress
	PlayFanfare 0x605
	ClearFlag 0x1f1
	AddPeople 0x1
	WaitFanfare 0x605
	ApplyMovement 0x0, Movement_7b4
	ApplyMovement 0xff, Movement_864
	WaitMovement
	ApplyMovement 0x1, Movement_7fc
	WaitMovement
	If 0x8007, 0x0
	CompareLastResultCall 0x1, Script_branch_465
	SetVariableRival 0x1
	Message 0x13
	ApplyMovement 0x0, Movement_7c0
	WaitMovement
	Message 0x14
	SetVariableRival 0x1
	Message 0x15
	SetVarHero 0x0
	Message 0x16
	If 0x8007, 0x0
	CompareLastResultJump 0x1, Script_branch_471
	If 0x8007, 0x1
	CompareLastResultJump 0x1, Script_branch_48b
	If 0x8007, 0x2
	CompareLastResultJump 0x1, Script_branch_4a5
	If 0x8007, 0x3
	CompareLastResultJump 0x1, Script_branch_4bf
	End
@ 465

Script_branch_465: @ 465
	ApplyMovement 0xff, Movement_86c
	WaitMovement
	Return
@ 471

Script_branch_471: @ 471
	ApplyMovement 0x0, Movement_7c8
	ApplyMovement 0xff, Movement_874
	WaitMovement
	Jump Script_branch_4d9
	End
@ 48b

Script_branch_48b: @ 48b
	ApplyMovement 0x0, Movement_7d0
	ApplyMovement 0xff, Movement_87c
	WaitMovement
	Jump Script_branch_4d9
	End
@ 4a5

Script_branch_4a5: @ 4a5
	ApplyMovement 0x0, Movement_7d8
	ApplyMovement 0xff, Movement_884
	WaitMovement
	Jump Script_branch_4d9
	End
@ 4bf

Script_branch_4bf: @ 4bf
	ApplyMovement 0x0, Movement_7e0
	ApplyMovement 0xff, Movement_88c
	WaitMovement
	Jump Script_branch_4d9
	End
@ 4d9

Script_branch_4d9: @ 4d9
	Message 0x17
	CloseMsgOnKeyPress
	If 0x8007, 0x0
	CompareLastResultJump 0x1, Script_branch_514
	If 0x8007, 0x1
	CompareLastResultJump 0x1, Script_branch_52e
	If 0x8007, 0x2
	CompareLastResultJump 0x1, Script_branch_548
	If 0x8007, 0x3
	CompareLastResultJump 0x1, Script_branch_562
	End
@ 514

Script_branch_514: @ 514
	ApplyMovement 0x1, Movement_808
	ApplyMovement 0xff, Movement_894
	WaitMovement
	Jump Script_branch_57c
	End
@ 52e

Script_branch_52e: @ 52e
	ApplyMovement 0x1, Movement_810
	ApplyMovement 0xff, Movement_89c
	WaitMovement
	Jump Script_branch_57c
	End
@ 548

Script_branch_548: @ 548
	ApplyMovement 0x1, Movement_81c
	ApplyMovement 0xff, Movement_8a8
	WaitMovement
	Jump Script_branch_57c
	End
@ 562

Script_branch_562: @ 562
	ApplyMovement 0x1, Movement_828
	ApplyMovement 0xff, Movement_8b4
	WaitMovement
	Jump Script_branch_57c
	End
@ 57c

Script_branch_57c: @ 57c
	SetVarHero 0x0
	SetVariableRival 0x1
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_59b
	Jump Script_branch_5a6
	End
@ 59b

Script_branch_59b: @ 59b
	Message 0x18
	Jump Script_branch_5b1
	End
@ 5a6

Script_branch_5a6: @ 5a6
	Message 0x19
	Jump Script_branch_5b1
	End
@ 5b1

Script_branch_5b1: @ 5b1
	SetVar 0x8004, 0x1cb
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	SetFlag 0x8f
	Message 0x1b
	SetVariableRival 0x1
	Message 0x1a
	CloseMsgOnKeyPress
	If 0x8007, 0x0
	CompareLastResultJump 0x1, Script_branch_606
	If 0x8007, 0x1
	CompareLastResultJump 0x1, Script_branch_620
	If 0x8007, 0x2
	CompareLastResultJump 0x1, Script_branch_642
	If 0x8007, 0x3
	CompareLastResultJump 0x1, Script_branch_65c
	End
@ 606

Script_branch_606: @ 606
	ApplyMovement 0x1, Movement_830
	ApplyMovement 0xff, Movement_8bc
	WaitMovement
	Jump Script_branch_676
	End
@ 620

Script_branch_620: @ 620
	ApplyMovement 0x1, Movement_83c
	ApplyMovement 0xff, Movement_8c4
	ApplyMovement 0x0, Movement_7e8
	WaitMovement
	Jump Script_branch_676
	End
@ 642

Script_branch_642: @ 642
	ApplyMovement 0x1, Movement_848
	ApplyMovement 0x0, Movement_7f4
	WaitMovement
	Jump Script_branch_676
	End
@ 65c

Script_branch_65c: @ 65c
	ApplyMovement 0x1, Movement_858
	ApplyMovement 0xff, Movement_8d8
	WaitMovement
	Jump Script_branch_676
	End
@ 676

Script_branch_676: @ 676
	PlayFanfare 0x603
	RemovePeople 0x1
	SetVar 0x40a4, 0x6
	ReleaseAll
	End
@ 688

Function_688: @ 688
	SetVarHero 0x0
	CheckTime 0x800c
	If 0x800c, 0x0
	CompareLastResultCall 0x1, Script_branch_6f8
	If 0x800c, 0x1
	CompareLastResultCall 0x1, Script_branch_6fd
	If 0x800c, 0x2
	CompareLastResultCall 0x1, Script_branch_702
	If 0x800c, 0x3
	CompareLastResultCall 0x1, Script_branch_707
	If 0x800c, 0x4
	CompareLastResultCall 0x1, Script_branch_70c
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Soundfr 0x48e
	Cmd_4f
	HealPokemon
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	SetFlag 0x2
	Return
@ 6f8

Script_branch_6f8: @ 6f8
	Message 0xb
	Return
@ 6fd

Script_branch_6fd: @ 6fd
	Message 0xc
	Return
@ 702

Script_branch_702: @ 702
	Message 0xc
	Return
@ 707

Script_branch_707: @ 707
	Message 0xd
	Return
@ 70c

Script_branch_70c: @ 70c
	Message 0xe
	Return
@ 711

Script_branch_711: @ 711
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 71c


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00001055.bin", 0x71c, 0x75a - 0x71c


Script_branch_75a: @ 75a
	SetVariableRival 0x0
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 768

Script_branch_768: @ 768
	SetFlag 0xf8
	SetVarHero 0x0
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 77a

Script_branch_77a: @ 77a
	SetVariableRival 0x0
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 788

Script_branch_788: @ 788
	Call Function_688
	ReleaseAll
	End
@ 792

Script_branch_792: @ 792
	Call Function_688
	ReleaseAll
	End
@ 79c

Movement_79c: @ 79c
	MoveDownFast 0x1
	EndMovement 0x0
@ 7a4

Movement_7a4: @ 7a4
	MoveUpFast 0x1
	EndMovement 0x0
@ 7ac


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00001055.bin", 0x7ac, 0x7b4 - 0x7ac


Movement_7b4: @ 7b4
	MoveDownFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 7c0

Movement_7c0: @ 7c0
	MoveDownFast 0x1
	EndMovement 0x0
@ 7c8

Movement_7c8: @ 7c8
	MoveDownFast 0x1
	EndMovement 0x0
@ 7d0

Movement_7d0: @ 7d0
	MoveUpFast 0x1
	EndMovement 0x0
@ 7d8

Movement_7d8: @ 7d8
	MoveRightFast 0x1
	EndMovement 0x0
@ 7e0

Movement_7e0: @ 7e0
	MoveLeftFast 0x1
	EndMovement 0x0
@ 7e8

Movement_7e8: @ 7e8
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 7f4

Movement_7f4: @ 7f4
	MoveDownFast 0x1
	EndMovement 0x0
@ 7fc

Movement_7fc: @ 7fc
	WalkUpFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 808

Movement_808: @ 808
	MoveRightFast 0x1
	EndMovement 0x0
@ 810

Movement_810: @ 810
	WalkUpFast 0x2
	MoveRightFast 0x1
	EndMovement 0x0
@ 81c

Movement_81c: @ 81c
	WalkRightFast 0x2
	MoveUpFast 0x1
	EndMovement 0x0
@ 828

Movement_828: @ 828
	MoveUpFast 0x1
	EndMovement 0x0
@ 830

Movement_830: @ 830
	WalkDownFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 83c

Movement_83c: @ 83c
	WalkDownFast 0x3
	MoveDownFast 0x1
	EndMovement 0x0
@ 848

Movement_848: @ 848
	WalkLeftFast 0x2
	WalkDownFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 858

Movement_858: @ 858
	WalkDownFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 864

Movement_864: @ 864
	MoveDownFast 0x1
	EndMovement 0x0
@ 86c

Movement_86c: @ 86c
	MoveLeftFast 0x1
	EndMovement 0x0
@ 874

Movement_874: @ 874
	MoveUpFast 0x1
	EndMovement 0x0
@ 87c

Movement_87c: @ 87c
	MoveDownFast 0x1
	EndMovement 0x0
@ 884

Movement_884: @ 884
	MoveLeftFast 0x1
	EndMovement 0x0
@ 88c

Movement_88c: @ 88c
	MoveRightFast 0x1
	EndMovement 0x0
@ 894

Movement_894: @ 894
	MoveLeftFast 0x1
	EndMovement 0x0
@ 89c

Movement_89c: @ 89c
	Move_3f 0x2
	MoveLeftFast 0x1
	EndMovement 0x0
@ 8a8

Movement_8a8: @ 8a8
	Move_3f 0x2
	MoveDownFast 0x1
	EndMovement 0x0
@ 8b4

Movement_8b4: @ 8b4
	MoveDownFast 0x1
	EndMovement 0x0
@ 8bc

Movement_8bc: @ 8bc
	MoveDownFast 0x1
	EndMovement 0x0
@ 8c4

Movement_8c4: @ 8c4
	MoveDownFast 0x1
	EndMovement 0x0
@ 8cc


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00001055.bin", 0x8cc, 0x8d8 - 0x8cc


Movement_8d8: @ 8d8
	MoveDownFast 0x1
	EndMovement 0x0
@ 8e0

Script_5: @ 8e0
	LockAll
	Jump Script_branch_8ea
	End
@ 8ea

Script_branch_8ea: @ 8ea
	ApplyMovement 0xff, Movement_918
	ApplyMovement 0x0, Movement_930
	WaitMovement
	Jump Script_branch_904
	End
@ 904

Script_branch_904: @ 904
	SetVar 0x40a4, 0x2
	SetVarHero 0x0
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 918

Movement_918: @ 918
	Move_3f 0x2
	MoveUpFast 0x1
	EndMovement 0x0
@ 924


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00001055.bin", 0x924, 0x930 - 0x924


Movement_930: @ 930
	MoveDownFast 0x1
	EndMovement 0x0
@ 938


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00001055.bin", 0x938, 0x948 - 0x938


Script_6: @ 948
	SetVariableRival 0x1
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1a
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 95e

Script_7: @ 95e
	CheckTime 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_9a5
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_9b6
	If 0x800c, 0x2
	CompareLastResultJump 0x1, Script_branch_9b6
	If 0x800c, 0x3
	CompareLastResultJump 0x1, Script_branch_9c7
	If 0x800c, 0x4
	CompareLastResultJump 0x1, Script_branch_9c7
	End
@ 9a5

Script_branch_9a5: @ 9a5
	PlayFanfare 0x5dc
	LockAll
	Message 0x1d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9b6

Script_branch_9b6: @ 9b6
	PlayFanfare 0x5dc
	LockAll
	Message 0x1e
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9c7

Script_branch_9c7: @ 9c7
	PlayFanfare 0x5dc
	LockAll
	Message 0x1f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9d8

Script_8: @ 9d8
	PlayFanfare 0x5dc
	LockAll
	Message 0x20
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9e9

Script_9: @ 9e9
	PlayFanfare 0x5dc
	LockAll
	Message 0x21
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9fa

Script_10: @ 9fa
	PlayFanfare 0x5dc
	LockAll
	Message 0x22
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a0b


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00001055.bin", 0xa0b, 0xa0c - 0xa0b


@ end_0xa0c
