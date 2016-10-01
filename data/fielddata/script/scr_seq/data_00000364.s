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
	LockAll
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x17
	CompareLastResultCall EQUAL, Script_branch_1a8
	If 0x8004, 0x18
	CompareLastResultCall EQUAL, Script_branch_1ba
	If 0x8004, 0x19
	CompareLastResultCall EQUAL, Script_branch_1cc
	If 0x8004, 0x1a
	CompareLastResultCall EQUAL, Script_branch_1de
	ClearFlag 0x276
	AddPeople 0xb
	Lock 0xb
	ApplyMovement 0xb, Movement_2c8
	ApplyMovement 0xff, Movement_290
	WaitMovement
	PlayFanfare 0x602
	SetVarHero 0x1
	Message 0x0
	CloseMsgOnKeyPress
	Return2 0x1e, 0x800c
	ApplyMovement 0xb, Movement_2d0
	WaitMovement
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0xb, Movement_2e0
	WaitMovement
	Message 0x2
	ApplyMovement 0xb, Movement_2e8
	WaitMovement
	Message 0x3
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x17
	CompareLastResultCall EQUAL, Script_branch_1f0
	If 0x8004, 0x18
	CompareLastResultCall EQUAL, Script_branch_204
	If 0x8004, 0x19
	CompareLastResultCall EQUAL, Script_branch_218
	If 0x8004, 0x1a
	CompareLastResultCall EQUAL, Script_branch_22c
	RemovePeople 0xb
	ClearFlag 0x277
	AddPeople 0xc
	Lock 0xc
	ApplyMovement 0xc, Movement_2c8
	ApplyMovement 0xff, Movement_290
	WaitMovement
	PlayFanfare 0x602
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x4
	CloseMsgOnKeyPress
	Return2 0x1e, 0x800c
	If 0x409e, 0x1
	CompareLastResultCall LESSER, Script_branch_19e
	If 0x409e, 0x1
	CompareLastResultCall 0x4, Script_branch_1a3
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x17
	CompareLastResultCall EQUAL, Script_branch_240
	If 0x8004, 0x18
	CompareLastResultCall EQUAL, Script_branch_254
	If 0x8004, 0x19
	CompareLastResultCall EQUAL, Script_branch_268
	If 0x8004, 0x1a
	CompareLastResultCall EQUAL, Script_branch_27c
	RemovePeople 0xc
	SetVar 0x410e, 0x1
	ReleaseAll
	End
@ 19e

Script_branch_19e: @ 19e
	Message 0x5
	Return
@ 1a3

Script_branch_1a3: @ 1a3
	Message 0x6
	Return
@ 1a8

Script_branch_1a8: @ 1a8
	ChangeOwPosition 0xb, 0x17, 0x29
	ChangeOwPosition 0xc, 0x17, 0x28
	Return
@ 1ba

Script_branch_1ba: @ 1ba
	ChangeOwPosition 0xb, 0x18, 0x29
	ChangeOwPosition 0xc, 0x18, 0x28
	Return
@ 1cc

Script_branch_1cc: @ 1cc
	ChangeOwPosition 0xb, 0x19, 0x29
	ChangeOwPosition 0xc, 0x19, 0x28
	Return
@ 1de

Script_branch_1de: @ 1de
	ChangeOwPosition 0xb, 0x1a, 0x29
	ChangeOwPosition 0xc, 0x1a, 0x28
	Return
@ 1f0

Script_branch_1f0: @ 1f0
	ApplyMovement 0xb, Movement_2f0
	ApplyMovement 0xff, Movement_2a8
	WaitMovement
	Return
@ 204

Script_branch_204: @ 204
	ApplyMovement 0xb, Movement_2f0
	ApplyMovement 0xff, Movement_2a8
	WaitMovement
	Return
@ 218

Script_branch_218: @ 218
	ApplyMovement 0xb, Movement_2fc
	ApplyMovement 0xff, Movement_2b8
	WaitMovement
	Return
@ 22c

Script_branch_22c: @ 22c
	ApplyMovement 0xb, Movement_2fc
	ApplyMovement 0xff, Movement_2b8
	WaitMovement
	Return
@ 240

Script_branch_240: @ 240
	ApplyMovement 0xc, Movement_2f0
	ApplyMovement 0xff, Movement_2a8
	WaitMovement
	Return
@ 254

Script_branch_254: @ 254
	ApplyMovement 0xc, Movement_2f0
	ApplyMovement 0xff, Movement_2a8
	WaitMovement
	Return
@ 268

Script_branch_268: @ 268
	ApplyMovement 0xc, Movement_2fc
	ApplyMovement 0xff, Movement_2b8
	WaitMovement
	Return
@ 27c

Script_branch_27c: @ 27c
	ApplyMovement 0xc, Movement_2fc
	ApplyMovement 0xff, Movement_2b8
	WaitMovement
	Return
@ 290

Movement_290: @ 290
	Move_3e 0x7
	MoveDownVeryFast 0x1
	Move_47 0x1
	WalkUpVeryFast  0x1
	Move_48 0x1
	EndMovement 0x0
@ 2a8

Movement_2a8: @ 2a8
	Move_3f 0x1
	MoveRightFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 2b8

Movement_2b8: @ 2b8
	Move_3f 0x1
	MoveLeftFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 2c8

Movement_2c8: @ 2c8
	WalkUpVeryFast  0x8
	EndMovement 0x0
@ 2d0

Movement_2d0: @ 2d0
	MoveLeftFast 0x1
	MoveRightFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 2e0

Movement_2e0: @ 2e0
	MoveUpFast 0x1
	EndMovement 0x0
@ 2e8

Movement_2e8: @ 2e8
	Exclamation 0x1
	EndMovement 0x0
@ 2f0

Movement_2f0: @ 2f0
	WalkRightVeryFast 0x1
	WalkUpVeryFast  0x8
	EndMovement 0x0
@ 2fc

Movement_2fc: @ 2fc
	WalkLeftVeryFast 0x1
	WalkUpVeryFast  0x8
	EndMovement 0x0
@ 308

Script_2: @ 308
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 31b

Script_5: @ 31b
	PlayFanfare 0x5dc
	LockAll
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 32c

Script_6: @ 32c
	PlayFanfare 0x5dc
	LockAll
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 33d

Script_7: @ 33d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 350

Script_8: @ 350
	PlayFanfare 0x5dc
	LockAll
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 361

Script_9: @ 361
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 374

Script_10: @ 374
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 387

Script_11: @ 387
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 39a

Script_12: @ 39a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3ad

Script_3: @ 3ad
	CallMessageBox 0x7, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 3c4

Script_4: @ 3c4
	CallMessageBox 0x8, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 3db

.byte 0x0 @ 0x3db

@ end_0x3dc
