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
	.hword 0xfd13
@ 82

Script_1: @ 82
	CheckFlag 0x155
	CompareLastResultCall 0x1, Script_branch_e0
	If 0x411a, 0x2
	CompareLastResultCall 0x4, Script_branch_ba
	CheckGender 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_d0
	If 0x4000, 0x1
	CompareLastResultJump 0x1, Script_branch_d8
	End
@ ba

Function_ba: @ ba
Script_branch_ba: @ ba
	ChangeOwPosition 0x6, 0x2b8, 0x254
	ChangeOwMovement 0x6, 0x11
	ReleaseOw 0x6, 0x3
	Return
@ d0

Script_branch_d0: @ d0
	SetVar 0x4020, 0x61
	End
@ d8

Script_branch_d8: @ d8
	SetVar 0x4020, 0x0
	End
@ e0

Script_branch_e0: @ e0
	ChangeOwPosition 0x1a, 0x2cd, 0x251
	ChangeOwMovement 0x1a, 0xe
	ReleaseOw 0x1a, 0x0
	Return
@ f6

Script_15: @ f6
	LockAll
	ApplyMovement 0x6, Movement_444
	WaitMovement
	CallStandard 0x7f8
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x2a9
	CompareLastResultCall 0x1, Script_branch_2e1
	If 0x8004, 0x2aa
	CompareLastResultCall 0x1, Script_branch_2ed
	If 0x8004, 0x2ab
	CompareLastResultCall 0x1, Script_branch_2f9
	If 0x8004, 0x2ac
	CompareLastResultCall 0x1, Script_branch_305
	CheckGender 0x8004
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_297
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_29f
	CloseMsgOnKeyPress
	CallStandard 0x7f9
	PrepareDoorAnimation 0x15, 0x13, 0xc, 0x3, 0x4d
	OpenDoor 0x4d
	WaitAction 0x4d
	ClearFlag 0x191
	AddPeople 0x19
	ApplyMovement 0x19, Movement_564
	WaitMovement
	CloseDoor 0x4d
	WaitAction 0x4d
	WaitClose 0x4d
	ApplyMovement 0x6, Movement_484
	WaitMovement
	Message 0x4
	CloseMsgOnKeyPress
	ApplyMovement 0x19, Movement_56c
	WaitMovement
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x2a9
	CompareLastResultCall 0x1, Script_branch_311
	If 0x8004, 0x2aa
	CompareLastResultCall 0x1, Script_branch_32d
	If 0x8004, 0x2ab
	CompareLastResultCall 0x1, Script_branch_349
	If 0x8004, 0x2ac
	CompareLastResultCall 0x1, Script_branch_365
	Message 0x5
	Message 0x6
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x2a9
	CompareLastResultCall 0x1, Script_branch_381
	If 0x8004, 0x2aa
	CompareLastResultCall 0x1, Script_branch_39d
	If 0x8004, 0x2ab
	CompareLastResultCall 0x1, Script_branch_3b9
	If 0x8004, 0x2ac
	CompareLastResultCall 0x1, Script_branch_3d5
	RemovePeople 0x19
	Return2 0x14, 0x800c
	CheckGender 0x8004
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_2a7
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_2c4
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x2a9
	CompareLastResultCall 0x1, Script_branch_3f1
	If 0x8004, 0x2aa
	CompareLastResultCall 0x1, Script_branch_405
	If 0x8004, 0x2ab
	CompareLastResultCall 0x1, Script_branch_419
	If 0x8004, 0x2ac
	CompareLastResultCall 0x1, Script_branch_42d
	RemovePeople 0x6
	SetVar 0x40f5, 0x1
	ReleaseAll
	End
@ 297

Script_branch_297: @ 297
	SetVarHero 0x0
	Message 0x2
	Return
@ 29f

Script_branch_29f: @ 29f
	SetVarHero 0x0
	Message 0x3
	Return
@ 2a7

Script_branch_2a7: @ 2a7
	SetVarHero 0x0
	Message 0x7
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	ApplyMovement 0xff, Movement_52c
	WaitMovement
	Message 0x8
	Return
@ 2c4

Script_branch_2c4: @ 2c4
	SetVarHero 0x0
	Message 0x9
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	ApplyMovement 0xff, Movement_52c
	WaitMovement
	Message 0xa
	Return
@ 2e1

Script_branch_2e1: @ 2e1
	ApplyMovement 0x6, Movement_458
	WaitMovement
	Return
@ 2ed

Script_branch_2ed: @ 2ed
	ApplyMovement 0x6, Movement_464
	WaitMovement
	Return
@ 2f9

Script_branch_2f9: @ 2f9
	ApplyMovement 0x6, Movement_46c
	WaitMovement
	Return
@ 305

Script_branch_305: @ 305
	ApplyMovement 0x6, Movement_478
	WaitMovement
	Return
@ 311

Script_branch_311: @ 311
	ApplyMovement 0x19, Movement_574
	ApplyMovement 0x6, Movement_48c
	ApplyMovement 0xff, Movement_4ec
	WaitMovement
	Return
