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
	.hword 0xfd13
@ 32

Script_1: @ 32
	If 0x4071, 0x1
	CompareLastResultCall 0x1, Script_branch_5f
	CheckGender 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_75
	If 0x4000, 0x1
	CompareLastResultJump 0x1, Script_branch_7d
	End
@ 5f

Script_branch_5f: @ 5f
	ChangeOwPosition 0x4, 0xa8, 0x34d
	ReleaseOw 0x4, 0x0
	ChangeOwMovement 0x4, 0xe
	Return
@ 75

Script_branch_75: @ 75
	SetVar 0x4020, 0x61
	End
@ 7d

Script_branch_7d: @ 7d
	SetVar 0x4020, 0x0
	End
@ 85

Script_2: @ 85
	LockAll
	ApplyMovement 0x4, Movement_3ac
	WaitMovement
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x34b
	CompareLastResultJump 0x1, Script_branch_e7
	If 0x8005, 0x34c
	CompareLastResultJump 0x1, Script_branch_ff
	If 0x8005, 0x34d
	CompareLastResultJump 0x1, Script_branch_10f
	If 0x8005, 0x34e
	CompareLastResultJump 0x1, Script_branch_11f
	If 0x8005, 0x34f
	CompareLastResultJump 0x1, Script_branch_137
	If 0x8005, 0x350
	CompareLastResultJump 0x1, Script_branch_14f
	End
@ e7

Script_branch_e7: @ e7
	ApplyMovement 0x4, Movement_3b8
	ApplyMovement 0xff, Movement_47c
	WaitMovement
	Jump Script_branch_169
Script_branch_ff: @ ff
	ApplyMovement 0x4, Movement_3c4
	WaitMovement
	Jump Script_branch_169
Script_branch_10f: @ 10f
	ApplyMovement 0x4, Movement_3d4
	WaitMovement
	Jump Script_branch_169
Script_branch_11f: @ 11f
	ApplyMovement 0x4, Movement_3dc
	ApplyMovement 0xff, Movement_4a0
	WaitMovement
	Jump Script_branch_169
Script_branch_137: @ 137
	ApplyMovement 0x4, Movement_3e8
	ApplyMovement 0xff, Movement_4ac
	WaitMovement
	Jump Script_branch_169
Script_branch_14f: @ 14f
	ApplyMovement 0x4, Movement_3f4
	ApplyMovement 0xff, Movement_4b8
	WaitMovement
	Jump Script_branch_169
	End
@ 169

Script_branch_169: @ 169
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_189
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_195
	End
@ 189

Script_branch_189: @ 189
	SetVarAlter 0x0
	Message 0x0
	Jump Script_branch_1a1
Script_branch_195: @ 195
	SetVarAlter 0x0
	Message 0x2
	Jump Script_branch_1a1
Script_branch_1a1: @ 1a1
	CloseMsgOnKeyPress
	If 0x8005, 0x34b
	CompareLastResultJump 0x1, Script_branch_1f3
	If 0x8005, 0x34c
	CompareLastResultJump 0x1, Script_branch_20b
	If 0x8005, 0x34d
	CompareLastResultJump 0x1, Script_branch_223
	If 0x8005, 0x34e
	CompareLastResultJump 0x1, Script_branch_23b
	If 0x8005, 0x34f
	CompareLastResultJump 0x1, Script_branch_253
	If 0x8005, 0x350
	CompareLastResultJump 0x1, Script_branch_26b
	End
@ 1f3

Script_branch_1f3: @ 1f3
	ApplyMovement 0x4, Movement_400
	ApplyMovement 0xff, Movement_4c4
	WaitMovement
	Jump Script_branch_283
Script_branch_20b: @ 20b
	ApplyMovement 0x4, Movement_40c
	ApplyMovement 0xff, Movement_4d4
	WaitMovement
	Jump Script_branch_283
Script_branch_223: @ 223
	ApplyMovement 0x4, Movement_418
	ApplyMovement 0xff, Movement_4e4
	WaitMovement
	Jump Script_branch_283
Script_branch_23b: @ 23b
	ApplyMovement 0x4, Movement_428
	ApplyMovement 0xff, Movement_4f8
	WaitMovement
	Jump Script_branch_283
