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
	.hword 0xfd13
@ 72

Script_1: @ 72
	If 0x4077, 0x0
	CompareLastResultCall 0x1, Script_branch_ac
	If 0x4077, 0x3
	CompareLastResultCall 0x4, Script_branch_c2
	CheckGender 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_d8
	If 0x4000, 0x1
	CompareLastResultJump 0x1, Script_branch_e0
	End
@ ac

Script_branch_ac: @ ac
	ChangeOwPosition 0x1f, 0xb1, 0x306
	ReleaseOw 0x1f, 0x1
	ChangeOwMovement 0x1f, 0xf
	Return
@ c2

Script_branch_c2: @ c2
	ChangeOwPosition 0x7, 0xb0, 0x2e3
	ReleaseOw 0x7, 0x2
	ChangeOwMovement 0x7, 0x10
	Return
@ d8

Script_branch_d8: @ d8
	SetVar 0x4020, 0x61
	End
@ e0

Script_branch_e0: @ e0
	SetVar 0x4020, 0x0
	End
@ e8

Script_2: @ e8
	LockAll
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0xad
	CompareLastResultJump 0x1, Script_branch_119
	If 0x8004, 0xae
	CompareLastResultJump 0x1, Script_branch_129
	If 0x8004, 0xaf
	CompareLastResultJump 0x1, Script_branch_139
	End
@ 119

Script_branch_119: @ 119
	ChangeOwPosition 0x7, 0xad, 0x314
	Jump Script_branch_149
	End
@ 129

Script_branch_129: @ 129
	ChangeOwPosition 0x7, 0xae, 0x314
	Jump Script_branch_149
	End
@ 139

Script_branch_139: @ 139
	ChangeOwPosition 0x7, 0xaf, 0x314
	Jump Script_branch_149
	End
@ 149

Script_branch_149: @ 149
	ClearFlag 0x17a
	AddPeople 0x7
	Lock 0x7
	ApplyMovement 0x7, Movement_43c
	WaitMovement
	ApplyMovement 0x7, Movement_44c
	WaitMovement
	CallStandard 0x7f8
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_18d
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_224
	End
@ 18d

Script_branch_18d: @ 18d
	SetVarAlter 0x0
	SetVarHero 0x1
	Message 0x0
	CheckPartyNumber 0x800c
	SetVariableNumber 0x0, 0x800c
	If 0x800c, 0x4
	CompareLastResultCall 0x4, Script_branch_21a
	If 0x800c, 0x3
	CompareLastResultCall 0x3, Script_branch_21f
	SetVarHero 0x0
	SetVariableRival 0x1
	Message 0x3
	Call Function_2db
	Message 0x8
	CloseMsgOnKeyPress
	Call Function_348
	Message 0x9
	Call Function_36e
	Message 0xe
	Call Function_390
	Call Function_3c0
	Message 0x17
	CloseMsgOnKeyPress
	Return2 0x1e, 0x800c
	SetVarHero 0x0
	Call Function_41b
	Message 0x18
	CloseMsgOnKeyPress
	SetVariableRival 0x1
	Call Function_42f
	Message 0x19
	CloseMsgOnKeyPress
	Jump Script_branch_2bb
	End
@ 21a

Script_branch_21a: @ 21a
	Message 0x1
	Return
@ 21f

Script_branch_21f: @ 21f
	Message 0x2
	Return
@ 224

Script_branch_224: @ 224
	SetVarAlter 0x0
	SetVarHero 0x1
	Message 0x4
	CheckPartyNumber 0x800c
	SetVariableNumber 0x0, 0x800c
	If 0x800c, 0x4
	CompareLastResultCall 0x4, Script_branch_2b1
	If 0x800c, 0x3
	CompareLastResultCall 0x3, Script_branch_2b6
	SetVarHero 0x0
	SetVariableRival 0x1
	Message 0x7
	Call Function_2db
	Message 0xa
	CloseMsgOnKeyPress
	Call Function_348
	Message 0xb
	Call Function_36e
	Message 0xf
	Call Function_390
	Call Function_3c0
	Message 0x1a
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	SetVarHero 0x0
	Call Function_41b
	Message 0x1b
	CloseMsgOnKeyPress
	SetVariableRival 0x1
	Call Function_42f
	Message 0x1c
	CloseMsgOnKeyPress
	Jump Script_branch_2bb
	End
@ 2b1

Script_branch_2b1: @ 2b1
	Message 0x5
	Return
@ 2b6

Script_branch_2b6: @ 2b6
	Message 0x6
	Return
@ 2bb

Script_branch_2bb: @ 2bb
	ApplyMovement 0x7, Movement_474
	ApplyMovement 0xff, Movement_4f8
	WaitMovement
	RemovePeople 0x7
	SetVar 0x4077, 0x1
	ReleaseAll
	End
@ 2db

Function_2db: @ 2db
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0xad
	CompareLastResultJump 0x1, Script_branch_30c
	If 0x8004, 0xae
	CompareLastResultJump 0x1, Script_branch_320
	If 0x8004, 0xaf
	CompareLastResultJump 0x1, Script_branch_334
	End
@ 30c

