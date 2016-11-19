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
	.hword 0xfd13
@ b2

Script_1: @ b2
	Cmd_2f0
	CheckGender 0x4000
	If 0x4000, 0x0
	CompareLastResultCall EQUAL, Script_branch_1ef
	If 0x4000, 0x1
	CompareLastResultCall EQUAL, Script_branch_1f7
	CheckFlag 0x9ac
	CompareLastResultJump EQUAL, Script_branch_1ed
	SetFlag 0x2a7
	SetFlag 0x2a8
	SetFlag 0x2a9
	SetFlag 0x2ab
	SetFlag 0x2ac
	SetFlag 0x2ae
	SetFlag 0x2b0
	SetFlag 0x2b1
	SetFlag 0x2b3
	SetFlag 0x2b4
	SetFlag 0x2b6
	SetFlag 0x2b7
	SetFlag 0x2b8
	SetFlag 0x2b9
	If 0x404e, 0xff
	CompareLastResultJump EQUAL, Script_branch_1ff
	CopyVar 0x400f, 0x404e
	If 0x404e, 0x0
	CompareLastResultCall EQUAL, Script_branch_201
	If 0x404e, 0x1
	CompareLastResultCall EQUAL, Script_branch_207
	If 0x404e, 0x2
	CompareLastResultCall EQUAL, Script_branch_20d
	If 0x404e, 0x3
	CompareLastResultCall EQUAL, Script_branch_21e
	If 0x404e, 0x4
	CompareLastResultCall EQUAL, Script_branch_224
	If 0x404e, 0x5
	CompareLastResultCall EQUAL, Script_branch_235
	If 0x404e, 0x6
	CompareLastResultCall EQUAL, Script_branch_246
	If 0x404e, 0x7
	CompareLastResultCall EQUAL, Script_branch_248
	If 0x404e, 0x8
	CompareLastResultCall EQUAL, Script_branch_259
	If 0x404e, 0x9
	CompareLastResultCall EQUAL, Script_branch_25b
	If 0x404e, 0xa
	CompareLastResultCall EQUAL, Script_branch_26c
	If 0x404e, 0xb
	CompareLastResultCall EQUAL, Script_branch_26e
	If 0x404e, 0xc
	CompareLastResultCall EQUAL, Script_branch_274
	If 0x404e, 0xd
	CompareLastResultCall EQUAL, Script_branch_276
	If 0x404e, 0xe
	CompareLastResultCall EQUAL, Script_branch_280
	End
@ 1ed

Script_branch_1ed: @ 1ed
	End
@ 1ef

Script_branch_1ef: @ 1ef
	SetVar 0x4021, 0x61
	Return
@ 1f7

Script_branch_1f7: @ 1f7
	SetVar 0x4021, 0x0
	Return
@ 1ff

Script_branch_1ff: @ 1ff
	End
@ 201

Script_branch_201: @ 201
	ClearFlag 0x2a7
	Return
@ 207

Script_branch_207: @ 207
	ClearFlag 0x2a8
	Return
@ 20d

Script_branch_20d: @ 20d
	CheckFlag 0x9ab
	CompareLastResultJump LESSER, Script_branch_29a
	ClearFlag 0x2a9
	Return
@ 21e

Script_branch_21e: @ 21e
	ClearFlag 0x2ab
	Return
@ 224

Script_branch_224: @ 224
	CheckFlag 0x9ab
	CompareLastResultJump LESSER, Script_branch_29a
	ClearFlag 0x2ac
	Return
@ 235

Script_branch_235: @ 235
	CheckFlag 0x9ab
	CompareLastResultJump LESSER, Script_branch_29a
	ClearFlag 0x2ae
	Return
@ 246

Script_branch_246: @ 246
	Return
@ 248

Script_branch_248: @ 248
	CheckFlag 0x9ab
	CompareLastResultJump LESSER, Script_branch_29a
	ClearFlag 0x2b1
	Return
@ 259

Script_branch_259: @ 259
	Return
@ 25b

Script_branch_25b: @ 25b
	CheckFlag 0x9ab
	CompareLastResultJump LESSER, Script_branch_29a
	ClearFlag 0x2b4
	Return
@ 26c

Script_branch_26c: @ 26c
	Return
@ 26e

Script_branch_26e: @ 26e
	ClearFlag 0x2b7
	Return
@ 274

Script_branch_274: @ 274
	Return
@ 276

Script_branch_276: @ 276
	ClearFlag 0x2b9
	ClearFlag 0x2b7
	Return
@ 280

Script_branch_280: @ 280
	ChangeOwPosition 0x7, 0x6, 0x8
	ChangeOwPosition 0xa, 0x7, 0x8
	ClearFlag 0x2b1
	ClearFlag 0x2b6
	Return
@ 29a

Script_branch_29a: @ 29a
	Return
@ 29c

Script_2: @ 29c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVariableRival 0x0
	SetVarHero 0x1
	If 0x405a, 0x0
	CompareLastResultCall EQUAL, Script_branch_2f3
	If 0x405a, 0x1
	CompareLastResultCall EQUAL, Script_branch_2f8
	If 0x405a, 0x2
	CompareLastResultCall EQUAL, Script_branch_2fd
	If 0x405a, 0x3
	CompareLastResultCall EQUAL, Script_branch_302
	If 0x405a, 0x4
	CompareLastResultCall EQUAL, Script_branch_307
	Jump Script_branch_aec
@ 2f1

.byte 0x2 @ 0x2f1
.byte 0x0 @ 0x2f2

Script_branch_2f3: @ 2f3
	Message 0xf
	Return
@ 2f8

Script_branch_2f8: @ 2f8
	Message 0x10
	Return
@ 2fd

Script_branch_2fd: @ 2fd
	Message 0x11
	Return
@ 302

Script_branch_302: @ 302
	Message 0x12
	Return
@ 307

Script_branch_307: @ 307
	Message 0x13
	Return
@ 30c

Script_3: @ 30c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVarHero 0x1
	If 0x405a, 0x0
	CompareLastResultCall EQUAL, Script_branch_360
	If 0x405a, 0x1
	CompareLastResultCall EQUAL, Script_branch_380
	If 0x405a, 0x2
	CompareLastResultCall EQUAL, Script_branch_3a0
	If 0x405a, 0x3
	CompareLastResultCall EQUAL, Script_branch_3c0
	If 0x405a, 0x4
	CompareLastResultCall EQUAL, Script_branch_3e0
	Jump Script_branch_aec
@ 35e

.byte 0x2 @ 0x35e
.byte 0x0 @ 0x35f

Script_branch_360: @ 360
	CheckGender 0x4000
	If 0x4000, 0x0
	CompareLastResultCall EQUAL, Script_branch_400
	If 0x4000, 0x1
	CompareLastResultCall EQUAL, Script_branch_405
	Return
@ 380

Script_branch_380: @ 380
	CheckGender 0x4000
	If 0x4000, 0x0
	CompareLastResultCall EQUAL, Script_branch_40a
	If 0x4000, 0x1
	CompareLastResultCall EQUAL, Script_branch_40f
	Return
@ 3a0

Script_branch_3a0: @ 3a0
	CheckGender 0x4000
	If 0x4000, 0x0
	CompareLastResultCall EQUAL, Script_branch_414
	If 0x4000, 0x1
	CompareLastResultCall EQUAL, Script_branch_419
	Return
@ 3c0

Script_branch_3c0: @ 3c0
	CheckGender 0x4000
	If 0x4000, 0x0
	CompareLastResultCall EQUAL, Script_branch_41e
	If 0x4000, 0x1
	CompareLastResultCall EQUAL, Script_branch_423
	Return
@ 3e0

Script_branch_3e0: @ 3e0
	CheckGender 0x4000
	If 0x4000, 0x0
	CompareLastResultCall EQUAL, Script_branch_428
	If 0x4000, 0x1
	CompareLastResultCall EQUAL, Script_branch_42d
	Return
@ 400

Script_branch_400: @ 400
	Message 0x14
	Return
@ 405

Script_branch_405: @ 405
	Message 0x19
	Return
@ 40a

Script_branch_40a: @ 40a
	Message 0x15
	Return
@ 40f

Script_branch_40f: @ 40f
	Message 0x1a
	Return
@ 414

Script_branch_414: @ 414
	Message 0x16
	Return
@ 419

Script_branch_419: @ 419
	Message 0x1b
	Return
@ 41e

Script_branch_41e: @ 41e
	Message 0x17
	Return
@ 423

Script_branch_423: @ 423
	Message 0x1c
	Return
@ 428

Script_branch_428: @ 428
	Message 0x18
	Return
@ 42d

Script_branch_42d: @ 42d
	Message 0x1d
	Return
@ 432

Script_4: @ 432
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x405a, 0x0
	CompareLastResultCall EQUAL, Script_branch_483
	If 0x405a, 0x1
	CompareLastResultCall EQUAL, Script_branch_488
	If 0x405a, 0x2
	CompareLastResultCall EQUAL, Script_branch_48d
	If 0x405a, 0x3
	CompareLastResultCall EQUAL, Script_branch_492
	If 0x405a, 0x4
	CompareLastResultCall EQUAL, Script_branch_497
	Jump Script_branch_aec
@ 481

.byte 0x2 @ 0x481
.byte 0x0 @ 0x482

Script_branch_483: @ 483
	Message 0x1e
	Return
@ 488

Script_branch_488: @ 488
	Message 0x1f
	Return
@ 48d

Script_branch_48d: @ 48d
	Message 0x20
	Return
@ 492

Script_branch_492: @ 492
	Message 0x21
	Return
@ 497

Script_branch_497: @ 497
	Message 0x22
	Return
@ 49c

Script_5: @ 49c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVariableRival 0x0
	SetVarHero 0x1
	If 0x405a, 0x0
	CompareLastResultCall EQUAL, Script_branch_4f3
	If 0x405a, 0x1
	CompareLastResultCall EQUAL, Script_branch_4f8
	If 0x405a, 0x2
	CompareLastResultCall EQUAL, Script_branch_4fd
	If 0x405a, 0x3
	CompareLastResultCall EQUAL, Script_branch_502
	If 0x405a, 0x4
	CompareLastResultCall EQUAL, Script_branch_507
	Jump Script_branch_aec
@ 4f1

.byte 0x2 @ 0x4f1
.byte 0x0 @ 0x4f2

Script_branch_4f3: @ 4f3
	Message 0x23
	Return
@ 4f8

Script_branch_4f8: @ 4f8
	Message 0x24
	Return
@ 4fd

Script_branch_4fd: @ 4fd
	Message 0x25
	Return
@ 502

Script_branch_502: @ 502
	Message 0x26
	Return
@ 507

