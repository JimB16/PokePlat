.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	.hword 0xfd13
@ 1a

Script_1: @ 1a
	If 0x4057, 0x1
	CompareLastResultCall EQUAL, Script_branch_aa
	CheckFlag 0x12d
	CompareLastResultJump EQUAL, Script_branch_80
	Cmd_166 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_80
	CheckNatPokedexStatus 0x2, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_80
	CheckItem 0x1c4, 0x1, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_80
	UnkFunct2 0x1, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_80
	ClearFlag 0x252
Script_branch_80: @ 80
	End
@ 82

Script_2: @ 82
	CheckFlag 0x12d
	CompareLastResultJump EQUAL, Script_branch_9a
	If 0x408d, 0x1
	CompareLastResultCall EQUAL, Script_branch_9c
Script_branch_9a: @ 9a
	End
@ 9c

Script_branch_9c: @ 9c
	SetOwsFollow 0x3, 0x0
	Return
@ a4

.byte 0x1e @ 0xa4
.byte 0x0 @ 0xa5
.byte 0xca @ 0xa6
.byte 0x2 @ 0xa7
.byte 0x1b @ 0xa8
.byte 0x0 @ 0xa9

Script_branch_aa: @ aa
	SetVar 0x4057, 0x2
	SetVar 0x4085, 0x1
	Return
@ b8

Script_3: @ b8
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x12d
	CompareLastResultJump EQUAL, Script_branch_d6
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d6

Script_branch_d6: @ d6
	SetvarShaymin 0x1
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e4

Script_4: @ e4
	CheckFlag 0x12d
	CompareLastResultJump EQUAL, Script_branch_22d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVar 0x408d, 0x1
	SetVarHero 0x0
	CheckGender 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_219
	Message 0x0
Script_branch_114: @ 114
	CloseMsgOnKeyPress
	Call Function_240
	SetVarHero 0x0
	Message 0x2
	CloseMsgOnKeyPress
Script_branch_124: @ 124
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ThankNameInsert 0x800c
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_222
	SetVarHero 0x0
	SetvarShaymin 0x1
	Message 0x3
	YesNoBox 0x800c
	CloseMsgOnKeyPress
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_124
	Call Function_29a
	Return2 0xf, 0x800c
	SwitchMusic 0x0, 0xa
	FadeScreen 0x6, 0x6, 0x0, 0x7fff
	ResetScreen
	ShayminAnm 0x3, 0x1
	Cmd_333 0x0
	Warp 0x18f, 0x0, 0x38c, 0x1ec, 0x0
	Return2 0xf, 0x800c
	FadeScreen 0x6, 0x6, 0x1, 0x7fff
	ResetScreen
	Call Function_2b8
	If 0x4057, 0x2
	CompareLastResultCall 0x5, Script_branch_1f0
	If 0x4057, 0x2
	CompareLastResultCall EQUAL, Script_branch_1f5
	WaitButton
	CloseMsgOnKeyPress
	Cmd_333 0x7f
	StoreSayingLearned 0xa
	SetFlag 0x12d
	SetFlag 0x252
	SetFlag 0x2ca
	SetVar 0x408d, 0x0
	ReleaseAll
	End
@ 1f0

Script_branch_1f0: @ 1f0
	Message 0x5
	Return
@ 1f5

Script_branch_1f5: @ 1f5
	Message 0x4
	CloseMsgOnKeyPress
	ApplyMovement 0x15, Movement_5ec
	WaitMovement
	ApplyMovement 0xff, Movement_438
	WaitMovement
	Return2 0xf, 0x800c
	Message 0xb
	Return
@ 219

Script_branch_219: @ 219
	Message 0x1
	Jump Script_branch_114
@ 222

Script_branch_222: @ 222
	Message 0x6
	CloseMsgOnKeyPress
	Jump Script_branch_124
@ 22d

Script_branch_22d: @ 22d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 240

Function_240: @ 240
	CheckSpritePosition 0x8000, 0x8001
	CopyVar 0x8008, 0x8000
	If 0x8008, 0x38d
	CompareLastResultJump EQUAL, Script_branch_272
	If 0x8008, 0x38e
	CompareLastResultJump EQUAL, Script_branch_286
	ApplyMovement 0xff, Movement_328
	WaitMovement
	Return
@ 272

Script_branch_272: @ 272
	ApplyMovement 0xff, Movement_338
	ApplyMovement 0x3, Movement_364
	WaitMovement
	Return
@ 286

Script_branch_286: @ 286
	ApplyMovement 0xff, Movement_34c
	ApplyMovement 0x3, Movement_370
	WaitMovement
	Return
@ 29a