Script_branch_253: @ 253
	ApplyMovement 0x4, Movement_43c
	ApplyMovement 0xff, Movement_510
	WaitMovement
	Jump Script_branch_283
Script_branch_26b: @ 26b
	ApplyMovement 0x4, Movement_44c
	ApplyMovement 0xff, Movement_520
	WaitMovement
	Jump Script_branch_283
Script_branch_283: @ 283
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_2a3
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_2ac
	End
@ 2a3

Script_branch_2a3: @ 2a3
	Message 0x1
	Jump Script_branch_2b5
Script_branch_2ac: @ 2ac
	Message 0x3
	Jump Script_branch_2b5
Script_branch_2b5: @ 2b5
	PrepareDoorAnimation 0x5, 0x1a, 0x8, 0xa, 0x4d
	OpenDoor 0x4d
	WaitAction 0x4d
	ClearFlag 0x197
	AddPeople 0x3
	ApplyMovement 0x3, Movement_554
	WaitMovement
	ApplyMovement 0x3, Movement_55c
	WaitMovement
	PlayFanfare 0x602
	Message 0x4
	ApplyMovement 0x3, Movement_564
	WaitMovement
	CallStandard 0x7fa
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x5
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_548
	ApplyMovement 0x4, Movement_470
	ApplyMovement 0x3, Movement_56c
	WaitMovement
	RemovePeople 0x3
	CallStandard 0x7fb
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_344
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_352
	End
@ 344

Script_branch_344: @ 344
	SetVarAlter 0x0
	Message 0x6
	Jump Script_branch_35e
	End
@ 352

Script_branch_352: @ 352
	SetVarAlter 0x0
	Message 0x7
	Jump Script_branch_35e
Script_branch_35e: @ 35e
	CloseMsgOnKeyPress
	ApplyMovement 0x4, Movement_45c
	ApplyMovement 0xff, Movement_530
	WaitMovement
	CloseDoor 0x4d
	WaitAction 0x4d
	WaitClose 0x4d
	RemovePeople 0x4
	SetVar 0x4071, 0x1
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x1a6, 0x0, 0x7, 0xf, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 3ab


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00001059.bin", 0x3ab, 0x3ac - 0x3ab


Movement_3ac: @ 3ac
	Exclamation 0x1
	Move_41 0x1
	EndMovement 0x0
@ 3b8

Movement_3b8: @ 3b8
	WalkLeftFast 0x4
	WalkUpFast 0x1
	EndMovement 0x0
@ 3c4

Movement_3c4: @ 3c4
	WalkLeftFast 0x2
	WalkUpFast 0x1
	WalkLeftFast 0x1
	EndMovement 0x0
@ 3d4

Movement_3d4: @ 3d4
	WalkLeftFast 0x3
	EndMovement 0x0
@ 3dc

Movement_3dc: @ 3dc
	WalkLeftFast 0x4
	SeeDown 0x1
	EndMovement 0x0
@ 3e8

Movement_3e8: @ 3e8
	WalkLeftFast 0x4
	WalkDownFast 0x1
	EndMovement 0x0
@ 3f4

Movement_3f4: @ 3f4
	WalkLeftFast 0x4
	WalkDownFast 0x2
	EndMovement 0x0
@ 400

Movement_400: @ 400
	WalkRightFast 0x5
	MoveUpFast 0x1
	EndMovement 0x0
@ 40c

Movement_40c: @ 40c
	WalkRightFast 0x4
	MoveUpFast 0x1
	EndMovement 0x0
@ 418

Movement_418: @ 418
	WalkUpFast 0x1
	WalkRightFast 0x4
	MoveUpFast 0x1
	EndMovement 0x0
@ 428

Movement_428: @ 428
	WalkRightFast 0x2
	WalkUpFast 0x1
	WalkRightFast 0x3
	MoveUpFast 0x1
	EndMovement 0x0
@ 43c

Movement_43c: @ 43c
	WalkUpFast 0x2
	WalkRightFast 0x5
	MoveUpFast 0x1
	EndMovement 0x0
@ 44c

Movement_44c: @ 44c
	WalkUpFast 0x2
	WalkRightFast 0x5
	MoveUpFast 0x1
	EndMovement 0x0
@ 45c

Movement_45c: @ 45c
	WalkUpFast 0x1
	WalkLeftFast 0x1
	WalkUpFast 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 470