@ 32d

Script_branch_32d: @ 32d
	ApplyMovement 0x19, Movement_580
	ApplyMovement 0x6, Movement_498
	ApplyMovement 0xff, Movement_4fc
	WaitMovement
	Return
@ 349

Script_branch_349: @ 349
	ApplyMovement 0x19, Movement_58c
	ApplyMovement 0x6, Movement_4a4
	ApplyMovement 0xff, Movement_50c
	WaitMovement
	Return
@ 365

Script_branch_365: @ 365
	ApplyMovement 0x19, Movement_598
	ApplyMovement 0x6, Movement_4b0
	ApplyMovement 0xff, Movement_51c
	WaitMovement
	Return
@ 381

Script_branch_381: @ 381
	ApplyMovement 0x19, Movement_5ac
	ApplyMovement 0x6, Movement_4d4
	ApplyMovement 0xff, Movement_554
	WaitMovement
	Return
@ 39d

Script_branch_39d: @ 39d
	ApplyMovement 0x19, Movement_5b4
	ApplyMovement 0x6, Movement_4d4
	ApplyMovement 0xff, Movement_554
	WaitMovement
	Return
@ 3b9

Script_branch_3b9: @ 3b9
	ApplyMovement 0x19, Movement_5bc
	ApplyMovement 0x6, Movement_4d4
	ApplyMovement 0xff, Movement_554
	WaitMovement
	Return
@ 3d5

Script_branch_3d5: @ 3d5
	ApplyMovement 0x19, Movement_5c4
	ApplyMovement 0x6, Movement_4d4
	ApplyMovement 0xff, Movement_554
	WaitMovement
	Return
@ 3f1

Script_branch_3f1: @ 3f1
	ApplyMovement 0x6, Movement_4bc
	ApplyMovement 0xff, Movement_534
	WaitMovement
	Return
@ 405

Script_branch_405: @ 405
	ApplyMovement 0x6, Movement_4bc
	ApplyMovement 0xff, Movement_534
	WaitMovement
	Return
@ 419

Script_branch_419: @ 419
	ApplyMovement 0x6, Movement_4c8
	ApplyMovement 0xff, Movement_544
	WaitMovement
	Return
@ 42d

Script_branch_42d: @ 42d
	ApplyMovement 0x6, Movement_4c8
	ApplyMovement 0xff, Movement_544
	WaitMovement
	Return
@ 441

.byte 0x0 @ 0x441
.byte 0x0 @ 0x442
.byte 0x0 @ 0x443

Movement_444: @ 444
	Move_3f 0x1
	MoveDownFast 0x1
	Exclamation 0x1
	Move_3f 0x1
	EndMovement 0x0
@ 458

Movement_458: @ 458
	WalkLeftFast 0x1
	WalkDownFast 0x1
	EndMovement 0x0
@ 464

Movement_464: @ 464
	WalkDownFast 0x1
	EndMovement 0x0
@ 46c

Movement_46c: @ 46c
	WalkRightFast 0x1
	WalkDownFast 0x1
	EndMovement 0x0
@ 478

Movement_478: @ 478
	WalkRightFast 0x2
	WalkDownFast 0x1
	EndMovement 0x0
@ 484

Movement_484: @ 484
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ 48c

Movement_48c: @ 48c
	Move_3f 0x4
	MoveRightFast 0x1
	EndMovement 0x0
@ 498

Movement_498: @ 498
	Move_3f 0x3
	MoveRightFast 0x1
	EndMovement 0x0
@ 4a4

Movement_4a4: @ 4a4
	Move_3f 0x2
	MoveRightFast 0x1
	EndMovement 0x0
@ 4b0

Movement_4b0: @ 4b0
	Move_3f 0x4
	MoveLeftFast 0x1
	EndMovement 0x0
@ 4bc

Movement_4bc: @ 4bc
	WalkRightFast 0x1
	WalkDownFast 0x9
	EndMovement 0x0
@ 4c8

Movement_4c8: @ 4c8
	WalkLeftFast 0x1
	WalkDownFast 0x9
	EndMovement 0x0
@ 4d4

Movement_4d4: @ 4d4
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 4e0

.byte 0x3f @ 0x4e0
.byte 0x0 @ 0x4e1
.byte 0x1 @ 0x4e2
.byte 0x0 @ 0x4e3
.byte 0x20 @ 0x4e4
.byte 0x0 @ 0x4e5
.byte 0x1 @ 0x4e6
.byte 0x0 @ 0x4e7
.byte 0xfe @ 0x4e8
.byte 0x0 @ 0x4e9
.byte 0x0 @ 0x4ea
.byte 0x0 @ 0x4eb

Movement_4ec: @ 4ec
	Move_3f 0x4
	Move_3e 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 4fc

Movement_4fc: @ 4fc
	Move_3f 0x3
	Move_3e 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 50c

Movement_50c: @ 50c
	Move_3f 0x2
	Move_3e 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 51c

