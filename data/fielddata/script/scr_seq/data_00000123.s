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
	.hword 0xfd13
@ 5e

Script_1: @ 5e
	SetVar 0x40c7, 0x0
	SetFlag 0x17e
	If 0x407c, 0x5
	CompareLastResultCall EQUAL, Script_branch_74d
	If 0x407c, 0x4
	CompareLastResultCall EQUAL, Script_branch_721
	If 0x407c, 0x4
	CompareLastResultCall EQUAL, Script_branch_737
	CheckFlag 0x102
	CompareLastResultJump EQUAL, Script_branch_9c
	End
@ 9c

Script_branch_9c: @ 9c
	ChangeOwPosition 0x15, 0x27d, 0x32c
	ReleaseOw 0x15, 0x3
	ChangeOwMovement 0x15, 0x11
	End
@ b2

Script_2: @ b2
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c5

Script_3: @ c5
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1e
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d8

Script_4: @ d8
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ eb

Script_5: @ eb
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x20
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ fe

Script_6: @ fe
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 3, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_124
	Message 0x21
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 124

Script_branch_124: @ 124
	Message 0x22
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 12f

Script_10: @ 12f
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x128
	CompareLastResultJump EQUAL, Script_branch_189
	StoreStarter 0x800c
	If 0x800c, 0x183
	CompareLastResultCall EQUAL, Script_branch_194
	If 0x800c, 0x186
	CompareLastResultCall EQUAL, Script_branch_19c
	If 0x800c, 0x189
	CompareLastResultCall EQUAL, Script_branch_1a4
	CheckAccessories3 0x0, 0x8004
	Message 0x25
	SetVar 0x8005, 0x1
	CallStandard 0x7df
	SetFlag 0x128
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 189

Script_branch_189: @ 189
	Message 0x26
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 194

Script_branch_194: @ 194
	SetVar 0x8004, 0x5d
	Return
@ 19c

Script_branch_19c: @ 19c
	SetVar 0x8004, 0x5e
	Return
@ 1a4

Script_branch_1a4: @ 1a4
	SetVar 0x8004, 0x5c
	Return
@ 1ac

Script_11: @ 1ac
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x27
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1bf

Script_12: @ 1bf
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x28
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1d2

Script_7: @ 1d2
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x23
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1e5

Script_8: @ 1e5
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x23, 0x0
	Message 0x24
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 204

Script_9: @ 204
	PlayFanfare 0x5dc
	LockAll
	CheckFlag 0x102
	CompareLastResultJump EQUAL, Script_branch_220
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 220

Script_branch_220: @ 220
	FacePlayer
	Message 0x1c
	CloseMsgOnKeyPress
	CheckFacePosition 0x800c
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_25a
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_27a
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_292
	Jump Script_branch_2b2
@ 258

.byte 0x2 @ 0x258
.byte 0x0 @ 0x259

Script_branch_25a: @ 25a
	SetVar 0x8007, 0x2
	ApplyMovement 0x15, Movement_388
	ApplyMovement 0xff, Movement_2ec
	WaitMovement
	Jump Script_branch_2d2
@ 278

.byte 0x2 @ 0x278
.byte 0x0 @ 0x279

Script_branch_27a: @ 27a
	SetVar 0x8007, 0x3
	ApplyMovement 0x15, Movement_398
	WaitMovement
	Jump Script_branch_2d2
@ 290

.byte 0x2 @ 0x290
.byte 0x0 @ 0x291

Script_branch_292: @ 292
	SetVar 0x8007, 0x0
	ApplyMovement 0x15, Movement_398
	ApplyMovement 0xff, Movement_30c
	WaitMovement
	Jump Script_branch_2d2
@ 2b0

.byte 0x2 @ 0x2b0
.byte 0x0 @ 0x2b1

Script_branch_2b2: @ 2b2
	SetVar 0x8007, 0x1
	ApplyMovement 0x15, Movement_398
	ApplyMovement 0xff, Movement_304
	WaitMovement
	Jump Script_branch_2d2
@ 2d0

