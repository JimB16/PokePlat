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
	.hword 0xfd13
@ 32

Script_11: @ 32
	CheckFlag 0xe3
	CompareLastResultJump LESSER, Script_branch_3f
	End
@ 3f

Script_branch_3f: @ 3f
	SetVar 0x40b1, 0x0
	End
@ 47

Script_1: @ 47
	LockAll
	RideBike 0x0
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x1c
	CompareLastResultJump EQUAL, Script_branch_6e
	If 0x8004, 0x1d
	CompareLastResultJump EQUAL, Script_branch_7e
	End
@ 6e

Script_branch_6e: @ 6e
	ApplyMovement 0x0, Movement_e8
	WaitMovement
	Jump Script_branch_8e
Script_branch_7e: @ 7e
	ApplyMovement 0x0, Movement_f4
	WaitMovement
	Jump Script_branch_8e
Script_branch_8e: @ 8e
	CheckFlag 0x8b
	CompareLastResultCall LESSER, Script_branch_d8
	CheckFlag 0x8b
	CompareLastResultCall EQUAL, Script_branch_e0
	SetVarHero 0x0
	Soundfr 0x481
	Message 0x1
	Cmd_4f
	SetFlag 0x8b
	SetVar 0x40b1, 0x1
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	SetVar 0x403f, 0x260
	StartFollow
	FollowHero 0x0, 0x30
	ContinueFollow 0x0, 0x1
	ReleaseAll
	End
@ d8

Script_branch_d8: @ d8
	SetVarHero 0x0
	Message 0x0
	Return
@ e0

Script_branch_e0: @ e0
	SetVarHero 0x0
	Message 0x3
	Return
@ e8

Movement_e8: @ e8
	Move_99 0x1
	WalkDownFast 0x1
	EndMovement 0x0
@ f4

Movement_f4: @ f4
	Move_99 0x1
	WalkDownFast 0x1
	WalkRightFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 108

Script_2: @ 108
	LockAll
	StopFollow
	FollowHero 0x0, 0xf
	ContinueFollow 0x0, 0x0
	ApplyMovement 0x0, Movement_190
	WaitMovement
	Message 0x4
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x1c
	CompareLastResultJump EQUAL, Script_branch_148
	If 0x8004, 0x1d
	CompareLastResultJump EQUAL, Script_branch_158
	End
@ 148

Script_branch_148: @ 148
	ApplyMovement 0x0, Movement_174
	WaitMovement
	Jump Script_branch_168
Script_branch_158: @ 158
	ApplyMovement 0x0, Movement_180
	WaitMovement
	Jump Script_branch_168
Script_branch_168: @ 168
	SetVar 0x40b1, 0x0
	ReleaseAll
	End
@ 172

.byte 0x0 @ 0x172
.byte 0x0 @ 0x173

Movement_174: @ 174
	WalkUpFast 0x2
	MoveDownFast 0x1
	EndMovement 0x0
@ 180

Movement_180: @ 180
	WalkUpFast 0x2
	WalkLeftFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 190

Movement_190: @ 190
	MoveDownFast 0x1
	EndMovement 0x0
@ 198

Script_3: @ 198
	LockAll
	ApplyMovement 0x0, Movement_300
	ApplyMovement 0xff, Movement_368
	WaitMovement
	SetVarHero 0x0
	Message 0x5
	SetVar 0x8004, 0xda
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1ea
	Jump Script_branch_1db
	End
@ 1db

Script_branch_1db: @ 1db
	Message 0x6
	CallStandard 0x7e0
	Jump Script_branch_1ea
	End
@ 1ea

Script_branch_1ea: @ 1ea
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x22
	CompareLastResultJump EQUAL, Script_branch_23b
	If 0x8005, 0x23
	CompareLastResultJump EQUAL, Script_branch_253
	If 0x8005, 0x24
	CompareLastResultJump EQUAL, Script_branch_26b
	If 0x8005, 0x25
	CompareLastResultJump EQUAL, Script_branch_283
	If 0x8005, 0x26
	CompareLastResultJump EQUAL, Script_branch_29b
	Jump Script_branch_2b3
	End
@ 23b

Script_branch_23b: @ 23b
	ApplyMovement 0x0, Movement_30c
	ApplyMovement 0xff, Movement_374
	WaitMovement
	Jump Script_branch_2cb
Script_branch_253: @ 253
	ApplyMovement 0x0, Movement_318
	ApplyMovement 0xff, Movement_388
	WaitMovement
	Jump Script_branch_2cb
Script_branch_26b: @ 26b
	ApplyMovement 0x0, Movement_324
	ApplyMovement 0xff, Movement_39c
	WaitMovement
	Jump Script_branch_2cb
Script_branch_283: @ 283
	ApplyMovement 0x0, Movement_330
	ApplyMovement 0xff, Movement_3b0
	WaitMovement
	Jump Script_branch_2cb
Script_branch_29b: @ 29b
	ApplyMovement 0x0, Movement_33c
	ApplyMovement 0xff, Movement_3c4
	WaitMovement
	Jump Script_branch_2cb