Script_branch_507: @ 507
	Message 0x27
	Return
@ 50c

Script_6: @ 50c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x405a, 0x0
	CompareLastResultCall EQUAL, Script_branch_55d
	If 0x405a, 0x1
	CompareLastResultCall EQUAL, Script_branch_562
	If 0x405a, 0x2
	CompareLastResultCall EQUAL, Script_branch_567
	If 0x405a, 0x3
	CompareLastResultCall EQUAL, Script_branch_56c
	If 0x405a, 0x4
	CompareLastResultCall EQUAL, Script_branch_571
	Jump Script_branch_aec
@ 55b

.byte 0x2 @ 0x55b
.byte 0x0 @ 0x55c

Script_branch_55d: @ 55d
	Message 0x28
	Return
@ 562

Script_branch_562: @ 562
	Message 0x29
	Return
@ 567

Script_branch_567: @ 567
	Message 0x2a
	Return
@ 56c

Script_branch_56c: @ 56c
	Message 0x2b
	Return
@ 571

Script_branch_571: @ 571
	Message 0x2c
	Return
@ 576

Script_7: @ 576
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x405a, 0x0
	CompareLastResultCall EQUAL, Script_branch_5c7
	If 0x405a, 0x1
	CompareLastResultCall EQUAL, Script_branch_5cc
	If 0x405a, 0x2
	CompareLastResultCall EQUAL, Script_branch_5d1
	If 0x405a, 0x3
	CompareLastResultCall EQUAL, Script_branch_5d6
	If 0x405a, 0x4
	CompareLastResultCall EQUAL, Script_branch_5db
	Jump Script_branch_aec
@ 5c5

.byte 0x2 @ 0x5c5
.byte 0x0 @ 0x5c6

Script_branch_5c7: @ 5c7
	Message 0x2d
	Return
@ 5cc

Script_branch_5cc: @ 5cc
	Message 0x2e
	Return
@ 5d1

Script_branch_5d1: @ 5d1
	Message 0x2f
	Return
@ 5d6

Script_branch_5d6: @ 5d6
	Message 0x30
	Return
@ 5db

Script_branch_5db: @ 5db
	Message 0x31
	Return
@ 5e0

Script_8: @ 5e0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x405a, 0x0
	CompareLastResultCall EQUAL, Script_branch_631
	If 0x405a, 0x1
	CompareLastResultCall EQUAL, Script_branch_636
	If 0x405a, 0x2
	CompareLastResultCall EQUAL, Script_branch_63b
	If 0x405a, 0x3
	CompareLastResultCall EQUAL, Script_branch_640
	If 0x405a, 0x4
	CompareLastResultCall EQUAL, Script_branch_645
	Jump Script_branch_aec
@ 62f

.byte 0x2 @ 0x62f
.byte 0x0 @ 0x630

Script_branch_631: @ 631
	Message 0x32
	Return
@ 636

Script_branch_636: @ 636
	Message 0x33
	Return
@ 63b

Script_branch_63b: @ 63b
	Message 0x34
	Return
@ 640

Script_branch_640: @ 640
	Message 0x35
	Return
@ 645

Script_branch_645: @ 645
	Message 0x36
	Return
@ 64a

Script_9: @ 64a
	If 0x404e, 0xe
	CompareLastResultJump EQUAL, Script_branch_a50
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVarHero 0x1
	If 0x405a, 0x0
	CompareLastResultCall EQUAL, Script_branch_6ab
	If 0x405a, 0x1
	CompareLastResultCall EQUAL, Script_branch_6b0
	If 0x405a, 0x2
	CompareLastResultCall EQUAL, Script_branch_6b5
	If 0x405a, 0x3
	CompareLastResultCall EQUAL, Script_branch_6ba
	If 0x405a, 0x4
	CompareLastResultCall EQUAL, Script_branch_6bf
	Jump Script_branch_aec
@ 6a9

.byte 0x2 @ 0x6a9
.byte 0x0 @ 0x6aa

Script_branch_6ab: @ 6ab
	Message 0x37
	Return
@ 6b0

Script_branch_6b0: @ 6b0
	Message 0x38
	Return
@ 6b5

Script_branch_6b5: @ 6b5
	Message 0x39
	Return
@ 6ba

Script_branch_6ba: @ 6ba
	Message 0x3a
	Return
@ 6bf

Script_branch_6bf: @ 6bf
	Message 0x3b
	Return
@ 6c4

Script_10: @ 6c4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x405a, 0x0
	CompareLastResultCall EQUAL, Script_branch_715
	If 0x405a, 0x1
	CompareLastResultCall EQUAL, Script_branch_71d
	If 0x405a, 0x2
	CompareLastResultCall EQUAL, Script_branch_722
	If 0x405a, 0x3
	CompareLastResultCall EQUAL, Script_branch_72a
	If 0x405a, 0x4
	CompareLastResultCall EQUAL, Script_branch_72f
	Jump Script_branch_aec
@ 713

.byte 0x2 @ 0x713
.byte 0x0 @ 0x714

Script_branch_715: @ 715
	SetVariableRival 0x0
	Message 0x3c
	Return
@ 71d

Script_branch_71d: @ 71d
	Message 0x3d
	Return
@ 722

Script_branch_722: @ 722
	SetVariableRival 0x0
	Message 0x3e
	Return
@ 72a

Script_branch_72a: @ 72a
	Message 0x3f
	Return
@ 72f

Script_branch_72f: @ 72f
	Message 0x40
	Return
@ 734

Script_11: @ 734
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x405a, 0x0
	CompareLastResultCall EQUAL, Script_branch_785
	If 0x405a, 0x1
	CompareLastResultCall EQUAL, Script_branch_78a
	If 0x405a, 0x2
	CompareLastResultCall EQUAL, Script_branch_78f
	If 0x405a, 0x3
	CompareLastResultCall EQUAL, Script_branch_794
	If 0x405a, 0x4
	CompareLastResultCall EQUAL, Script_branch_799
	Jump Script_branch_aec
@ 783

.byte 0x2 @ 0x783
.byte 0x0 @ 0x784

Script_branch_785: @ 785
	Message 0x41
	Return
@ 78a

Script_branch_78a: @ 78a
	Message 0x42
	Return
@ 78f

Script_branch_78f: @ 78f
	Message 0x43
	Return
@ 794

Script_branch_794: @ 794
	Message 0x44
	Return
@ 799

Script_branch_799: @ 799
	Message 0x45
	Return
@ 79e

Script_12: @ 79e
	If 0x404e, 0xe
	CompareLastResultJump EQUAL, Script_branch_a50
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x405a, 0x0
	CompareLastResultCall EQUAL, Script_branch_7fc
	If 0x405a, 0x1
	CompareLastResultCall EQUAL, Script_branch_801
	If 0x405a, 0x2
	CompareLastResultCall EQUAL, Script_branch_806
	If 0x405a, 0x3
	CompareLastResultCall EQUAL, Script_branch_80b
	If 0x405a, 0x4
	CompareLastResultCall EQUAL, Script_branch_810
	Jump Script_branch_aec
@ 7fa

.byte 0x2 @ 0x7fa
.byte 0x0 @ 0x7fb

Script_branch_7fc: @ 7fc
	Message 0x46
	Return
@ 801

Script_branch_801: @ 801
	Message 0x47
	Return
@ 806

Script_branch_806: @ 806
	Message 0x48
	Return
@ 80b

Script_branch_80b: @ 80b
	Message 0x49
	Return
@ 810

Script_branch_810: @ 810
	Message 0x4a
	Return
@ 815

Script_13: @ 815
	If 0x404e, 0xd
	CompareLastResultJump EQUAL, Script_branch_88c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x405a, 0x0
	CompareLastResultCall EQUAL, Script_branch_873
	If 0x405a, 0x1
	CompareLastResultCall EQUAL, Script_branch_878
	If 0x405a, 0x2
	CompareLastResultCall EQUAL, Script_branch_87d
	If 0x405a, 0x3
	CompareLastResultCall EQUAL, Script_branch_882
	If 0x405a, 0x4
	CompareLastResultCall EQUAL, Script_branch_887
	Jump Script_branch_aec
@ 871

.byte 0x2 @ 0x871
.byte 0x0 @ 0x872

Script_branch_873: @ 873
	Message 0x4b
	Return
@ 878

Script_branch_878: @ 878
	Message 0x4c
	Return
@ 87d

Script_branch_87d: @ 87d
	Message 0x4d
	Return
@ 882

Script_branch_882: @ 882
	Message 0x4e
	Return
@ 887

Script_branch_887: @ 887
	Message 0x4f
	Return
@ 88c

Script_branch_88c: @ 88c
	PlayFanfare 0x5dc
	LockAll
	If 0x405a, 0x0
	CompareLastResultCall EQUAL, Script_branch_8db
	If 0x405a, 0x1
	CompareLastResultCall EQUAL, Script_branch_8e2
	If 0x405a, 0x2
	CompareLastResultCall EQUAL, Script_branch_8e9
	If 0x405a, 0x3
	CompareLastResultCall EQUAL, Script_branch_900
	If 0x405a, 0x4
	CompareLastResultCall EQUAL, Script_branch_917
	Jump Script_branch_aec
@ 8d9

.byte 0x2 @ 0x8d9
.byte 0x0 @ 0x8da

Script_branch_8db: @ 8db
	FacePlayer
	Message 0x56
	Return
@ 8e2

Script_branch_8e2: @ 8e2
	FacePlayer
	Message 0x58
	Return
@ 8e9

Script_branch_8e9: @ 8e9
	ApplyMovement 0xb, Movement_930
	ApplyMovement 0xd, Movement_93c
	WaitMovement
	Message 0x59
	Return
@ 900

Script_branch_900: @ 900
	ApplyMovement 0xb, Movement_930
	ApplyMovement 0xd, Movement_93c
	WaitMovement
	Message 0x5a
	Return
@ 917

Script_branch_917: @ 917
	ApplyMovement 0xb, Movement_930
	ApplyMovement 0xd, Movement_93c
	WaitMovement
	Message 0x5b
	Return
@ 92e

.byte 0x0 @ 0x92e
.byte 0x0 @ 0x92f

Movement_930: @ 930
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 93c

Movement_93c: @ 93c
	MoveLeftFast 0x1
	EndMovement 0x0
@ 944

Script_14: @ 944
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x405a, 0x0
	CompareLastResultCall EQUAL, Script_branch_995
	If 0x405a, 0x1
	CompareLastResultCall EQUAL, Script_branch_99a
	If 0x405a, 0x2
	CompareLastResultCall EQUAL, Script_branch_99f
	If 0x405a, 0x3
	CompareLastResultCall EQUAL, Script_branch_9a4
	If 0x405a, 0x4
	CompareLastResultCall EQUAL, Script_branch_9a9
	Jump Script_branch_aec