.byte 0x2 @ 0x2d0
.byte 0x0 @ 0x2d1

Script_branch_2d2: @ 2d2
	PlayFanfare 0x603
	RemovePeople 0x15
	SetFlag 0x103
	ReleaseAll
	End
@ 2e2

.byte 0x0 @ 0x2e2
.byte 0x0 @ 0x2e3
.byte 0x22 @ 0x2e4
.byte 0x0 @ 0x2e5
.byte 0x1 @ 0x2e6
.byte 0x0 @ 0x2e7
.byte 0xfe @ 0x2e8
.byte 0x0 @ 0x2e9
.byte 0x0 @ 0x2ea
.byte 0x0 @ 0x2eb

Movement_2ec: @ 2ec
	MoveDownFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 2f8

.byte 0x20 @ 0x2f8
.byte 0x0 @ 0x2f9
.byte 0x1 @ 0x2fa
.byte 0x0 @ 0x2fb
.byte 0x23 @ 0x2fc
.byte 0x0 @ 0x2fd
.byte 0x1 @ 0x2fe
.byte 0x0 @ 0x2ff
.byte 0xfe @ 0x300
.byte 0x0 @ 0x301
.byte 0x0 @ 0x302
.byte 0x0 @ 0x303

Movement_304: @ 304
	MoveRightFast 0x1
	EndMovement 0x0
@ 30c

Movement_30c: @ 30c
	MoveRightFast 0x1
	EndMovement 0x0
@ 314

.byte 0x21 @ 0x314
.byte 0x0 @ 0x315
.byte 0x1 @ 0x316
.byte 0x0 @ 0x317
.byte 0x23 @ 0x318
.byte 0x0 @ 0x319
.byte 0x1 @ 0x31a
.byte 0x0 @ 0x31b
.byte 0xfe @ 0x31c
.byte 0x0 @ 0x31d
.byte 0x0 @ 0x31e
.byte 0x0 @ 0x31f
.byte 0x21 @ 0x320
.byte 0x0 @ 0x321
.byte 0x1 @ 0x322
.byte 0x0 @ 0x323
.byte 0x23 @ 0x324
.byte 0x0 @ 0x325
.byte 0x1 @ 0x326
.byte 0x0 @ 0x327
.byte 0xfe @ 0x328
.byte 0x0 @ 0x329
.byte 0x0 @ 0x32a
.byte 0x0 @ 0x32b
.byte 0x20 @ 0x32c
.byte 0x0 @ 0x32d
.byte 0x1 @ 0x32e
.byte 0x0 @ 0x32f
.byte 0x23 @ 0x330
.byte 0x0 @ 0x331
.byte 0x1 @ 0x332
.byte 0x0 @ 0x333
.byte 0xfe @ 0x334
.byte 0x0 @ 0x335
.byte 0x0 @ 0x336
.byte 0x0 @ 0x337
.byte 0x21 @ 0x338
.byte 0x0 @ 0x339
.byte 0x1 @ 0x33a
.byte 0x0 @ 0x33b
.byte 0x23 @ 0x33c
.byte 0x0 @ 0x33d
.byte 0x1 @ 0x33e
.byte 0x0 @ 0x33f
.byte 0xfe @ 0x340
.byte 0x0 @ 0x341
.byte 0x0 @ 0x342
.byte 0x0 @ 0x343
.byte 0x13 @ 0x344
.byte 0x0 @ 0x345
.byte 0x9 @ 0x346
.byte 0x0 @ 0x347
.byte 0xfe @ 0x348
.byte 0x0 @ 0x349
.byte 0x0 @ 0x34a
.byte 0x0 @ 0x34b
.byte 0x13 @ 0x34c
.byte 0x0 @ 0x34d
.byte 0x7 @ 0x34e
.byte 0x0 @ 0x34f
.byte 0xfe @ 0x350
.byte 0x0 @ 0x351
.byte 0x0 @ 0x352
.byte 0x0 @ 0x353
.byte 0x11 @ 0x354
.byte 0x0 @ 0x355
.byte 0x1 @ 0x356
.byte 0x0 @ 0x357
.byte 0x13 @ 0x358
.byte 0x0 @ 0x359
.byte 0x8 @ 0x35a
.byte 0x0 @ 0x35b
.byte 0xfe @ 0x35c
.byte 0x0 @ 0x35d
.byte 0x0 @ 0x35e
.byte 0x0 @ 0x35f
.byte 0x10 @ 0x360
.byte 0x0 @ 0x361
.byte 0x1 @ 0x362
.byte 0x0 @ 0x363
.byte 0x13 @ 0x364
.byte 0x0 @ 0x365
.byte 0x8 @ 0x366
.byte 0x0 @ 0x367
.byte 0xfe @ 0x368
.byte 0x0 @ 0x369
.byte 0x0 @ 0x36a
.byte 0x0 @ 0x36b
.byte 0x4b @ 0x36c
.byte 0x0 @ 0x36d
.byte 0x1 @ 0x36e
.byte 0x0 @ 0x36f
.byte 0xfe @ 0x370
.byte 0x0 @ 0x371
.byte 0x0 @ 0x372
.byte 0x0 @ 0x373
.byte 0x11 @ 0x374
.byte 0x0 @ 0x375
.byte 0x1 @ 0x376
.byte 0x0 @ 0x377
.byte 0x13 @ 0x378
.byte 0x0 @ 0x379
.byte 0xa @ 0x37a
.byte 0x0 @ 0x37b
.byte 0xfe @ 0x37c
.byte 0x0 @ 0x37d
.byte 0x0 @ 0x37e
.byte 0x0 @ 0x37f
.byte 0x13 @ 0x380
.byte 0x0 @ 0x381
.byte 0xa @ 0x382
.byte 0x0 @ 0x383
.byte 0xfe @ 0x384
.byte 0x0 @ 0x385
.byte 0x0 @ 0x386
.byte 0x0 @ 0x387