Script_branch_30c: @ 30c
	ApplyMovement 0x7, Movement_454
	ApplyMovement 0xff, Movement_4b4
	WaitMovement
	Return
@ 320

Script_branch_320: @ 320
	ApplyMovement 0x7, Movement_46c
	ApplyMovement 0xff, Movement_4d4
	WaitMovement
	Return
@ 334

Script_branch_334: @ 334
	ApplyMovement 0x7, Movement_460
	ApplyMovement 0xff, Movement_4c4
	WaitMovement
	Return
@ 348

Function_348: @ 348
	ApplyMovement 0x1f, Movement_518
	WaitMovement
	ApplyMovement 0x1f, Movement_544
	ApplyMovement 0x7, Movement_47c
	ApplyMovement 0xff, Movement_4dc
	WaitMovement
	Return
@ 36e

Function_36e: @ 36e
	ApplyMovement 0x1f, Movement_550
	WaitMovement
	CallStandard 0x807
	Message 0xc
	Message 0xd
	CloseMsgOnKeyPress
	ApplyMovement 0x7, Movement_484
	WaitMovement
	Return
@ 390

Function_390: @ 390
	Message 0x10
	Message 0x11
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_3b6
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_3bb
	End
@ 3b6

Script_branch_3b6: @ 3b6
	Message 0x12
	Return
@ 3bb

Script_branch_3bb: @ 3bb
	Message 0x13
	Return
@ 3c0

Function_3c0: @ 3c0
	Message 0x14
	SetVar 0x8004, 0x1d1
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	Message 0x15
	CloseMsgOnKeyPress
	ApplyMovement 0x1f, Movement_55c
	WaitMovement
	Message 0x16
	CloseMsgOnKeyPress
	ApplyMovement 0x7, Movement_4a4
	ApplyMovement 0xff, Movement_504
	ApplyMovement 0x1f, Movement_574
	WaitMovement
	SetOwPosition 0x1f, 0xba, 0x0, 0x2f4, 0x1
	ChangeOwPosition 0x1f, 0xba, 0x2f4
	CallStandard 0x808
	Return
@ 41b

Function_41b: @ 41b
	ApplyMovement 0x7, Movement_48c
	ApplyMovement 0xff, Movement_4ec
	WaitMovement
	Return
@ 42f

Function_42f: @ 42f
	ApplyMovement 0x7, Movement_498
	WaitMovement
	Return
@ 43b


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000002.bin", 0x43b, 0x43c - 0x43b


Movement_43c: @ 43c
	WalkDownFast 0x4
	Exclamation 0x1
	Move_41 0x1
	EndMovement 0x0
@ 44c

Movement_44c: @ 44c
	WalkDownFast 0x3
	EndMovement 0x0
@ 454

Movement_454: @ 454
	WalkRightFast 0x1
	WalkUpFast 0x12
	EndMovement 0x0
@ 460

Movement_460: @ 460
	WalkLeftFast 0x1
	WalkUpFast 0x12
	EndMovement 0x0
@ 46c

Movement_46c: @ 46c
	WalkUpFast 0x12
	EndMovement 0x0
@ 474

Movement_474: @ 474
	WalkDownFast 0x9
	EndMovement 0x0
@ 47c

Movement_47c: @ 47c
	WalkUpFast 0x2
	EndMovement 0x0
@ 484

Movement_484: @ 484
	MoveUpFast 0x1
	EndMovement 0x0
@ 48c

Movement_48c: @ 48c
	WalkDownFast 0x1
	WalkLeftFast 0x2
	EndMovement 0x0
@ 498

Movement_498: @ 498
	WalkUpFast 0x1
	WalkRightFast 0x2
	EndMovement 0x0
@ 4a4

Movement_4a4: @ 4a4
	MoveRightFast 0x1
	Move_3f 0x4
	MoveUpFast 0x1
	EndMovement 0x0
@ 4b4

Movement_4b4: @ 4b4
	WalkUpFast 0x1
	WalkRightFast 0x1
	WalkUpFast 0x11
	EndMovement 0x0
@ 4c4

Movement_4c4: @ 4c4
	WalkUpFast 0x1
	WalkLeftFast 0x1
	WalkUpFast 0x11
	EndMovement 0x0
@ 4d4

Movement_4d4: @ 4d4
	WalkUpFast 0x12
	EndMovement 0x0
@ 4dc

Movement_4dc: @ 4dc
	WalkUpFast 0x2
	WalkRightFast 0x1
	WalkUpFast 0x1
	EndMovement 0x0
@ 4ec

Movement_4ec: @ 4ec
	Move_3e 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 4f8

Movement_4f8: @ 4f8
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 504

Movement_504: @ 504
	Move_3f 0x1
	MoveRightFast 0x1
	Move_3f 0x3
	MoveUpFast 0x1
	EndMovement 0x0
@ 518

Movement_518: @ 518
	MoveLeftVeryFast 0x1
	Move_3f 0x2
	MoveDownVeryFast 0x1
	Move_3f 0x1
	WalkLeft 0x1
	WalkLeftVeryFast 0x5
	MoveRightVeryFast 0x1
	Move_3f 0x1
	MoveUpVeryFast 0x1
	Move_3f 0x1
	EndMovement 0x0