Script_branch_2b3: @ 2b3
	ApplyMovement 0x0, Movement_348
	ApplyMovement 0xff, Movement_3d8
	WaitMovement
	Jump Script_branch_2cb
Script_branch_2cb: @ 2cb
	ApplyMovement 0x0, Movement_354
	WaitMovement
	Message 0x7
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_35c
	WaitMovement
	PlayFanfare 0x603
	StopFollow
	RemovePeople 0x0
	WaitFanfare 0x603
	SetFlag 0xe3
	SetVar 0x40b1, 0x2
	ReleaseAll
	End
@ 300

Movement_300: @ 300
	MoveRightFast 0x1
	Move_99 0x1
	EndMovement 0x0
@ 30c

Movement_30c: @ 30c
	WalkDownFast 0x2
	WalkRightFast 0x5
	EndMovement 0x0
@ 318

Movement_318: @ 318
	WalkDownFast 0x1
	WalkRightFast 0x5
	EndMovement 0x0
@ 324

Movement_324: @ 324
	WalkDownFast 0x1
	WalkRightFast 0x5
	EndMovement 0x0
@ 330

Movement_330: @ 330
	WalkUpFast 0x1
	WalkRightFast 0x5
	EndMovement 0x0
@ 33c

Movement_33c: @ 33c
	WalkUpFast 0x1
	WalkRightFast 0x5
	EndMovement 0x0
@ 348

Movement_348: @ 348
	WalkUpFast 0x2
	WalkRightFast 0x5
	EndMovement 0x0
@ 354

Movement_354: @ 354
	MoveLeftFast 0x1
	EndMovement 0x0
@ 35c

Movement_35c: @ 35c
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 368

Movement_368: @ 368
	Move_3f 0x3
	MoveLeftFast 0x1
	EndMovement 0x0
@ 374

Movement_374: @ 374
	Move_3f 0x2
	MoveDownFast 0x1
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 388

Movement_388: @ 388
	Move_3f 0x1
	MoveDownFast 0x1
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 39c

Movement_39c: @ 39c
	Move_3f 0x1
	MoveDownFast 0x1
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 3b0

Movement_3b0: @ 3b0
	Move_3f 0x1
	MoveUpFast 0x1
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 3c4

Movement_3c4: @ 3c4
	Move_3f 0x1
	MoveUpFast 0x1
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 3d8

Movement_3d8: @ 3d8
	Move_3f 0x2
	MoveUpFast 0x1
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 3ec

Script_4: @ 3ec
	LockAll
	SetVarHero 0x0
	ReleaseAll
	End
@ 3f5

Script_5: @ 3f5
	LockAll
	SetVarHero 0x0
	ReleaseAll
	End
@ 3fe

Script_6: @ 3fe
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 411

Script_7: @ 411
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xb
	CloseMsgOnKeyPress
	ApplyMovement 0x18, Movement_4bc
	WaitMovement
	Message 0xc
	FacePlayer
	Message 0xd
	CloseMsgOnKeyPress
	CheckFacePosition 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_46c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_47e
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_490
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_4a2
	End
@ 46c

Script_branch_46c: @ 46c
	ApplyMovement 0x18, Movement_4d0
	WaitMovement
	Jump Script_branch_4b4
	End
@ 47e

Script_branch_47e: @ 47e
	ApplyMovement 0x18, Movement_4c4
	WaitMovement
	Jump Script_branch_4b4
	End
@ 490

Script_branch_490: @ 490
	ApplyMovement 0x18, Movement_4c4
	WaitMovement
	Jump Script_branch_4b4
	End
@ 4a2

Script_branch_4a2: @ 4a2
	ApplyMovement 0x18, Movement_4c4
	WaitMovement
	Jump Script_branch_4b4
	End
@ 4b4

Script_branch_4b4: @ 4b4
	RemovePeople 0x18
	ReleaseAll
	End
@ 4bc

Movement_4bc: @ 4bc
	MoveUpFast 0x1
	EndMovement 0x0
@ 4c4

Movement_4c4: @ 4c4
	WalkDownFast 0x2
	WalkRightFast 0x9
	EndMovement 0x0
@ 4d0

Movement_4d0: @ 4d0
	WalkLeftFast 0x1
	WalkDownFast 0x2
	WalkRightFast 0xa
	EndMovement 0x0
@ 4e0

Script_8: @ 4e0
	CallMessageBox 0xe, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 4f7

Script_9: @ 4f7
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0xf, 0x800c
	CallStandard 0x7d0
	End
@ 50c

Script_10: @ 50c
	PlayFanfare 0x5dc
	LockAll
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 51d

Script_12: @ 51d
	LockAll
	SetVar 0x40cd, 0x2
	ApplyMovement 0x0, Movement_53c
	WaitMovement
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 53a

.byte 0x0 @ 0x53a
.byte 0x0 @ 0x53b

Movement_53c: @ 53c
	MoveUpFast 0x1
	EndMovement 0x0
@ 544

@ end_0x544
