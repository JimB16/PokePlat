.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	PlayFanfare 0x5dc
	LockAll
	CheckFlag 0xd6
	CompareLastResultJump 0x1, Script_branch_596
	Jump Script_branch_27
@ 25

.byte 0x2 @ 0x25
.byte 0x0 @ 0x26

Script_branch_27: @ 27
	CheckFlag 0xa7
	CompareLastResultJump 0x0, Script_branch_40
	SetVarHero 0x0
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 40

Script_branch_40: @ 40
	SetVarHero 0x0
	Message 0x0
	CloseMsgOnKeyPress
	SetFlag 0xa7
	ClearFlag 0x229
	ChangeOwPosition 0x0, 0x4, 0xb
	ReleaseOw 0x0, 0x0
	ChangeOwMovement 0x0, 0xe
	AddPeople 0x0
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x9
	CompareLastResultCall 0x1, Script_branch_110
	If 0x8004, 0xa
	CompareLastResultCall 0x1, Script_branch_126
	Message 0x1
	Message 0x2
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_4b8
	ApplyMovement 0xff, Movement_424
	WaitMovement
	Message 0x3
	CloseMsgOnKeyPress
	SetFlag 0x1ac
	ClearFlag 0x29b
	ChangeOwPosition 0x1, 0x4, 0xb
	ReleaseOw 0x1, 0x0
	ChangeOwMovement 0x1, 0xe
	AddPeople 0x1
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x9
	CompareLastResultCall 0x1, Script_branch_285
	If 0x8004, 0xa
	CompareLastResultCall 0x1, Script_branch_291
	Message 0x4
	Message 0x5
	Message 0x6
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_19d
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_13c
	End
@ 110

Script_branch_110: @ 110
	ApplyMovement 0x0, Movement_488
	WaitMovement
	ApplyMovement 0xff, Movement_3e4
	WaitMovement
	Return
@ 126

Script_branch_126: @ 126
	ApplyMovement 0x0, Movement_4a0
	WaitMovement
	ApplyMovement 0xff, Movement_3ec
	WaitMovement
	Return
@ 13c

Script_branch_13c: @ 13c
	Message 0xa
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x9
	CompareLastResultCall 0x1, Script_branch_165
	If 0x8004, 0xa
	CompareLastResultCall 0x1, Script_branch_181
	ReleaseAll
	End
@ 165

Script_branch_165: @ 165
	ApplyMovement 0x0, Movement_4c0
	ApplyMovement 0xff, Movement_3f4
	ApplyMovement 0x1, Movement_3cc
	WaitMovement
	Return
@ 181

Script_branch_181: @ 181
	ApplyMovement 0x0, Movement_4cc
	ApplyMovement 0xff, Movement_40c
	ApplyMovement 0x1, Movement_3d8
	WaitMovement
	Return
@ 19d

Script_branch_19d: @ 19d
	Message 0x8
	CloseMsgOnKeyPress
	TrainerBattle 0x391, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_393
	Call Function_1c3
	ReleaseAll
	End
@ 1c3

Function_1c3: @ 1c3
	ClearFlag 0x1bd
	SetVar 0x4074, 0x1
	Message 0xb
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	RemovePeople 0x1
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x8
	CompareLastResultCall 0x1, Script_branch_29d
	If 0x8004, 0x9
	CompareLastResultCall 0x1, Script_branch_2b1
	If 0x8004, 0xa
	CompareLastResultCall 0x1, Script_branch_2fa
	If 0x8004, 0xb
	CompareLastResultCall 0x1, Script_branch_343
	Message 0xd
	SetVar 0x8004, 0x1a6
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	SetFlag 0x1ac
	ClearFlag 0x1c3
	SetFlag 0x98d
	Message 0xe
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x9
	CompareLastResultCall 0x1, Script_branch_357
	If 0x8004, 0xa
	CompareLastResultCall 0x1, Script_branch_36b
	If 0x8004, 0xb
	CompareLastResultCall 0x1, Script_branch_37f
	RemovePeople 0x0
	Return
@ 285

Script_branch_285: @ 285
	ApplyMovement 0x1, Movement_39c
	WaitMovement
	Return
@ 291

Script_branch_291: @ 291
	ApplyMovement 0x1, Movement_3b4
	WaitMovement
	Return
@ 29d

Script_branch_29d: @ 29d
	ApplyMovement 0xff, Movement_42c
	ApplyMovement 0x0, Movement_4d8
	WaitMovement
	Return
@ 2b1

Script_branch_2b1: @ 2b1
	If 0x8005, 0x4
	CompareLastResultJump 0x1, Script_branch_2d2
	ApplyMovement 0xff, Movement_434
	ApplyMovement 0x0, Movement_4d8
	WaitMovement
	Return
@ 2d2