@ 544

Movement_544: @ 544
	WalkRight 0x1
	WalkRightVeryFast 0x2
	EndMovement 0x0
@ 550

Movement_550: @ 550
	MoveDownVeryFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 55c

Movement_55c: @ 55c
	MoveLeftVeryFast 0x1
	Move_3f 0x1
	MoveRightVeryFast 0x1
	Move_3f 0x2
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ 574

Movement_574: @ 574
	WalkRightVeryFast 0x3
	MoveLeftVeryFast 0x1
	Move_3f 0x1
	WalkUp 0x1
	WalkUpVeryFast  0x7
	EndMovement 0x0
@ 58c

Script_12: @ 58c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_5b2
	Message 0x1d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5b2

Script_branch_5b2: @ 5b2
	Message 0x1e
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5bd

Script_13: @ 5bd
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5c
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5d0

Script_19: @ 5d0
	LockAll
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x30b
	CompareLastResultJump 0x1, Script_branch_601
	If 0x8005, 0x30c
	CompareLastResultJump 0x1, Script_branch_62a
	If 0x8005, 0x30d
	CompareLastResultJump 0x1, Script_branch_653
	End
@ 601

Script_branch_601: @ 601
	ApplyMovement 0x1a, Movement_680
	WaitMovement
	Message 0x5b
	CloseMsgOnKeyPress
	ApplyMovement 0x1a, Movement_6b0
	ApplyMovement 0xff, Movement_6f8
	WaitMovement
	Jump Script_branch_67c
	End
@ 62a

Script_branch_62a: @ 62a
	ApplyMovement 0x1a, Movement_690
	WaitMovement
	Message 0x5b
	CloseMsgOnKeyPress
	ApplyMovement 0x1a, Movement_6c8
	ApplyMovement 0xff, Movement_6f8
	WaitMovement
	Jump Script_branch_67c
	End
@ 653

Script_branch_653: @ 653
	ApplyMovement 0x1a, Movement_6a0
	WaitMovement
	Message 0x5b
	CloseMsgOnKeyPress
	ApplyMovement 0x1a, Movement_6e0
	ApplyMovement 0xff, Movement_6f8
	WaitMovement
	Jump Script_branch_67c
	End
@ 67c

Script_branch_67c: @ 67c
	ReleaseAll
	End
@ 680

Movement_680: @ 680
	Exclamation 0x1
	WalkDownFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 690

Movement_690: @ 690
	Exclamation 0x1
	WalkDownFast 0x2
	MoveRightFast 0x1
	EndMovement 0x0
@ 6a0

Movement_6a0: @ 6a0
	Exclamation 0x1
	WalkDownFast 0x3
	MoveRightFast 0x1
	EndMovement 0x0
@ 6b0

Movement_6b0: @ 6b0
	WalkRightFast 0x1
	Move_3f 0x2
	WalkLeftFast 0x1
	WalkUpFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 6c8

Movement_6c8: @ 6c8
	WalkRightFast 0x1
	Move_3f 0x2
	WalkLeftFast 0x1
	WalkUpFast 0x2
	MoveDownFast 0x1
	EndMovement 0x0
@ 6e0

Movement_6e0: @ 6e0
	WalkRightFast 0x1
	Move_3f 0x2
	WalkLeftFast 0x1
	WalkUpFast 0x3
	MoveDownFast 0x1
	EndMovement 0x0
@ 6f8

Movement_6f8: @ 6f8
	WalkRightFast 0x1
	EndMovement 0x0
@ 700

Script_3: @ 700
	LockAll
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x2f5
	CompareLastResultJump 0x1, Script_branch_73e
	If 0x8005, 0x2f6
	CompareLastResultJump 0x1, Script_branch_758
	If 0x8005, 0x2f7
	CompareLastResultJump 0x1, Script_branch_772
	If 0x8005, 0x2f8
	CompareLastResultJump 0x1, Script_branch_78c
	End
@ 73e

Script_branch_73e: @ 73e
	ApplyMovement 0xff, Movement_894
	ApplyMovement 0x1f, Movement_8b4
	WaitMovement
	Jump Script_branch_7a6
	End
@ 758

Script_branch_758: @ 758
	ApplyMovement 0xff, Movement_894
	ApplyMovement 0x1f, Movement_8cc
	WaitMovement
	Jump Script_branch_7a6
	End
@ 772

Script_branch_772: @ 772
	ApplyMovement 0xff, Movement_894
	ApplyMovement 0x1f, Movement_8e4
	WaitMovement
	Jump Script_branch_7a6
	End
@ 78c

Script_branch_78c: @ 78c
	ApplyMovement 0xff, Movement_894
	ApplyMovement 0x1f, Movement_8fc
	WaitMovement
	Jump Script_branch_7a6
	End
@ 7a6

