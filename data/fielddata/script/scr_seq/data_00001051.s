.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckGender 0x8004
	If 0x40a6, 0x3
	CompareLastResultJump 0x1, Script_branch_27
	Jump Script_branch_6c
@ 25

.byte 0x2 @ 0x25
.byte 0x0 @ 0x26

Script_branch_27: @ 27
	CheckFlag 0x9be
	CompareLastResultJump 0x0, Script_branch_3a
	Jump Script_branch_6c
@ 38

.byte 0x2 @ 0x38
.byte 0x0 @ 0x39

Script_branch_3a: @ 3a
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_5c
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_64
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5c

Script_branch_5c: @ 5c
	SetVarHero 0x0
	Message 0x1c
	Return
@ 64

Script_branch_64: @ 64
	SetVarHero 0x0
	Message 0x1d
	Return
@ 6c

Script_branch_6c: @ 6c
	SetvarUnk 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_133
	CheckSinPokedex 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_b2
	CheckFlag 0x145
	CompareLastResultJump 0x0, Script_branch_332
	Call Function_4a4
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_37c
	Jump Script_branch_357
@ b2

Script_branch_b2: @ b2
	CheckNatPokedexStatus 0x2, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_30d
	CheckFlag 0xf0
	CompareLastResultJump 0x0, Script_branch_2e8
	CheckFlag 0x131
	CompareLastResultJump 0x0, Script_branch_2c3
	CheckNatPokedex 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_158
	Jump Script_branch_f3
@ f1

.byte 0x2 @ 0xf1
.byte 0x0 @ 0xf2

Script_branch_f3: @ f3
	CheckFlag 0x146
	CompareLastResultJump 0x0, Script_branch_1f4
	CheckIdPlayer 0x800c, 0x3
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump 0x1, Script_branch_1cb
	If 0x8008, 0x1
	CompareLastResultJump 0x1, Script_branch_1a2
	If 0x8008, 0x2
	CompareLastResultJump 0x1, Script_branch_17d
	End
@ 133

Script_branch_133: @ 133
	SetVarHero 0x0
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_3a9
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_3d6
	Jump Script_branch_3a1
@ 156

.byte 0x2 @ 0x156
.byte 0x0 @ 0x157

Script_branch_158: @ 158
	SetVarHero 0x0
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_467
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_46c
	Jump Script_branch_3a1
@ 17b

.byte 0x2 @ 0x17b
.byte 0x0 @ 0x17c

Script_branch_17d: @ 17d
	SetVarHero 0x0
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_45d
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_462
	Jump Script_branch_3a1
@ 1a0

.byte 0x2 @ 0x1a0
.byte 0x0 @ 0x1a1

Script_branch_1a2: @ 1a2
	SetFlag 0x148
	SetVarHero 0x0
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_453
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_458
	Jump Script_branch_3a1
@ 1c9

.byte 0x2 @ 0x1c9
.byte 0x0 @ 0x1ca

Script_branch_1cb: @ 1cb
	SetFlag 0x147
	SetVarHero 0x0
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_449
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_44e
	Jump Script_branch_3a1
@ 1f2

.byte 0x2 @ 0x1f2
.byte 0x0 @ 0x1f3

Script_branch_1f4: @ 1f4
	SetFlag 0x146
	SetVarHero 0x0
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_43f
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_444
	CloseMsgOnKeyPress
	CheckFacePosition 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_251
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_26b
	If 0x800c, 0x2
	CompareLastResultJump 0x1, Script_branch_285
	If 0x800c, 0x3
	CompareLastResultJump 0x1, Script_branch_29f
	End
@ 251

Script_branch_251: @ 251
	ApplyMovement 0x4, Movement_474
	ApplyMovement 0xff, Movement_488
	WaitMovement
	Jump Script_branch_2b1
@ 269

.byte 0x2 @ 0x269
.byte 0x0 @ 0x26a

Script_branch_26b: @ 26b
	ApplyMovement 0x4, Movement_474
	ApplyMovement 0xff, Movement_488
	WaitMovement
	Jump Script_branch_2b1
@ 283

.byte 0x2 @ 0x283
.byte 0x0 @ 0x284

Script_branch_285: @ 285
	ApplyMovement 0x4, Movement_47c
	ApplyMovement 0xff, Movement_494
	WaitMovement
	Jump Script_branch_2b1
@ 29d

.byte 0x2 @ 0x29d
.byte 0x0 @ 0x29e

Script_branch_29f: @ 29f
	ApplyMovement 0x4, Movement_474
	WaitMovement
	Jump Script_branch_2b1
@ 2af

.byte 0x2 @ 0x2af
.byte 0x0 @ 0x2b0

Script_branch_2b1: @ 2b1
	RemovePeople 0x4
	ClearFlag 0x188
	SetVar 0x4087, 0x2
	ReleaseAll
	End
