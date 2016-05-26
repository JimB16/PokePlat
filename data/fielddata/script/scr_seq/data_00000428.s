.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	.hword 0xfd13
@ 1e

Script_1: @ 1e
	If 0x4087, 0x2
	CompareLastResultCall 0x4, Script_branch_5b
	CheckGender 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_4b
	If 0x4000, 0x1
	CompareLastResultJump 0x1, Script_branch_53
	End
@ 4b

Script_branch_4b: @ 4b
	SetVar 0x4020, 0x61
	End
@ 53

Script_branch_53: @ 53
	SetVar 0x4020, 0x0
	End
@ 5b

Script_branch_5b: @ 5b
	ChangeOwPosition 0x3, 0xba, 0x331
	ReleaseOw 0x3, 0x1
	ChangeOwMovement 0x3, 0xf
	Return
@ 71

Script_2: @ 71
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 84

Script_3: @ 84
	CallMessageBox 0xb, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 9b

Script_4: @ 9b
	CallMessageBox 0xc, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ b2

Script_5: @ b2
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0xd, 0x800c
	CallStandard 0x7d0
	End
@ c7

Script_6: @ c7
	LockAll
	ApplyMovement 0x3, Movement_3c4
	ApplyMovement 0xff, Movement_4a0
	WaitMovement
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x339
	CompareLastResultJump 0x1, Script_branch_124
	If 0x8005, 0x33a
	CompareLastResultJump 0x1, Script_branch_134
	If 0x8005, 0x33b
	CompareLastResultJump 0x1, Script_branch_144
	If 0x8005, 0x33c
	CompareLastResultJump 0x1, Script_branch_154
	If 0x8005, 0x33d
	CompareLastResultJump 0x1, Script_branch_164
	End
@ 124

Script_branch_124: @ 124
	ApplyMovement 0x3, Movement_3d4
	WaitMovement
	Jump Script_branch_174
@ 134

Script_branch_134: @ 134
	ApplyMovement 0x3, Movement_3e4
	WaitMovement
	Jump Script_branch_174
@ 144

Script_branch_144: @ 144
	ApplyMovement 0x3, Movement_3f4
	WaitMovement
	Jump Script_branch_174
@ 154

Script_branch_154: @ 154
	ApplyMovement 0x3, Movement_400
	WaitMovement
	Jump Script_branch_174
@ 164

Script_branch_164: @ 164
	ApplyMovement 0x3, Movement_410
	WaitMovement
	Jump Script_branch_174
@ 174

Script_branch_174: @ 174
	CheckFlag 0x8f
	CompareLastResultJump 0x0, Script_branch_27c
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_19f
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_1b2
	End
@ 19f

Script_branch_19f: @ 19f
	CallStandard 0x7f8
	SetVarAlter 0x0
	SetVarHero 0x1
	Message 0x2
	Jump Script_branch_1c5
@ 1b2

Script_branch_1b2: @ 1b2
	CallStandard 0x7f8
	SetVarAlter 0x0
	SetVarHero 0x1
	Message 0x7
	Jump Script_branch_1c5
@ 1c5

Script_branch_1c5: @ 1c5
	CloseMsgOnKeyPress
	ApplyMovement 0x3, Movement_488
	ApplyMovement 0xff, Movement_4bc
	WaitMovement
	ExplanationBattle
	ApplyMovement 0x3, Movement_490
	WaitMovement
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_205
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_211
	End
@ 205

Script_branch_205: @ 205
	SetVarHero 0x0
	Message 0x3
	Jump Script_branch_21d
@ 211

Script_branch_211: @ 211
	SetVarHero 0x0
	Message 0x8
	Jump Script_branch_21d
@ 21d

Script_branch_21d: @ 21d
	SetVar 0x8004, 0x4
	SetVar 0x8005, 0x5
	CallStandard 0x7fc
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_24d
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_259
	End
@ 24d

Script_branch_24d: @ 24d
	SetVarHero 0x0
	Message 0x4
	Jump Script_branch_262
@ 259

Script_branch_259: @ 259
	Message 0x9
	Jump Script_branch_262
@ 262

Script_branch_262: @ 262
	CloseMsgOnKeyPress
	ApplyMovement 0x3, Movement_498
	WaitMovement
	RemovePeople 0x3
	SetVar 0x4087, 0x1
	ReleaseAll
	End