Movement_51c: @ 51c
	Move_3f 0x4
	Move_3e 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 52c

Movement_52c: @ 52c
	MoveUpFast 0x1
	EndMovement 0x0
@ 534

Movement_534: @ 534
	Move_3f 0x2
	MoveRightFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 544

Movement_544: @ 544
	Move_3f 0x2
	MoveLeftFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 554

Movement_554: @ 554
	Move_3f 0x1
	Move_3e 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 564

Movement_564: @ 564
	WalkDownFast 0x1
	EndMovement 0x0
@ 56c

Movement_56c: @ 56c
	Exclamation 0x1
	EndMovement 0x0
@ 574

Movement_574: @ 574
	WalkDownFast 0x4
	WalkLeftFast 0x2
	EndMovement 0x0
@ 580

Movement_580: @ 580
	WalkDownFast 0x4
	WalkLeftFast 0x1
	EndMovement 0x0
@ 58c

Movement_58c: @ 58c
	WalkDownFast 0x4
	MoveLeftFast 0x1
	EndMovement 0x0
@ 598

Movement_598: @ 598
	WalkDownFast 0x1
	WalkLeftFast 0x1
	WalkDownFast 0x3
	MoveRightFast 0x1
	EndMovement 0x0
@ 5ac

Movement_5ac: @ 5ac
	WalkDownFast 0x8
	EndMovement 0x0
@ 5b4

Movement_5b4: @ 5b4
	WalkDownFast 0x8
	EndMovement 0x0
@ 5bc

Movement_5bc: @ 5bc
	WalkDownFast 0x8
	EndMovement 0x0
@ 5c4

Movement_5c4: @ 5c4
	WalkDownFast 0x8
	EndMovement 0x0
@ 5cc

Script_16: @ 5cc
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckGender 0x8004
	If 0x8004, 0x0
	CompareLastResultJump 0x1, Script_branch_5f4
	If 0x8004, 0x1
	CompareLastResultJump 0x1, Script_branch_625
	End
@ 5f4

Script_branch_5f4: @ 5f4
	SetVarHero 0x0
	Message 0x13
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_611
	Jump Script_branch_61a
@ 611

Script_branch_611: @ 611
	Message 0x14
	Jump Script_branch_656
@ 61a

Script_branch_61a: @ 61a
	Message 0x15
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 625

Script_branch_625: @ 625
	SetVarHero 0x0
	Message 0x18
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_642
	Jump Script_branch_64b
@ 642

Script_branch_642: @ 642
	Message 0x19
	Jump Script_branch_656
@ 64b

Script_branch_64b: @ 64b
	Message 0x1a
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 656

Script_branch_656: @ 656
	CloseMsgOnKeyPress
	CheckFacePosition 0x800c
	If 0x800c, 0x3
	CompareLastResultCall 0x1, Script_branch_99f
	If 0x800c, 0x1
	CompareLastResultCall 0x1, Script_branch_9b3
	If 0x800c, 0x0
	CompareLastResultCall 0x1, Script_branch_9c7
	Call Function_919
	DoubleBattle 0x8004, 0x350, 0x351
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_a73
	Message 0x10
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x253
	CompareLastResultCall 0x1, Script_branch_9db
	If 0x8005, 0x255
	CompareLastResultCall 0x1, Script_branch_9e7
	Message 0x11
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x253
	CompareLastResultCall 0x1, Script_branch_9f3
	If 0x8005, 0x255
	CompareLastResultCall 0x1, Script_branch_9ff
	RemovePeople 0x7
	Message 0x12
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x253
	CompareLastResultCall 0x1, Script_branch_a0b
	If 0x8005, 0x255
	CompareLastResultCall 0x1, Script_branch_a17
	RemovePeople 0x14
	CheckGender 0x8004
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_a23
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_a28
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x253
	CompareLastResultCall 0x1, Script_branch_a4b
	If 0x8005, 0x255
	CompareLastResultCall 0x1, Script_branch_a5f
	Return2 0xa, 0x800c
	SetVarHero 0x0
	CheckGender 0x8004
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_a2d
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_a32
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	ClearFlag 0x28a
	ChangeOwPosition 0x1a, 0x2b4, 0x25e
	AddPeople 0x1a
	CallStandard 0x807
	ApplyMovement 0x1a, Movement_a7c
	WaitMovement
	Message 0x1d
	CloseMsgOnKeyPress
	ApplyMovement 0x6, Movement_b3c
	ApplyMovement 0xff, Movement_b9c
	WaitMovement
	CheckGender 0x8004
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_a37
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_a3c
	Message 0x20
	CheckGender 0x8004
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_a41
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_a46
	CloseMsgOnKeyPress
	ApplyMovement 0x6, Movement_b44
	ApplyMovement 0x1a, Movement_a88
	WaitMovement
	RemovePeople 0x6
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x253
	CompareLastResultJump 0x1, Script_branch_83a
	If 0x8005, 0x255
	CompareLastResultJump 0x1, Script_branch_854
	End