@ 993

.byte 0x2 @ 0x993
.byte 0x0 @ 0x994

Script_branch_995: @ 995
	Message 0x50
	Return
@ 99a

Script_branch_99a: @ 99a
	Message 0x51
	Return
@ 99f

Script_branch_99f: @ 99f
	Message 0x52
	Return
@ 9a4

Script_branch_9a4: @ 9a4
	Message 0x53
	Return
@ 9a9

Script_branch_9a9: @ 9a9
	Message 0x54
	Return
@ 9ae

Script_15: @ 9ae
	PlayFanfare 0x5dc
	LockAll
	If 0x405a, 0x0
	CompareLastResultCall EQUAL, Script_branch_9fd
	If 0x405a, 0x1
	CompareLastResultCall EQUAL, Script_branch_a04
	If 0x405a, 0x2
	CompareLastResultCall EQUAL, Script_branch_a0b
	If 0x405a, 0x3
	CompareLastResultCall EQUAL, Script_branch_a22
	If 0x405a, 0x4
	CompareLastResultCall EQUAL, Script_branch_a39
	Jump Script_branch_aec
@ 9fb

.byte 0x2 @ 0x9fb
.byte 0x0 @ 0x9fc

Script_branch_9fd: @ 9fd
	FacePlayer
	Message 0x55
	Return
@ a04

Script_branch_a04: @ a04
	FacePlayer
	Message 0x57
	Return
@ a0b

Script_branch_a0b: @ a0b
	ApplyMovement 0xb, Movement_930
	ApplyMovement 0xd, Movement_93c
	WaitMovement
	Message 0x59
	Return
@ a22

Script_branch_a22: @ a22
	ApplyMovement 0xb, Movement_930
	ApplyMovement 0xd, Movement_93c
	WaitMovement
	Message 0x5a
	Return
@ a39

Script_branch_a39: @ a39
	ApplyMovement 0xb, Movement_930
	ApplyMovement 0xd, Movement_93c
	WaitMovement
	Message 0x5b
	Return
@ a50

Script_16: @ a50
Script_branch_a50: @ a50
	PlayFanfare 0x5dc
	LockAll
	SetVarHero 0x1
	ApplyMovement 0xa, Movement_ae0
	ApplyMovement 0x7, Movement_ad8
	WaitMovement
	If 0x405a, 0x0
	CompareLastResultCall EQUAL, Script_branch_ab4
	If 0x405a, 0x1
	CompareLastResultCall EQUAL, Script_branch_ab9
	If 0x405a, 0x2
	CompareLastResultCall EQUAL, Script_branch_abe
	If 0x405a, 0x3
	CompareLastResultCall EQUAL, Script_branch_ac3
	If 0x405a, 0x4
	CompareLastResultCall EQUAL, Script_branch_ac8
	Jump Script_branch_aec
@ ab2

.byte 0x2 @ 0xab2
.byte 0x0 @ 0xab3

Script_branch_ab4: @ ab4
	Message 0x5c
	Return
@ ab9

Script_branch_ab9: @ ab9
	Message 0x5d
	Return
@ abe

Script_branch_abe: @ abe
	Message 0x5e
	Return
@ ac3

Script_branch_ac3: @ ac3
	Message 0x5f
	Return
@ ac8

Script_branch_ac8: @ ac8
	CheckFlag 0x9a9
	CompareLastResultJump LESSER, Script_branch_ab4
	Message 0x60
	Return
@ ad8

Movement_ad8: @ ad8
	MoveRightFast 0x1
	EndMovement 0x0
@ ae0

Movement_ae0: @ ae0
	Move_3f 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ aec

Script_branch_aec: @ aec
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ af4

Script_17: @ af4
	LockAll
	PlayFanfare 0x605
	ClearFlag 0x2b0
	ChangeOwPosition 0x6, 0xb, 0xb
	ChangeOwMovement 0x6, 0xe
	ReleaseOw 0x6, 0x0
	AddPeople 0x6
	WaitFanfare 0x605
	ApplyMovement 0xff, Movement_b3c
	ApplyMovement 0x6, Movement_b4c
	WaitMovement
	SetFlag 0x9ac
	SetVar 0x400f, 0x0
	ReleaseAll
	End
@ b3a

.byte 0x0 @ 0xb3a
.byte 0x0 @ 0xb3b

Movement_b3c: @ b3c
	MoveDownFast 0x1
	Move_3f 0x5
	MoveLeftFast 0x1
	EndMovement 0x0
@ b4c

Movement_b4c: @ b4c
	WalkLeftFast 0x2
	WalkUpFast 0x5
	WalkLeftFast 0x3
	EndMovement 0x0
@ b5c

Script_18: @ b5c
	LockAll
	PlayFanfare 0x605
	ClearFlag 0x2b3
	ChangeOwPosition 0x9, 0xb, 0xb
	ChangeOwMovement 0x9, 0xe
	ReleaseOw 0x9, 0x0
	AddPeople 0x9
	WaitFanfare 0x605
	ApplyMovement 0xff, Movement_bac
	ApplyMovement 0x9, Movement_ba4
	WaitMovement
	SetFlag 0x9ac
	SetVar 0x400f, 0x0
	ReleaseAll
	End
@ ba2

.byte 0x0 @ 0xba2
.byte 0x0 @ 0xba3

Movement_ba4: @ ba4
	WalkRightFast 0x8
	EndMovement 0x0
@ bac

Movement_bac: @ bac
	MoveDownFast 0x1
	Move_3f 0x3
	MoveRightFast 0x1
	EndMovement 0x0
@ bbc

Script_19: @ bbc
	LockAll
	PlayFanfare 0x605
	ClearFlag 0x2b6
	ChangeOwPosition 0xa, 0xb, 0xb
	ChangeOwMovement 0xa, 0xe
	ReleaseOw 0xa, 0x0
	AddPeople 0xa
	WaitFanfare 0x605
	ApplyMovement 0xff, Movement_c14
	ApplyMovement 0xa, Movement_c04
	WaitMovement
	SetFlag 0x9ac
	SetVar 0x400f, 0x0
	ReleaseAll
	End
@ c02

.byte 0x0 @ 0xc02
.byte 0x0 @ 0xc03

Movement_c04: @ c04
	WalkLeftFast 0x2
	WalkUpFast 0x3
	WalkLeftFast 0x2
	EndMovement 0x0
@ c14

Movement_c14: @ c14
	MoveDownFast 0x1
	Move_3f 0x4
	MoveLeftFast 0x1
	EndMovement 0x0
@ c24

Script_20: @ c24
	LockAll
	PlayFanfare 0x605
	ClearFlag 0x2b8
	ChangeOwPosition 0xc, 0xb, 0xb
	ChangeOwMovement 0xc, 0xe
	ReleaseOw 0xc, 0x0
	AddPeople 0xc
	WaitFanfare 0x605
	ApplyMovement 0xff, Movement_c78
	ApplyMovement 0xc, Movement_c6c
	WaitMovement
	SetFlag 0x9ac
	SetVar 0x400f, 0x0
	ReleaseAll
	End
@ c6a

.byte 0x0 @ 0xc6a
.byte 0x0 @ 0xc6b

Movement_c6c: @ c6c
	WalkLeftFast 0x8
	WalkUpFast 0x6
	EndMovement 0x0
@ c78

Movement_c78: @ c78
	MoveDownFast 0x1
	Move_3f 0x5
	MoveLeftFast 0x1
	EndMovement 0x0
@ c88

Script_21: @ c88
	PlayFanfare 0x5dc
	LockAll
	Message 0x63
	Jump Script_branch_e5d
@ c97

.byte 0x2 @ 0xc97
.byte 0x0 @ 0xc98

Script_22: @ c99
	PlayFanfare 0x5dc
	LockAll
	Message 0x64
	Jump Script_branch_e5d
@ ca8

.byte 0x2 @ 0xca8
.byte 0x0 @ 0xca9

Script_23: @ caa
	PlayFanfare 0x5dc
	LockAll
	Message 0x65
	Jump Script_branch_e5d
@ cb9

.byte 0x2 @ 0xcb9
.byte 0x0 @ 0xcba

Script_24: @ cbb
	PlayFanfare 0x5dc
	LockAll
	Message 0x66
	Jump Script_branch_e5d
@ cca

.byte 0x2 @ 0xcca
.byte 0x0 @ 0xccb

Script_25: @ ccc
	PlayFanfare 0x5dc
	LockAll
	Message 0x67
	Jump Script_branch_e5d
@ cdb

.byte 0x2 @ 0xcdb
.byte 0x0 @ 0xcdc

Script_26: @ cdd
	PlayFanfare 0x5dc
	LockAll
	Message 0x68
	Jump Script_branch_e5d
@ cec

.byte 0x2 @ 0xcec
.byte 0x0 @ 0xced

Script_27: @ cee
	PlayFanfare 0x5dc
	LockAll
	PlaySound 0x4ae
	Message 0x69
	Jump Script_branch_e5d
@ d01

.byte 0x2 @ 0xd01
.byte 0x0 @ 0xd02

Script_28: @ d03
	PlayFanfare 0x5dc
	LockAll
	Message 0x6a
	Jump Script_branch_e5d
@ d12

.byte 0x2 @ 0xd12
.byte 0x0 @ 0xd13

Script_29: @ d14
	PlayFanfare 0x5dc
	LockAll
	CheckFlag 0x9a2
	CompareLastResultJump EQUAL, Script_branch_d63
	Message 0x6b
	Jump Script_branch_e5d
@ d2e

.byte 0x2 @ 0xd2e
.byte 0x0 @ 0xd2f

Script_30: @ d30
	PlayFanfare 0x5dc
	LockAll
	Message 0x6c
	Jump Script_branch_e5d
@ d3f

.byte 0x2 @ 0xd3f
.byte 0x0 @ 0xd40

Script_31: @ d41
	PlayFanfare 0x5dc
	LockAll
	SetVarHero 0x0
	Message 0x6d
	Jump Script_branch_e5d
@ d53

.byte 0x2 @ 0xd53
.byte 0x0 @ 0xd54

Script_32: @ d55
	PlayFanfare 0x5dc
	LockAll
	Jump Script_branch_d63
@ d61

.byte 0x2 @ 0xd61
.byte 0x0 @ 0xd62

Script_branch_d63: @ d63
	Message 0x6e
	Jump Script_branch_d6e
@ d6c

.byte 0x2 @ 0xd6c
.byte 0x0 @ 0xd6d

Script_branch_d6e: @ d6e
	Cmd_2fa 0x8004
	Cmd_2f8
	SetVar 0x8007, 0x0
	Return2 0x1, 0x800c
	Jump Script_branch_d88
