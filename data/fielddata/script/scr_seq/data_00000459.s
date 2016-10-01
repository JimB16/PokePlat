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
	.hword 0xfd13
@ 22

Script_1: @ 22
	CheckFlag 0x104
	CompareLastResultJump LESSER, Script_branch_2f
	End
@ 2f

Script_branch_2f: @ 2f
	CheckBadge 0x3, 0x4000
	If 0x4000, 0x1
	CompareLastResultJump EQUAL, Script_branch_44
	End
@ 44

Script_branch_44: @ 44
	CheckFlag 0x103
	CompareLastResultJump EQUAL, Script_branch_51
	End
@ 51

Script_branch_51: @ 51
	CheckFlag 0x118
	CompareLastResultCall LESSER, Script_branch_62
	ClearFlag 0x21a
	End
@ 62

Script_branch_62: @ 62
	ChangeOwPosition 0x1e, 0x28e, 0x32c
	ReleaseOw 0x1e, 0x3
	ChangeOwMovement 0x1e, 0x11
	Return
@ 78

Script_2: @ 78
	PlayFanfare 0x5dc
	LockAll
	CheckFlag 0x118
	CompareLastResultJump EQUAL, Script_branch_133
	Message 0x0
	CloseMsgOnKeyPress
	FacePlayer
	ApplyMovement 0x1e, Movement_388
	WaitMovement
	Message 0x1
	CloseMsgOnKeyPress
	CheckFacePosition 0x8004
	If 0x8004, 0x2
	CompareLastResultJump EQUAL, Script_branch_f1
	If 0x8004, 0x3
	CompareLastResultJump EQUAL, Script_branch_df
	Jump Script_branch_c5
	End
@ c5

Script_branch_c5: @ c5
	ApplyMovement 0x1e, Movement_390
	ApplyMovement 0xff, Movement_3f0
	WaitMovement
	Jump Script_branch_10b
	End
@ df

Script_branch_df: @ df
	ApplyMovement 0x1e, Movement_390
	WaitMovement
	Jump Script_branch_10b
	End
@ f1

Script_branch_f1: @ f1
	ApplyMovement 0x1e, Movement_398
	ApplyMovement 0xff, Movement_3f0
	WaitMovement
	Jump Script_branch_10b
	End
@ 10b

Script_branch_10b: @ 10b
	SetFlag 0x118
	RemovePeople 0x1e
	ChangeOwPosition 0x1e, 0x2ab, 0x341
	ReleaseOw 0x1e, 0x3
	ChangeOwMovement 0x1e, 0x11
	ClearFlag 0x21a
	AddPeople 0x1e
	ReleaseAll
	End
@ 133

Script_branch_133: @ 133
	CheckFacePosition 0x8004
	Message 0x2
	CloseMsgOnKeyPress
	FacePlayer
	ApplyMovement 0x1e, Movement_388
	WaitMovement
	Message 0x3
	CloseMsgOnKeyPress
	CheckFacePosition 0x8004
	If 0x8004, 0x2
	CompareLastResultJump EQUAL, Script_branch_180
	Jump Script_branch_166
	End
@ 166

Script_branch_166: @ 166
	ApplyMovement 0xff, Movement_3c0
	ApplyMovement 0x1e, Movement_3a4
	WaitMovement
	Jump Script_branch_19a
	End
@ 180

Script_branch_180: @ 180
	ApplyMovement 0xff, Movement_3c0
	ApplyMovement 0x1e, Movement_3b4
	WaitMovement
	Jump Script_branch_19a
	End
@ 19a

Script_branch_19a: @ 19a
	RemovePeople 0x1e
	SetFlag 0x104
	ClearFlag 0x1e8
	AddPeople 0x21
	CallStandard 0x807
	Cmd_315 0x800c
	If 0x800c, 0x2
	CompareLastResultCall EQUAL, Script_branch_261
	If 0x8004, 0x2
	CompareLastResultCall EQUAL, Script_branch_267
	If 0x8004, 0x3
	CompareLastResultCall EQUAL, Script_branch_27b
	If 0x8004, 0x0
	CompareLastResultCall EQUAL, Script_branch_28f
	If 0x8004, 0x1
	CompareLastResultCall EQUAL, Script_branch_2a3
	Message 0x4
	ApplyMovement 0x21, Movement_348
	WaitMovement
	Message 0x5
	Message 0x6
	CloseMsgOnKeyPress
	If 0x8004, 0x2
	CompareLastResultCall EQUAL, Script_branch_2b7
	If 0x8004, 0x3
	CompareLastResultCall EQUAL, Script_branch_2cb
	If 0x8004, 0x0
	CompareLastResultCall EQUAL, Script_branch_2df
	If 0x8004, 0x1
	CompareLastResultCall EQUAL, Script_branch_2f3
	RemovePeople 0x21
	CallStandard 0x808
	Cmd_315 0x800c
	If 0x800c, 0x2
	CompareLastResultCall EQUAL, Script_branch_261
	ClearFlag 0x211
	ClearFlag 0x21b
	ReleaseAll
	End