@ 83a

Script_branch_83a: @ 83a
	ApplyMovement 0xff, Movement_bb0
	ApplyMovement 0x1a, Movement_a94
	WaitMovement
	Jump Script_branch_86e
@ 852

.byte 0x2 @ 0x852
.byte 0x0 @ 0x853

Script_branch_854: @ 854
	ApplyMovement 0xff, Movement_bbc
	ApplyMovement 0x1a, Movement_aa0
	WaitMovement
	Jump Script_branch_86e
@ 86c

.byte 0x2 @ 0x86c
.byte 0x0 @ 0x86d

Script_branch_86e: @ 86e
	Message 0x23
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x253
	CompareLastResultJump 0x1, Script_branch_8a9
	If 0x8005, 0x255
	CompareLastResultJump 0x1, Script_branch_8c3
	End
@ 895

.byte 0x86 @ 0x895
.byte 0x1 @ 0x896
.byte 0x1a @ 0x897
.byte 0x0 @ 0x898
.byte 0xb4 @ 0x899
.byte 0x2 @ 0x89a
.byte 0x5b @ 0x89b
.byte 0x2 @ 0x89c
.byte 0x1b @ 0x89d
.byte 0x0 @ 0x89e
.byte 0x86 @ 0x89f
.byte 0x1 @ 0x8a0
.byte 0x1a @ 0x8a1
.byte 0x0 @ 0x8a2
.byte 0xb4 @ 0x8a3
.byte 0x2 @ 0x8a4
.byte 0x5d @ 0x8a5
.byte 0x2 @ 0x8a6
.byte 0x1b @ 0x8a7
.byte 0x0 @ 0x8a8

Script_branch_8a9: @ 8a9
	ApplyMovement 0x1a, Movement_aac
	ApplyMovement 0xff, Movement_bc8
	WaitMovement
	Jump Script_branch_8dd
@ 8c1

.byte 0x2 @ 0x8c1
.byte 0x0 @ 0x8c2

Script_branch_8c3: @ 8c3
	ApplyMovement 0x1a, Movement_aac
	ApplyMovement 0xff, Movement_bdc
	WaitMovement
	Jump Script_branch_8dd
@ 8db

.byte 0x2 @ 0x8db
.byte 0x0 @ 0x8dc

Script_branch_8dd: @ 8dd
	SetFlag 0x1a9
	SetFlag 0x28a
	ClearFlag 0x20d
	SetVar 0x411f, 0x1
	PlayFanfare 0x603
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x8f, 0x0, 0x8, 0xb, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 919

Function_919: @ 919
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_939
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_96b
	End
@ 939

Script_branch_939: @ 939
	StoreStarter 0x800c
	SetVar 0x8004, 0x271
	If 0x800c, 0x186
	CompareLastResultJump 0x1, Script_branch_99d
	SetVar 0x8004, 0x272
	If 0x800c, 0x189
	CompareLastResultJump 0x1, Script_branch_99d
	SetVar 0x8004, 0x270
	Return
@ 96b

Script_branch_96b: @ 96b
	StoreStarter 0x800c
	SetVar 0x8004, 0x26e
	If 0x800c, 0x186
	CompareLastResultJump 0x1, Script_branch_99d
	SetVar 0x8004, 0x26f
	If 0x800c, 0x189
	CompareLastResultJump 0x1, Script_branch_99d
	SetVar 0x8004, 0x26d
	Return
@ 99d

Script_branch_99d: @ 99d
	Return
@ 99f

Script_branch_99f: @ 99f
	ApplyMovement 0x6, Movement_abc
	ApplyMovement 0xff, Movement_b50
	WaitMovement
	Return
@ 9b3

Script_branch_9b3: @ 9b3
	ApplyMovement 0x6, Movement_ac8
	ApplyMovement 0xff, Movement_b5c
	WaitMovement
	Return
@ 9c7

Script_branch_9c7: @ 9c7
	ApplyMovement 0x6, Movement_ad4
	ApplyMovement 0xff, Movement_b64
	WaitMovement
	Return
@ 9db

Script_branch_9db: @ 9db
	ApplyMovement 0x14, Movement_bf0
	WaitMovement
	Return
@ 9e7

Script_branch_9e7: @ 9e7
	ApplyMovement 0x7, Movement_bf0
	WaitMovement
	Return
@ 9f3

Script_branch_9f3: @ 9f3
	ApplyMovement 0x7, Movement_bf8
	WaitMovement
	Return
@ 9ff

Script_branch_9ff: @ 9ff
	ApplyMovement 0x7, Movement_bf8
	WaitMovement
	Return
@ a0b

Script_branch_a0b: @ a0b
	ApplyMovement 0x14, Movement_c08
	WaitMovement
	Return
@ a17

Script_branch_a17: @ a17
	ApplyMovement 0x14, Movement_c08
	WaitMovement
	Return
@ a23

Script_branch_a23: @ a23
	Message 0x16
	Return