@ d86

.byte 0x2 @ 0xd86
.byte 0x0 @ 0xd87

Script_branch_d88: @ d88
	ScriptCmd_AddValue 0x8007, 0x1
	Return2 0x1, 0x800c
	StoreFurniture 0x8007
	Cmd_2fc 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_dc2
	StoreFurniture 0x8007
	If 0x8007, 0x258
	CompareLastResultJump EQUAL, Script_branch_dc2
	Jump Script_branch_d88
@ dc0

.byte 0x2 @ 0xdc0
.byte 0x0 @ 0xdc1

Script_branch_dc2: @ dc2
	Cmd_2f9 0x8004
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ dcc

.byte 0x2c @ 0xdcc
.byte 0x0 @ 0xdcd
.byte 0x76 @ 0xdce
.byte 0x1b @ 0xdcf
.byte 0x0 @ 0xdd0

Script_33: @ dd1
	PlayFanfare 0x5dc
	LockAll
	Message 0x6f
	Jump Script_branch_e5d
@ de0

.byte 0x2 @ 0xde0
.byte 0x0 @ 0xde1

Script_34: @ de2
	PlayFanfare 0x5dc
	LockAll
	Message 0x70
	Jump Script_branch_e5d
@ df1

.byte 0x2 @ 0xdf1
.byte 0x0 @ 0xdf2

Script_35: @ df3
	PlayFanfare 0x5dc
	LockAll
	PlaySound 0x4ad
	Message 0x71
	Jump Script_branch_e5d
@ e06

.byte 0x2 @ 0xe06
.byte 0x0 @ 0xe07

Script_36: @ e08
	PlayFanfare 0x5dc
	LockAll
	Message 0x72
	Jump Script_branch_e5d
@ e17

.byte 0x2 @ 0xe17
.byte 0x0 @ 0xe18

Script_37: @ e19
	PlayFanfare 0x5dc
	LockAll
	Message 0x73
	Jump Script_branch_e5d
@ e28

.byte 0x2 @ 0xe28
.byte 0x0 @ 0xe29

Script_38: @ e2a
	PlayFanfare 0x5dc
	LockAll
	Message 0x74
	Jump Script_branch_e5d
@ e39

.byte 0x2 @ 0xe39
.byte 0x0 @ 0xe3a

Script_39: @ e3b
	PlayFanfare 0x5dc
	LockAll
	Message 0x75
	Jump Script_branch_e5d
@ e4a

.byte 0x2 @ 0xe4a
.byte 0x0 @ 0xe4b

Script_40: @ e4c
	PlayFanfare 0x5dc
	LockAll
	Message 0x76
	Jump Script_branch_e5d
@ e5b

.byte 0x2 @ 0xe5b
.byte 0x0 @ 0xe5c

Script_branch_e5d: @ e5d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e65

Script_41: @ e65
	LockAll
	SetVar 0x40a1, 0x1
	ShowMoney 0x15, 0x1
	Message 0x0
	Multi4 0x1, 0x1, 0x0, 0x1, 0x8002
	TxtMsgScrpMulti 0xbd, 0xff, 0x0
	CloseMulti4
	If 0x8002, 0x0
	CompareLastResultJump 0x5, Script_branch_ea7
	Call Function_f7c
	CloseMsgOnKeyPress
	Call Function_1092
	ReleaseAll
	End
@ ea7

Script_branch_ea7: @ ea7
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ eb4

Script_42: @ eb4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	ShowMoney 0x15, 0x1
	Message 0x1
	Multi4 0x1, 0x1, 0x0, 0x1, 0x8002
	TxtMsgScrpMulti 0xbd, 0xff, 0x0
	CloseMulti4
	If 0x8002, 0x0
	CompareLastResultJump 0x5, Script_branch_1478
	Call Function_f7c
	CloseMsgOnKeyPress
	Call Function_1092
	ReleaseAll
	End
@ ef6

Function_ef6: @ ef6
	Multi4 0x1, 0x1, 0x0, 0x1, 0x8002
	Call Function_19e4
	Call Function_1a05
	Call Function_1a26
	Call Function_1a47
	Call Function_1a68
	Call Function_1a89
	Call Function_1aaa
	Call Function_1acb
	Call Function_1aec
	Call Function_1b0d
	Call Function_1b2e
	Call Function_1b4f
	Call Function_1b7b
	Call Function_1baf
	Call Function_1be3
	Call Function_1c17
	Call Function_1c4b
	Call Function_1c7f
	Call Function_1cb3
	Call Function_1cdf
	Cmd_327 0x12
	Return
@ f7c

Function_f7c: @ f7c
	PlayFanfare 0x644
	If 0x8002, 0x0
	CompareLastResultCall EQUAL, Script_branch_2079
	If 0x8002, 0x1
	CompareLastResultCall EQUAL, Script_branch_208d
	If 0x8002, 0x2
	CompareLastResultCall EQUAL, Script_branch_20a1
	If 0x8002, 0x3
	CompareLastResultCall EQUAL, Script_branch_20b5
	If 0x8002, 0x4
	CompareLastResultCall EQUAL, Script_branch_20c9
	If 0x8002, 0x5
	CompareLastResultCall EQUAL, Script_branch_20dd
	If 0x8002, 0x6
	CompareLastResultCall EQUAL, Script_branch_20f1
	If 0x8002, 0x7
	CompareLastResultCall EQUAL, Script_branch_2105
	If 0x8002, 0x8
	CompareLastResultCall EQUAL, Script_branch_2119
	If 0x8002, 0x9
	CompareLastResultCall EQUAL, Script_branch_212d
	If 0x8002, 0xa
	CompareLastResultCall EQUAL, Script_branch_2141
	If 0x8002, 0xb
	CompareLastResultCall EQUAL, Script_branch_2155
	If 0x8002, 0xc
	CompareLastResultCall EQUAL, Script_branch_2169
	If 0x8002, 0xd
	CompareLastResultCall EQUAL, Script_branch_217d
	If 0x8002, 0xe
	CompareLastResultCall EQUAL, Script_branch_2191
	If 0x8002, 0xf
	CompareLastResultCall EQUAL, Script_branch_21a5
	If 0x8002, 0x10
	CompareLastResultCall EQUAL, Script_branch_21b9
	If 0x8002, 0x11
	CompareLastResultCall EQUAL, Script_branch_21cd
	If 0x8002, 0x12
	CompareLastResultCall EQUAL, Script_branch_21e1
	If 0x8002, 0x13
	CompareLastResultCall EQUAL, Script_branch_21f5
	UpdateMoney
	WaitFanfare 0x644
	HideMoney
	Cmd_30d 0x8002
	Return
@ 1092

Function_1092: @ 1092
	ClearFlag 0x2c5
	ClearFlag 0x2c7
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x1d0, 0x0, 0xa, 0x6, 0x1
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x8002, 0x0
	CompareLastResultJump EQUAL, Script_branch_1485
	If 0x8002, 0x0
	CompareLastResultJump 0x5, Script_branch_1514
	End
@ 10da

Script_branch_10da: @ 10da
	Call Function_2209
	If 0x404e, 0x0
	CompareLastResultJump EQUAL, Script_branch_1103
	ChangeOwPosition 0x1, 0xb, 0xb
	ChangeOwMovement 0x1, 0xe
	ReleaseOw 0x1, 0x0
	Return
@ 1103

Script_branch_1103: @ 1103
	ChangeOwPosition 0x1, 0xa, 0x8
	ChangeOwMovement 0x1, 0xe
	ReleaseOw 0x1, 0x0
	ClearFlag 0x2a7
	AddPeople 0x1
	Return
@ 1121

Script_branch_1121: @ 1121
	Call Function_2209
	If 0x404e, 0x1
	CompareLastResultJump EQUAL, Script_branch_114a
	ChangeOwPosition 0x0, 0xb, 0xb
	ChangeOwMovement 0x0, 0xe
	ReleaseOw 0x0, 0x0
	Return
@ 114a

Script_branch_114a: @ 114a
	ChangeOwPosition 0x0, 0xa, 0x8
	ChangeOwMovement 0x0, 0xe
	ReleaseOw 0x0, 0x0
	ClearFlag 0x2a8
	AddPeople 0x0
	Return
@ 1168

Script_branch_1168: @ 1168
	Call Function_2209
	If 0x404e, 0x2
	CompareLastResultJump EQUAL, Script_branch_1199
	Jump Script_branch_1183
@ 1181

.byte 0x2 @ 0x1181
.byte 0x0 @ 0x1182

Script_branch_1183: @ 1183
	ChangeOwPosition 0x2, 0xb, 0xb
	ChangeOwMovement 0x2, 0xe
	ReleaseOw 0x2, 0x0
	Return
@ 1199

Script_branch_1199: @ 1199
	CheckFlag 0x9ab
	CompareLastResultJump LESSER, Script_branch_1183
	ChangeOwPosition 0x2, 0xa, 0x8
	ChangeOwMovement 0x2, 0xe
	ReleaseOw 0x2, 0x0
	ClearFlag 0x2a9
	AddPeople 0x2
	Return
@ 11c2

Script_branch_11c2: @ 11c2
	Call Function_2209
	If 0x404e, 0x5
	CompareLastResultJump EQUAL, Script_branch_11f3
	Jump Script_branch_11dd
@ 11db

.byte 0x2 @ 0x11db
.byte 0x0 @ 0x11dc

Script_branch_11dd: @ 11dd
	ChangeOwPosition 0x5, 0xb, 0xb
	ChangeOwMovement 0x5, 0xe
	ReleaseOw 0x5, 0x0
	Return
@ 11f3

Script_branch_11f3: @ 11f3
	CheckFlag 0x9ab
	CompareLastResultJump LESSER, Script_branch_11dd
	ChangeOwPosition 0x5, 0xa, 0x8
	ChangeOwMovement 0x5, 0xe
	ReleaseOw 0x5, 0x0
	ClearFlag 0x2ae
	AddPeople 0x5
	Return
@ 121c

Script_branch_121c: @ 121c
	Call Function_2209
	If 0x404e, 0xc
	CompareLastResultJump EQUAL, Script_branch_1245
	ChangeOwPosition 0xc, 0xb, 0xb
	ChangeOwMovement 0xc, 0xe
	ReleaseOw 0xc, 0x0
	Return
@ 1245

Script_branch_1245: @ 1245
	ChangeOwPosition 0xc, 0xa, 0x8
	ChangeOwMovement 0xc, 0xe
	ReleaseOw 0xc, 0x0
	ClearFlag 0x2b8
	AddPeople 0xc
	Return
@ 1263

