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
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x8a
	CompareLastResultJump EQUAL, Script_branch_82
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x0
	WaitButton
	SetFlag 0x8a
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 82

Script_branch_82: @ 82
	SetVariableRival 0x0
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 90

Script_2: @ 90
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_c1
	CheckFlag 0x7a
	CompareLastResultJump EQUAL, Script_branch_cc
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c1

Script_branch_c1: @ c1
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ cc

Script_branch_cc: @ cc
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d7

Script_4: @ d7
	LockAll
	ClearFlag 0x17c
	ChangeOwMovement 0x3, 0x10
	ReleaseOw 0x3, 0x2
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x2ec
	CompareLastResultJump EQUAL, Script_branch_11e
	If 0x8005, 0x2ed
	CompareLastResultJump EQUAL, Script_branch_144
	If 0x8005, 0x2ee
	CompareLastResultJump EQUAL, Script_branch_16a
	Jump Script_branch_190
@ 11c

.byte 0x2 @ 0x11c
.byte 0x0 @ 0x11d

Script_branch_11e: @ 11e
	ChangeOwPosition 0x3, 0x10f, 0x2ec
	AddPeople 0x3
	ApplyMovement 0xff, Movement_2a0
	ApplyMovement 0x3, Movement_2b8
	WaitMovement
	Jump Script_branch_1b6
@ 142

.byte 0x2 @ 0x142
.byte 0x0 @ 0x143

Script_branch_144: @ 144
	ChangeOwPosition 0x3, 0x10f, 0x2ed
	AddPeople 0x3
	ApplyMovement 0xff, Movement_2a0
	ApplyMovement 0x3, Movement_2b8
	WaitMovement
	Jump Script_branch_1b6
@ 168

.byte 0x2 @ 0x168
.byte 0x0 @ 0x169

Script_branch_16a: @ 16a
	ChangeOwPosition 0x3, 0x10f, 0x2ee
	AddPeople 0x3
	ApplyMovement 0xff, Movement_2a0
	ApplyMovement 0x3, Movement_2b8
	WaitMovement
	Jump Script_branch_1b6
@ 18e

.byte 0x2 @ 0x18e
.byte 0x0 @ 0x18f

Script_branch_190: @ 190
	ChangeOwPosition 0x3, 0x10f, 0x2ef
	AddPeople 0x3
	ApplyMovement 0xff, Movement_2a0
	ApplyMovement 0x3, Movement_2b8
	WaitMovement
	Jump Script_branch_1b6
@ 1b4

.byte 0x2 @ 0x1b4
.byte 0x0 @ 0x1b5

Script_branch_1b6: @ 1b6
	PlayFanfare 0x602
	Message 0x2
	CloseMsgOnKeyPress
	CallStandard 0x7fa
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x3
	CloseMsgOnKeyPress
	ApplyMovement 0x3, Movement_340
	WaitMovement
	Message 0x4
	ApplyMovement 0x3, Movement_348
	WaitMovement
	Message 0x5
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x2ec
	CompareLastResultJump EQUAL, Script_branch_21f
	If 0x8005, 0x2ed
	CompareLastResultJump EQUAL, Script_branch_239
	If 0x8005, 0x2ee
	CompareLastResultJump EQUAL, Script_branch_253
	Jump Script_branch_26d
@ 21d

.byte 0x2 @ 0x21d
.byte 0x0 @ 0x21e

Script_branch_21f: @ 21f
	ApplyMovement 0xff, Movement_310
	ApplyMovement 0x3, Movement_2c0
	WaitMovement
	Jump Script_branch_287
@ 237

.byte 0x2 @ 0x237
.byte 0x0 @ 0x238

Script_branch_239: @ 239
	ApplyMovement 0xff, Movement_31c
	ApplyMovement 0x3, Movement_2d0
	WaitMovement
	Jump Script_branch_287
@ 251

.byte 0x2 @ 0x251
.byte 0x0 @ 0x252

Script_branch_253: @ 253
	ApplyMovement 0xff, Movement_328
	ApplyMovement 0x3, Movement_2e8
	WaitMovement
	Jump Script_branch_287
@ 26b

.byte 0x2 @ 0x26b
.byte 0x0 @ 0x26c

Script_branch_26d: @ 26d
	ApplyMovement 0xff, Movement_334
	ApplyMovement 0x3, Movement_2f8
	WaitMovement
	Jump Script_branch_287
@ 285

.byte 0x2 @ 0x285
.byte 0x0 @ 0x286