Function_29a: @ 29a
	ApplyMovement 0xff, Movement_384
	ApplyMovement 0x3, Movement_384
	WaitMovement
	Return
@ 2ae

Script_branch_2ae: @ 2ae
	ApplyMovement 0x15, Movement_66c
	Return
@ 2b8

Function_2b8: @ 2b8
	ApplyMovement 0x3, Movement_404
	ApplyMovement 0xff, Movement_3c8
	ApplyMovement 0x10, Movement_440
	WaitMovement
	PlayCry 0x1ec, 0x0
	WaitCry
	If 0x4057, 0x2
	CompareLastResultCall EQUAL, Script_branch_2ae
	ApplyMovement 0x3, Movement_38c
	ApplyMovement 0x10, Movement_3b0
	ApplyMovement 0xff, Movement_39c
	WaitMovement
	ApplyMovement 0x10, Movement_448
	WaitMovement
	SetFlag 0x25c
	RemovePeople 0x10
	PlayCry 0x1ec, 0x0
	WaitCry
	ApplyMovement 0x3, Movement_3c0
	WaitMovement
	Return
@ 327

.byte 0x0 @ 0x327

Movement_328: @ 328
	SeeUp 0x1
	Move_41 0x1
	SeeRight 0x1
	EndMovement 0x0
@ 338

Movement_338: @ 338
	WalkLeftFast 0x1
	WalkUpFast 0x1
	Move_41 0x1
	SeeRight 0x1
	EndMovement 0x0
@ 34c

Movement_34c: @ 34c
	WalkDownFast 0x1
	WalkLeftFast 0x2
	WalkUpFast 0x1
	Move_41 0x1
	SeeRight 0x1
	EndMovement 0x0
@ 364

Movement_364: @ 364
	Move_3f 0x1
	SeeLeft 0x1
	EndMovement 0x0
@ 370

Movement_370: @ 370
	Move_3f 0x1
	SeeDown 0x1
	Move_3f 0x2
	SeeLeft 0x1
	EndMovement 0x0
@ 384

Movement_384: @ 384
	SeeUp 0x1
	EndMovement 0x0
@ 38c

Movement_38c: @ 38c
	SeeRight 0x1
	Exclamation 0x1
	Move_41 0x1
	EndMovement 0x0
@ 39c

Movement_39c: @ 39c
	Move_41 0x1
	SeeRight 0x1
	Exclamation 0x1
	Move_41 0x1
	EndMovement 0x0
@ 3b0

Movement_3b0: @ 3b0
	SeeLeft 0x1
	Exclamation 0x1
	Move_41 0x1
	EndMovement 0x0
@ 3c0

Movement_3c0: @ 3c0
	SeeLeft 0x1
	EndMovement 0x0
@ 3c8

Movement_3c8: @ 3c8
	SeeLeft 0x1
	Move_41 0x1
	SeeDown 0x1
	Move_41 0x1
	SeeRight 0x1
	Move_41 0x1
	SeeDown 0x1
	Move_41 0x1
	SeeLeft 0x1
	Move_41 0x1
	SeeUp 0x1
	Move_41 0x1
	SeeDown 0x1
	Move_41 0x1
	EndMovement 0x0
@ 404

Movement_404: @ 404
	SeeDown 0x1
	Move_41 0x1
	SeeRight 0x1
	Move_41 0x1
	SeeDown 0x1
	Move_41 0x1
	SeeLeft 0x1
	Move_41 0x1
	SeeUp 0x1
	Move_41 0x1
	EndMovement 0x0
@ 430

.byte 0x21 @ 0x430
.byte 0x0 @ 0x431
.byte 0x1 @ 0x432
.byte 0x0 @ 0x433
.byte 0xfe @ 0x434
.byte 0x0 @ 0x435
.byte 0x0 @ 0x436
.byte 0x0 @ 0x437

Movement_438: @ 438
	MoveLeftFast 0x1
	EndMovement 0x0
@ 440

Movement_440: @ 440
	WalkDownFast 0xc
	EndMovement 0x0
@ 448

Movement_448: @ 448
	SeeUp 0x1
	Move_41 0x1
	PauseWalkUpSlow 0xc
	EndMovement 0x0
@ 458

Script_5: @ 458
	LockAll
	ClearFlag 0x2ca
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x1f0
	CompareLastResultJump EQUAL, Script_branch_48d
	If 0x8005, 0x1f1
	CompareLastResultJump EQUAL, Script_branch_4af
	If 0x8005, 0x1f2
	CompareLastResultJump EQUAL, Script_branch_4d1
	End
@ 48d

