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
	.hword 0xfd13
@ 2a

Script_5: @ 2a
	If 0x40f9, 0x0
	CompareLastResultJump 0x1, Script_branch_39
	End
@ 39

Script_branch_39: @ 39
	Cmd_283 0x406, 0x32
	End
@ 41

Script_3: @ 41
	LockAll
	SetVar 0x40f9, 0x1
	Message 0x0
	Soundfr 0x482
	Message 0x1
	Cmd_4f
	CloseMsgOnKeyPress
	Restart
	ReleaseAll
	End
@ 5d

Script_1: @ 5d
	PlayFanfare 0x5dc
	LockAll
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6e

Script_2: @ 6e
	PlayFanfare 0x5dc
	LockAll
	SetVarHero 0x0
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 82

Script_4: @ 82
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x3, 0x800c
	CallStandard 0x7d0
	End
@ 97

Script_6: @ 97
	PlayFanfare 0x5dc
	LockAll
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a8

Script_7: @ a8
	SetVar 0x4000, 0x0
	Jump Script_branch_e0
@ b4

.byte 0x2 @ 0xb4
.byte 0x0 @ 0xb5

Script_8: @ b6
	SetVar 0x4000, 0x1
	Jump Script_branch_e0
@ c2

.byte 0x2 @ 0xc2
.byte 0x0 @ 0xc3

Script_9: @ c4
	SetVar 0x4000, 0x2
	Jump Script_branch_e0
@ d0

.byte 0x2 @ 0xd0
.byte 0x0 @ 0xd1

Script_10: @ d2
	SetVar 0x4000, 0x3
	Jump Script_branch_e0
@ de

.byte 0x2 @ 0xde
.byte 0x0 @ 0xdf

Script_branch_e0: @ e0
	LockAll
	ClearFlag 0x173
	AddPeople 0x0
	ApplyMovement 0x0, Movement_394
	WaitMovement
	CallStandard 0x7fa
	SetVariableRival 0x0
	Message 0x6
	CloseMsgOnKeyPress
	If 0x4000, 0x0
	CompareLastResultCall 0x1, Script_branch_249
	If 0x4000, 0x1
	CompareLastResultCall 0x1, Script_branch_25d
	If 0x4000, 0x2
	CompareLastResultCall 0x1, Script_branch_271
	If 0x4000, 0x3
	CompareLastResultCall 0x1, Script_branch_27d
	SetVarHero 0x1
	Message 0x7
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_3e0
	WaitMovement
	If 0x4000, 0x0
	CompareLastResultCall 0x1, Script_branch_291
	If 0x4000, 0x1
	CompareLastResultCall 0x1, Script_branch_2a5
	If 0x4000, 0x2
	CompareLastResultCall 0x1, Script_branch_2b9
	If 0x4000, 0x3
	CompareLastResultCall 0x1, Script_branch_2cd
	Message 0x8
	CloseMsgOnKeyPress
	If 0x4000, 0x0
	CompareLastResultCall 0x1, Script_branch_2e1
	If 0x4000, 0x1
	CompareLastResultCall 0x1, Script_branch_2ed
	If 0x4000, 0x2
	CompareLastResultCall 0x1, Script_branch_2f9
	If 0x4000, 0x3
	CompareLastResultCall 0x1, Script_branch_305
	SetVariableRival 0x0
	Message 0x9
	CloseMsgOnKeyPress
	If 0x4000, 0x0
	CompareLastResultCall 0x1, Script_branch_311
	If 0x4000, 0x1
	CompareLastResultCall 0x1, Script_branch_31d
	If 0x4000, 0x2
	CompareLastResultCall 0x1, Script_branch_329
	If 0x4000, 0x3
	CompareLastResultCall 0x1, Script_branch_335
	SetVarHero 0x1
	Message 0xa
	CloseMsgOnKeyPress
	If 0x4000, 0x0
	CompareLastResultCall 0x1, Script_branch_341
	If 0x4000, 0x1
	CompareLastResultCall 0x1, Script_branch_355
	If 0x4000, 0x2
	CompareLastResultCall 0x1, Script_branch_369
	If 0x4000, 0x3
	CompareLastResultCall 0x1, Script_branch_37d
	PlayFanfare 0x603
	RemovePeople 0x0
	CallStandard 0x7fb
	WaitFanfare 0x603
	SetFlag 0x173
	SetVar 0x40a5, 0x1
	ReleaseAll
	End