Script_branch_1263: @ 1263
	If 0x404e, 0x0
	CompareLastResultCall 0x5, Script_branch_12a3
	SetFlag 0x9ab
	SetVar 0x404e, 0xff
	ApplyMovement 0xff, Movement_1454
	WaitMovement
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x9
	CloseMsgOnKeyPress
	ApplyMovement 0x1, Movement_1468
	WaitMovement
	PlayFanfare 0x603
	RemovePeople 0x1
	Return
@ 12a3

Script_branch_12a3: @ 12a3
	ClearFlag 0x2a7
	AddPeople 0x1
	PlayFanfare 0x605
	WaitFanfare 0x605
	ApplyMovement 0x1, Movement_145c
	WaitMovement
	Return
@ 12bf

Script_branch_12bf: @ 12bf
	If 0x404e, 0x1
	CompareLastResultCall 0x5, Script_branch_1316
	SetFlag 0x9ab
	SetVar 0x404e, 0x1
	SetVariableRival 0x0
	SetVarHero 0x1
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_12fc
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1307
	End
@ 12fc

Script_branch_12fc: @ 12fc
	Message 0xa
	Jump Script_branch_1312
@ 1305

.byte 0x2 @ 0x1305
.byte 0x0 @ 0x1306

Script_branch_1307: @ 1307
	Message 0xb
	Jump Script_branch_1312
@ 1310

.byte 0x2 @ 0x1310
.byte 0x0 @ 0x1311

Script_branch_1312: @ 1312
	CloseMsgOnKeyPress
	Return
@ 1316

Script_branch_1316: @ 1316
	ClearFlag 0x2a8
	AddPeople 0x0
	PlayFanfare 0x605
	WaitFanfare 0x605
	ApplyMovement 0x0, Movement_145c
	WaitMovement
	Return
@ 1332

Script_branch_1332: @ 1332
	If 0x404e, 0x2
	CompareLastResultCall 0x5, Script_branch_1374
	If 0x404e, 0x2
	CompareLastResultCall EQUAL, Script_branch_1367
	SetFlag 0x9ab
	SetFlag 0x2aa
	SetVar 0x404e, 0x2
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0xc
	CloseMsgOnKeyPress
	Return
@ 1367

Script_branch_1367: @ 1367
	CheckFlag 0x9ab
	CompareLastResultJump LESSER, Script_branch_1374
	Return
@ 1374

Script_branch_1374: @ 1374
	ClearFlag 0x2a9
	AddPeople 0x2
	PlayFanfare 0x605
	WaitFanfare 0x605
	ApplyMovement 0x2, Movement_145c
	WaitMovement
	Return
@ 1390

Script_branch_1390: @ 1390
	If 0x404e, 0x5
	CompareLastResultCall 0x5, Script_branch_13d2
	If 0x404e, 0x5
	CompareLastResultCall EQUAL, Script_branch_13c5
	SetFlag 0x9ab
	SetFlag 0x2b2
	SetVar 0x404e, 0x5
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0xd
	CloseMsgOnKeyPress
	Return
@ 13c5

Script_branch_13c5: @ 13c5
	CheckFlag 0x9ab
	CompareLastResultJump LESSER, Script_branch_13d2
	Return
@ 13d2

Script_branch_13d2: @ 13d2
	ClearFlag 0x2ae
	AddPeople 0x5
	PlayFanfare 0x605
	WaitFanfare 0x605
	ApplyMovement 0x5, Movement_145c
	WaitMovement
	Return
@ 13ee

Script_branch_13ee: @ 13ee
	If 0x404e, 0xc
	CompareLastResultCall 0x5, Script_branch_1436
	If 0x404e, 0xc
	CompareLastResultCall EQUAL, Script_branch_1429
	SetFlag 0x9ab
	SetVar 0x404e, 0xc
	SetVar 0x400f, 0x0
	SetFlag 0x9ac
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0xe
	CloseMsgOnKeyPress
	Return
@ 1429

Script_branch_1429: @ 1429
	CheckFlag 0x9ac
	CompareLastResultJump LESSER, Script_branch_1436
	Return
@ 1436

Script_branch_1436: @ 1436
	ClearFlag 0x2b8
	AddPeople 0xc
	PlayFanfare 0x605
	WaitFanfare 0x605
	ApplyMovement 0xc, Movement_145c
	WaitMovement
	Return
@ 1452

.byte 0x0 @ 0x1452
.byte 0x0 @ 0x1453

Movement_1454: @ 1454
	MoveDownFast 0x1
	EndMovement 0x0
@ 145c

Movement_145c: @ 145c
	WalkLeftFast 0x1
	WalkUpFast 0x3
	EndMovement 0x0
@ 1468

Movement_1468: @ 1468
	WalkDownFast 0x3
	WalkRightFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 1478

Script_branch_1478: @ 1478
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 1485

Script_branch_1485: @ 1485
	Message 0x3
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	RemovePeople 0xf
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ApplyMovement 0xe, Movement_14fc
	ApplyMovement 0xff, Movement_14f0
	WaitMovement
	Message 0x4
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	RemovePeople 0xe
	Call Function_156d
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Call Function_15b0
	SetVar 0x40a1, 0x2
	Return
@ 14ed

.byte 0x0 @ 0x14ed
.byte 0x0 @ 0x14ee
.byte 0x0 @ 0x14ef

Movement_14f0: @ 14f0
	Move_3f 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 14fc

Movement_14fc: @ 14fc
	MoveRightFast 0x1
	EndMovement 0x0
@ 1504

.byte 0xd @ 0x1504
.byte 0x0 @ 0x1505
.byte 0x3 @ 0x1506
.byte 0x0 @ 0x1507
.byte 0xf @ 0x1508
.byte 0x0 @ 0x1509
.byte 0x1 @ 0x150a
.byte 0x0 @ 0x150b
.byte 0x21 @ 0x150c
.byte 0x0 @ 0x150d
.byte 0x1 @ 0x150e
.byte 0x0 @ 0x150f
.byte 0xfe @ 0x1510
.byte 0x0 @ 0x1511
.byte 0x0 @ 0x1512
.byte 0x0 @ 0x1513

Script_branch_1514: @ 1514
	Call Function_18f8
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_155e
	Message 0x7
	Jump Script_branch_1532
@ 1530

.byte 0x2 @ 0x1530
.byte 0x0 @ 0x1531

Script_branch_1532: @ 1532
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	RemovePeople 0xf
	Call Function_156d
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Call Function_15b0
	Return
@ 155e

Script_branch_155e: @ 155e
	Cmd_30a 0x31
	Message 0x8
	Jump Script_branch_1532
@ 156b

.byte 0x2 @ 0x156b
.byte 0x0 @ 0x156c

Function_156d: @ 156d
	If 0x8002, 0x0
	CompareLastResultCall EQUAL, Script_branch_10da
	If 0x8002, 0x2
	CompareLastResultCall EQUAL, Script_branch_1121
	If 0x8002, 0x7
	CompareLastResultCall EQUAL, Script_branch_1168
	If 0x8002, 0x9
	CompareLastResultCall EQUAL, Script_branch_11c2
	If 0x8002, 0xe
	CompareLastResultCall EQUAL, Script_branch_121c
	Return
@ 15b0

Function_15b0: @ 15b0
	If 0x8002, 0x0
	CompareLastResultCall EQUAL, Script_branch_1263
	If 0x8002, 0x2
	CompareLastResultCall EQUAL, Script_branch_12bf
	If 0x8002, 0x7
	CompareLastResultCall EQUAL, Script_branch_1332
	If 0x8002, 0x9
	CompareLastResultCall EQUAL, Script_branch_1390
	If 0x8002, 0xe
	CompareLastResultCall EQUAL, Script_branch_13ee
	Return
@ 15f3

Script_43: @ 15f3
	LockAll
	ApplyMovement 0xe, Movement_1614
	WaitMovement
	Message 0x2
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_161c
	WaitMovement
	ReleaseAll
	End
@ 1612

.byte 0x0 @ 0x1612
.byte 0x0 @ 0x1613

Movement_1614: @ 1614
	MoveDownFast 0x1
	EndMovement 0x0
@ 161c

Movement_161c: @ 161c
	WalkUpFast 0x1
	EndMovement 0x0
@ 1624

Script_44: @ 1624
	PlayFanfare 0x5dc
	LockAll
	ShowMoney 0x15, 0x1
	SetVarHero 0x1
	Message 0x77
	Call Function_18f8
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1651
	Jump Script_branch_165c
@ 164f

.byte 0x2 @ 0x164f
.byte 0x0 @ 0x1650

Script_branch_1651: @ 1651
	Message 0x7c
	Jump Script_branch_1667
@ 165a

.byte 0x2 @ 0x165a
.byte 0x0 @ 0x165b

Script_branch_165c: @ 165c
	Message 0x78
	Jump Script_branch_1667
@ 1665

.byte 0x2 @ 0x1665
.byte 0x0 @ 0x1666