@ a28

Script_branch_a28: @ a28
	Message 0x1b
	Return
@ a2d

Script_branch_a2d: @ a2d
	Message 0x17
	Return
@ a32

Script_branch_a32: @ a32
	Message 0x1c
	Return
@ a37

Script_branch_a37: @ a37
	Message 0x1e
	Return
@ a3c

Script_branch_a3c: @ a3c
	Message 0x1f
	Return
@ a41

Script_branch_a41: @ a41
	Message 0x21
	Return
@ a46

Script_branch_a46: @ a46
	Message 0x22
	Return
@ a4b

Script_branch_a4b: @ a4b
	ApplyMovement 0x6, Movement_b2c
	ApplyMovement 0xff, Movement_b8c
	WaitMovement
	Return
@ a5f

Script_branch_a5f: @ a5f
	ApplyMovement 0x6, Movement_b34
	ApplyMovement 0xff, Movement_b94
	WaitMovement
	Return
@ a73

Script_branch_a73: @ a73
	LostGoPc
	ReleaseAll
	End
@ a79

.byte 0x0 @ 0xa79
.byte 0x0 @ 0xa7a
.byte 0x0 @ 0xa7b

Movement_a7c: @ a7c
	WalkUpVeryFast  0xa
	WalkRightVeryFast 0x3
	EndMovement 0x0
@ a88

Movement_a88: @ a88
	Move_3f 0x2
	MoveLeftFast 0x1
	EndMovement 0x0
@ a94

Movement_a94: @ a94
	WalkRightFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ aa0

Movement_aa0: @ aa0
	WalkRightFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ aac

Movement_aac: @ aac
	WalkRightFast 0x5
	WalkUpFast 0x4
	WaitDisappear 0x1
	EndMovement 0x0
@ abc

Movement_abc: @ abc
	WalkDownFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ ac8

Movement_ac8: @ ac8
	WalkDownFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ ad4

Movement_ad4: @ ad4
	WalkUpFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ ae0

.byte 0x3e @ 0xae0
.byte 0x0 @ 0xae1
.byte 0x1 @ 0xae2
.byte 0x0 @ 0xae3
.byte 0x22 @ 0xae4
.byte 0x0 @ 0xae5
.byte 0x1 @ 0xae6
.byte 0x0 @ 0xae7
.byte 0x4b @ 0xae8
.byte 0x0 @ 0xae9
.byte 0x1 @ 0xaea
.byte 0x0 @ 0xaeb
.byte 0x3f @ 0xaec
.byte 0x0 @ 0xaed
.byte 0x1 @ 0xaee
.byte 0x0 @ 0xaef
.byte 0xfe @ 0xaf0
.byte 0x0 @ 0xaf1
.byte 0x0 @ 0xaf2
.byte 0x0 @ 0xaf3
.byte 0xe @ 0xaf4
.byte 0x0 @ 0xaf5
.byte 0x4 @ 0xaf6
.byte 0x0 @ 0xaf7
.byte 0xfe @ 0xaf8
.byte 0x0 @ 0xaf9
.byte 0x0 @ 0xafa
.byte 0x0 @ 0xafb
.byte 0xd @ 0xafc
.byte 0x0 @ 0xafd
.byte 0x2 @ 0xafe
.byte 0x0 @ 0xaff
.byte 0xe @ 0xb00
.byte 0x0 @ 0xb01
.byte 0x2 @ 0xb02
.byte 0x0 @ 0xb03
.byte 0xd @ 0xb04
.byte 0x0 @ 0xb05
.byte 0x6 @ 0xb06
.byte 0x0 @ 0xb07
.byte 0xfe @ 0xb08
.byte 0x0 @ 0xb09
.byte 0x0 @ 0xb0a
.byte 0x0 @ 0xb0b
.byte 0x3f @ 0xb0c
.byte 0x0 @ 0xb0d
.byte 0x1 @ 0xb0e
.byte 0x0 @ 0xb0f
.byte 0x20 @ 0xb10
.byte 0x0 @ 0xb11
.byte 0x1 @ 0xb12
.byte 0x0 @ 0xb13
.byte 0x22 @ 0xb14
.byte 0x0 @ 0xb15
.byte 0x1 @ 0xb16
.byte 0x0 @ 0xb17
.byte 0xfe @ 0xb18
.byte 0x0 @ 0xb19
.byte 0x0 @ 0xb1a
.byte 0x0 @ 0xb1b
.byte 0x3f @ 0xb1c
.byte 0x0 @ 0xb1d
.byte 0x1 @ 0xb1e
.byte 0x0 @ 0xb1f
.byte 0x21 @ 0xb20
.byte 0x0 @ 0xb21
.byte 0x1 @ 0xb22
.byte 0x0 @ 0xb23
.byte 0x22 @ 0xb24
.byte 0x0 @ 0xb25
.byte 0x1 @ 0xb26
.byte 0x0 @ 0xb27
.byte 0xfe @ 0xb28
.byte 0x0 @ 0xb29
.byte 0x0 @ 0xb2a
.byte 0x0 @ 0xb2b