Movement_470: @ 470
	Move_3e 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 47c

Movement_47c: @ 47c
	Move_3f 0x3
	SeeDown 0x1
	EndMovement 0x0
@ 488


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00001059.bin", 0x488, 0x4a0 - 0x488


Movement_4a0: @ 4a0
	Move_3f 0x3
	MoveUpFast 0x1
	EndMovement 0x0
@ 4ac

Movement_4ac: @ 4ac
	Move_3f 0x3
	MoveUpFast 0x1
	EndMovement 0x0
@ 4b8

Movement_4b8: @ 4b8
	Move_3f 0x3
	MoveUpFast 0x1
	EndMovement 0x0
@ 4c4

Movement_4c4: @ 4c4
	WalkDownFast 0x1
	WalkRightFast 0x4
	MoveUpFast 0x1
	EndMovement 0x0
@ 4d4

Movement_4d4: @ 4d4
	WalkRightFast 0x2
	WalkRightFast 0x2
	MoveUpFast 0x1
	EndMovement 0x0
@ 4e4

Movement_4e4: @ 4e4
	WalkRightFast 0x1
	WalkUpFast 0x1
	WalkRightFast 0x3
	MoveUpFast 0x1
	EndMovement 0x0
@ 4f8

Movement_4f8: @ 4f8
	WalkUpFast 0x1
	WalkRightFast 0x2
	WalkUpFast 0x1
	WalkRightFast 0x2
	MoveUpFast 0x1
	EndMovement 0x0
@ 510

Movement_510: @ 510
	WalkUpFast 0x3
	WalkRightFast 0x4
	MoveUpFast 0x1
	EndMovement 0x0
@ 520

Movement_520: @ 520
	WalkUpFast 0x4
	WalkRightFast 0x4
	MoveUpFast 0x1
	EndMovement 0x0
@ 530

Movement_530: @ 530
	Move_3f 0x1
	MoveUpFast 0x1
	Move_3f 0x2
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 548

Movement_548: @ 548
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 554

Movement_554: @ 554
	WalkDownVeryFast  0x1
	EndMovement 0x0
@ 55c

Movement_55c: @ 55c
	MoveDownVeryFast 0x2
	EndMovement 0x0
@ 564

Movement_564: @ 564
	Exclamation 0x1
	EndMovement 0x0
@ 56c

Movement_56c: @ 56c
	WalkRightVeryFast 0x2
	WalkDownVeryFast  0x1
	WalkRightVeryFast 0x7
	EndMovement 0x0
@ 57c

Script_3: @ 57c
	LockAll
	PrepareDoorAnimation 0x5, 0x1a, 0x8, 0xa, 0x4d
	OpenDoor 0x4d
	WaitAction 0x4d
	ClearFlag 0x2c4
	AddPeople 0xe
	ApplyMovement 0xe, Movement_798
	WaitMovement
	SetVarHero 0x0
	Message 0x8
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_7ac
	ApplyMovement 0x4, Movement_7f8
	WaitMovement
	Message 0x9
	SetVar 0x8004, 0x162
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	Message 0xa
	CloseMsgOnKeyPress
	ApplyMovement 0xe, Movement_7a0
	WaitMovement
	CloseDoor 0x4d
	WaitAction 0x4d
	WaitClose 0x4d
	RemovePeople 0xe
	Return2 0x1e, 0x800c
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_610
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_61d
	End
@ 610

Script_branch_610: @ 610
	Message 0xb
	CloseMsgOnKeyPress
	Jump Script_branch_62a
	End
@ 61d

Script_branch_61d: @ 61d
	Message 0xc
	CloseMsgOnKeyPress
	Jump Script_branch_62a
	End
@ 62a

Script_branch_62a: @ 62a
	ApplyMovement 0xff, Movement_7b8
	ApplyMovement 0x4, Movement_800
	WaitMovement
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_65c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_66b
	End
@ 65c

Script_branch_65c: @ 65c
	SetVarAlter 0x0
	SetVarHero 0x1
	Message 0xd
	Jump Script_branch_67a
Script_branch_66b: @ 66b
	SetVarAlter 0x0
	SetVarHero 0x1
	Message 0x11
	Jump Script_branch_67a
Script_branch_67a: @ 67a
	CloseMsgOnKeyPress
	CallStandard 0x800
	ApplyMovement 0x4, Movement_808
	ApplyMovement 0xff, Movement_7c0
	WaitMovement
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_6b2
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_6c1
	End