Script_branch_287: @ 287
	PlayFanfare 0x603
	RemovePeople 0x3
	CallStandard 0x7fb
	SetVar 0x4079, 0x3
	ReleaseAll
	End
@ 29d

.byte 0x0 @ 0x29d
.byte 0x0 @ 0x29e
.byte 0x0 @ 0x29f

Movement_2a0: @ 2a0
	Move_3e 0x7
	Move_47 0x1
	WalkLeftVeryFast 0x1
	Move_48 0x1
	SeeRight 0x1
	EndMovement 0x0
@ 2b8

Movement_2b8: @ 2b8
	WalkLeftVeryFast 0x9
	EndMovement 0x0
@ 2c0

Movement_2c0: @ 2c0
	WalkDownVeryFast  0x1
	WalkLeftVeryFast 0x4
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 2d0

Movement_2d0: @ 2d0
	WalkDownVeryFast  0x1
	WalkLeftVeryFast 0x3
	WalkUpVeryFast  0x1
	WalkLeftVeryFast 0x1
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 2e8

Movement_2e8: @ 2e8
	WalkUpVeryFast  0x1
	WalkLeftVeryFast 0x4
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 2f8

Movement_2f8: @ 2f8
	WalkUpVeryFast  0x1
	WalkLeftVeryFast 0x3
	WalkUpVeryFast  0x1
	WalkLeftVeryFast 0x1
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 310

Movement_310: @ 310
	MoveDownFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 31c

Movement_31c: @ 31c
	MoveDownFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 328

Movement_328: @ 328
	MoveUpFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 334

Movement_334: @ 334
	MoveUpFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 340

Movement_340: @ 340
	MoveRightFast 0x1
	EndMovement 0x0
@ 348

Movement_348: @ 348
	MoveLeftFast 0x1
	EndMovement 0x0
@ 350

Script_5: @ 350
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 363

Script_6: @ 363
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 376

Script_7: @ 376
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x109
	CompareLastResultJump EQUAL, Script_branch_3bd
	Message 0x11
	SetVar 0x8004, 0x1a
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3c8
	CallStandard 0x7fc
	SetFlag 0x109
	Jump Script_branch_3bd
@ 3bb

.byte 0x2 @ 0x3bb
.byte 0x0 @ 0x3bc

Script_branch_3bd: @ 3bd
	Message 0x12
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3c8

Script_branch_3c8: @ 3c8
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3d2

Script_8: @ 3d2
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x13
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3e5

Script_9: @ 3e5
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x14
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3f8

Script_3: @ 3f8
	LockAll
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x2ec
	CompareLastResultJump EQUAL, Script_branch_42f
	If 0x8005, 0x2ed
	CompareLastResultJump EQUAL, Script_branch_449
	If 0x8005, 0x2ee
	CompareLastResultJump EQUAL, Script_branch_463
	Jump Script_branch_47d
@ 42d

.byte 0x2 @ 0x42d
.byte 0x0 @ 0x42e

Script_branch_42f: @ 42f
	ApplyMovement 0xff, Movement_55c
	ApplyMovement 0x4, Movement_604
	WaitMovement
	Jump Script_branch_497
@ 447

.byte 0x2 @ 0x447
.byte 0x0 @ 0x448

Script_branch_449: @ 449
	ApplyMovement 0xff, Movement_55c
	ApplyMovement 0x4, Movement_610
	WaitMovement
	Jump Script_branch_497
@ 461

.byte 0x2 @ 0x461
.byte 0x0 @ 0x462

Script_branch_463: @ 463
	ApplyMovement 0xff, Movement_55c
	ApplyMovement 0x4, Movement_61c
	WaitMovement
	Jump Script_branch_497
@ 47b

.byte 0x2 @ 0x47b
.byte 0x0 @ 0x47c

Script_branch_47d: @ 47d
	ApplyMovement 0xff, Movement_55c
	ApplyMovement 0x4, Movement_628
	WaitMovement
	Jump Script_branch_497
@ 495

.byte 0x2 @ 0x495
.byte 0x0 @ 0x496

Script_branch_497: @ 497
	Message 0x6
	CloseMsgOnKeyPress
	CallStandard 0x800
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x2ec
	CompareLastResultJump EQUAL, Script_branch_4dc
	If 0x8005, 0x2ed
	CompareLastResultJump EQUAL, Script_branch_4f6
	If 0x8005, 0x2ee
	CompareLastResultJump EQUAL, Script_branch_510
	If 0x8005, 0x2ef
	CompareLastResultJump EQUAL, Script_branch_52a
	End
@ 4dc

