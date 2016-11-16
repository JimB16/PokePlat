.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	SetFlag 0x9ed
	End
@ 10

Script_2: @ 10
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFirstPokeParty 0x8002
	SetVarPoke 0x0, 0x8002
	SetVarHero 0x1
	SetVarPokeNick 0x2, 0x8002
	CheckFootStep 0x8000, 0x8001, 0x8002
	CheckFlag 0xf9
	CompareLastResultJump EQUAL, Script_branch_4b
	SetFlag 0xf9
	Message 0x0
	CloseMsgOnKeyPress
	Jump Script_branch_56
@ 4b

Script_branch_4b: @ 4b
	Message 0x1
	CloseMsgOnKeyPress
	Jump Script_branch_56
@ 56

Script_branch_56: @ 56
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Return2 0x28, 0x800c
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Call Function_8a
	Return2 0x14, 0x800c
	RandomEvent 0x74
	Jump Script_branch_150
@ 8a

Function_8a: @ 8a
	CheckSpritePosition 0x8005, 0x8006
	If 0x8005, 0x4
	CompareLastResultJump EQUAL, Script_branch_bd
	If 0x8005, 0x6
	CompareLastResultJump EQUAL, Script_branch_c9
	If 0x8006, 0x5
	CompareLastResultJump EQUAL, Script_branch_d5
	Jump Script_branch_e1
@ bd

Script_branch_bd: @ bd
	ApplyMovement 0x0, Movement_698
	WaitMovement
	Return
@ c9

Script_branch_c9: @ c9
	ApplyMovement 0x0, Movement_6a8
	WaitMovement
	Return
@ d5

Script_branch_d5: @ d5
	ApplyMovement 0x0, Movement_6b8
	WaitMovement
	Return
@ e1

Script_branch_e1: @ e1
	ApplyMovement 0x0, Movement_6c8
	WaitMovement
	Return
@ ed

Function_ed: @ ed
	CheckSpritePosition 0x8005, 0x8006
	If 0x8005, 0x4
	CompareLastResultJump EQUAL, Script_branch_120
	If 0x8005, 0x6
	CompareLastResultJump EQUAL, Script_branch_12c
	If 0x8006, 0x5
	CompareLastResultJump EQUAL, Script_branch_138
	Jump Script_branch_144
@ 120

Script_branch_120: @ 120
	ApplyMovement 0x0, Movement_6d8
	WaitMovement
	Return
@ 12c

Script_branch_12c: @ 12c
	ApplyMovement 0x0, Movement_6e0
	WaitMovement
	Return
@ 138

Script_branch_138: @ 138
	ApplyMovement 0x0, Movement_6e8
	WaitMovement
	Return
@ 144

Script_branch_144: @ 144
	ApplyMovement 0x0, Movement_6f0
	WaitMovement
	Return
@ 150

Script_branch_150: @ 150
	If 0x8001, 0x1
	CompareLastResultJump EQUAL, Script_branch_18a
	If 0x8001, 0x2
	CompareLastResultJump EQUAL, Script_branch_19d
	If 0x8001, 0x3
	CompareLastResultJump EQUAL, Script_branch_1b0
	If 0x8001, 0x4
	CompareLastResultJump EQUAL, Script_branch_1c3
	Jump Script_branch_574
@ 18a

Script_branch_18a: @ 18a
	If 0x8000, 0x1
	CompareLastResultJump EQUAL, Script_branch_1d6
	Jump Script_branch_216
@ 19d

Script_branch_19d: @ 19d
	If 0x8000, 0x1
	CompareLastResultJump EQUAL, Script_branch_256
	Jump Script_branch_296
@ 1b0

Script_branch_1b0: @ 1b0
	If 0x8000, 0x1
	CompareLastResultJump EQUAL, Script_branch_2d6
	Jump Script_branch_316
@ 1c3

Script_branch_1c3: @ 1c3
	If 0x8000, 0x1
	CompareLastResultJump EQUAL, Script_branch_356
	Jump Script_branch_396
