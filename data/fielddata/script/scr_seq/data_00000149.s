.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	.hword 0xfd13
@ 16

Script_4: @ 16
	If 0x411f, 0x2
	CompareLastResultCall LESSER, Script_branch_25
	End
@ 25

Script_branch_25: @ 25
	ChangeOwPosition 0x4, 0x8, 0xa
	ChangeOwMovement 0x4, 0xe
	ReleaseOw 0x4, 0x0
	Return
@ 3b

Script_1: @ 3b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckItem 0x1cf, 0x1, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_63
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 63

Script_branch_63: @ 63
	Message 0x8
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_86
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_c2
	End
@ 86

Script_branch_86: @ 86
	SetFlag 0x10e
	GiveItem 0x1cf, 0x1, 0x800c
	SetVarHero 0x0
	Message 0x9
	WaitButton
	WaitFanfare 0x5dc
	PlayFanfare 0x608
	ApplyMovement 0x2, Movement_c8
	ApplyMovement 0x3, Movement_d0
	WaitMovement
	RemovePeople 0x2
	RemovePeople 0x3
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c2

Script_branch_c2: @ c2
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c8

Movement_c8: @ c8
	WalkLeftVeryFast 0x1
	EndMovement 0x0
@ d0

Movement_d0: @ d0
	WalkRightVeryFast 0x1
	EndMovement 0x0
@ d8

Script_2: @ d8
	LockAll
	ApplyMovement 0x4, Movement_12c
	WaitMovement
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_168
	ApplyMovement 0x4, Movement_134
	WaitMovement
	SetVarHero 0x0
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_174
	ApplyMovement 0x4, Movement_15c
	WaitMovement
	SetVar 0x407c, 0x1
	SetVar 0x411f, 0x2
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 12c

Movement_12c: @ 12c
	WalkUpFast 0x2
	EndMovement 0x0
@ 134

Movement_134: @ 134
	WalkDownFast 0x2
	MoveLeftFast 0x1
	Move_3f 0x2
	MoveRightFast 0x1
	Move_3f 0x2
	WalkRightFast 0x5
	MoveUpFast 0x1
	Exclamation 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 15c

Movement_15c: @ 15c
	WalkLeftFast 0x5
	MoveDownFast 0x1
	EndMovement 0x0
@ 168

Movement_168: @ 168
	Move_3f 0x9
	MoveRightFast 0x1
	EndMovement 0x0
@ 174

Movement_174: @ 174
	Move_3f 0x4
	Move_3d 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 184

Script_3: @ 184
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 197

Script_5: @ 197
	LockAll
	ChangeOwPosition 0x4, 0x8, 0xb
	ChangeOwMovement 0x4, 0xe
	ReleaseOw 0x4, 0x0
	ClearFlag 0x20d
	AddPeople 0x4
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x8
	CompareLastResultCall EQUAL, Script_branch_25a
	If 0x8004, 0x9
	CompareLastResultCall EQUAL, Script_branch_26e
	Message 0x4
	CloseMsgOnKeyPress
	ApplyMovement 0x4, Movement_308
	WaitMovement
	Message 0x5
	CloseMsgOnKeyPress
	SetFlag 0x10e
	WaitFanfare 0x5dc
	PlayFanfare 0x608
	ApplyMovement 0x2, Movement_c8
	ApplyMovement 0x3, Movement_d0
	WaitMovement
	RemovePeople 0x2
	RemovePeople 0x3
	If 0x8004, 0x8
	CompareLastResultCall EQUAL, Script_branch_282
	If 0x8004, 0x9
	CompareLastResultCall EQUAL, Script_branch_28e
	Message 0x6
	CloseMsgOnKeyPress
	If 0x8004, 0x8
	CompareLastResultCall EQUAL, Script_branch_29a
	If 0x8004, 0x9
	CompareLastResultCall EQUAL, Script_branch_2ae
	RemovePeople 0x4
	SetFlag 0x28a
	SetVar 0x411f, 0x4
	ReleaseAll
	End
@ 25a

Script_branch_25a: @ 25a
	ApplyMovement 0x4, Movement_2e8
	ApplyMovement 0xff, Movement_2c4
	WaitMovement
	Return
@ 26e

Script_branch_26e: @ 26e
	ApplyMovement 0x4, Movement_2fc
	ApplyMovement 0xff, Movement_2d0
	WaitMovement
	Return
@ 282

Script_branch_282: @ 282
	ApplyMovement 0x4, Movement_318
	WaitMovement
	Return
@ 28e

Script_branch_28e: @ 28e
	ApplyMovement 0x4, Movement_310
	WaitMovement
	Return
@ 29a

Script_branch_29a: @ 29a
	ApplyMovement 0x4, Movement_320
	ApplyMovement 0xff, Movement_2dc
	WaitMovement
	Return
@ 2ae

Script_branch_2ae: @ 2ae
	ApplyMovement 0x4, Movement_338
	ApplyMovement 0xff, Movement_2dc
	WaitMovement
	Return
@ 2c2

.byte 0x0 @ 0x2c2
.byte 0x0 @ 0x2c3

Movement_2c4: @ 2c4
	Move_3f 0x4
	MoveRightFast 0x1
	EndMovement 0x0
@ 2d0

Movement_2d0: @ 2d0
	Move_3f 0x3
	MoveLeftFast 0x1
	EndMovement 0x0
@ 2dc

Movement_2dc: @ 2dc
	Move_3f 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 2e8

Movement_2e8: @ 2e8
	WalkUpFast 0x2
	WalkRightFast 0x1
	WalkUpFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 2fc

Movement_2fc: @ 2fc
	WalkUpFast 0x3
	MoveRightFast 0x1
	EndMovement 0x0
@ 308

Movement_308: @ 308
	MoveUpFast 0x1
	EndMovement 0x0
@ 310

Movement_310: @ 310
	MoveRightFast 0x1
	EndMovement 0x0
@ 318

Movement_318: @ 318
	MoveLeftFast 0x1
	EndMovement 0x0
@ 320

Movement_320: @ 320
	WalkUpFast 0x5
	MoveLeftVeryFast 0x1
	MoveRightVeryFast 0x1
	Move_3f 0x2
	WalkRightVeryFast 0x6
	EndMovement 0x0
@ 338

Movement_338: @ 338
	WalkUpFast 0x5
	MoveLeftVeryFast 0x1
	MoveRightVeryFast 0x1
	Move_3f 0x2
	WalkRightVeryFast 0x7
	EndMovement 0x0
@ 350

@ end_0x350
