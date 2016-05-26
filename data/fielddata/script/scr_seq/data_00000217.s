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
	SetFlag 0x9c3
	If 0x4089, 0x2
	CompareLastResultJump 0x4, Script_branch_35
	End
@ 35

Script_branch_35: @ 35
	ChangeOwPosition 0x5, 0x15, 0x5
	ReleaseOw 0x5, 0x2
	ChangeOwMovement 0x5, 0x10
	ChangeOwPosition 0x2, 0x12, 0x4
	ReleaseOw 0x2, 0x1
	ChangeOwMovement 0x2, 0xf
	End
@ 5f

Script_2: @ 5f
	LockAll
	ApplyMovement 0x0, Movement_90
	WaitMovement
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_98
	ApplyMovement 0xff, Movement_a0
	WaitMovement
	RemovePeople 0x0
	SetVar 0x40cf, 0x1
	ReleaseAll
	End
@ 90

Movement_90: @ 90
	Exclamation 0x1
	EndMovement 0x0
@ 98

Movement_98: @ 98
	WalkLeftVeryFast 0x9
	EndMovement 0x0
@ a0

Movement_a0: @ a0
	Move_3f 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ ac

Script_3: @ ac
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ bf

Script_4: @ bf
	LockAll
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x6
	CompareLastResultJump 0x1, Script_branch_e3
	If 0x8005, 0x7
	CompareLastResultJump 0x1, Script_branch_f5
	End
@ e3

Script_branch_e3: @ e3
	ApplyMovement 0x1, Movement_348
	WaitMovement
	Jump Script_branch_107
@ f3

.byte 0x2 @ 0xf3
.byte 0x0 @ 0xf4

Script_branch_f5: @ f5
	ApplyMovement 0x1, Movement_358
	WaitMovement
	Jump Script_branch_107
@ 105

.byte 0x2 @ 0x105
.byte 0x0 @ 0x106

Script_branch_107: @ 107
	Message 0x2
	CloseMsgOnKeyPress
	TrainerBattle 0x127, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_2b9
	Message 0x3
	CloseMsgOnKeyPress
	ApplyMovement 0x7, Movement_374
	WaitMovement
	Return2 0xf, 0x800c
	Message 0x4
	ApplyMovement 0x1, Movement_364
	WaitMovement
	Message 0x5
	ApplyMovement 0x1, Movement_36c
	WaitMovement
	Message 0x6
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	RemovePeople 0x1
	RemovePeople 0x7
	RemovePeople 0x6
	RemovePeople 0x3
	RemovePeople 0x4
	SetFlag 0x1a2
	ClearFlag 0x17f
	SetVar 0x4089, 0x2
	SetFlag 0xaa8
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x6
	CompareLastResultJump 0x1, Script_branch_1b7
	If 0x8005, 0x7
	CompareLastResultJump 0x1, Script_branch_1c9
	End
@ 1b7

Script_branch_1b7: @ 1b7
	ApplyMovement 0x2, Movement_2e8
	WaitMovement
	Jump Script_branch_1db
@ 1c7

.byte 0x2 @ 0x1c7
.byte 0x0 @ 0x1c8

Script_branch_1c9: @ 1c9
	ApplyMovement 0x2, Movement_2f4
	WaitMovement
	Jump Script_branch_1db
@ 1d9

.byte 0x2 @ 0x1d9
.byte 0x0 @ 0x1da

Script_branch_1db: @ 1db
	Message 0x7
	CloseMsgOnKeyPress
	SetFlag 0x1f8
	ClearFlag 0x1f9
	ChangeOwMovement 0x5, 0x10
	AddPeople 0x5
	Lock 0x5
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x6
	CompareLastResultJump 0x1, Script_branch_218
	If 0x8005, 0x7
	CompareLastResultJump 0x1, Script_branch_232
	End
@ 218

Script_branch_218: @ 218
	ApplyMovement 0x5, Movement_2c0
	ApplyMovement 0x2, Movement_300
	WaitMovement
	Jump Script_branch_24c
@ 230

.byte 0x2 @ 0x230
.byte 0x0 @ 0x231

Script_branch_232: @ 232
	ApplyMovement 0x5, Movement_2d4
	ApplyMovement 0x2, Movement_30c
	WaitMovement
	Jump Script_branch_24c