@ 27c

Script_branch_27c: @ 27c
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_29c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_2c8
	End
@ 29c

Script_branch_29c: @ 29c
	SetVarAlter 0x0
	SetVarHero 0x1
	CheckFlag 0x115
	CompareLastResultCall 0x0, Script_branch_2be
	CheckFlag 0x115
	CompareLastResultCall 0x1, Script_branch_2c3
	Jump Script_branch_2f4
@ 2be

Script_branch_2be: @ 2be
	Message 0x0
	Return
@ 2c3

Script_branch_2c3: @ 2c3
	Message 0x1
	Return
@ 2c8

Script_branch_2c8: @ 2c8
	SetVarAlter 0x0
	SetVarHero 0x1
	CheckFlag 0x115
	CompareLastResultCall 0x0, Script_branch_2ea
	CheckFlag 0x115
	CompareLastResultCall 0x1, Script_branch_2ef
	Jump Script_branch_2f4
@ 2ea

Script_branch_2ea: @ 2ea
	Message 0x5
	Return
@ 2ef

Script_branch_2ef: @ 2ef
	Message 0x6
	Return
@ 2f4

Script_branch_2f4: @ 2f4
	CloseMsgOnKeyPress
	If 0x8005, 0x339
	CompareLastResultJump 0x1, Script_branch_339
	If 0x8005, 0x33a
	CompareLastResultJump 0x1, Script_branch_351
	If 0x8005, 0x33b
	CompareLastResultJump 0x1, Script_branch_369
	If 0x8005, 0x33c
	CompareLastResultJump 0x1, Script_branch_381
	If 0x8005, 0x33d
	CompareLastResultJump 0x1, Script_branch_399
	End
@ 339

Script_branch_339: @ 339
	ApplyMovement 0x3, Movement_420
	ApplyMovement 0xff, Movement_4ac
	WaitMovement
	Jump Script_branch_3b1
@ 351

Script_branch_351: @ 351
	ApplyMovement 0x3, Movement_434
	ApplyMovement 0xff, Movement_4ac
	WaitMovement
	Jump Script_branch_3b1
@ 369

Script_branch_369: @ 369
	ApplyMovement 0x3, Movement_448
	ApplyMovement 0xff, Movement_4ac
	WaitMovement
	Jump Script_branch_3b1
@ 381

Script_branch_381: @ 381
	ApplyMovement 0x3, Movement_458
	ApplyMovement 0xff, Movement_4ac
	WaitMovement
	Jump Script_branch_3b1
@ 399

Script_branch_399: @ 399
	ApplyMovement 0x3, Movement_46c
	ApplyMovement 0xff, Movement_4ac
	WaitMovement
	Jump Script_branch_3b1
@ 3b1

Script_branch_3b1: @ 3b1
	ApplyMovement 0x3, Movement_480
	WaitMovement
	SetFlag 0x115
	ReleaseAll
	End
@ 3c3

.byte 0x0 @ 0x3c3

Movement_3c4: @ 3c4
	MoveRightFast 0x1
	Exclamation 0x1
	Move_41 0x1
	EndMovement 0x0
@ 3d4

Movement_3d4: @ 3d4
	WalkRightFast 0x4
	WalkUpFast 0x2
	WalkRightFast 0x1
	EndMovement 0x0
@ 3e4

Movement_3e4: @ 3e4
	WalkRightFast 0x4
	WalkUpFast 0x1
	WalkRightFast 0x1
	EndMovement 0x0
@ 3f4

Movement_3f4: @ 3f4
	WalkRightFast 0x4
	WalkRightFast 0x1
	EndMovement 0x0
@ 400

Movement_400: @ 400
	WalkRightFast 0x4
	WalkDownFast 0x1
	WalkRightFast 0x1
	EndMovement 0x0
@ 410

Movement_410: @ 410
	WalkRightFast 0x4
	WalkDownFast 0x2
	WalkRightFast 0x1
	EndMovement 0x0
@ 420

Movement_420: @ 420
	WalkRightFast 0x1
	WalkLeftFast 0x4
	WalkLeftFast 0x2
	WalkDownFast 0x2
	EndMovement 0x0
@ 434