Script_branch_2d2: @ 2d2
	ApplyMovement 0xff, Movement_43c
	ApplyMovement 0x0, Movement_4d8
	WaitMovement
	Return
@ 2e6

.byte 0x5e @ 0x2e6
.byte 0x0 @ 0x2e7
.byte 0xff @ 0x2e8
.byte 0x0 @ 0x2e9
.byte 0x5a @ 0x2ea
.byte 0x1 @ 0x2eb
.byte 0x0 @ 0x2ec
.byte 0x0 @ 0x2ed
.byte 0x5e @ 0x2ee
.byte 0x0 @ 0x2ef
.byte 0x0 @ 0x2f0
.byte 0x0 @ 0x2f1
.byte 0xe2 @ 0x2f2
.byte 0x1 @ 0x2f3
.byte 0x0 @ 0x2f4
.byte 0x0 @ 0x2f5
.byte 0x5f @ 0x2f6
.byte 0x0 @ 0x2f7
.byte 0x1b @ 0x2f8
.byte 0x0 @ 0x2f9

Script_branch_2fa: @ 2fa
	If 0x8005, 0x4
	CompareLastResultJump 0x1, Script_branch_31b
	ApplyMovement 0xff, Movement_454
	ApplyMovement 0x0, Movement_4e0
	WaitMovement
	Return
@ 31b

Script_branch_31b: @ 31b
	ApplyMovement 0xff, Movement_45c
	ApplyMovement 0x0, Movement_4e0
	WaitMovement
	Return
@ 32f

.byte 0x5e @ 0x32f
.byte 0x0 @ 0x330
.byte 0xff @ 0x331
.byte 0x0 @ 0x332
.byte 0x31 @ 0x333
.byte 0x1 @ 0x334
.byte 0x0 @ 0x335
.byte 0x0 @ 0x336
.byte 0x5e @ 0x337
.byte 0x0 @ 0x338
.byte 0x0 @ 0x339
.byte 0x0 @ 0x33a
.byte 0x99 @ 0x33b
.byte 0x1 @ 0x33c
.byte 0x0 @ 0x33d
.byte 0x0 @ 0x33e
.byte 0x5f @ 0x33f
.byte 0x0 @ 0x340
.byte 0x1b @ 0x341
.byte 0x0 @ 0x342

Script_branch_343: @ 343
	ApplyMovement 0xff, Movement_474
	ApplyMovement 0x0, Movement_4e8
	WaitMovement
	Return
@ 357

Script_branch_357: @ 357
	ApplyMovement 0xff, Movement_47c
	ApplyMovement 0x0, Movement_4f0
	WaitMovement
	Return
@ 36b

Script_branch_36b: @ 36b
	ApplyMovement 0xff, Movement_47c
	ApplyMovement 0x0, Movement_508
	WaitMovement
	Return
@ 37f

Script_branch_37f: @ 37f
	ApplyMovement 0xff, Movement_47c
	ApplyMovement 0x0, Movement_520
	WaitMovement
	Return
@ 393

Script_branch_393: @ 393
	LostGoPc
	ReleaseAll
	End
@ 399

.byte 0x0 @ 0x399
.byte 0x0 @ 0x39a
.byte 0x0 @ 0x39b

Movement_39c: @ 39c
	WalkUpFast 0x6
	WalkRightFast 0x1
	WalkUpFast 0x1
	WalkRightFast 0x5
	MoveUpFast 0x1
	EndMovement 0x0
@ 3b4

Movement_3b4: @ 3b4
	WalkUpFast 0x6
	WalkRightFast 0x1
	WalkUpFast 0x1
	WalkRightFast 0x4
	MoveUpFast 0x1
	EndMovement 0x0
@ 3cc

Movement_3cc: @ 3cc
	WalkLeftFast 0x1
	WalkUpFast 0x1
	EndMovement 0x0
@ 3d8

Movement_3d8: @ 3d8
	WalkRightFast 0x1
	WalkUpFast 0x1
	EndMovement 0x0
@ 3e4

Movement_3e4: @ 3e4
	MoveRightFast 0x1
	EndMovement 0x0
@ 3ec

Movement_3ec: @ 3ec
	MoveLeftFast 0x1
	EndMovement 0x0
@ 3f4

Movement_3f4: @ 3f4
	Move_3f 0x1
	SeeRight 0x1
	Move_47 0x1
	WalkLeftVeryFast 0x1
	Move_48 0x1
	EndMovement 0x0
@ 40c

Movement_40c: @ 40c
	Move_3f 0x1
	SeeLeft 0x1
	Move_47 0x1
	WalkRightVeryFast 0x1
	Move_48 0x1
	EndMovement 0x0
@ 424

Movement_424: @ 424
	MoveDownFast 0x1
	EndMovement 0x0