Script_branch_48d: @ 48d
	ChangeOwPosition 0x15, 0x386, 0x1f8
	AddPeople 0x15
	Lock 0x15
	ApplyMovement 0x15, Movement_598
	WaitMovement
	Jump Script_branch_4f3
@ 4ad

.byte 0x2 @ 0x4ad
.byte 0x0 @ 0x4ae

Script_branch_4af: @ 4af
	ChangeOwPosition 0x15, 0x386, 0x1f9
	AddPeople 0x15
	Lock 0x15
	ApplyMovement 0x15, Movement_5a4
	WaitMovement
	Jump Script_branch_4f3
@ 4cf

.byte 0x2 @ 0x4cf
.byte 0x0 @ 0x4d0

Script_branch_4d1: @ 4d1
	ChangeOwPosition 0x15, 0x386, 0x1fa
	AddPeople 0x15
	Lock 0x15
	ApplyMovement 0x15, Movement_5b0
	WaitMovement
	Jump Script_branch_4f3
@ 4f1

.byte 0x2 @ 0x4f1
.byte 0x0 @ 0x4f2

Script_branch_4f3: @ 4f3
	ApplyMovement 0xff, Movement_628
	WaitMovement
	Message 0x9
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x1f0
	CompareLastResultJump EQUAL, Script_branch_531
	If 0x8005, 0x1f1
	CompareLastResultJump EQUAL, Script_branch_54b
	If 0x8005, 0x1f2
	CompareLastResultJump EQUAL, Script_branch_565
	End
@ 531

Script_branch_531: @ 531
	ApplyMovement 0x15, Movement_5bc
	ApplyMovement 0xff, Movement_630
	WaitMovement
	Jump Script_branch_57f
@ 549

.byte 0x2 @ 0x549
.byte 0x0 @ 0x54a

Script_branch_54b: @ 54b
	ApplyMovement 0x15, Movement_5cc
	ApplyMovement 0xff, Movement_644
	WaitMovement
	Jump Script_branch_57f
@ 563

.byte 0x2 @ 0x563
.byte 0x0 @ 0x564

Script_branch_565: @ 565
	ApplyMovement 0x15, Movement_5dc
	ApplyMovement 0xff, Movement_658
	WaitMovement
	Jump Script_branch_57f
@ 57d

.byte 0x2 @ 0x57d
.byte 0x0 @ 0x57e

Script_branch_57f: @ 57f
	SetVar 0x4057, 0x2
	SetVar 0x4085, 0x2
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 596

.byte 0x0 @ 0x596
.byte 0x0 @ 0x597

Movement_598: @ 598
	WalkUpFast 0x8
	MoveRightFast 0x1
	EndMovement 0x0
@ 5a4

Movement_5a4: @ 5a4
	WalkUpFast 0x8
	MoveRightFast 0x1
	EndMovement 0x0
@ 5b0

Movement_5b0: @ 5b0
	WalkUpFast 0x8
	MoveRightFast 0x1
	EndMovement 0x0
@ 5bc

Movement_5bc: @ 5bc
	WalkDownFast 0x1
	WalkRightFast 0x5
	WalkUpFast 0x4
	EndMovement 0x0
@ 5cc

Movement_5cc: @ 5cc
	WalkUpFast 0x1
	WalkRightFast 0x5
	WalkUpFast 0x3
	EndMovement 0x0
@ 5dc

Movement_5dc: @ 5dc
	WalkUpFast 0x2
	WalkRightFast 0x5
	WalkUpFast 0x3
	EndMovement 0x0
@ 5ec

Movement_5ec: @ 5ec
	MoveRightFast 0x1
	EndMovement 0x0
@ 5f4

Script_6: @ 5f4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x12d
	CompareLastResultJump EQUAL, Script_branch_61c
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ApplyMovement 0x15, Movement_664
	WaitMovement
	ReleaseAll
	End
@ 61c

Script_branch_61c: @ 61c
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 627

.byte 0x0 @ 0x627

Movement_628: @ 628
	MoveLeftFast 0x1
	EndMovement 0x0
@ 630

Movement_630: @ 630
	Move_3f 0x2
	MoveRightFast 0x1
	Move_3f 0x4
	MoveUpFast 0x1
	EndMovement 0x0
@ 644

Movement_644: @ 644
	Move_3f 0x2
	MoveRightFast 0x1
	Move_3f 0x3
	MoveUpFast 0x1
	EndMovement 0x0
@ 658

Movement_658: @ 658
	Move_3f 0x2
	MoveUpFast 0x1
	EndMovement 0x0
@ 664

Movement_664: @ 664
	SeeUp 0x1
	EndMovement 0x0
@ 66c

Movement_66c: @ 66c
	SeeRight 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 678

@ end_0x678