Movement_434: @ 434
	WalkRightFast 0x1
	WalkLeftFast 0x4
	WalkLeftFast 0x2
	WalkDownFast 0x1
	EndMovement 0x0
@ 448

Movement_448: @ 448
	WalkRightFast 0x1
	WalkLeftFast 0x4
	WalkLeftFast 0x2
	EndMovement 0x0
@ 458

Movement_458: @ 458
	WalkRightFast 0x1
	WalkLeftFast 0x4
	WalkLeftFast 0x2
	WalkUpFast 0x1
	EndMovement 0x0
@ 46c

Movement_46c: @ 46c
	WalkRightFast 0x1
	WalkLeftFast 0x4
	WalkLeftFast 0x2
	WalkUpFast 0x2
	EndMovement 0x0
@ 480

Movement_480: @ 480
	MoveRightFast 0x1
	EndMovement 0x0
@ 488

Movement_488: @ 488
	WalkLeftFast 0x2
	EndMovement 0x0
@ 490

Movement_490: @ 490
	MoveRightFast 0x1
	EndMovement 0x0
@ 498

Movement_498: @ 498
	WalkLeftFast 0xc
	EndMovement 0x0
@ 4a0

Movement_4a0: @ 4a0
	Move_3f 0x1
	SeeLeft 0x1
	EndMovement 0x0
@ 4ac

Movement_4ac: @ 4ac
	Move_47 0x1
	WalkRightFast 0x1
	Move_48 0x1
	EndMovement 0x0
@ 4bc

Movement_4bc: @ 4bc
	WalkLeftFast 0x2
	EndMovement 0x0
@ 4c4

Script_7: @ 4c4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVarHero 0x0
	CheckFacePosition 0x8002
	CheckGender 0x8000
	If 0x8000, 0x0
	CompareLastResultCall 0x1, Script_branch_653
	If 0x8000, 0x1
	CompareLastResultCall 0x1, Script_branch_658
	CloseMsgOnKeyPress
	PlaySound 0x47e
	Cmd_308 0xbd, 0x332
	ApplyMovement 0xf1, Movement_6f8
	WaitMovement
	Cmd_309
	ApplyMovement 0x3, Movement_690
	ApplyMovement 0xff, Movement_6d0
	WaitMovement
	Return2 0xf, 0x800c
	If 0x8000, 0x0
	CompareLastResultCall 0x1, Script_branch_65d
	If 0x8000, 0x1
	CompareLastResultCall 0x1, Script_branch_662
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	Restart
	If 0x8002, 0x0
	CompareLastResultCall 0x1, Script_branch_5d1
	If 0x8002, 0x1
	CompareLastResultCall 0x1, Script_branch_5e5
	If 0x8002, 0x2
	CompareLastResultCall 0x1, Script_branch_5f9
	If 0x8002, 0x3
	CompareLastResultCall 0x1, Script_branch_605
	If 0x8000, 0x0
	CompareLastResultCall 0x1, Script_branch_667
	If 0x8000, 0x1
	CompareLastResultCall 0x1, Script_branch_66c
	CloseMsgOnKeyPress
	If 0x8002, 0x0
	CompareLastResultCall 0x1, Script_branch_611
	If 0x8002, 0x1
	CompareLastResultCall 0x1, Script_branch_61d
	If 0x8002, 0x2
	CompareLastResultCall 0x1, Script_branch_629
	If 0x8002, 0x3
	CompareLastResultCall 0x1, Script_branch_635
	Jump Script_branch_641
@ 5cf

.byte 0x2 @ 0x5cf
.byte 0x0 @ 0x5d0

Script_branch_5d1: @ 5d1
	ApplyMovement 0x3, Movement_698
	ApplyMovement 0xff, Movement_6d8
	WaitMovement
	Return
@ 5e5

Script_branch_5e5: @ 5e5
	ApplyMovement 0x3, Movement_6a0
	ApplyMovement 0xff, Movement_6e0
	WaitMovement
	Return
@ 5f9

Script_branch_5f9: @ 5f9
	ApplyMovement 0xff, Movement_6e8
	WaitMovement
	Return
@ 605

Script_branch_605: @ 605
	ApplyMovement 0x3, Movement_6b0
	WaitMovement
	Return
@ 611