@ 261

Script_branch_261: @ 261
	PlayFanfare 0x639
	Return
@ 267

Script_branch_267: @ 267
	ApplyMovement 0x21, Movement_318
	ApplyMovement 0xff, Movement_3cc
	WaitMovement
	Return
@ 27b

Script_branch_27b: @ 27b
	ApplyMovement 0x21, Movement_308
	ApplyMovement 0xff, Movement_3cc
	WaitMovement
	Return
@ 28f

Script_branch_28f: @ 28f
	ApplyMovement 0x21, Movement_338
	ApplyMovement 0xff, Movement_3cc
	WaitMovement
	Return
@ 2a3

Script_branch_2a3: @ 2a3
	ApplyMovement 0x21, Movement_328
	ApplyMovement 0xff, Movement_3d8
	WaitMovement
	Return
@ 2b7

Script_branch_2b7: @ 2b7
	ApplyMovement 0x21, Movement_35c
	ApplyMovement 0xff, Movement_3e4
	WaitMovement
	Return
@ 2cb

Script_branch_2cb: @ 2cb
	ApplyMovement 0x21, Movement_350
	ApplyMovement 0xff, Movement_3e4
	WaitMovement
	Return
@ 2df

Script_branch_2df: @ 2df
	ApplyMovement 0x21, Movement_37c
	ApplyMovement 0xff, Movement_3e4
	WaitMovement
	Return
@ 2f3

Script_branch_2f3: @ 2f3
	ApplyMovement 0x21, Movement_368
	ApplyMovement 0xff, Movement_3e4
	WaitMovement
	Return
@ 307

.byte 0x0 @ 0x307

Movement_308: @ 308
	WalkRightVeryFast 0xa
	WalkUpVeryFast  0x2
	MoveRightVeryFast 0x1
	EndMovement 0x0
@ 318

Movement_318: @ 318
	WalkRightVeryFast 0xa
	WalkUpVeryFast  0x2
	WalkRightVeryFast 0x2
	EndMovement 0x0
@ 328

Movement_328: @ 328
	WalkRightVeryFast 0xa
	WalkUpVeryFast  0x3
	WalkRightVeryFast 0x1
	EndMovement 0x0
@ 338

Movement_338: @ 338
	WalkRightVeryFast 0xa
	WalkUpVeryFast  0x1
	WalkRightVeryFast 0x1
	EndMovement 0x0
@ 348

Movement_348: @ 348
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ 350

Movement_350: @ 350
	WalkUpVeryFast  0x1
	WalkRightVeryFast 0xa
	EndMovement 0x0
@ 35c

Movement_35c: @ 35c
	WalkUpVeryFast  0x1
	WalkRightVeryFast 0xa
	EndMovement 0x0
@ 368

Movement_368: @ 368
	WalkDownVeryFast  0x1
	WalkRightVeryFast 0x4
	WalkUpVeryFast  0x1
	WalkRightVeryFast 0x6
	EndMovement 0x0
@ 37c

Movement_37c: @ 37c
	WalkUpVeryFast  0x2
	WalkRightVeryFast 0xa
	EndMovement 0x0
@ 388

Movement_388: @ 388
	Exclamation 0x1
	EndMovement 0x0
@ 390

Movement_390: @ 390
	WalkRightVeryFast 0xa
	EndMovement 0x0
@ 398

Movement_398: @ 398
	WalkDownVeryFast  0x2
	WalkRightVeryFast 0x9
	EndMovement 0x0
@ 3a4

Movement_3a4: @ 3a4
	WalkRightVeryFast 0x4
	WalkUpVeryFast  0x1
	WalkRightVeryFast 0x6
	EndMovement 0x0
@ 3b4

Movement_3b4: @ 3b4
	WalkUpVeryFast  0x1
	WalkRightVeryFast 0xa
	EndMovement 0x0
@ 3c0

Movement_3c0: @ 3c0
	Move_3f 0x1
	SeeRight 0x1
	EndMovement 0x0
@ 3cc

Movement_3cc: @ 3cc
	Move_3e 0xa
	MoveLeftFast 0x1
	EndMovement 0x0
@ 3d8

Movement_3d8: @ 3d8
	Move_3e 0xb
	MoveLeftFast 0x1
	EndMovement 0x0
@ 3e4

Movement_3e4: @ 3e4
	Move_3e 0x3
	MoveRightFast 0x1
	EndMovement 0x0
@ 3f0

Movement_3f0: @ 3f0
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 3fc

Script_4: @ 3fc
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 40f

Script_5: @ 40f
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 422

Script_3: @ 422
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 435

Script_6: @ 435
	CallMessageBox 0xa, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 44c

Script_7: @ 44c
	CallMessageBox 0xb, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 463

Script_8: @ 463
	CallMessageBox 0xc, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 47a

.byte 0x0 @ 0x47a
.byte 0x0 @ 0x47b

@ end_0x47c