@ 1d6

Script_branch_1d6: @ 1d6
	StoreHappyPoke 0x800c, 0x8002
	If 0x800c, 0xff
	CompareLastResultJump 0x4, Script_branch_3fa
	If 0x800c, 0xc8
	CompareLastResultJump 0x4, Script_branch_3f1
	If 0x800c, 0x96
	CompareLastResultJump 0x4, Script_branch_3e8
	If 0x800c, 0x46
	CompareLastResultJump 0x4, Script_branch_3df
	Jump Script_branch_3d6
@ 216

Script_branch_216: @ 216
	StoreHappyPoke 0x800c, 0x8002
	If 0x800c, 0xff
	CompareLastResultJump 0x4, Script_branch_427
	If 0x800c, 0xc8
	CompareLastResultJump 0x4, Script_branch_41e
	If 0x800c, 0x96
	CompareLastResultJump 0x4, Script_branch_415
	If 0x800c, 0x46
	CompareLastResultJump 0x4, Script_branch_40c
	Jump Script_branch_403
@ 256

Script_branch_256: @ 256
	StoreHappyPoke 0x800c, 0x8002
	If 0x800c, 0xff
	CompareLastResultJump 0x4, Script_branch_454
	If 0x800c, 0xc8
	CompareLastResultJump 0x4, Script_branch_44b
	If 0x800c, 0x96
	CompareLastResultJump 0x4, Script_branch_442
	If 0x800c, 0x46
	CompareLastResultJump 0x4, Script_branch_439
	Jump Script_branch_430
@ 296

Script_branch_296: @ 296
	StoreHappyPoke 0x800c, 0x8002
	If 0x800c, 0xff
	CompareLastResultJump 0x4, Script_branch_481
	If 0x800c, 0xc8
	CompareLastResultJump 0x4, Script_branch_478
	If 0x800c, 0x96
	CompareLastResultJump 0x4, Script_branch_46f
	If 0x800c, 0x46
	CompareLastResultJump 0x4, Script_branch_466
	Jump Script_branch_45d
@ 2d6

Script_branch_2d6: @ 2d6
	StoreHappyPoke 0x800c, 0x8002
	If 0x800c, 0xff
	CompareLastResultJump 0x4, Script_branch_4ae
	If 0x800c, 0xc8
	CompareLastResultJump 0x4, Script_branch_4a5
	If 0x800c, 0x96
	CompareLastResultJump 0x4, Script_branch_49c
	If 0x800c, 0x46
	CompareLastResultJump 0x4, Script_branch_493
	Jump Script_branch_48a
@ 316

Script_branch_316: @ 316
	StoreHappyPoke 0x800c, 0x8002
	If 0x800c, 0xff
	CompareLastResultJump 0x4, Script_branch_4db
	If 0x800c, 0xc8
	CompareLastResultJump 0x4, Script_branch_4d2
	If 0x800c, 0x96
	CompareLastResultJump 0x4, Script_branch_4c9
	If 0x800c, 0x46
	CompareLastResultJump 0x4, Script_branch_4c0
	Jump Script_branch_4b7
@ 356

Script_branch_356: @ 356
	StoreHappyPoke 0x800c, 0x8002
	If 0x800c, 0xff
	CompareLastResultJump 0x4, Script_branch_508
	If 0x800c, 0xc8
	CompareLastResultJump 0x4, Script_branch_4ff
	If 0x800c, 0x96
	CompareLastResultJump 0x4, Script_branch_4f6
	If 0x800c, 0x46
	CompareLastResultJump 0x4, Script_branch_4ed
	Jump Script_branch_4e4
@ 396

Script_branch_396: @ 396
	StoreHappyPoke 0x800c, 0x8002
	If 0x800c, 0xff
	CompareLastResultJump 0x4, Script_branch_535
	If 0x800c, 0xc8
	CompareLastResultJump 0x4, Script_branch_52c
	If 0x800c, 0x96
	CompareLastResultJump 0x4, Script_branch_523
	If 0x800c, 0x46
	CompareLastResultJump 0x4, Script_branch_51a
	Jump Script_branch_511