Script_branch_611: @ 611
	ApplyMovement 0x3, Movement_674
	WaitMovement
	Return
@ 61d

Script_branch_61d: @ 61d
	ApplyMovement 0x3, Movement_684
	WaitMovement
	Return
@ 629

Script_branch_629: @ 629
	ApplyMovement 0x3, Movement_684
	WaitMovement
	Return
@ 635

Script_branch_635: @ 635
	ApplyMovement 0x3, Movement_684
	WaitMovement
	Return
@ 641

Script_branch_641: @ 641
	RemovePeople 0x3
	ClearFlag 0x177
	SetVar 0x4087, 0x3
	ReleaseAll
	End
@ 653

Script_branch_653: @ 653
	Message 0xe
	Return
@ 658

Script_branch_658: @ 658
	Message 0x11
	Return
@ 65d

Script_branch_65d: @ 65d
	Message 0xf
	Return
@ 662

Script_branch_662: @ 662
	Message 0x12
	Return
@ 667

Script_branch_667: @ 667
	Message 0x10
	Return
@ 66c

Script_branch_66c: @ 66c
	Message 0x13
	Return
@ 671

.byte 0x0 @ 0x671
.byte 0x0 @ 0x672
.byte 0x0 @ 0x673

Movement_674: @ 674
	WalkLeftFast 0x1
	WalkDownFast 0x3
	WalkLeftFast 0xa
	EndMovement 0x0
@ 684

Movement_684: @ 684
	WalkDownFast 0x3
	WalkLeftFast 0xa
	EndMovement 0x0
@ 690

Movement_690: @ 690
	SeeRight 0x1
	EndMovement 0x0
@ 698

Movement_698: @ 698
	MoveDownFast 0x1
	EndMovement 0x0
@ 6a0

Movement_6a0: @ 6a0
	MoveUpFast 0x1
	EndMovement 0x0
@ 6a8

.byte 0x23 @ 0x6a8
.byte 0x0 @ 0x6a9
.byte 0x1 @ 0x6aa
.byte 0x0 @ 0x6ab
.byte 0xfe @ 0x6ac
.byte 0x0 @ 0x6ad
.byte 0x0 @ 0x6ae
.byte 0x0 @ 0x6af

Movement_6b0: @ 6b0
	MoveLeftFast 0x1
	EndMovement 0x0
@ 6b8

.byte 0x3f @ 0x6b8
.byte 0x0 @ 0x6b9
.byte 0x1 @ 0x6ba
.byte 0x0 @ 0x6bb
.byte 0x22 @ 0x6bc
.byte 0x0 @ 0x6bd
.byte 0x1 @ 0x6be
.byte 0x0 @ 0x6bf
.byte 0xfe @ 0x6c0
.byte 0x0 @ 0x6c1
.byte 0x0 @ 0x6c2
.byte 0x0 @ 0x6c3
.byte 0x3f @ 0x6c4
.byte 0x0 @ 0x6c5
.byte 0x1 @ 0x6c6
.byte 0x0 @ 0x6c7
.byte 0x21 @ 0x6c8
.byte 0x0 @ 0x6c9
.byte 0x1 @ 0x6ca
.byte 0x0 @ 0x6cb
.byte 0xfe @ 0x6cc
.byte 0x0 @ 0x6cd
.byte 0x0 @ 0x6ce
.byte 0x0 @ 0x6cf

Movement_6d0: @ 6d0
	SeeRight 0x1
	EndMovement 0x0
@ 6d8

Movement_6d8: @ 6d8
	MoveUpFast 0x1
	EndMovement 0x0
@ 6e0

Movement_6e0: @ 6e0
	MoveDownFast 0x1
	EndMovement 0x0
@ 6e8

Movement_6e8: @ 6e8
	MoveLeftFast 0x1
	EndMovement 0x0
@ 6f0

.byte 0x23 @ 0x6f0
.byte 0x0 @ 0x6f1
.byte 0x1 @ 0x6f2
.byte 0x0 @ 0x6f3
.byte 0xfe @ 0x6f4
.byte 0x0 @ 0x6f5
.byte 0x0 @ 0x6f6
.byte 0x0 @ 0x6f7

Movement_6f8: @ 6f8
	WalkRightFast 0x1
	EndMovement 0x0
@ 700

@ end_0x700
