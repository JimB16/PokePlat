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
	.hword 0xfd13
@ 26

Script_1: @ 26
	If 0x40f4, 0x1
	CompareLastResultCall EQUAL, Script_branch_4f
	If 0x40a4, 0x4
	CompareLastResultCall EQUAL, Script_branch_5f
	If 0x40a4, 0x6
	CompareLastResultCall EQUAL, Script_branch_57
	End
@ 4f

Script_branch_4f: @ 4f
	SetVar 0x40f4, 0x2
	Return
@ 57

Script_branch_57: @ 57
	SetVar 0x40a4, 0x7
	Return
@ 5f

Script_branch_5f: @ 5f
	SetVar 0x40a4, 0x5
	Return
@ 67

Script_3: @ 67
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x90
	CompareLastResultJump EQUAL, Script_branch_a3
	If 0x4095, 0x1
	CompareLastResultJump 0x4, Script_branch_ae
	CheckFlag 0xea
	CompareLastResultJump EQUAL, Script_branch_bc
	SetVarHero 0x0
	SetVariableRival 0x1
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a3

Script_branch_a3: @ a3
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ae

Script_branch_ae: @ ae
	SetVariableRival 0x0
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ bc

Script_branch_bc: @ bc
	SetVarHero 0x0
	SetVariableRival 0x1
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ cd

Script_4: @ cd
	LockAll
	ApplyMovement 0x3, Movement_3b0
	WaitMovement
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x6c
	CompareLastResultJump EQUAL, Script_branch_140
	If 0x8004, 0x6d
	CompareLastResultJump EQUAL, Script_branch_158
	If 0x8004, 0x6e
	CompareLastResultJump EQUAL, Script_branch_170
	If 0x8004, 0x6f
	CompareLastResultJump EQUAL, Script_branch_188
	If 0x8004, 0x70
	CompareLastResultJump EQUAL, Script_branch_1a0
	If 0x8004, 0x71
	CompareLastResultJump EQUAL, Script_branch_1b8
	If 0x8004, 0x72
	CompareLastResultJump EQUAL, Script_branch_1d0
	Jump Script_branch_1e8
@ 140

Script_branch_140: @ 140
	ApplyMovement 0xff, Movement_2f0
	ApplyMovement 0x3, Movement_3c4
	WaitMovement
	Jump Script_branch_200
@ 158

Script_branch_158: @ 158
	ApplyMovement 0xff, Movement_308
	ApplyMovement 0x3, Movement_3e0
	WaitMovement
	Jump Script_branch_200
@ 170

Script_branch_170: @ 170
	ApplyMovement 0xff, Movement_320
	ApplyMovement 0x3, Movement_3f4
	WaitMovement
	Jump Script_branch_200
@ 188

Script_branch_188: @ 188
	ApplyMovement 0xff, Movement_338
	ApplyMovement 0x3, Movement_408
	WaitMovement
	Jump Script_branch_200
@ 1a0

Script_branch_1a0: @ 1a0
	ApplyMovement 0xff, Movement_350
	ApplyMovement 0x3, Movement_41c
	WaitMovement
	Jump Script_branch_200
@ 1b8

Script_branch_1b8: @ 1b8
	ApplyMovement 0xff, Movement_368
	ApplyMovement 0x3, Movement_430
	WaitMovement
	Jump Script_branch_200
@ 1d0

Script_branch_1d0: @ 1d0
	ApplyMovement 0xff, Movement_380
	ApplyMovement 0x3, Movement_444
	WaitMovement
	Jump Script_branch_200
@ 1e8

Script_branch_1e8: @ 1e8
	ApplyMovement 0xff, Movement_398
	ApplyMovement 0x3, Movement_458
	WaitMovement
	Jump Script_branch_200
@ 200

Script_branch_200: @ 200
	SetVarHero 0x0
	SetVariableRival 0x1
	Message 0x3
	CloseMsgOnKeyPress
	If 0x8004, 0x6c
	CompareLastResultJump EQUAL, Script_branch_26c
	If 0x8004, 0x6d
	CompareLastResultJump EQUAL, Script_branch_27c
	If 0x8004, 0x6e
	CompareLastResultJump EQUAL, Script_branch_28c
	If 0x8004, 0x6f
	CompareLastResultJump EQUAL, Script_branch_29c
	If 0x8004, 0x70
	CompareLastResultJump EQUAL, Script_branch_2ac
	If 0x8004, 0x71
	CompareLastResultJump EQUAL, Script_branch_2bc
	If 0x8004, 0x72
	CompareLastResultJump EQUAL, Script_branch_2cc
	Jump Script_branch_2dc