@ 3d6

Script_branch_3d6: @ 3d6
	Message 0xa
	Jump Script_branch_5a5
@ 3df

Script_branch_3df: @ 3df
	Message 0xb
	Jump Script_branch_5a5
@ 3e8

Script_branch_3e8: @ 3e8
	Message 0xc
	Jump Script_branch_5a5
@ 3f1

Script_branch_3f1: @ 3f1
	Message 0xd
	Jump Script_branch_5a5
@ 3fa

Script_branch_3fa: @ 3fa
	Message 0xe
	Jump Script_branch_53e
@ 403

Script_branch_403: @ 403
	Message 0xf
	Jump Script_branch_5c4
@ 40c

Script_branch_40c: @ 40c
	Message 0x10
	Jump Script_branch_5c4
@ 415

Script_branch_415: @ 415
	Message 0x11
	Jump Script_branch_5c4
@ 41e

Script_branch_41e: @ 41e
	Message 0x12
	Jump Script_branch_5c4
@ 427

Script_branch_427: @ 427
	Message 0x13
	Jump Script_branch_559
@ 430

Script_branch_430: @ 430
	Message 0x14
	Jump Script_branch_5a5
@ 439

Script_branch_439: @ 439
	Message 0x15
	Jump Script_branch_5a5
@ 442

Script_branch_442: @ 442
	Message 0x16
	Jump Script_branch_5a5
@ 44b

Script_branch_44b: @ 44b
	Message 0x17
	Jump Script_branch_5a5
@ 454

Script_branch_454: @ 454
	Message 0x18
	Jump Script_branch_53e
@ 45d

Script_branch_45d: @ 45d
	Message 0x19
	Jump Script_branch_5c4
@ 466

Script_branch_466: @ 466
	Message 0x1a
	Jump Script_branch_5c4
@ 46f

Script_branch_46f: @ 46f
	Message 0x1b
	Jump Script_branch_5c4
@ 478

Script_branch_478: @ 478
	Message 0x1c
	Jump Script_branch_5c4
@ 481

Script_branch_481: @ 481
	Message 0x1d
	Jump Script_branch_559
@ 48a

Script_branch_48a: @ 48a
	Message 0x1e
	Jump Script_branch_5a5
@ 493

Script_branch_493: @ 493
	Message 0x1f
	Jump Script_branch_5a5
@ 49c

Script_branch_49c: @ 49c
	Message 0x20
	Jump Script_branch_5a5
@ 4a5

Script_branch_4a5: @ 4a5
	Message 0x21
	Jump Script_branch_5a5
@ 4ae

Script_branch_4ae: @ 4ae
	Message 0x22
	Jump Script_branch_53e
@ 4b7

Script_branch_4b7: @ 4b7
	Message 0x23
	Jump Script_branch_5c4
@ 4c0

Script_branch_4c0: @ 4c0
	Message 0x24
	Jump Script_branch_5c4
@ 4c9

Script_branch_4c9: @ 4c9
	Message 0x25
	Jump Script_branch_5c4
@ 4d2

Script_branch_4d2: @ 4d2
	Message 0x26
	Jump Script_branch_5c4
@ 4db

Script_branch_4db: @ 4db
	Message 0x27
	Jump Script_branch_559
@ 4e4

Script_branch_4e4: @ 4e4
	Message 0x28
	Jump Script_branch_5a5
@ 4ed

Script_branch_4ed: @ 4ed
	Message 0x29
	Jump Script_branch_5a5
@ 4f6

Script_branch_4f6: @ 4f6
	Message 0x2a
	Jump Script_branch_5a5
@ 4ff

Script_branch_4ff: @ 4ff
	Message 0x2b
	Jump Script_branch_5a5
@ 508

Script_branch_508: @ 508
	Message 0x2c
	Jump Script_branch_53e