Movement_b2c: @ b2c
	MoveUpFast 0x1
	EndMovement 0x0
@ b34

Movement_b34: @ b34
	MoveDownFast 0x1
	EndMovement 0x0
@ b3c

Movement_b3c: @ b3c
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ b44

Movement_b44: @ b44
	WalkLeftFast 0x3
	WalkDownFast 0xa
	EndMovement 0x0
@ b50

Movement_b50: @ b50
	WalkUpFast 0x1
	WalkRightFast 0x1
	EndMovement 0x0
@ b5c

Movement_b5c: @ b5c
	MoveRightFast 0x1
	EndMovement 0x0
@ b64

Movement_b64: @ b64
	MoveRightFast 0x1
	EndMovement 0x0
@ b6c

.byte 0x3f @ 0xb6c
.byte 0x0 @ 0xb6d
.byte 0x1 @ 0xb6e
.byte 0x0 @ 0xb6f
.byte 0x21 @ 0xb70
.byte 0x0 @ 0xb71
.byte 0x1 @ 0xb72
.byte 0x0 @ 0xb73
.byte 0x22 @ 0xb74
.byte 0x0 @ 0xb75
.byte 0x1 @ 0xb76
.byte 0x0 @ 0xb77
.byte 0xfe @ 0xb78
.byte 0x0 @ 0xb79
.byte 0x0 @ 0xb7a
.byte 0x0 @ 0xb7b
.byte 0x3f @ 0xb7c
.byte 0x0 @ 0xb7d
.byte 0x1 @ 0xb7e
.byte 0x0 @ 0xb7f
.byte 0x20 @ 0xb80
.byte 0x0 @ 0xb81
.byte 0x1 @ 0xb82
.byte 0x0 @ 0xb83
.byte 0x22 @ 0xb84
.byte 0x0 @ 0xb85
.byte 0x1 @ 0xb86
.byte 0x0 @ 0xb87
.byte 0xfe @ 0xb88
.byte 0x0 @ 0xb89
.byte 0x0 @ 0xb8a
.byte 0x0 @ 0xb8b

Movement_b8c: @ b8c
	MoveDownFast 0x1
	EndMovement 0x0
@ b94

Movement_b94: @ b94
	MoveUpFast 0x1
	EndMovement 0x0
@ b9c

Movement_b9c: @ b9c
	MoveLeftFast 0x1
	EndMovement 0x0
@ ba4

.byte 0x3f @ 0xba4
.byte 0x0 @ 0xba5
.byte 0x1 @ 0xba6
.byte 0x0 @ 0xba7
.byte 0x22 @ 0xba8
.byte 0x0 @ 0xba9
.byte 0x1 @ 0xbaa
.byte 0x0 @ 0xbab
.byte 0xfe @ 0xbac
.byte 0x0 @ 0xbad
.byte 0x0 @ 0xbae
.byte 0x0 @ 0xbaf

Movement_bb0: @ bb0
	Move_3f 0x1
	SeeDown 0x1
	EndMovement 0x0
@ bbc

Movement_bbc: @ bbc
	Move_3f 0x1
	SeeUp 0x1
	EndMovement 0x0
@ bc8

Movement_bc8: @ bc8
	WalkDownFast 0x1
	WalkRightFast 0x5
	WalkUpFast 0x5
	WaitDisappear 0x1
	EndMovement 0x0
@ bdc

Movement_bdc: @ bdc
	WalkUpFast 0x1
	WalkRightFast 0x5
	WalkUpFast 0x5
	WaitDisappear 0x1
	EndMovement 0x0
@ bf0

Movement_bf0: @ bf0
	MoveLeftFast 0x1
	EndMovement 0x0
@ bf8

Movement_bf8: @ bf8
	WalkRightVeryFast 0x4
	WalkUpVeryFast  0x4
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ c08

Movement_c08: @ c08
	WalkRightVeryFast 0x4
	WalkUpVeryFast  0x6
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ c18

Script_2: @ c18
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c2b

Script_3: @ c2b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x31
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c3e

Script_4: @ c3e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2c
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c51

Script_5: @ c51
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c64

Script_6: @ c64
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2e
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c77

Script_7: @ c77
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xcc
	CompareLastResultJump 0x1, Script_branch_cbc
	Message 0x32
	SetVar 0x8004, 0x186
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_cc7
	CallStandard 0x7fc
	SetFlag 0xcc
	Jump Script_branch_cbc
@ cbc

Script_branch_cbc: @ cbc
	Message 0x33
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ cc7

Script_branch_cc7: @ cc7
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ cd1

Script_8: @ cd1
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ce4

Script_9: @ ce4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x30
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ cf7

Script_10: @ cf7
	LockAll
	ApplyMovement 0x7, Movement_d30
	ApplyMovement 0xff, Movement_d28
	WaitMovement
	Message 0xb
	CloseMsgOnKeyPress
	ApplyMovement 0x7, Movement_d3c
	ApplyMovement 0xff, Movement_d54
	WaitMovement
	ReleaseAll
	End