Movement_388: @ 388
	WalkDownVeryFast  0x1
	WalkRightVeryFast 0x2
	MoveRightVeryFast 0x1
	EndMovement 0x0
@ 398

Movement_398: @ 398
	WalkRightVeryFast 0x2
	MoveRightVeryFast 0x1
	EndMovement 0x0
@ 3a4

.byte 0x11 @ 0x3a4
.byte 0x0 @ 0x3a5
.byte 0x1 @ 0x3a6
.byte 0x0 @ 0x3a7
.byte 0x13 @ 0x3a8
.byte 0x0 @ 0x3a9
.byte 0x2 @ 0x3aa
.byte 0x0 @ 0x3ab
.byte 0x27 @ 0x3ac
.byte 0x0 @ 0x3ad
.byte 0x1 @ 0x3ae
.byte 0x0 @ 0x3af
.byte 0xfe @ 0x3b0
.byte 0x0 @ 0x3b1
.byte 0x0 @ 0x3b2
.byte 0x0 @ 0x3b3
.byte 0x11 @ 0x3b4
.byte 0x0 @ 0x3b5
.byte 0x1 @ 0x3b6
.byte 0x0 @ 0x3b7
.byte 0x13 @ 0x3b8
.byte 0x0 @ 0x3b9
.byte 0x4 @ 0x3ba
.byte 0x0 @ 0x3bb
.byte 0x27 @ 0x3bc
.byte 0x0 @ 0x3bd
.byte 0x1 @ 0x3be
.byte 0x0 @ 0x3bf
.byte 0xfe @ 0x3c0
.byte 0x0 @ 0x3c1
.byte 0x0 @ 0x3c2
.byte 0x0 @ 0x3c3
.byte 0x10 @ 0x3c4
.byte 0x0 @ 0x3c5
.byte 0x1 @ 0x3c6
.byte 0x0 @ 0x3c7
.byte 0x13 @ 0x3c8
.byte 0x0 @ 0x3c9
.byte 0x3 @ 0x3ca
.byte 0x0 @ 0x3cb
.byte 0x27 @ 0x3cc
.byte 0x0 @ 0x3cd
.byte 0x1 @ 0x3ce
.byte 0x0 @ 0x3cf
.byte 0xfe @ 0x3d0
.byte 0x0 @ 0x3d1
.byte 0x0 @ 0x3d2
.byte 0x0 @ 0x3d3
.byte 0x11 @ 0x3d4
.byte 0x0 @ 0x3d5
.byte 0x1 @ 0x3d6
.byte 0x0 @ 0x3d7
.byte 0x13 @ 0x3d8
.byte 0x0 @ 0x3d9
.byte 0x3 @ 0x3da
.byte 0x0 @ 0x3db
.byte 0x27 @ 0x3dc
.byte 0x0 @ 0x3dd
.byte 0x1 @ 0x3de
.byte 0x0 @ 0x3df
.byte 0xfe @ 0x3e0
.byte 0x0 @ 0x3e1
.byte 0x0 @ 0x3e2
.byte 0x0 @ 0x3e3