@ 511

Script_branch_511: @ 511
	Message 0x2d
	Jump Script_branch_5c4
@ 51a

Script_branch_51a: @ 51a
	Message 0x2e
	Jump Script_branch_5c4
@ 523

Script_branch_523: @ 523
	Message 0x2f
	Jump Script_branch_5c4
@ 52c

Script_branch_52c: @ 52c
	Message 0x30
	Jump Script_branch_5c4
@ 535

Script_branch_535: @ 535
	Message 0x31
	Jump Script_branch_559
@ 53e

Script_branch_53e: @ 53e
	CheckRibbon 0x800c, 0x8002, 0x45
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_602
	Jump Script_branch_5a5
@ 559

Script_branch_559: @ 559
	CheckRibbon 0x800c, 0x8002, 0x45
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_633
	Jump Script_branch_5c4
@ 574

Script_branch_574: @ 574
	Message 0x32
	StoreHappyPoke 0x800c, 0x8002
	If 0x800c, 0xff
	CompareLastResultJump LESSER, Script_branch_5e3
	CheckRibbon 0x800c, 0x8002, 0x45
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_664
	Jump Script_branch_5e3
@ 5a5

Script_branch_5a5: @ 5a5
	CloseMsgOnKeyPress
	Return2 0x14, 0x800c
	Call Function_ed
	Return2 0xa, 0x800c
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5c4

Script_branch_5c4: @ 5c4
	CloseMsgOnKeyPress
	Return2 0x14, 0x800c
	Call Function_ed
	Return2 0xa, 0x800c
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5e3

Script_branch_5e3: @ 5e3
	CloseMsgOnKeyPress
	Return2 0x14, 0x800c
	Call Function_ed
	Return2 0xa, 0x800c
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 602

Script_branch_602: @ 602
	CloseMsgOnKeyPress
	Return2 0x14, 0x800c
	Call Function_ed
	Return2 0xa, 0x800c
	Message 0x5
	Soundfr 0x483
	Message 0x8
	Cmd_4f
	GiveRibbon 0x8002, 0x45
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 633

Script_branch_633: @ 633
	CloseMsgOnKeyPress
	Return2 0x14, 0x800c
	Call Function_ed
	Return2 0xa, 0x800c
	Message 0x6
	Soundfr 0x483
	Message 0x8
	Cmd_4f
	GiveRibbon 0x8002, 0x45
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 664

Script_branch_664: @ 664
	CloseMsgOnKeyPress
	Return2 0x14, 0x800c
	Call Function_ed
	Return2 0xa, 0x800c
	Message 0x7
	Soundfr 0x483
	Message 0x8
	Cmd_4f
	GiveRibbon 0x8002, 0x45
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 695

.byte 0x0 @ 0x695
.byte 0x0 @ 0x696
.byte 0x0 @ 0x697

Movement_698: @ 698
	Move_47 0x1
	WalkRightFast 0x1
	Move_48 0x1
	EndMovement 0x0
@ 6a8

Movement_6a8: @ 6a8
	Move_47 0x1
	WalkLeftFast 0x1
	Move_48 0x1
	EndMovement 0x0
@ 6b8

Movement_6b8: @ 6b8
	Move_47 0x1
	WalkDownFast 0x1
	Move_48 0x1
	EndMovement 0x0
@ 6c8

Movement_6c8: @ 6c8
	Move_47 0x1
	WalkUpFast 0x1
	Move_48 0x1
	EndMovement 0x0
@ 6d8

Movement_6d8: @ 6d8
	WalkLeftFast 0x1
	EndMovement 0x0
@ 6e0

Movement_6e0: @ 6e0
	WalkRightFast 0x1
	EndMovement 0x0
@ 6e8

Movement_6e8: @ 6e8
	WalkUpFast 0x1
	EndMovement 0x0
@ 6f0

Movement_6f0: @ 6f0
	WalkDownFast 0x1
	EndMovement 0x0
@ 6f8

@ end_0x6f8