@ 249

Script_branch_249: @ 249
	ApplyMovement 0xff, Movement_4d4
	ApplyMovement 0x0, Movement_3a4
	WaitMovement
	Return
@ 25d

Script_branch_25d: @ 25d
	ApplyMovement 0xff, Movement_4e4
	ApplyMovement 0x0, Movement_3b4
	WaitMovement
	Return
@ 271

Script_branch_271: @ 271
	ApplyMovement 0x0, Movement_3c4
	WaitMovement
	Return
@ 27d

Script_branch_27d: @ 27d
	ApplyMovement 0xff, Movement_4e4
	ApplyMovement 0x0, Movement_3d0
	WaitMovement
	Return
@ 291

Script_branch_291: @ 291
	ApplyMovement 0xff, Movement_4f0
	ApplyMovement 0x0, Movement_3ec
	WaitMovement
	Return
@ 2a5

Script_branch_2a5: @ 2a5
	ApplyMovement 0xff, Movement_4fc
	ApplyMovement 0x0, Movement_3fc
	WaitMovement
	Return
@ 2b9

Script_branch_2b9: @ 2b9
	ApplyMovement 0xff, Movement_508
	ApplyMovement 0x0, Movement_40c
	WaitMovement
	Return
@ 2cd

Script_branch_2cd: @ 2cd
	ApplyMovement 0xff, Movement_514
	ApplyMovement 0x0, Movement_41c
	WaitMovement
	Return
@ 2e1

Script_branch_2e1: @ 2e1
	ApplyMovement 0x0, Movement_42c
	WaitMovement
	Return
@ 2ed

Script_branch_2ed: @ 2ed
	ApplyMovement 0x0, Movement_434
	WaitMovement
	Return
@ 2f9

Script_branch_2f9: @ 2f9
	ApplyMovement 0x0, Movement_43c
	WaitMovement
	Return
@ 305

Script_branch_305: @ 305
	ApplyMovement 0x0, Movement_444
	WaitMovement
	Return
@ 311

Script_branch_311: @ 311
	ApplyMovement 0x0, Movement_44c
	WaitMovement
	Return
@ 31d

Script_branch_31d: @ 31d
	ApplyMovement 0x0, Movement_454
	WaitMovement
	Return
@ 329

Script_branch_329: @ 329
	ApplyMovement 0x0, Movement_464
	WaitMovement
	Return
@ 335

Script_branch_335: @ 335
	ApplyMovement 0x0, Movement_474
	WaitMovement
	Return
@ 341

Script_branch_341: @ 341
	ApplyMovement 0xff, Movement_520
	ApplyMovement 0x0, Movement_484
	WaitMovement
	Return
@ 355

Script_branch_355: @ 355
	ApplyMovement 0xff, Movement_520
	ApplyMovement 0x0, Movement_498
	WaitMovement
	Return
@ 369

Script_branch_369: @ 369
	ApplyMovement 0xff, Movement_520
	ApplyMovement 0x0, Movement_4ac
	WaitMovement
	Return
@ 37d

Script_branch_37d: @ 37d
	ApplyMovement 0xff, Movement_520
	ApplyMovement 0x0, Movement_4c0
	WaitMovement
	Return
@ 391

.byte 0x0 @ 0x391
.byte 0x0 @ 0x392
.byte 0x0 @ 0x393

Movement_394: @ 394
	WalkLeftVeryFast 0x2
	Exclamation 0x1
	Move_3f 0x1
	EndMovement 0x0
@ 3a4

Movement_3a4: @ 3a4
	WalkLeftVeryFast 0x1
	WalkDownVeryFast  0x1
	WalkLeftVeryFast 0x2
	EndMovement 0x0
@ 3b4