Script_13: @ 3e4
	CallMessageBox 0x29, 0x0, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 3fb

Script_14: @ 3fb
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x2a, 0x800c
	CallStandard 0x7d0
	End
@ 410

Script_15: @ 410
	CallMessageBox 0x2b, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 427

Script_16: @ 427
	CallMessageBox 0x2c, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 43e

Script_17: @ 43e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x407c, 0x5
	CompareLastResultJump 0x4, Script_branch_4ae
	If 0x407c, 0x4
	CompareLastResultJump 0x4, Script_branch_471
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x4
	Jump Script_branch_4a6
@ 46f

.byte 0x2 @ 0x46f
.byte 0x0 @ 0x470

Script_branch_471: @ 471
	CheckFacePosition 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_498
	SetVariableRival 0x0
	Message 0x10
	CloseMsgOnKeyPress
	ApplyMovement 0x1a, Movement_4c0
	WaitMovement
	ReleaseAll
	End
@ 498

Script_branch_498: @ 498
	SetVariableRival 0x0
	Message 0xf
	Jump Script_branch_4a6
@ 4a4

.byte 0x2 @ 0x4a4
.byte 0x0 @ 0x4a5

Script_branch_4a6: @ 4a6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4ae

Script_branch_4ae: @ 4ae
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x1b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4bf

.byte 0x0 @ 0x4bf

Movement_4c0: @ 4c0
	MoveDownFast 0x1
	EndMovement 0x0
@ 4c8

Script_18: @ 4c8
	LockAll
	ClearFlag 0x1a9
	ChangeOwPosition 0x1a, 0x253, 0x333
	ChangeOwMovement 0x1a, 0x10
	ReleaseOw 0x1a, 0x2
	AddPeople 0x1a
	ApplyMovement 0x1a, Movement_5b0
	WaitMovement
	CallStandard 0x7fa
	ApplyMovement 0x1a, Movement_5c0
	ApplyMovement 0xff, Movement_5a4
	WaitMovement
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x5
	CloseMsgOnKeyPress
	ApplyMovement 0x1a, Movement_5cc
	WaitMovement
	StoreStarter 0x800c
	If 0x800c, 0x183
	CompareLastResultJump EQUAL, Script_branch_54b
	If 0x800c, 0x186
	CompareLastResultJump EQUAL, Script_branch_557
	Jump Script_branch_53f
@ 53f

Script_branch_53f: @ 53f
	TrainerBattle 0x1d9, 0x0
	Jump Script_branch_563
@ 54b

Script_branch_54b: @ 54b
	TrainerBattle 0x1da, 0x0
	Jump Script_branch_563
@ 557

Script_branch_557: @ 557
	TrainerBattle 0x1db, 0x0
	Jump Script_branch_563
@ 563

Script_branch_563: @ 563
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_597
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x6
	CloseMsgOnKeyPress
	ApplyMovement 0x1a, Movement_5d4
	WaitMovement
	RemovePeople 0x1a
	SetVar 0x407c, 0x2
	ReleaseAll
	End
@ 597

Script_branch_597: @ 597
	SetFlag 0x1a9
	LostGoPc
	ReleaseAll
	End
@ 5a1