Script_branch_7a6: @ 7a6
	Call Function_7fc
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_8ac
	ApplyMovement 0x1f, Movement_914
	WaitMovement
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x2f5
	CompareLastResultJump 0x1, Script_branch_846
	If 0x8005, 0x2f6
	CompareLastResultJump 0x1, Script_branch_858
	If 0x8005, 0x2f7
	CompareLastResultJump 0x1, Script_branch_86a
	If 0x8005, 0x2f8
	CompareLastResultJump 0x1, Script_branch_87c
	End
@ 7fc

Function_7fc: @ 7fc
	CheckFlag 0xf1
	CompareLastResultJump 0x0, Script_branch_817
	CheckFlag 0xf3
	CompareLastResultJump 0x0, Script_branch_81c
	Message 0x23
	Return
@ 817

Script_branch_817: @ 817
	Message 0x20
	Return
@ 81c

Script_branch_81c: @ 81c
	Message 0x22
	Return
@ 821

Function_821: @ 821
	CheckFlag 0xf1
	CompareLastResultJump 0x0, Script_branch_83c
	CheckFlag 0xf3
	CompareLastResultJump 0x0, Script_branch_841
	Message 0x23
	Return
@ 83c

Script_branch_83c: @ 83c
	Message 0x1f
	Return
@ 841

Script_branch_841: @ 841
	Message 0x21
	Return
@ 846

Script_branch_846: @ 846
	ApplyMovement 0x1f, Movement_924
	WaitMovement
	Jump Script_branch_88e
	End
@ 858

Script_branch_858: @ 858
	ApplyMovement 0x1f, Movement_930
	WaitMovement
	Jump Script_branch_88e
	End
@ 86a

Script_branch_86a: @ 86a
	ApplyMovement 0x1f, Movement_93c
	WaitMovement
	Jump Script_branch_88e
	End
@ 87c

Script_branch_87c: @ 87c
	ApplyMovement 0x1f, Movement_948
	WaitMovement
	Jump Script_branch_88e
	End
@ 88e

Script_branch_88e: @ 88e
	ReleaseAll
	End
@ 892


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000002.bin", 0x892, 0x894 - 0x892


Movement_894: @ 894
	Move_3f 0x5
	MoveLeftFast 0x1
	EndMovement 0x0
@ 8a0

Movement_8a0: @ 8a0
	Move_3f 0x5
	SeeLeft 0x1
	EndMovement 0x0
@ 8ac

Movement_8ac: @ 8ac
	WalkLeftFast 0x1
	EndMovement 0x0
@ 8b4

Movement_8b4: @ 8b4
	SeeDown 0x1
	Exclamation 0x1
	Move_41 0x1
	WalkDownFast 0x1
	WalkRightFast 0x1
	EndMovement 0x0
@ 8cc

Movement_8cc: @ 8cc
	SeeDown 0x1
	Exclamation 0x1
	Move_41 0x1
	WalkDownFast 0x2
	WalkRightFast 0x1
	EndMovement 0x0
@ 8e4

Movement_8e4: @ 8e4
	SeeDown 0x1
	Exclamation 0x1
	Move_41 0x1
	WalkDownFast 0x3
	WalkRightFast 0x1
	EndMovement 0x0
@ 8fc

Movement_8fc: @ 8fc
	SeeDown 0x1
	Exclamation 0x1
	Move_41 0x1
	WalkDownFast 0x4
	WalkRightFast 0x1
	EndMovement 0x0
@ 914

Movement_914: @ 914
	Move_47 0x1
	WalkLeftFast 0x1
	Move_48 0x1
	EndMovement 0x0
@ 924

Movement_924: @ 924
	WalkUpFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 930

Movement_930: @ 930
	WalkUpFast 0x2
	MoveDownFast 0x1
	EndMovement 0x0
@ 93c

Movement_93c: @ 93c
	WalkUpFast 0x3
	MoveDownFast 0x1
	EndMovement 0x0
@ 948

Movement_948: @ 948
	WalkUpFast 0x4
	MoveDownFast 0x1
	EndMovement 0x0
@ 954

Script_5: @ 954
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xf3
	CompareLastResultJump 0x1, Script_branch_97f
	Call Function_821
	Cmd_30
	CloseMsgOnKeyPress
	ApplyMovement 0x1f, Movement_9d4
	WaitMovement
	ReleaseAll
	End
@ 97f

Script_branch_97f: @ 97f
	Message 0x23
	Cmd_30
	CloseMsgOnKeyPress
	ApplyMovement 0x1f, Movement_9d4
	WaitMovement
	ReleaseAll
	End
@ 994

Function_994: @ 994
	CheckItem 0x1b5, 0x1, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_9bd
	Message 0x24
	CloseMsgOnKeyPress
	ApplyMovement 0x1f, Movement_1558
	WaitMovement
	Message 0x26
	Return
@ 9bd

Script_branch_9bd: @ 9bd
	Message 0x25
	CloseMsgOnKeyPress
	ApplyMovement 0x1f, Movement_1558
	WaitMovement
	Message 0x26
	Return
@ 9d1


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000002.bin", 0x9d1, 0x9d4 - 0x9d1


Movement_9d4: @ 9d4
	SeeDown 0x1
	EndMovement 0x0
@ 9dc