@ d26

.byte 0x0 @ 0xd26
.byte 0x0 @ 0xd27

Movement_d28: @ d28
	MoveUpFast 0x1
	EndMovement 0x0
@ d30

Movement_d30: @ d30
	MoveDownFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ d3c

Movement_d3c: @ d3c
	WalkDownVeryFast  0x1
	MoveLeftFast 0x1
	Move_3f 0x2
	WalkUpFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ d54

Movement_d54: @ d54
	WalkLeftFast 0x1
	EndMovement 0x0
@ d5c

Script_11: @ d5c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 0x2, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_d82
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d82

Script_branch_d82: @ d82
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d8d

Script_12: @ d8d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 0x2, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_db3
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ db3

Script_branch_db3: @ db3
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ dbe

Script_13: @ dbe
	PlayFanfare 0x5dc
	LockAll
	Message 0x24
	CloseMsgOnKeyPress
	FacePlayer
	ApplyMovement 0x17, Movement_f1c
	WaitMovement
	Message 0x25
	CloseMsgOnKeyPress
	SetFlag 0x155
	ChangeOwPosition 0x1a, 0x2d3, 0x259
	ChangeOwMovement 0x1a, 0xe
	ReleaseOw 0x1a, 0x0
	ClearFlag 0x28a
	AddPeople 0x1a
	CheckFacePosition 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_e34
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_e5c
	If 0x800c, 0x2
	CompareLastResultJump 0x1, Script_branch_ea4
	If 0x800c, 0x3
	CompareLastResultJump 0x1, Script_branch_e7c
	End
@ e34

Script_branch_e34: @ e34
	ApplyMovement 0xff, Movement_f48
	ApplyMovement 0x17, Movement_f24
	WaitMovement
	CallStandard 0x807
	ApplyMovement 0x1a, Movement_f80
	WaitMovement
	Jump Script_branch_ecc
@ e5a

.byte 0x2 @ 0xe5a
.byte 0x0 @ 0xe5b

Script_branch_e5c: @ e5c
	ApplyMovement 0x17, Movement_f24
	WaitMovement
	CallStandard 0x807
	ApplyMovement 0x1a, Movement_f70
	WaitMovement
	Jump Script_branch_ecc
@ e7a

.byte 0x2 @ 0xe7a
.byte 0x0 @ 0xe7b

Script_branch_e7c: @ e7c
	ApplyMovement 0xff, Movement_f58
	ApplyMovement 0x17, Movement_f24
	WaitMovement
	CallStandard 0x807
	ApplyMovement 0x1a, Movement_f90
	WaitMovement
	Jump Script_branch_ecc
@ ea2

.byte 0x2 @ 0xea2
.byte 0x0 @ 0xea3

Script_branch_ea4: @ ea4
	ApplyMovement 0xff, Movement_f64
	ApplyMovement 0x17, Movement_f38
	WaitMovement
	CallStandard 0x807
	ApplyMovement 0x1a, Movement_fa0
	WaitMovement
	Jump Script_branch_ecc
@ eca

.byte 0x2 @ 0xeca
.byte 0x0 @ 0xecb

Script_branch_ecc: @ ecc
	RemovePeople 0x17
	Jump Script_branch_ed8
@ ed6

.byte 0x2 @ 0xed6
.byte 0x0 @ 0xed7

Script_branch_ed8: @ ed8
	Message 0x26
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_ef4
	Jump Script_branch_f0b
@ ef2

.byte 0x2 @ 0xef2
.byte 0x0 @ 0xef3

Script_branch_ef4: @ ef4
	SetVar 0x411f, 0x3
	SetFlag 0x9b
	Message 0x27
	CloseMsgOnKeyPress
	CallStandard 0x808
	ReleaseAll
	End
@ f0b

Script_branch_f0b: @ f0b
	Message 0x28
	WaitButton
	CloseMsgOnKeyPress
	CallStandard 0x808
	ReleaseAll
	End
@ f1a

.byte 0x0 @ 0xf1a
.byte 0x0 @ 0xf1b

Movement_f1c: @ f1c
	Exclamation 0x1
	EndMovement 0x0
@ f24

Movement_f24: @ f24
	WalkRightVeryFast 0x1
	WalkDownVeryFast  0x2
	WalkRightVeryFast 0x1
	WalkDownVeryFast  0x9
	EndMovement 0x0
@ f38

Movement_f38: @ f38
	WalkDownVeryFast  0x2
	WalkRightVeryFast 0x2
	WalkDownVeryFast  0x9
	EndMovement 0x0
@ f48

Movement_f48: @ f48
	Move_3f 0x1
	MoveRightFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ f58

Movement_f58: @ f58
	Move_3f 0x2
	MoveDownFast 0x1
	EndMovement 0x0
@ f64

Movement_f64: @ f64
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ f70