.byte 0x0 @ 0x5a1
.byte 0x0 @ 0x5a2
.byte 0x0 @ 0x5a3

Movement_5a4: @ 5a4
	Move_3e 0xd
	MoveRightFast 0x1
	EndMovement 0x0
@ 5b0

Movement_5b0: @ 5b0
	WalkDownVeryFast  0x9
	MoveLeftVeryFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 5c0

Movement_5c0: @ 5c0
	WalkLeftVeryFast 0x4
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 5cc

Movement_5cc: @ 5cc
	WalkLeftFast 0x1
	EndMovement 0x0
@ 5d4

Movement_5d4: @ 5d4
	WalkRightVeryFast 0x5
	WalkUpVeryFast  0x9
	EndMovement 0x0
@ 5e0

Script_19: @ 5e0
	LockAll
	ClearFlag 0x1a9
	ChangeOwPosition 0x1a, 0x253, 0x333
	ChangeOwMovement 0x1a, 0xf
	ReleaseOw 0x1a, 0x1
	AddPeople 0x1a
	Lock 0x1a
	ApplyMovement 0x1a, Movement_798
	ApplyMovement 0xff, Movement_7cc
	WaitMovement
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x7
	CloseMsgOnKeyPress
	PrepareDoorAnimation 0x12, 0x19, 0xd, 0x1b, 0x4d
	OpenDoor 0x4d
	WaitAction 0x4d
	ApplyMovement 0xff, Movement_7d8
	WaitMovement
	ClearFlag 0x1fb
	ChangeOwPosition 0x1b, 0x24d, 0x33b
	ReleaseOw 0x1b, 0x0
	ChangeOwMovement 0x1b, 0xe
	AddPeople 0x1b
	Lock 0x1b
	ApplyMovement 0x1b, Movement_764
	WaitMovement
	CloseDoor 0x4d
	WaitAction 0x4d
	WaitClose 0x4d
	SetFlag 0x20f
	ApplyMovement 0x1b, Movement_76c
	WaitMovement
	Message 0x8
	CloseMsgOnKeyPress
	ApplyMovement 0x1a, Movement_7a4
	WaitMovement
	SetVariableRival 0x0
	Message 0x9
	ApplyMovement 0x1b, Movement_77c
	WaitMovement
	Message 0xa
	ApplyMovement 0x1b, Movement_784
	WaitMovement
	Message 0xb
	SetVariableRival 0x0
	Message 0xc
	ApplyMovement 0x1b, Movement_77c
	WaitMovement
	Message 0xd
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_7ec
	ApplyMovement 0x1a, Movement_7ac
	ApplyMovement 0x1b, Movement_78c
	WaitMovement
	SetVariableRival 0x0
	Message 0xe
	CloseMsgOnKeyPress
	ApplyMovement 0x1a, Movement_7c0
	WaitMovement
	Call Script_branch_737
	ClearFlag 0x1fb
	SetOwPosition 0x1b, 0x263, 0x0, 0x32a, 0x0
	Call Script_branch_721
	ClearFlag 0x1a9
	SetOwPosition 0x1a, 0x260, 0x0, 0x32e, 0x1
	SetVar 0x407c, 0x4
	ReleaseAll
	End
@ 721

Function_721: @ 721
Script_branch_721: @ 721
	ChangeOwPosition 0x1a, 0x260, 0x32e
	ReleaseOw 0x1a, 0x1
	ChangeOwMovement 0x1a, 0xf
	Return
@ 737

Function_737: @ 737
Script_branch_737: @ 737
	ChangeOwPosition 0x1b, 0x263, 0x32a
	ReleaseOw 0x1b, 0x0
	ChangeOwMovement 0x1b, 0xe
	Return
@ 74d

Script_branch_74d: @ 74d
	ChangeOwPosition 0x1a, 0x263, 0x32a
	ReleaseOw 0x1a, 0x0
	ChangeOwMovement 0x1a, 0xe
	Return
@ 763

.byte 0x0 @ 0x763

Movement_764: @ 764
	WalkDownFast 0x1
	EndMovement 0x0