Script_4: @ 9dc
	LockAll
	ApplyMovement 0x12, Movement_e94
	WaitMovement
	Message 0x40
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8000, 0x8001
	If 0x8000, 0xad
	CompareLastResultJump 0x1, Script_branch_a1c
	If 0x8000, 0xae
	CompareLastResultJump 0x1, Script_branch_a36
	If 0x8000, 0xaf
	CompareLastResultJump 0x1, Script_branch_a50
	End
@ a1c

Script_branch_a1c: @ a1c
	ApplyMovement 0x10, Movement_ebc
	ApplyMovement 0xff, Movement_dd0
	WaitMovement
	Jump Script_branch_a6a
	End
@ a36

Script_branch_a36: @ a36
	ApplyMovement 0x10, Movement_ebc
	ApplyMovement 0xff, Movement_de4
	WaitMovement
	Jump Script_branch_a6a
	End
@ a50

Script_branch_a50: @ a50
	ApplyMovement 0x10, Movement_ebc
	ApplyMovement 0xff, Movement_df8
	WaitMovement
	Jump Script_branch_a6a
	End
@ a6a

Script_branch_a6a: @ a6a
	SetVarHero 0x0
	SetVarAlter 0x1
	Message 0x41
	ApplyMovement 0x12, Movement_e94
	WaitMovement
	Message 0x42
	ApplyMovement 0x10, Movement_ec8
	WaitMovement
	Message 0x43
	ApplyMovement 0x10, Movement_ed0
	WaitMovement
	Message 0x44
	ApplyMovement 0x11, Movement_e9c
	ApplyMovement 0x12, Movement_e9c
	WaitMovement
	Message 0x45
	Message 0x46
	ApplyMovement 0x7, Movement_e44
	WaitMovement
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_adc
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_aed
	End
@ adc

Script_branch_adc: @ adc
	SetVarAlter 0x0
	SetVarHero 0x1
	Message 0x47
	Jump Script_branch_afe
	End
@ aed

Script_branch_aed: @ aed
	SetVarAlter 0x0
	SetVarHero 0x1
	Message 0x48
	Jump Script_branch_afe
	End
@ afe

Script_branch_afe: @ afe
	CloseMsgOnKeyPress
	ApplyMovement 0x10, Movement_f00
	WaitMovement
	ApplyMovement 0x7, Movement_e4c
	ApplyMovement 0xff, Movement_f30
	WaitMovement
	Call Function_baa
	DoubleBattle 0x8004, 0x19e, 0x19f
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_db7
	ApplyMovement 0x12, Movement_eb4
	WaitMovement
	Message 0x49
	CloseMsgOnKeyPress
	ApplyMovement 0x11, Movement_ea4
	ApplyMovement 0x12, Movement_eac
	WaitMovement
	RemovePeople 0x11
	RemovePeople 0x12
	SetFlag 0x19c
	ApplyMovement 0x10, Movement_ef8
	ApplyMovement 0x7, Movement_e54
	WaitMovement
	SetVarHero 0x0
	Message 0x4a
	ApplyMovement 0x7, Movement_e60
	WaitMovement
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_c30
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_c41
	End
@ baa

Function_baa: @ baa
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_bca
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_bfc
	End
@ bca

Script_branch_bca: @ bca
	StoreStarter 0x800c
	SetVar 0x8004, 0x268
	If 0x800c, 0x186
	CompareLastResultJump 0x1, Script_branch_c2e
	SetVar 0x8004, 0x269
	If 0x800c, 0x189
	CompareLastResultJump 0x1, Script_branch_c2e
	SetVar 0x8004, 0x26a
	Return
@ bfc

Script_branch_bfc: @ bfc
	StoreStarter 0x800c
	SetVar 0x8004, 0x265
	If 0x800c, 0x186
	CompareLastResultJump 0x1, Script_branch_c2e
	SetVar 0x8004, 0x266
	If 0x800c, 0x189
	CompareLastResultJump 0x1, Script_branch_c2e
	SetVar 0x8004, 0x267
	Return
@ c2e

Script_branch_c2e: @ c2e
	Return
@ c30

Script_branch_c30: @ c30
	SetVarAlter 0x0
	SetVarHero 0x1
	Message 0x4b
	Jump Script_branch_c52
	End
@ c41

Script_branch_c41: @ c41
	SetVarAlter 0x0
	SetVarHero 0x1
	Message 0x4c
	Jump Script_branch_c52
	End
@ c52

Script_branch_c52: @ c52
	SetVarHero 0x0
	Message 0x4d
	CloseMsgOnKeyPress
	ApplyMovement 0x7, Movement_e68
	ApplyMovement 0x10, Movement_ed8
	ApplyMovement 0xff, Movement_e08
	WaitMovement
	Jump Script_branch_c7c
	End
@ c7c