Script_branch_1667: @ 1667
	Call Function_ef6
	SetVar 0x8003, 0x1
	If 0x8002, 0x0
	CompareLastResultCall EQUAL, Script_branch_1ea5
	If 0x8002, 0x1
	CompareLastResultCall EQUAL, Script_branch_1eb2
	If 0x8002, 0x2
	CompareLastResultCall EQUAL, Script_branch_1ebf
	If 0x8002, 0x3
	CompareLastResultCall EQUAL, Script_branch_1ecc
	If 0x8002, 0x4
	CompareLastResultCall EQUAL, Script_branch_1ed9
	If 0x8002, 0x5
	CompareLastResultCall EQUAL, Script_branch_1ee6
	If 0x8002, 0x6
	CompareLastResultCall EQUAL, Script_branch_1ef3
	If 0x8002, 0x7
	CompareLastResultCall EQUAL, Script_branch_1f00
	If 0x8002, 0x8
	CompareLastResultCall EQUAL, Script_branch_1f0d
	If 0x8002, 0x9
	CompareLastResultCall EQUAL, Script_branch_1f1a
	If 0x8002, 0xa
	CompareLastResultCall EQUAL, Script_branch_1f27
	If 0x8002, 0xb
	CompareLastResultCall EQUAL, Script_branch_1f34
	If 0x8002, 0xc
	CompareLastResultCall EQUAL, Script_branch_1f41
	If 0x8002, 0xd
	CompareLastResultCall EQUAL, Script_branch_1f4e
	If 0x8002, 0xe
	CompareLastResultCall EQUAL, Script_branch_1f5b
	If 0x8002, 0xf
	CompareLastResultCall EQUAL, Script_branch_1f68
	If 0x8002, 0x10
	CompareLastResultCall EQUAL, Script_branch_1f75
	If 0x8002, 0x11
	CompareLastResultCall EQUAL, Script_branch_1f82
	If 0x8002, 0x12
	CompareLastResultCall EQUAL, Script_branch_1f8f
	If 0x8002, 0x13
	CompareLastResultCall EQUAL, Script_branch_1f9c
	If 0x8002, 0xfffe
	CompareLastResultJump EQUAL, Script_branch_18de
	If 0x8003, 0x0
	CompareLastResultJump EQUAL, Script_branch_18c8
	Message 0x79
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_18de
	If 0x8002, 0x0
	CompareLastResultCall EQUAL, Script_branch_1fb1
	If 0x8002, 0x1
	CompareLastResultCall EQUAL, Script_branch_1fbb
	If 0x8002, 0x2
	CompareLastResultCall EQUAL, Script_branch_1fc5
	If 0x8002, 0x3
	CompareLastResultCall EQUAL, Script_branch_1fcf
	If 0x8002, 0x4
	CompareLastResultCall EQUAL, Script_branch_1fd9
	If 0x8002, 0x5
	CompareLastResultCall EQUAL, Script_branch_1fe3
	If 0x8002, 0x6
	CompareLastResultCall EQUAL, Script_branch_1fed
	If 0x8002, 0x7
	CompareLastResultCall EQUAL, Script_branch_1ff7
	If 0x8002, 0x8
	CompareLastResultCall EQUAL, Script_branch_2001
	If 0x8002, 0x9
	CompareLastResultCall EQUAL, Script_branch_200b
	If 0x8002, 0xa
	CompareLastResultCall EQUAL, Script_branch_2015
	If 0x8002, 0xb
	CompareLastResultCall EQUAL, Script_branch_201f
	If 0x8002, 0xc
	CompareLastResultCall EQUAL, Script_branch_2029
	If 0x8002, 0xd
	CompareLastResultCall EQUAL, Script_branch_2033
	If 0x8002, 0xe
	CompareLastResultCall EQUAL, Script_branch_203d
	If 0x8002, 0xf
	CompareLastResultCall EQUAL, Script_branch_2047
	If 0x8002, 0x10
	CompareLastResultCall EQUAL, Script_branch_2051
	If 0x8002, 0x11
	CompareLastResultCall EQUAL, Script_branch_205b
	If 0x8002, 0x12
	CompareLastResultCall EQUAL, Script_branch_2065
	If 0x8002, 0x13
	CompareLastResultCall EQUAL, Script_branch_206f
	If 0x8003, 0x0
	CompareLastResultJump EQUAL, Script_branch_18d3
	Call Function_f7c
	CloseMsgOnKeyPress
	Call Function_1092
	ReleaseAll
	End
@ 18c8

Script_branch_18c8: @ 18c8
	Message 0x7a
	Jump Script_branch_18e6
@ 18d1

.byte 0x2 @ 0x18d1
.byte 0x0 @ 0x18d2

Script_branch_18d3: @ 18d3
	Message 0x7b
	Jump Script_branch_18e6
@ 18dc

.byte 0x2 @ 0x18dc
.byte 0x0 @ 0x18dd

Script_branch_18de: @ 18de
	Jump Script_branch_18f0
@ 18e4

.byte 0x2 @ 0x18e4
.byte 0x0 @ 0x18e5

Script_branch_18e6: @ 18e6
	WaitButton
	Jump Script_branch_18f0
@ 18ee

.byte 0x2 @ 0x18ee
.byte 0x0 @ 0x18ef

Script_branch_18f0: @ 18f0
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 18f8

Function_18f8: @ 18f8
	CheckFlag 0x997
	CompareLastResultJump LESSER, Script_branch_19dc
	CheckFlag 0x998
	CompareLastResultJump LESSER, Script_branch_19dc
	CheckFlag 0x999
	CompareLastResultJump LESSER, Script_branch_19dc
	CheckFlag 0x99a
	CompareLastResultJump LESSER, Script_branch_19dc
	CheckFlag 0x99b
	CompareLastResultJump LESSER, Script_branch_19dc
	CheckFlag 0x99c
	CompareLastResultJump LESSER, Script_branch_19dc
	CheckFlag 0x99d
	CompareLastResultJump LESSER, Script_branch_19dc
	CheckFlag 0x99e
	CompareLastResultJump LESSER, Script_branch_19dc
	CheckFlag 0x99f
	CompareLastResultJump LESSER, Script_branch_19dc
	CheckFlag 0x9a0
	CompareLastResultJump LESSER, Script_branch_19dc
	CheckFlag 0x9a1
	CompareLastResultJump LESSER, Script_branch_19dc
	CheckFlag 0x9a2
	CompareLastResultJump LESSER, Script_branch_19dc
	CheckFlag 0x9a3
	CompareLastResultJump LESSER, Script_branch_19dc
	CheckFlag 0x9a4
	CompareLastResultJump LESSER, Script_branch_19dc
	CheckFlag 0x9a5
	CompareLastResultJump LESSER, Script_branch_19dc
	CheckFlag 0x9a6
	CompareLastResultJump LESSER, Script_branch_19dc
	CheckFlag 0x9a7
	CompareLastResultJump LESSER, Script_branch_19dc
	CheckFlag 0x9a8
	CompareLastResultJump LESSER, Script_branch_19dc
	CheckFlag 0x9a9
	CompareLastResultJump LESSER, Script_branch_19dc
	CheckFlag 0x9aa
	CompareLastResultJump LESSER, Script_branch_19dc
	SetVar 0x800c, 0x1
	Return
@ 19dc

Script_branch_19dc: @ 19dc
	SetVar 0x800c, 0x0
	Return
@ 19e4

Function_19e4: @ 19e4
	Cmd_2f5 0x0, 0x0, 0x1, 0x6
	CheckFlag 0x997
	CompareLastResultCall LESSER, Script_branch_1d15
	CheckFlag 0x997
	CompareLastResultCall EQUAL, Script_branch_1d1f
	Return
@ 1a05

Function_1a05: @ 1a05
	Cmd_2f5 0x0, 0x1d4c0, 0x1, 0x6
	CheckFlag 0x998
	CompareLastResultCall LESSER, Script_branch_1d29
	CheckFlag 0x998
	CompareLastResultCall EQUAL, Script_branch_1d33
	Return
@ 1a26

Function_1a26: @ 1a26
	Cmd_2f5 0x0, 0x15f90, 0x1, 0x6
	CheckFlag 0x999
	CompareLastResultCall LESSER, Script_branch_1d3d
	CheckFlag 0x999
	CompareLastResultCall EQUAL, Script_branch_1d47
	Return
@ 1a47

Function_1a47: @ 1a47
	Cmd_2f5 0x0, 0x2da78, 0x1, 0x6
	CheckFlag 0x99a
	CompareLastResultCall LESSER, Script_branch_1d51
	CheckFlag 0x99a
	CompareLastResultCall EQUAL, Script_branch_1d5b
	Return
@ 1a68

Function_1a68: @ 1a68
	Cmd_2f5 0x0, 0xe290, 0x1, 0x6
	CheckFlag 0x99b
	CompareLastResultCall LESSER, Script_branch_1d65
	CheckFlag 0x99b
	CompareLastResultCall EQUAL, Script_branch_1d6f
	Return
@ 1a89

Function_1a89: @ 1a89
	Cmd_2f5 0x0, 0x35b60, 0x1, 0x6
	CheckFlag 0x99c
	CompareLastResultCall LESSER, Script_branch_1d79
	CheckFlag 0x99c
	CompareLastResultCall EQUAL, Script_branch_1d83
	Return
@ 1aaa

Function_1aaa: @ 1aaa
	Cmd_2f5 0x0, 0x27100, 0x1, 0x6
	CheckFlag 0x99d
	CompareLastResultCall LESSER, Script_branch_1d8d
	CheckFlag 0x99d
	CompareLastResultCall EQUAL, Script_branch_1d97
	Return
@ 1acb

Function_1acb: @ 1acb
	Cmd_2f5 0x0, 0x249f0, 0x1, 0x6
	CheckFlag 0x99e
	CompareLastResultCall LESSER, Script_branch_1da1
	CheckFlag 0x99e
	CompareLastResultCall EQUAL, Script_branch_1dab
	Return
@ 1aec

Function_1aec: @ 1aec
	Cmd_2f5 0x0, 0x1f018, 0x1, 0x6
	CheckFlag 0x99f
	CompareLastResultCall LESSER, Script_branch_1db5
	CheckFlag 0x99f
	CompareLastResultCall EQUAL, Script_branch_1dbf
	Return
@ 1b0d

Function_1b0d: @ 1b0d
	Cmd_2f5 0x0, 0x1d4c0, 0x1, 0x6
	CheckFlag 0x9a0
	CompareLastResultCall LESSER, Script_branch_1dc9
	CheckFlag 0x9a0
	CompareLastResultCall EQUAL, Script_branch_1dd3
	Return
@ 1b2e

Function_1b2e: @ 1b2e
	Cmd_2f5 0x0, 0x29040, 0x1, 0x6
	CheckFlag 0x9a1
	CompareLastResultCall LESSER, Script_branch_1ddd
	CheckFlag 0x9a1
	CompareLastResultCall EQUAL, Script_branch_1de7
	Return
@ 1b4f

Function_1b4f: @ 1b4f
	CheckFlag 0x99f
	CompareLastResultJump LESSER, Script_branch_1d13
	Cmd_2f5 0x0, 0x62d4, 0x1, 0x6
	CheckFlag 0x9a2
	CompareLastResultCall LESSER, Script_branch_1df1
	CheckFlag 0x9a2
	CompareLastResultCall EQUAL, Script_branch_1dfb
	Return
@ 1b7b

Function_1b7b: @ 1b7b
	Cmd_30f 0xd, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1d13
	Cmd_2f5 0x0, 0x249f0, 0x1, 0x6
	CheckFlag 0x9a3
	CompareLastResultCall LESSER, Script_branch_1e05
	CheckFlag 0x9a3
	CompareLastResultCall EQUAL, Script_branch_1e0f
	Return
@ 1baf

Function_1baf: @ 1baf
	Cmd_30f 0xe, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1d13
	Cmd_2f5 0x0, 0x249f0, 0x1, 0x6
	CheckFlag 0x9a4
	CompareLastResultCall LESSER, Script_branch_1e19
	CheckFlag 0x9a4
	CompareLastResultCall EQUAL, Script_branch_1e23
	Return
@ 1be3

Function_1be3: @ 1be3
	Cmd_30f 0xf, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1d13
	Cmd_2f5 0x0, 0x23d0c, 0x1, 0x6
	CheckFlag 0x9a5
	CompareLastResultCall LESSER, Script_branch_1e2d
	CheckFlag 0x9a5
	CompareLastResultCall EQUAL, Script_branch_1e37
	Return