Movement_f70: @ f70
	WalkUpFast 0x6
	WalkLeftFast 0x2
	WalkUpFast 0x2
	EndMovement 0x0
@ f80

Movement_f80: @ f80
	WalkUpFast 0x6
	WalkLeftFast 0x2
	MoveUpFast 0x1
	EndMovement 0x0
@ f90

Movement_f90: @ f90
	WalkUpFast 0x6
	WalkLeftFast 0x3
	WalkUpFast 0x1
	EndMovement 0x0
@ fa0

Movement_fa0: @ fa0
	WalkUpFast 0x6
	WalkLeftFast 0x1
	WalkUpFast 0x1
	EndMovement 0x0
@ fb0

Script_30: @ fb0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	ApplyMovement 0x1a, Movement_fe0
	WaitMovement
	SetVarHero 0x0
	Message 0x29
	CallStandard 0x807
	CheckFlag 0x9b
	CompareLastResultJump 0x1, Script_branch_ef4
	Jump Script_branch_ed8
@ fdd

.byte 0x2 @ 0xfdd
.byte 0x0 @ 0xfde
.byte 0x0 @ 0xfdf

Movement_fe0: @ fe0
	Move_3f 0x1
	Exclamation 0x1
	Move_3f 0x1
	EndMovement 0x0
@ ff0

Script_14: @ ff0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2a
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1003

Script_17: @ 1003
	CallMessageBox 0x3d, 0x0, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 101a

Script_18: @ 101a
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x3e, 0x800c
	CallStandard 0x7d0
	End
@ 102f

Script_19: @ 102f
	CallMessageBox 0x3f, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 1046

Script_20: @ 1046
	CallMessageBox 0x40, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 105d

Script_21: @ 105d
	CallMessageBox 0x41, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 1074

Script_22: @ 1074
	CallMessageBox 0x42, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 108b

Script_23: @ 108b
	CallMessageBox 0x43, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 10a2

Script_24: @ 10a2
	CallMessageBox 0x44, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 10b9

Script_25: @ 10b9
	PlayFanfare 0x5dc
	LockAll
	ActDeoxisFormChange 0x182, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1179
	ChangeFormDeoxis 0x3
	PlayCry 0x182, 0x0
	Message 0x39
	WaitButton
	WaitCry
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 10e9

Script_26: @ 10e9
	PlayFanfare 0x5dc
	LockAll
	ActDeoxisFormChange 0x182, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1179
	ChangeFormDeoxis 0x2
	PlayCry 0x182, 0x0
	Message 0x3a
	WaitButton
	WaitCry
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1119

Script_27: @ 1119
	PlayFanfare 0x5dc
	LockAll
	ActDeoxisFormChange 0x182, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1179
	ChangeFormDeoxis 0x1
	PlayCry 0x182, 0x0
	Message 0x3b
	WaitButton
	WaitCry
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1149

Script_28: @ 1149
	PlayFanfare 0x5dc
	LockAll
	ActDeoxisFormChange 0x182, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1179
	ChangeFormDeoxis 0x0
	PlayCry 0x182, 0x0
	Message 0x3c
	WaitButton
	WaitCry
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1179

Script_branch_1179: @ 1179
	Message 0x38
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1184

Script_29: @ 1184
	LockAll
	ApplyMovement 0x6, Movement_11e8
	WaitMovement
	CheckGender 0x8004
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_11d6
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_11de
	CloseMsgOnKeyPress
	ApplyMovement 0x6, Movement_11fc
	WaitMovement
	RemovePeople 0x6
	Call Script_branch_ba
	ClearFlag 0x1a8
	AddPeople 0x6
	SetVar 0x411a, 0x2
	ReleaseAll
	End
@ 11d6

Script_branch_11d6: @ 11d6
	SetVarHero 0x0
	Message 0x0
	Return
@ 11de

Script_branch_11de: @ 11de
	SetVarHero 0x0
	Message 0x1
	Return
@ 11e6

.byte 0x0 @ 0x11e6
.byte 0x0 @ 0x11e7

Movement_11e8: @ 11e8
	MoveUpFast 0x1
	Exclamation 0x1
	WalkRightFast 0x2
	WalkUpFast 0x1
	EndMovement 0x0
@ 11fc

Movement_11fc: @ 11fc
	WalkDownFast 0x9
	EndMovement 0x0
@ 1204

Script_31: @ 1204
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x34
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_122b
	Message 0x35
	Jump Script_branch_1236
@ 1229

.byte 0x2 @ 0x1229
.byte 0x0 @ 0x122a

Script_branch_122b: @ 122b
	Message 0x36
	Jump Script_branch_1236
@ 1234

.byte 0x2 @ 0x1234
.byte 0x0 @ 0x1235

Script_branch_1236: @ 1236
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 123e

Script_32: @ 123e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x37
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1251

.byte 0x0 @ 0x1251
.byte 0x0 @ 0x1252
.byte 0x0 @ 0x1253

@ end_0x1254