Script_branch_c7c: @ c7c
	RemovePeople 0x7
	RemovePeople 0x10
	ClearFlag 0x198
	SetVar 0x4077, 0x4
	SetVar 0x4076, 0x2
	SetVar 0x4079, 0x3
	RemovePeople 0x18
	RemovePeople 0x19
	RemovePeople 0x1b
	ChangeOwPosition 0x1e, 0xae, 0x2ee
	ChangeOwMovement 0x1e, 0xe
	ClearFlag 0x18b
	AddPeople 0x1e
	Lock 0x1e
	ApplyMovement 0x1e, Movement_dc0
	WaitMovement
	Message 0x4e
	Call Function_cf0
	Message 0x4f
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	ApplyMovement 0x1e, Movement_dc8
	WaitMovement
	RemovePeople 0x1e
	ReleaseAll
	End
@ cf0

Function_cf0: @ cf0
	SetVar 0x8004, 0x1b3
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	SetFlag 0xf2
	Call Function_d58
	Call Function_d58
	Call Function_d58
	Call Function_d58
	Call Function_d58
	Call Function_d72
	Call Function_d72
	Call Function_d72
	Call Function_d72
	Call Function_d72
	GiveAccessories2 0x0
	SetVar 0x4001, 0x270f
	Call Function_d8c
	Call Function_d8c
	Return
@ d58

Function_d58: @ d58
	CheckIdPlayer 0x800c, 0x6
	SetVar 0x8004, 0x0
	SetValue 0x8004, 0x800c
	GiveAccessories 0x8004, 0x1
	Return
@ d72

Function_d72: @ d72
	CheckIdPlayer 0x800c, 0x6
	SetVar 0x8004, 0x12
	SetValue 0x8004, 0x800c
	GiveAccessories 0x8004, 0x1
	Return
@ d8c

Function_d8c: @ d8c
Script_branch_d8c: @ d8c
	CheckIdPlayer 0x800c, 0x8
	If2 0x4001, 0x800c
	CompareLastResultJump 0x1, Function_d8c
	CopyVar 0x4001, 0x800c
	SetVar 0x8004, 0x1
	SetValue 0x8004, 0x800c
	GiveAccessories2 0x8004
	Return
@ db7

Script_branch_db7: @ db7
	LostGoPc
	ReleaseAll
	End
@ dbd


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000002.bin", 0xdbd, 0xdc0 - 0xdbd


Movement_dc0: @ dc0
	WalkUpFast 0x8
	EndMovement 0x0
@ dc8

Movement_dc8: @ dc8
	WalkDownFast 0x8
	EndMovement 0x0
@ dd0

Movement_dd0: @ dd0
	Move_3f 0x2
	WalkUpFast 0x1
	WalkRightFast 0x2
	WalkUpFast 0x1
	EndMovement 0x0
@ de4

Movement_de4: @ de4
	Move_3f 0x2
	WalkUpFast 0x1
	WalkRightFast 0x1
	WalkUpFast 0x1
	EndMovement 0x0
@ df8

Movement_df8: @ df8
	Move_3f 0x2
	WalkUpFast 0x2
	MoveUpFast 0x1
	EndMovement 0x0
@ e08

Movement_e08: @ e08
	Move_3f 0x1
	MoveRightFast 0x1
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ e1c


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000002.bin", 0xe1c, 0xe44 - 0xe1c


Movement_e44: @ e44
	MoveDownFast 0x1
	EndMovement 0x0
@ e4c

Movement_e4c: @ e4c
	WalkLeftFast 0x1
	EndMovement 0x0
@ e54

Movement_e54: @ e54
	WalkLeftFast 0x1
	WalkDownFast 0x1
	EndMovement 0x0
@ e60

Movement_e60: @ e60
	MoveDownFast 0x1
	EndMovement 0x0
@ e68

Movement_e68: @ e68
	WalkRightFast 0x1
	WalkDownFast 0x9
	EndMovement 0x0
@ e74


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000002.bin", 0xe74, 0xe94 - 0xe74


Movement_e94: @ e94
	MoveRightFast 0x1
	EndMovement 0x0
@ e9c

Movement_e9c: @ e9c
	MoveRightVeryFast 0x2
	EndMovement 0x0
@ ea4

Movement_ea4: @ ea4
	WalkUpVeryFast  0x9
	EndMovement 0x0
@ eac

Movement_eac: @ eac
	WalkUpVeryFast  0xa
	EndMovement 0x0
@ eb4

Movement_eb4: @ eb4
	MoveRightFast 0x1
	EndMovement 0x0
@ ebc

Movement_ebc: @ ebc
	MoveDownFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ ec8

Movement_ec8: @ ec8
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ ed0

Movement_ed0: @ ed0
	MoveDownFast 0x1
	EndMovement 0x0
@ ed8

Movement_ed8: @ ed8
	WalkDownFast 0x9
	EndMovement 0x0
@ ee0


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000002.bin", 0xee0, 0xef8 - 0xee0


Movement_ef8: @ ef8
	MoveDownFast 0x1
	EndMovement 0x0
@ f00

Movement_f00: @ f00
	MoveLeftFast 0x1
	EndMovement 0x0
@ f08


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000002.bin", 0xf08, 0xf30 - 0xf08


Movement_f30: @ f30
	WalkLeftFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ f3c

