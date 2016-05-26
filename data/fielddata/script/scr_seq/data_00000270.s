.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_4: @ 12
	CheckFlag 0xe6
	CompareLastResultJump 0x0, Script_branch_1f
	End
@ 1f

Script_branch_1f: @ 1f
	SetVar 0x4090, 0x0
	End
@ 27

Script_1: @ 27
	LockAll
	RideBike 0x0
	ApplyMovement 0x1c, Movement_140
	WaitMovement
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x37
	CompareLastResultJump 0x1, Script_branch_8c
	If 0x8005, 0x38
	CompareLastResultJump 0x1, Script_branch_9c
	If 0x8005, 0x39
	CompareLastResultJump 0x1, Script_branch_ac
	If 0x8005, 0x3a
	CompareLastResultJump 0x1, Script_branch_bc
	If 0x8005, 0x3b
	CompareLastResultJump 0x1, Script_branch_cc
	If 0x8005, 0x3c
	CompareLastResultJump 0x1, Script_branch_dc
	End
@ 8c

Script_branch_8c: @ 8c
	ApplyMovement 0x1c, Movement_14c
	WaitMovement
	Jump Script_branch_ec
@ 9c

Script_branch_9c: @ 9c
	ApplyMovement 0x1c, Movement_158
	WaitMovement
	Jump Script_branch_ec
@ ac

Script_branch_ac: @ ac
	ApplyMovement 0x1c, Movement_164
	WaitMovement
	Jump Script_branch_ec
@ bc

Script_branch_bc: @ bc
	ApplyMovement 0x1c, Movement_170
	WaitMovement
	Jump Script_branch_ec
@ cc

Script_branch_cc: @ cc
	ApplyMovement 0x1c, Movement_178
	WaitMovement
	Jump Script_branch_ec
@ dc

Script_branch_dc: @ dc
	ApplyMovement 0x1c, Movement_184
	WaitMovement
	Jump Script_branch_ec
@ ec

Script_branch_ec: @ ec
	SetVarHero 0x0
	CheckFlag 0xdf
	CompareLastResultCall 0x0, Script_branch_134
	CheckFlag 0xdf
	CompareLastResultCall 0x1, Script_branch_139
	SetVarHero 0x0
	Soundfr 0x481
	Message 0x1
	Cmd_4f
	SetFlag 0xdf
	SetVar 0x4090, 0x1
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	SetVar 0x403f, 0x262
	StartFollow
	FollowHero 0x1c, 0x30
	ReleaseAll
	End
@ 134

Script_branch_134: @ 134
	Message 0x0
	Return
@ 139

Script_branch_139: @ 139
	Message 0x3
	Return
@ 13e

.byte 0x0 @ 0x13e
.byte 0x0 @ 0x13f

Movement_140: @ 140
	MoveLeftFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 14c

Movement_14c: @ 14c
	WalkUpFast 0x3
	WalkLeftFast 0x1
	EndMovement 0x0
@ 158

Movement_158: @ 158
	WalkUpFast 0x2
	WalkLeftFast 0x1
	EndMovement 0x0
@ 164

Movement_164: @ 164
	WalkUpFast 0x1
	WalkLeftFast 0x1
	EndMovement 0x0
@ 170

Movement_170: @ 170
	WalkLeftFast 0x1
	EndMovement 0x0
@ 178

Movement_178: @ 178
	WalkDownFast 0x1
	WalkLeftFast 0x1
	EndMovement 0x0
@ 184

Movement_184: @ 184
	WalkDownFast 0x2
	WalkLeftFast 0x1
	EndMovement 0x0
@ 190

Script_2: @ 190
	LockAll
	ApplyMovement 0xff, Movement_274
	ApplyMovement 0x1c, Movement_2dc
	WaitMovement
	Message 0x4
	CloseMsgOnKeyPress
	SetVar 0x4090, 0x0
	StopFollow
	FollowHero 0x1c, 0xe
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x37
	CompareLastResultJump 0x1, Script_branch_20d
	If 0x8005, 0x38
	CompareLastResultJump 0x1, Script_branch_21d
	If 0x8005, 0x39
	CompareLastResultJump 0x1, Script_branch_22d
	If 0x8005, 0x3a
	CompareLastResultJump 0x1, Script_branch_23d
	If 0x8005, 0x3b
	CompareLastResultJump 0x1, Script_branch_24d
	If 0x8005, 0x3c
	CompareLastResultJump 0x1, Script_branch_25d
	End
@ 20d

Script_branch_20d: @ 20d
	ApplyMovement 0x1c, Movement_284
	WaitMovement
	Jump Script_branch_26d
@ 21d

Script_branch_21d: @ 21d
	ApplyMovement 0x1c, Movement_294
	WaitMovement
	Jump Script_branch_26d
@ 22d

Script_branch_22d: @ 22d
	ApplyMovement 0x1c, Movement_2a4
	WaitMovement
	Jump Script_branch_26d