@ 76c

Movement_76c: @ 76c
	MoveRightFast 0x1
	Move_3f 0x2
	MoveDownFast 0x1
	EndMovement 0x0
@ 77c

Movement_77c: @ 77c
	MoveRightFast 0x1
	EndMovement 0x0
@ 784

Movement_784: @ 784
	MoveDownFast 0x1
	EndMovement 0x0
@ 78c

Movement_78c: @ 78c
	WalkRightVeryFast 0x6
	WalkUpVeryFast  0x8
	EndMovement 0x0
@ 798

Movement_798: @ 798
	WalkDownVeryFast  0x9
	WalkLeftVeryFast 0x5
	EndMovement 0x0
@ 7a4

Movement_7a4: @ 7a4
	Exclamation 0x1
	EndMovement 0x0
@ 7ac

Movement_7ac: @ 7ac
	Move_47 0x1
	WalkDownVeryFast  0x1
	Move_48 0x1
	MoveRightVeryFast 0x1
	EndMovement 0x0
@ 7c0

Movement_7c0: @ 7c0
	WalkRightVeryFast 0x5
	WalkUpVeryFast  0x8
	EndMovement 0x0
@ 7cc

Movement_7cc: @ 7cc
	Move_3e 0xb
	MoveRightFast 0x1
	EndMovement 0x0
@ 7d8

Movement_7d8: @ 7d8
	MoveUpFast 0x1
	Move_3f 0x2
	WalkDownFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 7ec

Movement_7ec: @ 7ec
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 7f8

Script_21: @ 7f8
	LockAll
	Call Function_86f
	ApplyMovement 0x1b, Movement_b6c
	ApplyMovement 0x1a, Movement_b08
	ApplyMovement 0xff, Movement_aac
	ApplyMovement 0x15, Movement_b44
	WaitMovement
	Call Function_8d9
	ApplyMovement 0x1b, Movement_b74
	ApplyMovement 0x1a, Movement_b3c
	ApplyMovement 0xff, Movement_ac8
	ApplyMovement 0x15, Movement_b54
	WaitMovement
	Call Function_8fa
	Message 0x17
	ApplyMovement 0x1b, Movement_b80
	ApplyMovement 0xff, Movement_ad4
	WaitMovement
	Call Function_91c
	ReleaseAll
	End
@ 86f

Function_86f: @ 86f
	ApplyMovement 0x1a, Movement_ae4
	WaitMovement
	SetVariableRival 0x0
	Message 0x11
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_aa4
	ApplyMovement 0x1b, Movement_b5c
	WaitMovement
	Message 0x12
	ApplyMovement 0x1a, Movement_af0
	WaitMovement
	PlayFanfare 0x65b
	Return2 0x4, 0x800c
	Message 0x13
	WaitFanfare 0x5dc
	CameraBumpEffect 0x1
	CloseMsgOnKeyPress
	ClearFlag 0x20c
	ChangeOwPosition 0x15, 0x262, 0x328
	ReleaseOw 0x15, 0x3
	ChangeOwMovement 0x15, 0x11
	AddPeople 0x15
	Lock 0x15
	Return
@ 8d9

Function_8d9: @ 8d9
	Message 0x14
	ApplyMovement 0x1b, Movement_b6c
	WaitMovement
	Message 0x15
	ApplyMovement 0x15, Movement_b4c
	WaitMovement
	Message 0x16
	CloseMsgOnKeyPress
	Return
@ 8fa

Function_8fa: @ 8fa
	RemovePeople 0x15
	ClearFlag 0x20c
	ChangeOwPosition 0x15, 0x27d, 0x32c
	ChangeOwMovement 0x15, 0x11
	ReleaseOw 0x15, 0x3
	AddPeople 0x15
	Return
@ 91c