@ 6b2

Script_branch_6b2: @ 6b2
	SetVarAlter 0x0
	SetVarHero 0x1
	Message 0xe
	Jump Script_branch_6d0
Script_branch_6c1: @ 6c1
	SetVarAlter 0x0
	SetVarHero 0x1
	Message 0x12
	Jump Script_branch_6d0
Script_branch_6d0: @ 6d0
	CloseMsgOnKeyPress
	ApplyMovement 0x4, Movement_814
	ApplyMovement 0xff, Movement_7d0
	WaitMovement
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_704
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_710
	End
@ 704

Script_branch_704: @ 704
	SetVarHero 0x0
	Message 0xf
	Jump Script_branch_71c
Script_branch_710: @ 710
	SetVarHero 0x0
	Message 0x13
	Jump Script_branch_71c
Script_branch_71c: @ 71c
	CloseMsgOnKeyPress
	ApplyMovement 0x4, Movement_820
	ApplyMovement 0xff, Movement_7dc
	WaitMovement
	ApplyMovement 0x4, Movement_828
	WaitMovement
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_75a
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_766
	End
@ 75a

Script_branch_75a: @ 75a
	SetVarHero 0x1
	Message 0x10
	Jump Script_branch_772
Script_branch_766: @ 766
	SetVarHero 0x1
	Message 0x14
	Jump Script_branch_772
Script_branch_772: @ 772
	CloseMsgOnKeyPress
	ApplyMovement 0x4, Movement_830
	ApplyMovement 0xff, Movement_7e4
	WaitMovement
	CallStandard 0x801
	RemovePeople 0x4
	SetVar 0x4071, 0x2
	ReleaseAll
	End
@ 798

Movement_798: @ 798
	MoveDownFast 0x1
	EndMovement 0x0
@ 7a0

Movement_7a0: @ 7a0
	MoveUpFast 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 7ac

Movement_7ac: @ 7ac
	Exclamation 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 7b8

Movement_7b8: @ 7b8
	MoveDownFast 0x1
	EndMovement 0x0
@ 7c0

Movement_7c0: @ 7c0
	WalkDownFast 0x1
	WalkRightFast 0x9
	MoveUpFast 0x1
	EndMovement 0x0
@ 7d0

Movement_7d0: @ 7d0
	WalkRightFast 0xa
	MoveUpFast 0x1
	EndMovement 0x0
@ 7dc

Movement_7dc: @ 7dc
	MoveRightFast 0x1
	EndMovement 0x0
@ 7e4

Movement_7e4: @ 7e4
	Move_3f 0x1
	MoveDownFast 0x1
	Move_3e 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 7f8

Movement_7f8: @ 7f8
	Exclamation 0x1
	EndMovement 0x0
@ 800

Movement_800: @ 800
	WalkUpFast 0x1
	EndMovement 0x0
@ 808

Movement_808: @ 808
	WalkRightFast 0xa
	MoveUpFast 0x1
	EndMovement 0x0
@ 814

Movement_814: @ 814
	WalkRightFast 0xa
	MoveUpFast 0x1
	EndMovement 0x0
@ 820

Movement_820: @ 820
	MoveLeftFast 0x1
	EndMovement 0x0
@ 828

Movement_828: @ 828
	Exclamation 0x1
	EndMovement 0x0
@ 830

Movement_830: @ 830
	WalkDownFast 0x1
	WalkLeftFast 0x5
	WalkUpFast 0xa
	EndMovement 0x0
@ 840

Script_4: @ 840
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x15
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 853

Script_5: @ 853
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x16
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 866

Script_6: @ 866
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x17
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 879

Script_7: @ 879
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x18
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 88c

Script_8: @ 88c
	CallMessageBox 0x19, 0x0, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 8a3

Script_9: @ 8a3
	CallMessageBox 0x1a, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 8ba

Script_10: @ 8ba
	SetVarAlter 0x0
	CallMessageBox 0x1b, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 8d4

Script_11: @ 8d4
	CallMessageBox 0x1c, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 8eb

Script_12: @ 8eb
	CallMessageBox 0x1d, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 902


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00001059.bin", 0x902, 0x904 - 0x902


@ end_0x904