@ 23d

Script_branch_23d: @ 23d
	ApplyMovement 0x1c, Movement_2b4
	WaitMovement
	Jump Script_branch_26d
@ 24d

Script_branch_24d: @ 24d
	ApplyMovement 0x1c, Movement_2bc
	WaitMovement
	Jump Script_branch_26d
@ 25d

Script_branch_25d: @ 25d
	ApplyMovement 0x1c, Movement_2cc
	WaitMovement
	Jump Script_branch_26d
@ 26d

Script_branch_26d: @ 26d
	ReleaseAll
	End
@ 271

.byte 0x0 @ 0x271
.byte 0x0 @ 0x272
.byte 0x0 @ 0x273

Movement_274: @ 274
	MoveRightFast 0x1
	EndMovement 0x0
@ 27c

.byte 0xc @ 0x27c
.byte 0x0 @ 0x27d
.byte 0x1 @ 0x27e
.byte 0x0 @ 0x27f
.byte 0xfe @ 0x280
.byte 0x0 @ 0x281
.byte 0x0 @ 0x282
.byte 0x0 @ 0x283

Movement_284: @ 284
	WalkRightFast 0x2
	WalkDownFast 0x3
	MoveRightFast 0x1
	EndMovement 0x0
@ 294

Movement_294: @ 294
	WalkRightFast 0x2
	WalkDownFast 0x2
	MoveRightFast 0x1
	EndMovement 0x0
@ 2a4

Movement_2a4: @ 2a4
	WalkRightFast 0x2
	WalkDownFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 2b4

Movement_2b4: @ 2b4
	WalkRightFast 0x2
	EndMovement 0x0
@ 2bc

Movement_2bc: @ 2bc
	WalkRightFast 0x2
	WalkUpFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 2cc

Movement_2cc: @ 2cc
	WalkRightFast 0x2
	WalkUpFast 0x2
	MoveRightFast 0x1
	EndMovement 0x0
@ 2dc

Movement_2dc: @ 2dc
	SeeLeft 0x1
	EndMovement 0x0
@ 2e4

Script_3: @ 2e4
	LockAll
	StopFollow
	FollowHero 0x1c, 0xe
	ApplyMovement 0xff, Movement_3b4
	ApplyMovement 0x1c, Movement_3e0
	WaitMovement
	Message 0x5
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x33
	CompareLastResultJump 0x1, Script_branch_341
	If 0x8004, 0x34
	CompareLastResultJump 0x1, Script_branch_359
	If 0x8004, 0x35
	CompareLastResultJump 0x1, Script_branch_371
	If 0x8004, 0x36
	CompareLastResultJump 0x1, Script_branch_389
	End
@ 341

Script_branch_341: @ 341
	ApplyMovement 0xff, Movement_3c0
	ApplyMovement 0x1c, Movement_3ec
	WaitMovement
	Jump Script_branch_3a1
@ 359

Script_branch_359: @ 359
	ApplyMovement 0xff, Movement_3c0
	ApplyMovement 0x1c, Movement_400
	WaitMovement
	Jump Script_branch_3a1
@ 371

Script_branch_371: @ 371
	ApplyMovement 0xff, Movement_3c0
	ApplyMovement 0x1c, Movement_414
	WaitMovement
	Jump Script_branch_3a1
@ 389

Script_branch_389: @ 389
	ApplyMovement 0xff, Movement_3d0
	ApplyMovement 0x1c, Movement_428
	WaitMovement
	Jump Script_branch_3a1
@ 3a1

Script_branch_3a1: @ 3a1
	RemovePeople 0x1c
	SetFlag 0xe6
	SetVar 0x4090, 0x2
	ReleaseAll
	End
@ 3b3

.byte 0x0 @ 0x3b3

Movement_3b4: @ 3b4
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 3c0

Movement_3c0: @ 3c0
	Move_3f 0x1
	MoveRightFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 3d0

Movement_3d0: @ 3d0
	Move_3f 0x1
	MoveLeftFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 3e0

Movement_3e0: @ 3e0
	MoveUpFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 3ec

Movement_3ec: @ 3ec
	WalkRightFast 0x1
	WalkUpFast 0x7
	WalkRightFast 0x4
	MoveRightFast 0x1
	EndMovement 0x0
@ 400

Movement_400: @ 400
	WalkRightFast 0x1
	WalkUpFast 0x7
	WalkRightFast 0x3
	MoveRightFast 0x1
	EndMovement 0x0
@ 414

Movement_414: @ 414
	WalkRightFast 0x1
	WalkUpFast 0x7
	WalkRightFast 0x2
	MoveRightFast 0x1
	EndMovement 0x0
@ 428

Movement_428: @ 428
	WalkLeftFast 0x1
	WalkUpFast 0x7
	WalkRightFast 0x3
	MoveRightFast 0x1
	EndMovement 0x0
@ 43c

@ end_0x43c