@ 1c17

Function_1c17: @ 1c17
	Cmd_30f 0x10, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1d13
	Cmd_2f5 0x0, 0x32c80, 0x1, 0x6
	CheckFlag 0x9a6
	CompareLastResultCall LESSER, Script_branch_1e41
	CheckFlag 0x9a6
	CompareLastResultCall EQUAL, Script_branch_1e4b
	Return
@ 1c4b

Function_1c4b: @ 1c4b
	Cmd_30f 0x11, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1d13
	Cmd_2f5 0x0, 0xcb20, 0x1, 0x6
	CheckFlag 0x9a7
	CompareLastResultCall LESSER, Script_branch_1e55
	CheckFlag 0x9a7
	CompareLastResultCall EQUAL, Script_branch_1e5f
	Return
@ 1c7f

Function_1c7f: @ 1c7f
	Cmd_30f 0x12, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1d13
	Cmd_2f5 0x0, 0x222e0, 0x1, 0x6
	CheckFlag 0x9a8
	CompareLastResultCall LESSER, Script_branch_1e69
	CheckFlag 0x9a8
	CompareLastResultCall EQUAL, Script_branch_1e73
	Return
@ 1cb3

Function_1cb3: @ 1cb3
	CheckFlag 0x9a6
	CompareLastResultJump LESSER, Script_branch_1d13
	Cmd_2f5 0x0, 0x1a5e0, 0x1, 0x6
	CheckFlag 0x9a9
	CompareLastResultCall LESSER, Script_branch_1e7d
	CheckFlag 0x9a9
	CompareLastResultCall EQUAL, Script_branch_1e87
	Return
@ 1cdf

Function_1cdf: @ 1cdf
	Cmd_30f 0x14, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1d13
	Cmd_2f5 0x0, 0x1d4c0, 0x1, 0x6
	CheckFlag 0x9aa
	CompareLastResultCall LESSER, Script_branch_1e91
	CheckFlag 0x9aa
	CompareLastResultCall EQUAL, Script_branch_1e9b
	Return
@ 1d13

Script_branch_1d13: @ 1d13
	Return
@ 1d15

Script_branch_1d15: @ 1d15
	TxtMsgScrpMulti 0x95, 0xff, 0x0
	Return
@ 1d1f

Script_branch_1d1f: @ 1d1f
	TxtMsgScrpMulti 0xa9, 0xff, 0x0
	Return
@ 1d29

Script_branch_1d29: @ 1d29
	TxtMsgScrpMulti 0x96, 0xff, 0x1
	Return
@ 1d33

Script_branch_1d33: @ 1d33
	TxtMsgScrpMulti 0xaa, 0xff, 0x1
	Return
@ 1d3d

Script_branch_1d3d: @ 1d3d
	TxtMsgScrpMulti 0x97, 0xff, 0x2
	Return
@ 1d47

Script_branch_1d47: @ 1d47
	TxtMsgScrpMulti 0xab, 0xff, 0x2
	Return
@ 1d51

Script_branch_1d51: @ 1d51
	TxtMsgScrpMulti 0x98, 0xff, 0x3
	Return
@ 1d5b

Script_branch_1d5b: @ 1d5b
	TxtMsgScrpMulti 0xac, 0xff, 0x3
	Return
@ 1d65

Script_branch_1d65: @ 1d65
	TxtMsgScrpMulti 0x99, 0xff, 0x4
	Return
@ 1d6f

Script_branch_1d6f: @ 1d6f
	TxtMsgScrpMulti 0xad, 0xff, 0x4
	Return
@ 1d79

Script_branch_1d79: @ 1d79
	TxtMsgScrpMulti 0x9a, 0xff, 0x5
	Return
@ 1d83

Script_branch_1d83: @ 1d83
	TxtMsgScrpMulti 0xae, 0xff, 0x5
	Return
@ 1d8d

Script_branch_1d8d: @ 1d8d
	TxtMsgScrpMulti 0x9b, 0xff, 0x6
	Return
@ 1d97

Script_branch_1d97: @ 1d97
	TxtMsgScrpMulti 0xaf, 0xff, 0x6
	Return
@ 1da1

Script_branch_1da1: @ 1da1
	TxtMsgScrpMulti 0x9c, 0xff, 0x7
	Return
@ 1dab

Script_branch_1dab: @ 1dab
	TxtMsgScrpMulti 0xb0, 0xff, 0x7
	Return
@ 1db5

Script_branch_1db5: @ 1db5
	TxtMsgScrpMulti 0x9d, 0xff, 0x8
	Return
@ 1dbf

Script_branch_1dbf: @ 1dbf
	TxtMsgScrpMulti 0xb1, 0xff, 0x8
	Return
@ 1dc9

Script_branch_1dc9: @ 1dc9
	TxtMsgScrpMulti 0x9e, 0xff, 0x9
	Return
@ 1dd3

Script_branch_1dd3: @ 1dd3
	TxtMsgScrpMulti 0xb2, 0xff, 0x9
	Return
@ 1ddd

Script_branch_1ddd: @ 1ddd
	TxtMsgScrpMulti 0x9f, 0xff, 0xa
	Return
@ 1de7

Script_branch_1de7: @ 1de7
	TxtMsgScrpMulti 0xb3, 0xff, 0xa
	Return
@ 1df1

Script_branch_1df1: @ 1df1
	TxtMsgScrpMulti 0xa0, 0xff, 0xb
	Return
@ 1dfb

Script_branch_1dfb: @ 1dfb
	TxtMsgScrpMulti 0xb4, 0xff, 0xb
	Return
@ 1e05

Script_branch_1e05: @ 1e05
	TxtMsgScrpMulti 0xa1, 0xff, 0xc
	Return
@ 1e0f

Script_branch_1e0f: @ 1e0f
	TxtMsgScrpMulti 0xb5, 0xff, 0xc
	Return
@ 1e19

Script_branch_1e19: @ 1e19
	TxtMsgScrpMulti 0xa2, 0xff, 0xd
	Return
@ 1e23

Script_branch_1e23: @ 1e23
	TxtMsgScrpMulti 0xb6, 0xff, 0xd
	Return
@ 1e2d

Script_branch_1e2d: @ 1e2d
	TxtMsgScrpMulti 0xa3, 0xff, 0xe
	Return
@ 1e37

Script_branch_1e37: @ 1e37
	TxtMsgScrpMulti 0xb7, 0xff, 0xe
	Return
@ 1e41

Script_branch_1e41: @ 1e41
	TxtMsgScrpMulti 0xa4, 0xff, 0xf
	Return
@ 1e4b

Script_branch_1e4b: @ 1e4b
	TxtMsgScrpMulti 0xb8, 0xff, 0xf
	Return
@ 1e55

Script_branch_1e55: @ 1e55
	TxtMsgScrpMulti 0xa5, 0xff, 0x10
	Return
@ 1e5f

Script_branch_1e5f: @ 1e5f
	TxtMsgScrpMulti 0xb9, 0xff, 0x10
	Return
@ 1e69

Script_branch_1e69: @ 1e69
	TxtMsgScrpMulti 0xa6, 0xff, 0x11
	Return
@ 1e73

Script_branch_1e73: @ 1e73
	TxtMsgScrpMulti 0xba, 0xff, 0x11
	Return
@ 1e7d

Script_branch_1e7d: @ 1e7d
	TxtMsgScrpMulti 0xa7, 0xff, 0x12
	Return
@ 1e87

Script_branch_1e87: @ 1e87
	TxtMsgScrpMulti 0xbb, 0xff, 0x12
	Return
@ 1e91

Script_branch_1e91: @ 1e91
	TxtMsgScrpMulti 0xa8, 0xff, 0x13
	Return
@ 1e9b

Script_branch_1e9b: @ 1e9b
	TxtMsgScrpMulti 0xbc, 0xff, 0x13
	Return
@ 1ea5

Script_branch_1ea5: @ 1ea5
	CheckFlag 0x997
	CompareLastResultJump EQUAL, Script_branch_1fa9
	Return
@ 1eb2

Script_branch_1eb2: @ 1eb2
	CheckFlag 0x998
	CompareLastResultJump EQUAL, Script_branch_1fa9
	Return
@ 1ebf

Script_branch_1ebf: @ 1ebf
	CheckFlag 0x999
	CompareLastResultJump EQUAL, Script_branch_1fa9
	Return
@ 1ecc

Script_branch_1ecc: @ 1ecc
	CheckFlag 0x99a
	CompareLastResultJump EQUAL, Script_branch_1fa9
	Return
@ 1ed9

Script_branch_1ed9: @ 1ed9
	CheckFlag 0x99b
	CompareLastResultJump EQUAL, Script_branch_1fa9
	Return
@ 1ee6

Script_branch_1ee6: @ 1ee6
	CheckFlag 0x99c
	CompareLastResultJump EQUAL, Script_branch_1fa9
	Return
@ 1ef3

Script_branch_1ef3: @ 1ef3
	CheckFlag 0x99d
	CompareLastResultJump EQUAL, Script_branch_1fa9
	Return
@ 1f00

Script_branch_1f00: @ 1f00
	CheckFlag 0x99e
	CompareLastResultJump EQUAL, Script_branch_1fa9
	Return
@ 1f0d

Script_branch_1f0d: @ 1f0d
	CheckFlag 0x99f
	CompareLastResultJump EQUAL, Script_branch_1fa9
	Return
@ 1f1a

Script_branch_1f1a: @ 1f1a
	CheckFlag 0x9a0
	CompareLastResultJump EQUAL, Script_branch_1fa9
	Return
@ 1f27

Script_branch_1f27: @ 1f27
	CheckFlag 0x9a1
	CompareLastResultJump EQUAL, Script_branch_1fa9
	Return
@ 1f34

Script_branch_1f34: @ 1f34
	CheckFlag 0x9a2
	CompareLastResultJump EQUAL, Script_branch_1fa9
	Return
@ 1f41

Script_branch_1f41: @ 1f41
	CheckFlag 0x9a3
	CompareLastResultJump EQUAL, Script_branch_1fa9
	Return
@ 1f4e

Script_branch_1f4e: @ 1f4e
	CheckFlag 0x9a4
	CompareLastResultJump EQUAL, Script_branch_1fa9
	Return
@ 1f5b

Script_branch_1f5b: @ 1f5b
	CheckFlag 0x9a5
	CompareLastResultJump EQUAL, Script_branch_1fa9
	Return
@ 1f68

Script_branch_1f68: @ 1f68
	CheckFlag 0x9a6
	CompareLastResultJump EQUAL, Script_branch_1fa9
	Return
@ 1f75