Function_91c: @ 91c
	Message 0x18
	CloseMsgOnKeyPress
	ApplyMovement 0x1b, Movement_b88
	ApplyMovement 0xff, Movement_99c
	WaitMovement
	RemovePeople 0x1b
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x261
	CompareLastResultCall EQUAL, Script_branch_981
	If 0x8004, 0x263
	CompareLastResultCall EQUAL, Script_branch_98d
	If 0x8004, 0x264
	CompareLastResultCall EQUAL, Script_branch_981
	SetFlag 0x20d
	SetVar 0x407c, 0x5
	SetFlag 0x102
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x19
	WaitButton
	CloseMsgOnKeyPress
	Return
@ 981

Script_branch_981: @ 981
	ApplyMovement 0x1a, Movement_b1c
	WaitMovement
	Return
@ 98d

Script_branch_98d: @ 98d
	ApplyMovement 0x1a, Movement_b28
	WaitMovement
	Return
@ 999

.byte 0x0 @ 0x999
.byte 0x0 @ 0x99a
.byte 0x0 @ 0x99b

Movement_99c: @ 99c
	Move_3f 0x1
	SeeUp 0x1
	EndMovement 0x0
@ 9a8

Script_20: @ 9a8
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Call Function_86f
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x263
	CompareLastResultCall EQUAL, Script_branch_a31
	If 0x8004, 0x264
	CompareLastResultCall EQUAL, Script_branch_a55
	Call Function_8d9
	ApplyMovement 0xff, Movement_ac8
	ApplyMovement 0x1b, Movement_b74
	ApplyMovement 0x1a, Movement_b3c
	ApplyMovement 0x15, Movement_b54
	WaitMovement
	Call Function_8fa
	Message 0x17
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x263
	CompareLastResultCall EQUAL, Script_branch_a79
	If 0x8004, 0x264
	CompareLastResultCall EQUAL, Script_branch_a8d
	Call Function_91c
	ReleaseAll
	End
@ a31

Script_branch_a31: @ a31
	ApplyMovement 0x1b, Movement_b6c
	ApplyMovement 0xff, Movement_abc
	ApplyMovement 0x1a, Movement_b10
	ApplyMovement 0x15, Movement_b44
	WaitMovement
	Return
@ a55

Script_branch_a55: @ a55
	ApplyMovement 0x1b, Movement_b6c
	ApplyMovement 0xff, Movement_abc
	ApplyMovement 0x1a, Movement_b10
	ApplyMovement 0x15, Movement_b44
	WaitMovement
	Return
@ a79

Script_branch_a79: @ a79
	ApplyMovement 0x1b, Movement_b80
	ApplyMovement 0xff, Movement_ad4
	WaitMovement
	Return
@ a8d

Script_branch_a8d: @ a8d
	ApplyMovement 0x1b, Movement_b80
	ApplyMovement 0xff, Movement_adc
	WaitMovement
	Return
@ aa1

.byte 0x0 @ 0xaa1
.byte 0x0 @ 0xaa2
.byte 0x0 @ 0xaa3

Movement_aa4: @ aa4
	SeeUp 0x1
	EndMovement 0x0
@ aac

Movement_aac: @ aac
	WalkDownVeryFast  0x1
	WalkRightVeryFast 0x1
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ abc

Movement_abc: @ abc
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ ac8

Movement_ac8: @ ac8
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ ad4

Movement_ad4: @ ad4
	MoveUpFast 0x1
	EndMovement 0x0
@ adc

Movement_adc: @ adc
	MoveLeftFast 0x1
	EndMovement 0x0
@ ae4

Movement_ae4: @ ae4
	WalkUpVeryFast  0x3
	WalkRightVeryFast 0x1
	EndMovement 0x0
@ af0

Movement_af0: @ af0
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ af8

.byte 0x11 @ 0xaf8
.byte 0x0 @ 0xaf9
.byte 0x3 @ 0xafa
.byte 0x0 @ 0xafb
.byte 0xfe @ 0xafc
.byte 0x0 @ 0xafd
.byte 0x0 @ 0xafe
.byte 0x0 @ 0xaff
.byte 0x24 @ 0xb00
.byte 0x0 @ 0xb01
.byte 0x1 @ 0xb02
.byte 0x0 @ 0xb03
.byte 0xfe @ 0xb04
.byte 0x0 @ 0xb05
.byte 0x0 @ 0xb06
.byte 0x0 @ 0xb07

