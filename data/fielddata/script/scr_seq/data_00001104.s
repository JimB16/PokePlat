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
	.hword 0xfd13
@ 3e

Script_14: @ 3e
	SetFlag 0x2aa
	SetFlag 0x2ad
	SetFlag 0x2af
	SetFlag 0x2b2
	SetFlag 0x2b5
	If 0x404e, 0xff
	CompareLastResultJump 0x1, Script_branch_ba
	If 0x40c8, 0x0
	CompareLastResultJump 0x1, Script_branch_ba
	CheckFlag 0x9ab
	CompareLastResultJump 0x1, Script_branch_ba
	If 0x404e, 0x2
	CompareLastResultCall 0x1, Script_branch_bc
	If 0x404e, 0x4
	CompareLastResultCall 0x1, Script_branch_c2
	If 0x404e, 0x5
	CompareLastResultCall 0x1, Script_branch_c8
	If 0x404e, 0x7
	CompareLastResultCall 0x1, Script_branch_ce
	If 0x404e, 0x9
	CompareLastResultCall 0x1, Script_branch_d4
	End
@ ba

Script_branch_ba: @ ba
	End
@ bc

Script_branch_bc: @ bc
	ClearFlag 0x2aa
	Return
@ c2

Script_branch_c2: @ c2
	ClearFlag 0x2ad
	Return
@ c8

Script_branch_c8: @ c8
	ClearFlag 0x2af
	Return
@ ce

Script_branch_ce: @ ce
	ClearFlag 0x2b2
	Return
@ d4

Script_branch_d4: @ d4
	ClearFlag 0x2b5
	Return
@ da

Script_1: @ da
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ed

Script_2: @ ed
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 100

Script_3: @ 100
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xfa
	CompareLastResultCall 0x0, Script_branch_126
	CheckFlag 0xfa
	CompareLastResultCall 0x1, Script_branch_12b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 126

Script_branch_126: @ 126
	Message 0x2
	Return
@ 12b

Script_branch_12b: @ 12b
	Message 0x3
	Return
@ 130

Script_4: @ 130
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 143

Script_5: @ 143
	CallMessageBox 0x19, 0x0, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 15a

Script_6: @ 15a
	CallMessageBox 0x1a, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 171

Script_7: @ 171
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 184

Script_8: @ 184
	LockAll
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x1d8
	CompareLastResultCall 0x1, Script_branch_266
	If 0x8005, 0x1d9
	CompareLastResultCall 0x1, Script_branch_272
	If 0x8005, 0x1da
	CompareLastResultCall 0x1, Script_branch_274
	Message 0x6
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_2bc
	Cmd_30c
	Message 0x7
	CloseMsgOnKeyPress
	If 0x8005, 0x1d8
	CompareLastResultCall 0x1, Script_branch_280
	If 0x8005, 0x1d9
	CompareLastResultCall 0x1, Script_branch_294
	If 0x8005, 0x1da
	CompareLastResultCall 0x1, Script_branch_2a8
	Message 0x9
	CloseMsgOnKeyPress
	ApplyMovement 0xd, Movement_388
	WaitMovement
	PrepareDoorAnimation 0x19, 0xe, 0x16, 0x15, 0x4d
	OpenDoor 0x4d
	WaitAction 0x4d
	ApplyMovement 0xd, Movement_390
	ApplyMovement 0xff, Movement_3c0
	WaitMovement
	CloseDoor 0x4d
	WaitAction 0x4d
	WaitClose 0x4d
	RemovePeople 0xd
	SetVar 0x40c8, 0x1
	SetVar 0x404e, 0xff
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x1d0, 0x0, 0xa, 0x6, 0x2
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 266

Script_branch_266: @ 266
	ApplyMovement 0xd, Movement_328
	WaitMovement
	Return
@ 272

Script_branch_272: @ 272
	Return
@ 274

Script_branch_274: @ 274
	ApplyMovement 0xd, Movement_334
	WaitMovement
	Return
@ 280

Script_branch_280: @ 280
	ApplyMovement 0xd, Movement_358
	ApplyMovement 0xff, Movement_39c
	WaitMovement
	Return
@ 294

Script_branch_294: @ 294
	ApplyMovement 0xd, Movement_368
	ApplyMovement 0xff, Movement_3a8
	WaitMovement
	Return
@ 2a8

Script_branch_2a8: @ 2a8
	ApplyMovement 0xd, Movement_378
	ApplyMovement 0xff, Movement_3b4
	WaitMovement
	Return
@ 2bc

Script_branch_2bc: @ 2bc
	Message 0x8
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x1d8
	CompareLastResultCall 0x1, Script_branch_2f2
	If 0x8005, 0x1d9
	CompareLastResultCall 0x1, Script_branch_306
	If 0x8005, 0x1da
	CompareLastResultCall 0x1, Script_branch_312
	ReleaseAll
	End
