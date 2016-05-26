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

Script_1: @ 32
	CheckGender 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_52
	If 0x4000, 0x1
	CompareLastResultJump 0x1, Script_branch_5a
	End
@ 52

Script_branch_52: @ 52
	SetVar 0x4020, 0x61
	End
@ 5a

Script_branch_5a: @ 5a
	SetVar 0x4020, 0x0
	End
@ 62

Script_2: @ 62
	LockAll
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x4, Movement_364
	ApplyMovement 0xff, Movement_310
	WaitMovement
	CheckSpritePosition 0x8004, 0x8005
	LockCam 0x8004, 0x8005
	ApplyMovement 0xf1, Movement_340
	WaitMovement
	Return2 0x1e, 0x800c
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0x4, Movement_350
	WaitMovement
	SetVarHero 0x0
	Message 0x2
	SetVariableRival 0x0
	Message 0x3
	CloseMsgOnKeyPress
	ApplyMovement 0x4, Movement_35c
	WaitMovement
	Return2 0xa, 0x800c
	SetVarHero 0x0
	Message 0x4
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_2c8
	WaitMovement
	Message 0x5
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_2d4
	WaitMovement
	Message 0x6
	SetVariableRival 0x0
	Message 0x7
	Message 0x8
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_116
	Jump Script_branch_124
@ 114

.byte 0x2 @ 0x114
.byte 0x0 @ 0x115

Script_branch_116: @ 116
	SetVarHero 0x0
	Message 0x9
	Jump Script_branch_132
@ 122

.byte 0x2 @ 0x122
.byte 0x0 @ 0x123

Script_branch_124: @ 124
	SetVarHero 0x0
	Message 0xa
	Jump Script_branch_132
@ 130

.byte 0x2 @ 0x130
.byte 0x0 @ 0x131

Script_branch_132: @ 132
	Message 0xb
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_2e0
	ApplyMovement 0x3, Movement_3d8
	WaitMovement
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_162
	Jump Script_branch_173
@ 160

.byte 0x2 @ 0x160
.byte 0x0 @ 0x161

Script_branch_162: @ 162
	Message 0xc
	SetVarAlter 0x0
	Message 0xd
	Jump Script_branch_184
@ 171

.byte 0x2 @ 0x171
.byte 0x0 @ 0x172

Script_branch_173: @ 173
	Message 0xe
	SetVarAlter 0x0
	Message 0xf
	Jump Script_branch_184
@ 182

.byte 0x2 @ 0x182
.byte 0x0 @ 0x183

Script_branch_184: @ 184
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_2e8
	ApplyMovement 0x3, Movement_3e0
	WaitMovement
	SetVariableRival 0x0
	Message 0x10
	CloseMsgOnKeyPress
	ApplyMovement 0x4, Movement_39c
	WaitMovement
	Message 0x11
	CloseMsgOnKeyPress
	ApplyMovement 0x4, Movement_3a4
	WaitMovement
	SetVarHero 0x0
	Message 0x12
	WaitFanfare 0x5dc
	Message2 0x13
	CmrBmpEffect 0x1
	Message 0x14
	SetVariableRival 0x0
	Message 0x15
	CloseMsgOnKeyPress
	ApplyMovement 0x4, Movement_3ac
	ApplyMovement 0xff, Movement_330
	WaitMovement
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ZoomCam
	Cmd_310
	CallEnd
	CheckSpritePosition 0x8004, 0x8005
	LockCam 0x8004, 0x8005
	ApplyMovement 0xf1, Movement_340
	WaitMovement
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Message 0x16
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	ApplyMovement 0x4, Movement_3b4
	WaitMovement
	SetVariableRival 0x0
	Message 0x17
	ApplyMovement 0xff, Movement_338
	WaitMovement
	Message 0x18
	CloseMsgOnKeyPress
	ApplyMovement 0x3, Movement_3bc
	ApplyMovement 0x4, Movement_388
	ApplyMovement 0x2, Movement_2f0
	ApplyMovement 0xf1, Movement_348
	WaitMovement
	RemovePeople 0x4
	RemovePeople 0x3
	ZoomCam
	ApplyMovement 0xff, Movement_2c0
	WaitMovement
	Message 0x19
	CloseMsgOnKeyPress
	PlayFanfare2 0x5dc
	ApplyMovement 0x2, Movement_308
	WaitMovement
	PlayFanfare 0x603
	RemovePeople 0x2
	PlayFanfare2 0x603
	SetVar 0x4078, 0x4
	SetVar 0x40b2, 0x2
	SetFlag 0xa8
	SetFlag 0x1ae
	ClearFlag 0x1b3
	ClearFlag 0x1b5
	ClearFlag 0x1b2
	ReleaseAll
	End
@ 2be

.byte 0x0 @ 0x2be
.byte 0x0 @ 0x2bf

Movement_2c0: @ 2c0
	MoveUpFast 0x1
	EndMovement 0x0
@ 2c8

Movement_2c8: @ 2c8
	WalkRight 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 2d4

Movement_2d4: @ 2d4
	WalkLeftFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 2e0

Movement_2e0: @ 2e0
	MoveLeftFast 0x1
	EndMovement 0x0
@ 2e8

Movement_2e8: @ 2e8
	MoveUpFast 0x1
	EndMovement 0x0
@ 2f0

Movement_2f0: @ 2f0
	WalkRightFast 0x1
	WalkUpFast 0x4
	WalkLeftFast 0x5
	WalkUpFast 0x3
	MoveDownFast 0x1
	EndMovement 0x0
@ 308

Movement_308: @ 308
	WalkRightFast 0x1
	EndMovement 0x0
@ 310