Movement_b08: @ b08
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ b10

Movement_b10: @ b10
	Move_3f 0x1
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ b1c

Movement_b1c: @ b1c
	WalkRightVeryFast 0x2
	WalkUpVeryFast  0x1
	EndMovement 0x0
@ b28

Movement_b28: @ b28
	WalkRightVeryFast 0x1
	WalkUpVeryFast  0x1
	WalkRightVeryFast 0x1
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ b3c

Movement_b3c: @ b3c
	MoveRightVeryFast 0x1
	EndMovement 0x0
@ b44

Movement_b44: @ b44
	WalkDownVeryFast  0x4
	EndMovement 0x0
@ b4c

Movement_b4c: @ b4c
	MoveUpFast 0x1
	EndMovement 0x0
@ b54

Movement_b54: @ b54
	WalkRightVeryFast 0xc
	EndMovement 0x0
@ b5c

Movement_b5c: @ b5c
	MoveUpFast 0x1
	EndMovement 0x0
@ b64

.byte 0x21 @ 0xb64
.byte 0x0 @ 0xb65
.byte 0x1 @ 0xb66
.byte 0x0 @ 0xb67
.byte 0xfe @ 0xb68
.byte 0x0 @ 0xb69
.byte 0x0 @ 0xb6a
.byte 0x0 @ 0xb6b

Movement_b6c: @ b6c
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ b74

Movement_b74: @ b74
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ b80

Movement_b80: @ b80
	MoveDownFast 0x1
	EndMovement 0x0
@ b88

Movement_b88: @ b88
	WalkUpFast 0x2
	EndMovement 0x0
@ b90

Script_22: @ b90
	LockAll
	ApplyMovement 0xff, Movement_bc8
	ApplyMovement 0x1a, Movement_bd8
	WaitMovement
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x1a
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_bd0
	ApplyMovement 0x1a, Movement_be0
	WaitMovement
	ReleaseAll
	End
@ bc5

.byte 0x0 @ 0xbc5
.byte 0x0 @ 0xbc6
.byte 0x0 @ 0xbc7

Movement_bc8: @ bc8
	MoveRightFast 0x1
	EndMovement 0x0
@ bd0

Movement_bd0: @ bd0
	WalkDownFast 0x1
	EndMovement 0x0
@ bd8

Movement_bd8: @ bd8
	MoveLeftFast 0x1
	EndMovement 0x0
@ be0

Movement_be0: @ be0
	WalkLeftFast 0x1
	WalkRightFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ bf0

Script_23: @ bf0
	LockAll
	CheckFlag 0x156
	CompareLastResultJump EQUAL, Script_branch_c1e
	SetVar 0x40c7, 0x1
	CheckIdPlayer 0x800c, 0x64
	If 0x800c, 0x5a
	CompareLastResultJump 0x4, Script_branch_c22
	Jump Script_branch_c1e
@ c1c

.byte 0x2 @ 0xc1c
.byte 0x0 @ 0xc1d

Script_branch_c1e: @ c1e
	ReleaseAll
	End
@ c22

Script_branch_c22: @ c22
	ClearFlag 0x29d
	AddPeople 0x1c
	ApplyMovement 0xff, Movement_c78
	ApplyMovement 0x1c, Movement_c64
	WaitMovement
	PlayCry 0x1c5, 0x0
	WaitCry
	Return2 0x1e, 0x800c
	ApplyMovement 0x1c, Movement_c70
	WaitMovement
	PlayFanfare 0x603
	RemovePeople 0x1c
	WaitFanfare 0x603
	ReleaseAll
	End
@ c64

Movement_c64: @ c64
	WalkUpFast 0x7
	MoveLeftFast 0x1
	EndMovement 0x0
@ c70

Movement_c70: @ c70
	WalkUpFast 0x5
	EndMovement 0x0
@ c78

Movement_c78: @ c78
	MoveDownFast 0x1
	EndMovement 0x0
@ c80

@ end_0xc80