Script_branch_1f75: @ 1f75
	CheckFlag 0x9a7
	CompareLastResultJump EQUAL, Script_branch_1fa9
	Return
@ 1f82

Script_branch_1f82: @ 1f82
	CheckFlag 0x9a8
	CompareLastResultJump EQUAL, Script_branch_1fa9
	Return
@ 1f8f

Script_branch_1f8f: @ 1f8f
	CheckFlag 0x9a9
	CompareLastResultJump EQUAL, Script_branch_1fa9
	Return
@ 1f9c

Script_branch_1f9c: @ 1f9c
	CheckFlag 0x9aa
	CompareLastResultJump EQUAL, Script_branch_1fa9
	Return
@ 1fa9

Script_branch_1fa9: @ 1fa9
	SetVar 0x8003, 0x0
	Return
@ 1fb1

Script_branch_1fb1: @ 1fb1
	CheckMoney 0x8003, 0x0
	Return
@ 1fbb

Script_branch_1fbb: @ 1fbb
	CheckMoney 0x8003, 0x1d4c0
	Return
@ 1fc5

Script_branch_1fc5: @ 1fc5
	CheckMoney 0x8003, 0x15f90
	Return
@ 1fcf

Script_branch_1fcf: @ 1fcf
	CheckMoney 0x8003, 0x2da78
	Return
@ 1fd9

Script_branch_1fd9: @ 1fd9
	CheckMoney 0x8003, 0xe290
	Return
@ 1fe3

Script_branch_1fe3: @ 1fe3
	CheckMoney 0x8003, 0x35b60
	Return
@ 1fed

Script_branch_1fed: @ 1fed
	CheckMoney 0x8003, 0x27100
	Return
@ 1ff7

Script_branch_1ff7: @ 1ff7
	CheckMoney 0x8003, 0x249f0
	Return
@ 2001

Script_branch_2001: @ 2001
	CheckMoney 0x8003, 0x1f018
	Return
@ 200b

Script_branch_200b: @ 200b
	CheckMoney 0x8003, 0x1d4c0
	Return
@ 2015

Script_branch_2015: @ 2015
	CheckMoney 0x8003, 0x29040
	Return
@ 201f

Script_branch_201f: @ 201f
	CheckMoney 0x8003, 0x62d4
	Return
@ 2029

Script_branch_2029: @ 2029
	CheckMoney 0x8003, 0x249f0
	Return
@ 2033

Script_branch_2033: @ 2033
	CheckMoney 0x8003, 0x249f0
	Return
@ 203d

Script_branch_203d: @ 203d
	CheckMoney 0x8003, 0x23d0c
	Return
@ 2047

Script_branch_2047: @ 2047
	CheckMoney 0x8003, 0x32c80
	Return
@ 2051

Script_branch_2051: @ 2051
	CheckMoney 0x8003, 0xcb20
	Return
@ 205b

Script_branch_205b: @ 205b
	CheckMoney 0x8003, 0x222e0
	Return
@ 2065

Script_branch_2065: @ 2065
	CheckMoney 0x8003, 0x1a5e0
	Return
@ 206f

Script_branch_206f: @ 206f
	CheckMoney 0x8003, 0x1d4c0
	Return
@ 2079

Script_branch_2079: @ 2079
	Cmd_335 0x23, 0x0
	TakeMoney 0
	SetFlag 0x997
	Return
@ 208d

Script_branch_208d: @ 208d
	Cmd_335 0x23, 0x1d4c0
	TakeMoney 120000
	SetFlag 0x998
	Return
@ 20a1

Script_branch_20a1: @ 20a1
	Cmd_335 0x23, 0x15f90
	TakeMoney 90000
	SetFlag 0x999
	Return
@ 20b5

Script_branch_20b5: @ 20b5
	Cmd_335 0x23, 0x2da78
	TakeMoney 187000
	SetFlag 0x99a
	Return
@ 20c9

Script_branch_20c9: @ 20c9
	Cmd_335 0x23, 0xe290
	TakeMoney 58000
	SetFlag 0x99b
	Return
@ 20dd

Script_branch_20dd: @ 20dd
	Cmd_335 0x23, 0x35b60
	TakeMoney 220000
	SetFlag 0x99c
	Return
@ 20f1

Script_branch_20f1: @ 20f1
	Cmd_335 0x23, 0x27100
	TakeMoney 160000
	SetFlag 0x99d
	Return
@ 2105

Script_branch_2105: @ 2105
	Cmd_335 0x23, 0x249f0
	TakeMoney 150000
	SetFlag 0x99e
	Return
@ 2119

Script_branch_2119: @ 2119
	Cmd_335 0x23, 0x1f018
	TakeMoney 127000
	SetFlag 0x99f
	Return
@ 212d

Script_branch_212d: @ 212d
	Cmd_335 0x23, 0x1d4c0
	TakeMoney 120000
	SetFlag 0x9a0
	Return
@ 2141

Script_branch_2141: @ 2141
	Cmd_335 0x23, 0x29040
	TakeMoney 168000
	SetFlag 0x9a1
	Return
@ 2155

Script_branch_2155: @ 2155
	Cmd_335 0x23, 0x62d4
	TakeMoney 25300
	SetFlag 0x9a2
	Return
@ 2169

Script_branch_2169: @ 2169
	Cmd_335 0x23, 0x249f0
	TakeMoney 150000
	SetFlag 0x9a3
	Return
@ 217d

Script_branch_217d: @ 217d
	Cmd_335 0x23, 0x249f0
	TakeMoney 150000
	SetFlag 0x9a4
	Return
@ 2191

Script_branch_2191: @ 2191
	Cmd_335 0x23, 0x23d0c
	TakeMoney 146700
	SetFlag 0x9a5
	Return
@ 21a5

Script_branch_21a5: @ 21a5
	Cmd_335 0x23, 0x32c80
	TakeMoney 208000
	SetFlag 0x9a6
	Return
@ 21b9

Script_branch_21b9: @ 21b9
	Cmd_335 0x23, 0xcb20
	TakeMoney 52000
	SetFlag 0x9a7
	Return
@ 21cd

Script_branch_21cd: @ 21cd
	Cmd_335 0x23, 0x222e0
	TakeMoney 140000
	SetFlag 0x9a8
	Return
@ 21e1

Script_branch_21e1: @ 21e1
	Cmd_335 0x23, 0x1a5e0
	TakeMoney 108000
	SetFlag 0x9a9
	Return
@ 21f5

Script_branch_21f5: @ 21f5
	Cmd_335 0x23, 0x1d4c0
	TakeMoney 120000
	SetFlag 0x9aa
	Return
@ 2209

Function_2209: @ 2209
	If 0x404e, 0x0
	CompareLastResultCall EQUAL, Script_branch_22ce
	If 0x404e, 0x1
	CompareLastResultCall EQUAL, Script_branch_22d4
	If 0x404e, 0x2
	CompareLastResultCall EQUAL, Script_branch_22da
	If 0x404e, 0x3
	CompareLastResultCall EQUAL, Script_branch_22eb
	If 0x404e, 0x4
	CompareLastResultCall EQUAL, Script_branch_22f1
	If 0x404e, 0x5
	CompareLastResultCall EQUAL, Script_branch_2302
	If 0x404e, 0x6
	CompareLastResultCall EQUAL, Script_branch_2313
	If 0x404e, 0x7
	CompareLastResultCall EQUAL, Script_branch_2324
	If 0x404e, 0x8
	CompareLastResultCall EQUAL, Script_branch_2335
	If 0x404e, 0x9
	CompareLastResultCall EQUAL, Script_branch_2346
	If 0x404e, 0xa
	CompareLastResultCall EQUAL, Script_branch_2357
	If 0x404e, 0xb
	CompareLastResultCall EQUAL, Script_branch_2368
	If 0x404e, 0xc
	CompareLastResultCall EQUAL, Script_branch_236e
	If 0x404e, 0xd
	CompareLastResultCall EQUAL, Script_branch_237f
	If 0x404e, 0xe
	CompareLastResultCall EQUAL, Script_branch_2389
	Return
@ 22ce

Script_branch_22ce: @ 22ce
	RemovePeople 0x1
	Return
@ 22d4

Script_branch_22d4: @ 22d4
	RemovePeople 0x0
	Return
@ 22da

Script_branch_22da: @ 22da
	CheckFlag 0x9ab
	CompareLastResultJump LESSER, Script_branch_2395
	RemovePeople 0x2
	Return
@ 22eb

Script_branch_22eb: @ 22eb
	RemovePeople 0x3
	Return
@ 22f1

Script_branch_22f1: @ 22f1
	CheckFlag 0x9ab
	CompareLastResultJump LESSER, Script_branch_2395
	RemovePeople 0x4
	Return
@ 2302

Script_branch_2302: @ 2302
	CheckFlag 0x9ab
	CompareLastResultJump LESSER, Script_branch_2395
	RemovePeople 0x5
	Return
@ 2313

Script_branch_2313: @ 2313
	CheckFlag 0x9ac
	CompareLastResultJump LESSER, Script_branch_2393
	RemovePeople 0x6
	Return
@ 2324

Script_branch_2324: @ 2324
	CheckFlag 0x9ab
	CompareLastResultJump LESSER, Script_branch_2395
	RemovePeople 0x7
	Return
@ 2335

Script_branch_2335: @ 2335
	CheckFlag 0x9ac
	CompareLastResultJump LESSER, Script_branch_2393
	RemovePeople 0x9
	Return
@ 2346

Script_branch_2346: @ 2346
	CheckFlag 0x9ab
	CompareLastResultJump LESSER, Script_branch_2395
	RemovePeople 0x8
	Return
@ 2357

Script_branch_2357: @ 2357
	CheckFlag 0x9ac
	CompareLastResultJump LESSER, Script_branch_2393
	RemovePeople 0xa
	Return
@ 2368

Script_branch_2368: @ 2368
	RemovePeople 0xb
	Return
@ 236e

Script_branch_236e: @ 236e
	CheckFlag 0x9ac
	CompareLastResultJump LESSER, Script_branch_2393
	RemovePeople 0xc
	Return
@ 237f

Script_branch_237f: @ 237f
	RemovePeople 0xd
	RemovePeople 0xb
	Return
@ 2389

Script_branch_2389: @ 2389
	RemovePeople 0x7
	RemovePeople 0xa
	Return
@ 2393

Script_branch_2393: @ 2393
	Return
@ 2395

Script_branch_2395: @ 2395
	SetFlag 0x2aa
	SetFlag 0x2ad
	SetFlag 0x2af
	SetFlag 0x2b2
	SetFlag 0x2b5
	Return
@ 23ab

.byte 0x0 @ 0x23ab

@ end_0x23ac