@ 2f2

Script_branch_2f2: @ 2f2
	ApplyMovement 0xd, Movement_340
	ApplyMovement 0xff, Movement_3cc
	WaitMovement
	Return
@ 306

Script_branch_306: @ 306
	ApplyMovement 0xff, Movement_3cc
	WaitMovement
	Return
@ 312

Script_branch_312: @ 312
	ApplyMovement 0xd, Movement_34c
	ApplyMovement 0xff, Movement_3cc
	WaitMovement
	Return
@ 326

.byte 0x0 @ 0x326
.byte 0x0 @ 0x327

Movement_328: @ 328
	WalkUpFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 334

Movement_334: @ 334
	WalkDownFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 340

Movement_340: @ 340
	WalkDownFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 34c

Movement_34c: @ 34c
	WalkUpFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 358

Movement_358: @ 358
	WalkRightFast 0x6
	WalkUpFast 0x2
	MoveDownFast 0x1
	EndMovement 0x0
@ 368

Movement_368: @ 368
	WalkRightFast 0x6
	WalkUpFast 0x3
	MoveDownFast 0x1
	EndMovement 0x0
@ 378

Movement_378: @ 378
	WalkRightFast 0x6
	WalkUpFast 0x4
	MoveDownFast 0x1
	EndMovement 0x0
@ 388

Movement_388: @ 388
	MoveUpFast 0x1
	EndMovement 0x0
@ 390

Movement_390: @ 390
	WalkUpFast 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 39c

Movement_39c: @ 39c
	WalkRightFast 0x7
	WalkUpFast 0x1
	EndMovement 0x0
@ 3a8

Movement_3a8: @ 3a8
	WalkRightFast 0x7
	WalkUpFast 0x2
	EndMovement 0x0
@ 3b4

Movement_3b4: @ 3b4
	WalkRightFast 0x7
	WalkUpFast 0x3
	EndMovement 0x0
@ 3c0

Movement_3c0: @ 3c0
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 3cc

Movement_3cc: @ 3cc
	WalkLeftFast 0x1
	EndMovement 0x0
@ 3d4

Script_9: @ 3d4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xa
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_429
	Message 0xb
	CloseMsgOnKeyPress
	SetFlag 0x2aa
	SetVar 0x404e, 0x2
	SetFlag 0x9ab
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x1d0, 0x0, 0xb, 0xb, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 429

Script_branch_429: @ 429
	Message 0xc
	Jump Script_branch_434
@ 432

.byte 0x2 @ 0x432
.byte 0x0 @ 0x433

Script_branch_434: @ 434
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 43c

Script_10: @ 43c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xd
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_491
	Message 0xe
	CloseMsgOnKeyPress
	SetFlag 0x2ad
	SetVar 0x404e, 0x4
	SetFlag 0x9ab
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x1d0, 0x0, 0xb, 0xb, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 491

Script_branch_491: @ 491
	Message 0xf
	Jump Script_branch_434
@ 49a

.byte 0x2 @ 0x49a
.byte 0x0 @ 0x49b

Script_11: @ 49c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x10
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_4f1
	Message 0x11
	CloseMsgOnKeyPress
	SetFlag 0x2af
	SetVar 0x404e, 0x5
	SetFlag 0x9ab
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x1d0, 0x0, 0xb, 0xb, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 4f1

Script_branch_4f1: @ 4f1
	Message 0x12
	Jump Script_branch_434
@ 4fa

.byte 0x2 @ 0x4fa
.byte 0x0 @ 0x4fb

Script_12: @ 4fc
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x13
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_551
	Message 0x14
	CloseMsgOnKeyPress
	SetFlag 0x2b2
	SetVar 0x404e, 0x7
	SetFlag 0x9ab
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x1d0, 0x0, 0xb, 0xb, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 551

Script_branch_551: @ 551
	Message 0x15
	Jump Script_branch_434
@ 55a

.byte 0x2 @ 0x55a
.byte 0x0 @ 0x55b

Script_13: @ 55c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x16
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_5b1
	Message 0x17
	CloseMsgOnKeyPress
	SetFlag 0x2b5
	SetVar 0x404e, 0x9
	SetFlag 0x9ab
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x1d0, 0x0, 0xb, 0xb, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 5b1

Script_branch_5b1: @ 5b1
	Message 0x18
	Jump Script_branch_434
@ 5ba

.byte 0x2 @ 0x5ba
.byte 0x0 @ 0x5bb

Script_15: @ 5bc
	CallMessageBox 0x1b, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 5d3

.byte 0x0 @ 0x5d3

@ end_0x5d4