@ 26c

Script_branch_26c: @ 26c
	ApplyMovement 0x3, Movement_46c
	WaitMovement
	Jump Script_branch_2ec
@ 27c

Script_branch_27c: @ 27c
	ApplyMovement 0x3, Movement_47c
	WaitMovement
	Jump Script_branch_2ec
@ 28c

Script_branch_28c: @ 28c
	ApplyMovement 0x3, Movement_488
	WaitMovement
	Jump Script_branch_2ec
@ 29c

Script_branch_29c: @ 29c
	ApplyMovement 0x3, Movement_494
	WaitMovement
	Jump Script_branch_2ec
@ 2ac

Script_branch_2ac: @ 2ac
	ApplyMovement 0x3, Movement_4a0
	WaitMovement
	Jump Script_branch_2ec
@ 2bc

Script_branch_2bc: @ 2bc
	ApplyMovement 0x3, Movement_4ac
	WaitMovement
	Jump Script_branch_2ec
@ 2cc

Script_branch_2cc: @ 2cc
	ApplyMovement 0x3, Movement_4b8
	WaitMovement
	Jump Script_branch_2ec
@ 2dc

Script_branch_2dc: @ 2dc
	ApplyMovement 0x3, Movement_4c4
	WaitMovement
	Jump Script_branch_2ec
@ 2ec

Script_branch_2ec: @ 2ec
	ReleaseAll
	End
@ 2f0

Movement_2f0: @ 2f0
	Move_3e 0x6
	Move_47 0x1
	WalkDownFast 0x1
	Move_48 0x1
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ 308

Movement_308: @ 308
	Move_3e 0x5
	Move_47 0x1
	WalkDownFast 0x1
	Move_48 0x1
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ 320

Movement_320: @ 320
	Move_3e 0x6
	Move_47 0x1
	WalkDownFast 0x1
	Move_48 0x1
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ 338

Movement_338: @ 338
	Move_3e 0x7
	Move_47 0x1
	WalkDownFast 0x1
	Move_48 0x1
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ 350

Movement_350: @ 350
	Move_3e 0x8
	Move_47 0x1
	WalkDownFast 0x1
	Move_48 0x1
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ 368

Movement_368: @ 368
	Move_3e 0x9
	Move_47 0x1
	WalkDownFast 0x1
	Move_48 0x1
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ 380

Movement_380: @ 380
	Move_3e 0xa
	Move_47 0x1
	WalkDownFast 0x1
	Move_48 0x1
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ 398

Movement_398: @ 398
	Move_3e 0xb
	Move_47 0x1
	WalkDownFast 0x1
	Move_48 0x1
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ 3b0

Movement_3b0: @ 3b0
	MoveUpVeryFast 0x1
	Exclamation 0x1
	Move_3f 0x1
	Move_3e 0x1
	EndMovement 0x0
@ 3c4

Movement_3c4: @ 3c4
	WalkUpVeryFast  0x1
	WalkRightVeryFast 0x1
	WalkUpVeryFast  0x2
	WalkLeftVeryFast 0x1
	MoveDownVeryFast 0x1
	WalkDownFast 0x1
	EndMovement 0x0
@ 3e0

Movement_3e0: @ 3e0
	WalkUpVeryFast  0x3
	WalkRightVeryFast 0x1
	MoveDownVeryFast 0x1
	WalkDownFast 0x1
	EndMovement 0x0
@ 3f4

Movement_3f4: @ 3f4
	WalkUpVeryFast  0x3
	WalkRightVeryFast 0x2
	MoveDownVeryFast 0x1
	WalkDownFast 0x1
	EndMovement 0x0
@ 408

Movement_408: @ 408
	WalkUpVeryFast  0x3
	WalkRightVeryFast 0x3
	MoveDownVeryFast 0x1
	WalkDownFast 0x1
	EndMovement 0x0
@ 41c

Movement_41c: @ 41c
	WalkUpVeryFast  0x3
	WalkRightVeryFast 0x4
	MoveDownVeryFast 0x1
	WalkDownFast 0x1
	EndMovement 0x0
@ 430

Movement_430: @ 430
	WalkUpVeryFast  0x3
	WalkRightVeryFast 0x5
	MoveDownVeryFast 0x1
	WalkDownFast 0x1
	EndMovement 0x0