Movement_310: @ 310
	Move_3f 0x3
	MoveDownFast 0x1
	WalkDownFast 0x2
	WalkRightFast 0x1
	WalkDownFast 0x1
	WalkRightFast 0x2
	WalkDownFast 0x1
	EndMovement 0x0
@ 330

Movement_330: @ 330
	MoveUpFast 0x1
	EndMovement 0x0
@ 338

Movement_338: @ 338
	MoveDownFast 0x1
	EndMovement 0x0
@ 340

Movement_340: @ 340
	WalkRight 0x3
	EndMovement 0x0
@ 348

Movement_348: @ 348
	WalkLeft 0x3
	EndMovement 0x0
@ 350

Movement_350: @ 350
	WalkUpVeryFast  0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 35c

Movement_35c: @ 35c
	WalkDownFast 0x1
	EndMovement 0x0
@ 364

Movement_364: @ 364
	WalkDownFast 0x1
	WalkRightFast 0x2
	MoveUpFast 0x1
	WalkDownFast 0x1
	WalkRightFast 0x1
	WalkDownFast 0x1
	WalkRightFast 0x3
	WalkDownFast 0x1
	EndMovement 0x0
@ 388

Movement_388: @ 388
	WalkLeftVeryFast 0x4
	WalkUpVeryFast  0x3
	WalkRightVeryFast 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 39c

Movement_39c: @ 39c
	MoveRightVeryFast 0x1
	EndMovement 0x0
@ 3a4

Movement_3a4: @ 3a4
	MoveDownFast 0x1
	EndMovement 0x0
@ 3ac

Movement_3ac: @ 3ac
	WalkUpVeryFast  0x1
	EndMovement 0x0
@ 3b4

Movement_3b4: @ 3b4
	MoveDownFast 0x1
	EndMovement 0x0
@ 3bc

Movement_3bc: @ 3bc
	WalkLeftFast 0x1
	WalkUpFast 0x5
	WalkLeftFast 0x2
	WalkUpFast 0x2
	WalkRightFast 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 3d8

Movement_3d8: @ 3d8
	MoveRightFast 0x1
	EndMovement 0x0
@ 3e0

Movement_3e0: @ 3e0
	MoveUpFast 0x1
	EndMovement 0x0
@ 3e8

Script_3: @ 3e8
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xa8
	CompareLastResultJump 0x1, Script_branch_406
	Message 0x1a
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 406

Script_branch_406: @ 406
	Message 0x1b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 411

Script_4: @ 411
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xa8
	CompareLastResultJump 0x1, Script_branch_42f
	Message 0x1c
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 42f

Script_branch_42f: @ 42f
	Message 0x1d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 43a

Script_5: @ 43a
	PlayFanfare 0x5dc
	LockAll
	Message 0x1e
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_471
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_463
	End
@ 463

Script_branch_463: @ 463
	SetVarHero 0x0
	Message 0x1f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 471

Script_branch_471: @ 471
	Message 0x20
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 47c

Script_6: @ 47c
	PlayFanfare 0x5dc
	LockAll
	Message 0x21
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_4b3
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_4a5
	End
@ 4a5

Script_branch_4a5: @ 4a5
	SetVarHero 0x0
	Message 0x22
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4b3

Script_branch_4b3: @ 4b3
	Message 0x23
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4be

Script_7: @ 4be
	PlayFanfare 0x5dc
	LockAll
	Message 0x24
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_4f5
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_4e7
	End
@ 4e7

Script_branch_4e7: @ 4e7
	SetVarHero 0x0
	Message 0x25
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4f5

Script_branch_4f5: @ 4f5
	Message 0x26
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 500

Script_8: @ 500
	PlayFanfare 0x5dc
	LockAll
	Message 0x27
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_537
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_529
	End
@ 529

Script_branch_529: @ 529
	SetVarHero 0x0
	Message 0x28
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 537

Script_branch_537: @ 537
	Message 0x29
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_529
	Message 0x2a
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_529
	Message 0x2b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 56a

Script_9: @ 56a
	PlayFanfare 0x5dc
	LockAll
	Message 0x2c
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_5a1
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_593
	End
@ 593

Script_branch_593: @ 593
	SetVarHero 0x0
	Message 0x2d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5a1

Script_branch_5a1: @ 5a1
	Message 0x2e
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_593
	Message 0x2f
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_593
	Message 0x30
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5d4

Script_10: @ 5d4
	PlayFanfare 0x5dc
	LockAll
	Message 0x31
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_60b
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_5fd
	End
@ 5fd

Script_branch_5fd: @ 5fd
	SetVarHero 0x0
	Message 0x32
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 60b

Script_branch_60b: @ 60b
	Message 0x33
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 616

Script_11: @ 616
	PlayFanfare 0x5dc
	LockAll
	Message 0x34
	Message 0x35
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	ChoiceMulti 0x103, 0x0
	ChoiceMulti 0x104, 0x1
	ChoiceMulti 0x105, 0x2
	ChoiceMulti 0x106, 0x3
	CloseMulti
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_673
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_67e
	If 0x800c, 0x2
	CompareLastResultJump 0x1, Script_branch_689
	Jump Script_branch_694
@ 671

.byte 0x2 @ 0x671
.byte 0x0 @ 0x672

Script_branch_673: @ 673
	Message 0x37
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 67e

Script_branch_67e: @ 67e
	Message 0x38
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 689

Script_branch_689: @ 689
	Message 0x39
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 694

Script_branch_694: @ 694
	SetVarHero 0x0
	Message 0x36
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6a2

Script_12: @ 6a2
	PlayFanfare 0x5dc
	LockAll
	Message 0x3a
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6b3

.byte 0x0 @ 0x6b3

@ end_0x6b4