Script_branch_4dc: @ 4dc
	ApplyMovement 0xff, Movement_564
	ApplyMovement 0x4, Movement_5b4
	WaitMovement
	Jump Script_branch_544
@ 4f4

.byte 0x2 @ 0x4f4
.byte 0x0 @ 0x4f5

Script_branch_4f6: @ 4f6
	ApplyMovement 0xff, Movement_578
	ApplyMovement 0x4, Movement_5c8
	WaitMovement
	Jump Script_branch_544
@ 50e

.byte 0x2 @ 0x50e
.byte 0x0 @ 0x50f

Script_branch_510: @ 510
	ApplyMovement 0xff, Movement_58c
	ApplyMovement 0x4, Movement_5dc
	WaitMovement
	Jump Script_branch_544
@ 528

.byte 0x2 @ 0x528
.byte 0x0 @ 0x529

Script_branch_52a: @ 52a
	ApplyMovement 0xff, Movement_5a0
	ApplyMovement 0x4, Movement_5f0
	WaitMovement
	Jump Script_branch_544
@ 542

.byte 0x2 @ 0x542
.byte 0x0 @ 0x543

Script_branch_544: @ 544
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	CallStandard 0x801
	SetVar 0x4079, 0x1
	ReleaseAll
	End
@ 559

.byte 0x0 @ 0x559
.byte 0x0 @ 0x55a
.byte 0x0 @ 0x55b

Movement_55c: @ 55c
	MoveDownFast 0x1
	EndMovement 0x0
@ 564

Movement_564: @ 564
	WalkDownFast 0x1
	WalkRightFast 0x1
	WalkDownFast 0xa
	WalkRightFast 0xc
	EndMovement 0x0
@ 578

Movement_578: @ 578
	WalkDownFast 0x1
	WalkRightFast 0x1
	WalkDownFast 0x9
	WalkRightFast 0xc
	EndMovement 0x0
@ 58c

Movement_58c: @ 58c
	WalkDownFast 0x1
	WalkRightFast 0x1
	WalkDownFast 0x8
	WalkRightFast 0xc
	EndMovement 0x0
@ 5a0

Movement_5a0: @ 5a0
	WalkDownFast 0x1
	WalkRightFast 0x1
	WalkDownFast 0x7
	WalkRightFast 0xc
	EndMovement 0x0
@ 5b4

Movement_5b4: @ 5b4
	WalkRightFast 0x1
	WalkDownFast 0xa
	WalkRightFast 0xd
	MoveLeftFast 0x1
	EndMovement 0x0
@ 5c8

Movement_5c8: @ 5c8
	WalkRightFast 0x1
	WalkDownFast 0x9
	WalkRightFast 0xd
	MoveLeftFast 0x1
	EndMovement 0x0
@ 5dc

Movement_5dc: @ 5dc
	WalkRightFast 0x1
	WalkDownFast 0x8
	WalkRightFast 0xd
	MoveLeftFast 0x1
	EndMovement 0x0
@ 5f0

Movement_5f0: @ 5f0
	WalkRightFast 0x1
	WalkDownFast 0x7
	WalkRightFast 0xd
	MoveLeftFast 0x1
	EndMovement 0x0
@ 604

Movement_604: @ 604
	Exclamation 0x1
	WalkUpFast 0x3
	EndMovement 0x0
@ 610

Movement_610: @ 610
	Exclamation 0x1
	WalkUpFast 0x2
	EndMovement 0x0
@ 61c

Movement_61c: @ 61c
	Exclamation 0x1
	WalkUpFast 0x1
	EndMovement 0x0
@ 628

Movement_628: @ 628
	Exclamation 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 634

Script_10: @ 634
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x15
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 647

Script_11: @ 647
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x7a
	CompareLastResultJump EQUAL, Script_branch_665
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 665

Script_branch_665: @ 665
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 670

Script_12: @ 670
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 683

Script_13: @ 683
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 696

Script_14: @ 696
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x16
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6a9

Script_15: @ 6a9
	CallMessageBox 0x1b, 0x0, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 6c0

Script_16: @ 6c0
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x1c, 0x800c
	CallStandard 0x7d0
	End
@ 6d5

Script_17: @ 6d5
	CallMessageBox 0x1d, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 6ec

Script_18: @ 6ec
	CallMessageBox 0x1e, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 703

Script_19: @ 703
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x42, 0x0
	Message 0x18
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 722

Script_20: @ 722
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x17
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 735

Script_21: @ 735
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x42, 0x0
	Message 0x19
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 754

Script_22: @ 754
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x42, 0x0
	Message 0x1a
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 773

.byte 0x0 @ 0x773

@ end_0x774