Script_6: @ f3c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x50
	Multi3 0x1d, 0xb, 0x0, 0x0, 0x800c
	Cmd_33a 0x1
	TxtMsgScrpMulti 0x2d, 0xff, 0x0
	TxtMsgScrpMulti 0x2e, 0xff, 0x1
	TxtMsgScrpMulti 0x2f, 0xff, 0x2
	CloseMulti4
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump 0x1, Script_branch_f97
	If 0x8008, 0x1
	CompareLastResultJump 0x1, Script_branch_fa2
	Message 0x53
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ f97

Script_branch_f97: @ f97
	Message 0x51
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ fa2

Script_branch_fa2: @ fa2
	Message 0x52
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ fad

Script_7: @ fad
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x54
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ fc0

Script_10: @ fc0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x57
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ fd3

Script_8: @ fd3
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x55
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ fe6

Script_11: @ fe6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x58
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1011
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_101c
	End
@ 1011

Script_branch_1011: @ 1011
	Message 0x59
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 101c

Script_branch_101c: @ 101c
	Message 0x5a
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1027

Script_9: @ 1027
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x56
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 103a

Script_22: @ 103a
	CallMessageBox 0x5f, 0x0, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 1051

Script_23: @ 1051
	CallMessageBox 0x60, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 1068

Script_24: @ 1068
	CallMessageBox 0x61, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 107f

Script_25: @ 107f
	CallMessageBox 0x62, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 1096

Script_26: @ 1096
	CallMessageBox 0x63, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 10ad

Script_27: @ 10ad
	CallMessageBox 0x64, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 10c4

Script_17: @ 10c4
	LockAll
	ApplyMovement 0x17, Movement_1178
	ApplyMovement 0xff, Movement_1170
	WaitMovement
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0xac
	CompareLastResultCall 0x1, Script_branch_1133
	If 0x8004, 0xad
	CompareLastResultCall 0x1, Script_branch_113f
	If 0x8004, 0xae
	CompareLastResultCall 0x1, Script_branch_114b
	If 0x8004, 0xaf
	CompareLastResultCall 0x1, Script_branch_1157
	If 0x8004, 0xb0
	CompareLastResultCall 0x1, Script_branch_1163
	Message 0x27
	SetVar 0x40e7, 0x2
	Message 0x28
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1133

Script_branch_1133: @ 1133
	ApplyMovement 0x17, Movement_1184
	WaitMovement
	Return
@ 113f

Script_branch_113f: @ 113f
	ApplyMovement 0x17, Movement_1194
	WaitMovement
	Return
@ 114b

Script_branch_114b: @ 114b
	ApplyMovement 0x17, Movement_11a4
	WaitMovement
	Return
@ 1157

Script_branch_1157: @ 1157
	ApplyMovement 0x17, Movement_11ac
	WaitMovement
	Return
@ 1163

Script_branch_1163: @ 1163
	ApplyMovement 0x17, Movement_11bc
	WaitMovement
	Return
@ 116f


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000002.bin", 0x116f, 0x1170 - 0x116f


Movement_1170: @ 1170
	SeeUp 0x1
	EndMovement 0x0
@ 1178

Movement_1178: @ 1178
	MoveDownFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 1184

Movement_1184: @ 1184
	WalkDownFast 0x2
	WalkLeftFast 0x2
	WalkDownFast 0x2
	EndMovement 0x0
@ 1194

Movement_1194: @ 1194
	WalkDownFast 0x2
	WalkLeftFast 0x1
	WalkDownFast 0x2
	EndMovement 0x0
@ 11a4

Movement_11a4: @ 11a4
	WalkDownFast 0x4
	EndMovement 0x0
@ 11ac

Movement_11ac: @ 11ac
	WalkDownFast 0x2
	WalkRightFast 0x1
	WalkDownFast 0x2
	EndMovement 0x0
@ 11bc

Movement_11bc: @ 11bc
	WalkDownFast 0x2
	WalkRightFast 0x2
	WalkDownFast 0x2
	EndMovement 0x0
@ 11cc

Script_18: @ 11cc
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVar 0x8004, 0x0
	Call Function_11f8
	If 0x8004, 0x3
	CompareLastResultJump 0x1, Script_branch_1223
	Message 0x29
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 11f8

Function_11f8: @ 11f8
	CheckFlag 0xed
	CompareLastResultCall 0x1, Script_branch_121b
	CheckFlag 0xee
	CompareLastResultCall 0x1, Script_branch_121b
	CheckFlag 0xef
	CompareLastResultCall 0x1, Script_branch_121b
	Return
@ 121b

Script_branch_121b: @ 121b
	SetValue 0x8004, 0x1
	Return
@ 1223

Script_branch_1223: @ 1223
	Message 0x2a
	GiveItem 0x1cc, 0x1, 0x800c
	GiveItem 0x1cd, 0x1, 0x800c
	GiveItem 0x1ce, 0x1, 0x800c
	GivePoketch
	SetVar 0x4077, 0x2
	ActPktchAppl 0x0
	ActPktchAppl 0x1
	ActPktchAppl 0x3
	ActPktchAppl 0x4
	SetVarHero 0x0
	Message 0x2b
	Soundfr 0x486
	Cmd_4f
	Message 0x2c
	CloseMsgOnKeyPress
	CheckFacePosition 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_12a1
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_12bb
	If 0x800c, 0x2
	CompareLastResultJump 0x1, Script_branch_12a1
	If 0x800c, 0x3
	CompareLastResultJump 0x1, Script_branch_12a1
	End