@ 444

Movement_444: @ 444
	WalkUpVeryFast  0x3
	WalkRightVeryFast 0x6
	MoveDownVeryFast 0x1
	WalkDownFast 0x1
	EndMovement 0x0
@ 458

Movement_458: @ 458
	WalkUpVeryFast  0x3
	WalkRightVeryFast 0x7
	MoveDownVeryFast 0x1
	WalkDownFast 0x1
	EndMovement 0x0
@ 46c

Movement_46c: @ 46c
	WalkRightFast 0x1
	WalkDownFast 0x2
	WalkLeftFast 0x1
	EndMovement 0x0
@ 47c

Movement_47c: @ 47c
	WalkLeftFast 0x1
	WalkDownFast 0x2
	EndMovement 0x0
@ 488

Movement_488: @ 488
	WalkLeftFast 0x2
	WalkDownFast 0x2
	EndMovement 0x0
@ 494

Movement_494: @ 494
	WalkLeftFast 0x3
	WalkDownFast 0x2
	EndMovement 0x0
@ 4a0

Movement_4a0: @ 4a0
	WalkLeftFast 0x4
	WalkDownFast 0x2
	EndMovement 0x0
@ 4ac

Movement_4ac: @ 4ac
	WalkLeftFast 0x5
	WalkDownFast 0x2
	EndMovement 0x0
@ 4b8

Movement_4b8: @ 4b8
	WalkLeftFast 0x6
	WalkDownFast 0x2
	EndMovement 0x0
@ 4c4

Movement_4c4: @ 4c4
	WalkLeftFast 0x7
	WalkDownFast 0x2
	EndMovement 0x0
@ 4d0

Script_2: @ 4d0
	LockAll
	PrepareDoorAnimation 0x3, 0x1b, 0x9, 0xb, 0x4d
	OpenDoor 0x4d
	WaitAction 0x4d
	ClearFlag 0x174
	AddPeople 0x2
	ApplyMovement 0x2, Movement_5a4
	ApplyMovement 0xff, Movement_588
	WaitMovement
	PlayFanfare 0x602
	Message 0x0
	Return2 0x1e, 0x800c
	CallStandard 0x7fa
	ApplyMovement 0x2, Movement_59c
	WaitMovement
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_570
	ApplyMovement 0x2, Movement_5b0
	WaitMovement
	Return2 0xf, 0x800c
	SetVariableRival 0x0
	Message 0x2
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_5c8
	WaitMovement
	CloseDoor 0x4d
	WaitAction 0x4d
	WaitClose 0x4d
	RemovePeople 0x2
	CallStandard 0x7fb
	SetVar 0x4070, 0x1
	SetVar 0x40e6, 0x1
	ReleaseAll
	End
@ 56e

.byte 0x0 @ 0x56e
.byte 0x0 @ 0x56f

Movement_570: @ 570
	Move_3f 0x1
	Move_3e 0x1
	MoveRightFast 0x1
	Move_3f 0x5
	MoveUpFast 0x1
	EndMovement 0x0
@ 588

Movement_588: @ 588
	SeeUp 0x1
	Move_47 0x1
	WalkDownFast 0x1
	Move_48 0x1
	EndMovement 0x0
@ 59c

Movement_59c: @ 59c
	Exclamation 0x1
	EndMovement 0x0
@ 5a4

Movement_5a4: @ 5a4
	WalkDownVeryFast  0x1
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ 5b0

Movement_5b0: @ 5b0
	WalkRightVeryFast 0x4
	Exclamation 0x1
	Move_3f 0x1
	WalkLeftVeryFast 0x4
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ 5c8

Movement_5c8: @ 5c8
	WalkUpFast 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 5d4

Script_5: @ 5d4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5e7

Script_6: @ 5e7
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x90
	CompareLastResultJump EQUAL, Script_branch_612
	If 0x4095, 0x1
	CompareLastResultJump 0x4, Script_branch_61d
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 612

Script_branch_612: @ 612
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 61d

Script_branch_61d: @ 61d
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 628

Script_7: @ 628
	CallMessageBox 0xc, 0x0, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 63f

Script_8: @ 63f
	SetVarHero 0x0
	CallMessageBox 0xd, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 659

Script_9: @ 659
	SetVariableRival 0x0
	CallMessageBox 0xe, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 673

.byte 0x0 @ 0x673

@ end_0x674