@ 24a

.byte 0x2 @ 0x24a
.byte 0x0 @ 0x24b

Script_branch_24c: @ 24c
	Message 0x8
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x6
	CompareLastResultJump 0x1, Script_branch_273
	If 0x8005, 0x7
	CompareLastResultJump 0x1, Script_branch_285
	End
@ 273

Script_branch_273: @ 273
	ApplyMovement 0x2, Movement_318
	WaitMovement
	Jump Script_branch_297
@ 283

.byte 0x2 @ 0x283
.byte 0x0 @ 0x284

Script_branch_285: @ 285
	ApplyMovement 0x2, Movement_330
	WaitMovement
	Jump Script_branch_297
@ 295

.byte 0x2 @ 0x295
.byte 0x0 @ 0x296

Script_branch_297: @ 297
	Message 0x9
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	SetVar 0x411e, 0x1
	ClearFlag 0x1fa
	SetVar 0x40cf, 0x2
	SetFlag 0x988
	ReleaseAll
	End
@ 2b9

Script_branch_2b9: @ 2b9
	LostGoPc
	ReleaseAll
	End
@ 2bf

.byte 0x0 @ 0x2bf

Movement_2c0: @ 2c0
	WalkRightVeryFast 0x4
	WalkUpVeryFast  0x1
	WalkRightVeryFast 0x6
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ 2d4

Movement_2d4: @ 2d4
	WalkRightVeryFast 0x4
	WalkUpVeryFast  0x2
	WalkRightVeryFast 0x6
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ 2e8

Movement_2e8: @ 2e8
	WalkDownFast 0x3
	WalkLeftFast 0x1
	EndMovement 0x0
@ 2f4

Movement_2f4: @ 2f4
	WalkDownFast 0x4
	WalkLeftFast 0x1
	EndMovement 0x0
@ 300

Movement_300: @ 300
	Move_3f 0x6
	MoveDownFast 0x1
	EndMovement 0x0
@ 30c

Movement_30c: @ 30c
	Move_3f 0x6
	MoveUpFast 0x1
	EndMovement 0x0
@ 318

Movement_318: @ 318
	SeeRight 0x1
	Move_3f 0x2
	SeeLeft 0x1
	Move_3f 0x2
	SeeDown 0x1
	EndMovement 0x0
@ 330

Movement_330: @ 330
	SeeRight 0x1
	Move_3f 0x2
	SeeLeft 0x1
	Move_3f 0x2
	SeeUp 0x1
	EndMovement 0x0
@ 348

Movement_348: @ 348
	Exclamation 0x1
	WalkUpFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 358

Movement_358: @ 358
	Exclamation 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 364

Movement_364: @ 364
	MoveUpFast 0x1
	EndMovement 0x0
@ 36c

Movement_36c: @ 36c
	MoveLeftFast 0x1
	EndMovement 0x0
@ 374

Movement_374: @ 374
	MoveDownFast 0x1
	EndMovement 0x0
@ 37c

Script_5: @ 37c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x40cf, 0x3
	CompareLastResultJump 0x4, Script_branch_39c
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 39c

Script_branch_39c: @ 39c
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3a7

Script_6: @ 3a7
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x40cf, 0x3
	CompareLastResultJump 0x4, Script_branch_3c7
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3c7

Script_branch_3c7: @ 3c7
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3d2

Script_7: @ 3d2
	Jump Script_branch_3e2
@ 3d8

.byte 0x2 @ 0x3d8
.byte 0x0 @ 0x3d9

Script_8: @ 3da
	Jump Script_branch_3e2
@ 3e0

.byte 0x2 @ 0x3e0
.byte 0x0 @ 0x3e1

Script_branch_3e2: @ 3e2
	PlayFanfare 0x5dc
	LockAll
	If 0x40aa, 0x2
	CompareLastResultJump 0x4, Script_branch_400
	Message 0xe
	Jump Script_branch_40b
@ 3fe

.byte 0x2 @ 0x3fe
.byte 0x0 @ 0x3ff

Script_branch_400: @ 400
	Message 0xf
	Jump Script_branch_40b
@ 409

.byte 0x2 @ 0x409
.byte 0x0 @ 0x40a

Script_branch_40b: @ 40b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 413

.byte 0x0 @ 0x413

@ end_0x414