@ 42c

Movement_42c: @ 42c
	WalkRightFast 0x1
	EndMovement 0x0
@ 434

Movement_434: @ 434
	MoveRightFast 0x1
	EndMovement 0x0
@ 43c

Movement_43c: @ 43c
	WalkUpFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 448

.byte 0xc @ 0x448
.byte 0x0 @ 0x449
.byte 0x2 @ 0x44a
.byte 0x0 @ 0x44b
.byte 0x23 @ 0x44c
.byte 0x0 @ 0x44d
.byte 0x1 @ 0x44e
.byte 0x0 @ 0x44f
.byte 0xfe @ 0x450
.byte 0x0 @ 0x451
.byte 0x0 @ 0x452
.byte 0x0 @ 0x453

Movement_454: @ 454
	MoveLeftFast 0x1
	EndMovement 0x0
@ 45c

Movement_45c: @ 45c
	WalkUpFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 468

.byte 0xc @ 0x468
.byte 0x0 @ 0x469
.byte 0x2 @ 0x46a
.byte 0x0 @ 0x46b
.byte 0x22 @ 0x46c
.byte 0x0 @ 0x46d
.byte 0x1 @ 0x46e
.byte 0x0 @ 0x46f
.byte 0xfe @ 0x470
.byte 0x0 @ 0x471
.byte 0x0 @ 0x472
.byte 0x0 @ 0x473

Movement_474: @ 474
	WalkLeftFast 0x1
	EndMovement 0x0
@ 47c

Movement_47c: @ 47c
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 488

Movement_488: @ 488
	WalkUpFast 0x6
	WalkRightFast 0x1
	WalkUpFast 0x1
	WalkRightFast 0x5
	WalkUpFast 0x1
	EndMovement 0x0
@ 4a0

Movement_4a0: @ 4a0
	WalkUpFast 0x6
	WalkRightFast 0x1
	WalkUpFast 0x1
	WalkRightFast 0x4
	WalkUpFast 0x1
	EndMovement 0x0
@ 4b8

Movement_4b8: @ 4b8
	MoveDownFast 0x1
	EndMovement 0x0
@ 4c0

Movement_4c0: @ 4c0
	Move_3f 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 4cc

Movement_4cc: @ 4cc
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 4d8

Movement_4d8: @ 4d8
	MoveLeftFast 0x1
	EndMovement 0x0
@ 4e0

Movement_4e0: @ 4e0
	MoveRightFast 0x1
	EndMovement 0x0
@ 4e8

Movement_4e8: @ 4e8
	MoveRightFast 0x1
	EndMovement 0x0
@ 4f0

Movement_4f0: @ 4f0
	WalkDownFast 0x1
	WalkLeftFast 0x5
	WalkDownFast 0x1
	WalkLeftFast 0x1
	WalkDownFast 0x6
	EndMovement 0x0
@ 508

Movement_508: @ 508
	WalkDownFast 0x1
	WalkLeftFast 0x4
	WalkDownFast 0x1
	WalkLeftFast 0x1
	WalkDownFast 0x6
	EndMovement 0x0
@ 520

Movement_520: @ 520
	WalkDownFast 0x1
	WalkLeftFast 0x5
	WalkDownFast 0x1
	WalkLeftFast 0x1
	WalkDownFast 0x6
	EndMovement 0x0
@ 538

Script_2: @ 538
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x7
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_57a
	Message 0x8
	CloseMsgOnKeyPress
	TrainerBattle 0x391, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_393
	Call Function_1c3
	ReleaseAll
	End
@ 57a

Script_branch_57a: @ 57a
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 585

Script_3: @ 585
	PlayFanfare 0x5dc
	LockAll
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 596

Script_branch_596: @ 596
	CheckFlag 0x124
	CompareLastResultJump 0x1, Script_branch_27
	SetFlag 0x124
	ClearFlag 0x1a6
	ChangeOwPosition 0x2, 0x4, 0xb
	AddPeople 0x2
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x9
	CompareLastResultCall 0x1, Script_branch_6cf
	If 0x8004, 0xa
	CompareLastResultCall 0x1, Script_branch_6e5
	Message 0x10
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x9
	CompareLastResultCall 0x1, Script_branch_713
	If 0x8004, 0xa
	CompareLastResultCall 0x1, Script_branch_71f
	Message 0x11
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_753
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_7f0
	ApplyMovement 0xff, Movement_858
	WaitMovement
	Return2 0xf, 0x800c
	Message 0x12
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x9
	CompareLastResultCall 0x1, Script_branch_713
	If 0x8004, 0xa
	CompareLastResultCall 0x1, Script_branch_71f
	If 0x8004, 0x9
	CompareLastResultCall 0x1, Script_branch_6fb
	If 0x8004, 0xa
	CompareLastResultCall 0x1, Script_branch_707
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_753
	Message 0x13
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_864
	ApplyMovement 0x2, Movement_7f8
	WaitMovement
	Message 0x14
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x9
	CompareLastResultCall 0x1, Script_branch_72b
	If 0x8004, 0xa
	CompareLastResultCall 0x1, Script_branch_73f
	Message 0x15
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_753
	Message 0x16
	Jump Script_branch_75e