@ 12a1

Script_branch_12a1: @ 12a1
	ApplyMovement 0x17, Movement_12fc
	ApplyMovement 0xff, Movement_1314
	WaitMovement
	Jump Script_branch_12d5
	End
@ 12bb

Script_branch_12bb: @ 12bb
	ApplyMovement 0x17, Movement_12f0
	ApplyMovement 0xff, Movement_1304
	WaitMovement
	Jump Script_branch_12d5
	End
@ 12d5

Script_branch_12d5: @ 12d5
	RemovePeople 0x17
	SetFlag 0xf3
	ClearFlag 0x1f7
	RemovePeople 0x1f
	SetFlag 0x181
	ReleaseAll
	End
@ 12ed


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000002.bin", 0x12ed, 0x12f0 - 0x12ed


Movement_12f0: @ 12f0
	WalkLeftFast 0x1
	WalkUpFast 0x9
	EndMovement 0x0
@ 12fc

Movement_12fc: @ 12fc
	WalkUpFast 0x9
	EndMovement 0x0
@ 1304

Movement_1304: @ 1304
	Move_3f 0x1
	MoveLeftFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 1314

Movement_1314: @ 1314
	Move_3f 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 1320

Script_14: @ 1320
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xed
	CompareLastResultJump 0x1, Script_branch_138c
	Message 0x2d
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1356
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_137d
	End
@ 1356

Script_branch_1356: @ 1356
	PlayFanfare 0x5f1
	Message 0x2e
	Message 0x30
	Message 0x31
	SetVar 0x8004, 0x1cc
	SetVar 0x8005, 0x1
	SetFlag 0xed
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 137d

Script_branch_137d: @ 137d
	PlayFanfare 0x5f3
	Message 0x2f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 138c

Script_branch_138c: @ 138c
	Message 0x32
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1397

Script_15: @ 1397
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xee
	CompareLastResultJump 0x1, Script_branch_1403
	Message 0x33
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_13cd
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_13f4
	End
@ 13cd

Script_branch_13cd: @ 13cd
	PlayFanfare 0x5f1
	Message 0x34
	Message 0x36
	Message 0x37
	SetVar 0x8004, 0x1cd
	SetVar 0x8005, 0x1
	SetFlag 0xee
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 13f4

Script_branch_13f4: @ 13f4
	PlayFanfare 0x5f3
	Message 0x35
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1403

Script_branch_1403: @ 1403
	Message 0x38
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 140e

Script_16: @ 140e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x40e7, 0x2
	CompareLastResultJump 0x0, Script_branch_149e
	CheckFlag 0xef
	CompareLastResultJump 0x1, Script_branch_1493
	Message 0x39
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1451
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_1484
	End
@ 1451

Script_branch_1451: @ 1451
	PlayFanfare 0x5f1
	Message 0x3a
	Message 0x3c
	Message 0x3d
	SetOwPosition 0x17, 0xae, 0x1, 0x303, 0x1
	SetVar 0x8004, 0x1ce
	SetVar 0x8005, 0x1
	SetFlag 0xef
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1484

Script_branch_1484: @ 1484
	PlayFanfare 0x5f3
	Message 0x3b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1493

Script_branch_1493: @ 1493
	Message 0x3f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 149e

Script_branch_149e: @ 149e
	Message 0x3e
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 14a9

Script_20: @ 14a9
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 14bc

Script_21: @ 14bc
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5e
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 14cf

Script_28: @ 14cf
	LockAll
	CheckSpritePosition 0x8004, 0x8005
	ChangeOwPosition 0x1f, 0xb3, 0x8005
	ReleaseOw 0x1f, 0x3
	ChangeOwMovement 0x1f, 0x11
	ClearFlag 0x181
	AddPeople 0x1f
	ApplyMovement 0x1f, Movement_1538
	WaitMovement
	CallStandard 0x807
	ApplyMovement 0x1f, Movement_1544
	ApplyMovement 0xff, Movement_8a0
	WaitMovement
	Call Function_994
	CloseMsgOnKeyPress
	ApplyMovement 0x1f, Movement_154c
	WaitMovement
	RemovePeople 0x1f
	CallStandard 0x808
	SetVar 0x4076, 0x2
	ReleaseAll
	End
@ 1537


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000002.bin", 0x1537, 0x1538 - 0x1537


Movement_1538: @ 1538
	WalkRight 0x2
	Exclamation 0x1
	EndMovement 0x0
@ 1544

Movement_1544: @ 1544
	WalkRightVeryFast 0x6
	EndMovement 0x0
@ 154c

Movement_154c: @ 154c
	WalkLeft 0x1
	WalkLeftVeryFast 0x8
	EndMovement 0x0
@ 1558

Movement_1558: @ 1558
	MoveLeftFast 0x1
	Move_3f 0x2
	MoveRightFast 0x1
	EndMovement 0x0
@ 1568

@ end_0x1568