Movement_3b4: @ 3b4
	WalkLeftVeryFast 0x1
	WalkDownVeryFast  0x2
	WalkLeftVeryFast 0x3
	EndMovement 0x0
@ 3c4

Movement_3c4: @ 3c4
	WalkDownVeryFast  0x2
	WalkLeftVeryFast 0x2
	EndMovement 0x0
@ 3d0

Movement_3d0: @ 3d0
	WalkLeftVeryFast 0x1
	WalkDownVeryFast  0x3
	WalkLeftVeryFast 0x2
	EndMovement 0x0
@ 3e0

Movement_3e0: @ 3e0
	Exclamation 0x1
	Move_3f 0x1
	EndMovement 0x0
@ 3ec

Movement_3ec: @ 3ec
	WalkDownVeryFast  0x1
	WalkLeftVeryFast 0x4
	WalkUpVeryFast  0x1
	EndMovement 0x0
@ 3fc

Movement_3fc: @ 3fc
	WalkUpVeryFast  0x1
	WalkLeftVeryFast 0x3
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ 40c

Movement_40c: @ 40c
	WalkUpVeryFast  0x1
	WalkLeftVeryFast 0x5
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ 41c

Movement_41c: @ 41c
	WalkUpVeryFast  0x1
	WalkLeftVeryFast 0x4
	WalkUpVeryFast  0x1
	EndMovement 0x0
@ 42c

Movement_42c: @ 42c
	MoveRightFast 0x1
	EndMovement 0x0
@ 434

Movement_434: @ 434
	MoveRightFast 0x1
	EndMovement 0x0
@ 43c

Movement_43c: @ 43c
	MoveRightFast 0x1
	EndMovement 0x0
@ 444

Movement_444: @ 444
	MoveRightFast 0x1
	EndMovement 0x0
@ 44c

Movement_44c: @ 44c
	WalkRightVeryFast 0x2
	EndMovement 0x0
@ 454

Movement_454: @ 454
	WalkRightVeryFast 0x1
	WalkDownVeryFast  0x1
	MoveRightVeryFast 0x1
	EndMovement 0x0
@ 464

Movement_464: @ 464
	WalkRightVeryFast 0x1
	WalkDownVeryFast  0x1
	WalkRightVeryFast 0x2
	EndMovement 0x0
@ 474

Movement_474: @ 474
	WalkRightVeryFast 0x1
	WalkDownVeryFast  0x2
	WalkRightVeryFast 0x1
	EndMovement 0x0
@ 484

Movement_484: @ 484
	WalkDownVeryFast  0x1
	WalkRightVeryFast 0x3
	WalkUpVeryFast  0x2
	WalkRightVeryFast 0x4
	EndMovement 0x0
@ 498

Movement_498: @ 498
	WalkUpVeryFast  0x1
	WalkRightVeryFast 0x4
	WalkUpVeryFast  0x1
	WalkRightVeryFast 0x3
	EndMovement 0x0
@ 4ac

Movement_4ac: @ 4ac
	WalkUpVeryFast  0x1
	WalkRightVeryFast 0x2
	WalkUpVeryFast  0x1
	WalkRightVeryFast 0x3
	EndMovement 0x0
@ 4c0

Movement_4c0: @ 4c0
	WalkUpVeryFast  0x1
	WalkRightVeryFast 0x3
	WalkUpVeryFast  0x2
	WalkRightVeryFast 0x3
	EndMovement 0x0
@ 4d4

Movement_4d4: @ 4d4
	Move_3f 0x1
	Move_3e 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 4e4

Movement_4e4: @ 4e4
	Move_3f 0x2
	MoveRightFast 0x1
	EndMovement 0x0
@ 4f0

Movement_4f0: @ 4f0
	Move_3f 0x2
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 4fc

Movement_4fc: @ 4fc
	Move_3f 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 508

Movement_508: @ 508
	Move_3f 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 514

Movement_514: @ 514
	Move_3f 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 520

Movement_520: @ 520
	Move_3f 0x2
	MoveRightFast 0x1
	EndMovement 0x0
@ 52c

@ end_0x52c