@ 6cd

.byte 0x2 @ 0x6cd
.byte 0x0 @ 0x6ce

Script_branch_6cf: @ 6cf
	ApplyMovement 0x2, Movement_7b0
	WaitMovement
	ApplyMovement 0xff, Movement_848
	WaitMovement
	Return
@ 6e5

Script_branch_6e5: @ 6e5
	ApplyMovement 0x2, Movement_7c8
	WaitMovement
	ApplyMovement 0xff, Movement_850
	WaitMovement
	Return
@ 6fb

Script_branch_6fb: @ 6fb
	ApplyMovement 0xff, Movement_848
	WaitMovement
	Return
@ 707

Script_branch_707: @ 707
	ApplyMovement 0xff, Movement_850
	WaitMovement
	Return
@ 713

Script_branch_713: @ 713
	ApplyMovement 0x2, Movement_7e0
	WaitMovement
	Return
@ 71f

Script_branch_71f: @ 71f
	ApplyMovement 0x2, Movement_7e8
	WaitMovement
	Return
@ 72b

Script_branch_72b: @ 72b
	ApplyMovement 0x2, Movement_800
	ApplyMovement 0xff, Movement_870
	WaitMovement
	Return
@ 73f

Script_branch_73f: @ 73f
	ApplyMovement 0x2, Movement_80c
	ApplyMovement 0xff, Movement_87c
	WaitMovement
	Return
@ 753

Script_branch_753: @ 753
	Message 0x17
	Jump Script_branch_75e
@ 75c

.byte 0x2 @ 0x75c
.byte 0x0 @ 0x75d

Script_branch_75e: @ 75e
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x9
	CompareLastResultCall 0x1, Script_branch_788
	If 0x8004, 0xa
	CompareLastResultCall 0x1, Script_branch_79c
	RemovePeople 0x2
	ReleaseAll
	End
@ 788

Script_branch_788: @ 788
	ApplyMovement 0x2, Movement_818
	ApplyMovement 0xff, Movement_888
	WaitMovement
	Return
@ 79c

Script_branch_79c: @ 79c
	ApplyMovement 0x2, Movement_830
	ApplyMovement 0xff, Movement_888
	WaitMovement
	Return
@ 7b0

Movement_7b0: @ 7b0
	WalkUpFast 0x6
	WalkRightFast 0x1
	WalkUpFast 0x1
	WalkRightFast 0x5
	WalkUpFast 0x1
	EndMovement 0x0
@ 7c8

Movement_7c8: @ 7c8
	WalkUpFast 0x6
	WalkRightFast 0x1
	WalkUpFast 0x1
	WalkRightFast 0x4
	WalkUpFast 0x1
	EndMovement 0x0
@ 7e0

Movement_7e0: @ 7e0
	MoveLeftFast 0x1
	EndMovement 0x0
@ 7e8

Movement_7e8: @ 7e8
	MoveRightFast 0x1
	EndMovement 0x0
@ 7f0

Movement_7f0: @ 7f0
	MoveUpFast 0x1
	EndMovement 0x0
@ 7f8

Movement_7f8: @ 7f8
	WalkDownFast 0x1
	EndMovement 0x0
@ 800

Movement_800: @ 800
	WalkUpFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 80c

Movement_80c: @ 80c
	WalkUpFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 818

Movement_818: @ 818
	WalkDownFast 0x1
	WalkLeftFast 0x5
	WalkDownFast 0x1
	WalkLeftFast 0x1
	WalkDownFast 0x6
	EndMovement 0x0
@ 830

Movement_830: @ 830
	WalkDownFast 0x1
	WalkLeftFast 0x4
	WalkDownFast 0x1
	WalkLeftFast 0x1
	WalkDownFast 0x6
	EndMovement 0x0
@ 848

Movement_848: @ 848
	MoveRightFast 0x1
	EndMovement 0x0
@ 850

Movement_850: @ 850
	MoveLeftFast 0x1
	EndMovement 0x0
@ 858

Movement_858: @ 858
	Move_3f 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 864

Movement_864: @ 864
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 870

Movement_870: @ 870
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 87c

Movement_87c: @ 87c
	Move_3f 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 888

Movement_888: @ 888
	Move_3f 0x2
	SeeLeft 0x1
	EndMovement 0x0
@ 894

@ end_0x894