@ 2c3

Script_branch_2c3: @ 2c3
	SetVarHero 0x0
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_435
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_43a
	Jump Script_branch_3a1
@ 2e6

.byte 0x2 @ 0x2e6
.byte 0x0 @ 0x2e7

Script_branch_2e8: @ 2e8
	SetVarHero 0x0
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_42b
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_430
	Jump Script_branch_3a1
@ 30b

.byte 0x2 @ 0x30b
.byte 0x0 @ 0x30c

Script_branch_30d: @ 30d
	SetVarHero 0x0
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_421
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_426
	Jump Script_branch_3a1
@ 330

.byte 0x2 @ 0x330
.byte 0x0 @ 0x331

Script_branch_332: @ 332
	SetVarHero 0x0
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_417
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_41c
	Jump Script_branch_3a1
@ 355

.byte 0x2 @ 0x355
.byte 0x0 @ 0x356

Script_branch_357: @ 357
	SetVarHero 0x0
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_40d
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_412
	Jump Script_branch_3a1
@ 37a

.byte 0x2 @ 0x37a
.byte 0x0 @ 0x37b

Script_branch_37c: @ 37c
	SetVarHero 0x0
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_403
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_408
	Jump Script_branch_3a1
@ 39f

.byte 0x2 @ 0x39f
.byte 0x0 @ 0x3a0

Script_branch_3a1: @ 3a1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3a9

Script_branch_3a9: @ 3a9
	Message 0xa
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_3cc
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_3d1
	End
@ 3cc

Script_branch_3cc: @ 3cc
	Message 0xb
	Return
@ 3d1

Script_branch_3d1: @ 3d1
	Message 0xc
	Return
@ 3d6

Script_branch_3d6: @ 3d6
	Message 0x18
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_3f9
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_3fe
	End
@ 3f9

Script_branch_3f9: @ 3f9
	Message 0x19
	Return
@ 3fe

Script_branch_3fe: @ 3fe
	Message 0x1a
	Return
@ 403

Script_branch_403: @ 403
	Message 0xd
	Return
@ 408

Script_branch_408: @ 408
	Message 0x1b
	Return
@ 40d

Script_branch_40d: @ 40d
	Message 0x0
	Return
@ 412

Script_branch_412: @ 412
	Message 0xe
	Return
@ 417

Script_branch_417: @ 417
	Message 0x1
	Return
@ 41c

Script_branch_41c: @ 41c
	Message 0xf
	Return
@ 421

Script_branch_421: @ 421
	Message 0x2
	Return
@ 426

Script_branch_426: @ 426
	Message 0x10
	Return
@ 42b

Script_branch_42b: @ 42b
	Message 0x3
	Return
@ 430

Script_branch_430: @ 430
	Message 0x11
	Return
@ 435

Script_branch_435: @ 435
	Message 0x4
	Return
@ 43a

Script_branch_43a: @ 43a
	Message 0x12
	Return
@ 43f

Script_branch_43f: @ 43f
	Message 0x5
	Return
@ 444

Script_branch_444: @ 444
	Message 0x13
	Return
@ 449

Script_branch_449: @ 449
	Message 0x6
	Return
@ 44e

Script_branch_44e: @ 44e
	Message 0x14
	Return
@ 453

Script_branch_453: @ 453
	Message 0x7
	Return
@ 458

Script_branch_458: @ 458
	Message 0x15
	Return
@ 45d

Script_branch_45d: @ 45d
	Message 0x8
	Return
@ 462

Script_branch_462: @ 462
	Message 0x16
	Return
@ 467

Script_branch_467: @ 467
	Message 0x9
	Return
@ 46c

Script_branch_46c: @ 46c
	Message 0x17
	Return
@ 471

.byte 0x0 @ 0x471
.byte 0x0 @ 0x472
.byte 0x0 @ 0x473

Movement_474: @ 474
	WalkRightFast 0xa
	EndMovement 0x0
@ 47c

Movement_47c: @ 47c
	WalkUpFast 0x1
	WalkRightFast 0xa
	EndMovement 0x0
@ 488

Movement_488: @ 488
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 494

Movement_494: @ 494
	Move_3f 0x1
	MoveUpFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 4a4

Function_4a4: @ 4a4
	If 0x40c4, 0x1
	CompareLastResultJump 0x1, Script_branch_4c6
	If 0x40c5, 0x1
	CompareLastResultJump 0x1, Script_branch_4c6
	SetVar 0x800c, 0x1
	Return
@ 4c6

Script_branch_4c6: @ 4c6
	SetVar 0x800c, 0x0
	Return
@ 4ce

.byte 0x0 @ 0x4ce
.byte 0x0 @ 0x4cf

@ end_0x4d0
