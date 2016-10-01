.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	.hword 0xfd13
@ 1e

Script_7: @ 1e
	CheckTime 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_65
	If 0x4000, 0x1
	CompareLastResultJump EQUAL, Script_branch_6f
	If 0x4000, 0x2
	CompareLastResultJump EQUAL, Script_branch_6f
	If 0x4000, 0x3
	CompareLastResultJump EQUAL, Script_branch_6f
	If 0x4000, 0x4
	CompareLastResultJump EQUAL, Script_branch_6f
	End
@ 65

Script_branch_65: @ 65
	ClearFlag 0x271
	SetFlag 0x270
	End
@ 6f

Script_branch_6f: @ 6f
	ClearFlag 0x270
	SetFlag 0x271
	End
@ 79

Script_1: @ 79
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckItem 0x1d0, 0x1, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_a1
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a1

Script_branch_a1: @ a1
	Message 0x1
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_ca
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_c4
	End
@ c4

Script_branch_c4: @ c4
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ca

Script_branch_ca: @ ca
	SetVarHero 0x0
	SetVarItem 0x1, 0x1d0
	Message 0x2
	CloseMsgOnKeyPress
	PlayCry 0x36, 0x0
	WaitCry
	ApplyMovement 0x1b, Movement_24c
	ApplyMovement 0x1c, Movement_24c
	ApplyMovement 0x1a, Movement_24c
	ApplyMovement 0x13, Movement_24c
	WaitMovement
	ApplyMovement 0x1b, Movement_258
	ApplyMovement 0x1c, Movement_26c
	ApplyMovement 0x1a, Movement_280
	ApplyMovement 0x13, Movement_2b4
	WaitMovement
	RemovePeople 0x1b
	RemovePeople 0x1c
	RemovePeople 0x1a
	RemovePeople 0x13
	Return2 0x2d, 0x800c
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x230
	CompareLastResultJump EQUAL, Script_branch_15b
	If 0x8004, 0x231
	CompareLastResultJump EQUAL, Script_branch_16f
	End
@ 15b

Script_branch_15b: @ 15b
	ChangeOwPosition 0x14, 0x230, 0x254
	ChangeOwMovement 0x14, 0xe
	Jump Script_branch_183
Script_branch_16f: @ 16f
	ChangeOwPosition 0x14, 0x231, 0x254
	ChangeOwMovement 0x14, 0xe
	Jump Script_branch_183
Script_branch_183: @ 183
	ClearFlag 0x1b1
	AddPeople 0x14
	Lock 0x14
	ApplyMovement 0x14, Movement_2c4
	WaitMovement
	ApplyMovement 0xff, Movement_2dc
	WaitMovement
	Message 0x3
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1e9
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1c6
	End
@ 1c6

Script_branch_1c6: @ 1c6
	Message 0x5
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1e9
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1c6
	End
@ 1e9

Script_branch_1e9: @ 1e9
	SetVar 0x8004, 0x1b7
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	Message 0x4
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x230
	CompareLastResultJump EQUAL, Script_branch_220
	If 0x8004, 0x231
	CompareLastResultJump EQUAL, Script_branch_230
	End
@ 220

Script_branch_220: @ 220
	ApplyMovement 0x14, Movement_2cc
	WaitMovement
	Jump Script_branch_240
Script_branch_230: @ 230
	ApplyMovement 0x14, Movement_2d4
	WaitMovement
	Jump Script_branch_240
Script_branch_240: @ 240
	RemovePeople 0x14
	SetFlag 0x107
	ReleaseAll
	End
@ 24c

Movement_24c: @ 24c
	Exclamation 0x1
	Move_3f 0x4
	EndMovement 0x0
@ 258

Movement_258: @ 258
	WalkUpFast 0x1
	MoveDownFast 0x1
	Move_3f 0x8
	WalkUpFast 0x8
	EndMovement 0x0
@ 26c

Movement_26c: @ 26c
	WalkUpFast 0x2
	MoveDownFast 0x2
	Move_3f 0x6
	WalkUpFast 0x8
	EndMovement 0x0
@ 280

Movement_280: @ 280
	MoveRightFast 0x1
	MoveLeftFast 0x1
	MoveRightFast 0x1
	Move_3f 0x2
	MoveUpFast 0x1
	WalkUpVeryFast  0x2
	Move_3f 0x2
	WalkLeftFast 0x3
	MoveRightFast 0x1
	Exclamation 0x1
	WalkRightVeryFast 0x3
	WalkUpVeryFast  0x8
	EndMovement 0x0
@ 2b4

Movement_2b4: @ 2b4
	WalkUpFast 0x2
	Move_3f 0x8
	WalkUpFast 0x8
	EndMovement 0x0
@ 2c4

Movement_2c4: @ 2c4
	WalkUpFast 0x7
	EndMovement 0x0
@ 2cc

Movement_2cc: @ 2cc
	WalkDownFast 0x9
	EndMovement 0x0
@ 2d4

Movement_2d4: @ 2d4
	WalkDownFast 0x9
	EndMovement 0x0
@ 2dc

Movement_2dc: @ 2dc
	MoveDownFast 0x1
	EndMovement 0x0
@ 2e4

.byte 0x3f @ 0x2e4
.byte 0x0 @ 0x2e5
.byte 0x1 @ 0x2e6
.byte 0x0 @ 0x2e7
.byte 0x23 @ 0x2e8
.byte 0x0 @ 0x2e9
.byte 0x1 @ 0x2ea
.byte 0x0 @ 0x2eb
.byte 0x3f @ 0x2ec
.byte 0x0 @ 0x2ed
.byte 0x1 @ 0x2ee
.byte 0x0 @ 0x2ef
.byte 0x20 @ 0x2f0
.byte 0x0 @ 0x2f1
.byte 0x1 @ 0x2f2
.byte 0x0 @ 0x2f3
.byte 0xfe @ 0x2f4
.byte 0x0 @ 0x2f5
.byte 0x0 @ 0x2f6
.byte 0x0 @ 0x2f7
.byte 0x3f @ 0x2f8
.byte 0x0 @ 0x2f9
.byte 0x1 @ 0x2fa
.byte 0x0 @ 0x2fb
.byte 0x22 @ 0x2fc
.byte 0x0 @ 0x2fd
.byte 0x1 @ 0x2fe
.byte 0x0 @ 0x2ff
.byte 0x3f @ 0x300
.byte 0x0 @ 0x301
.byte 0x1 @ 0x302
.byte 0x0 @ 0x303
.byte 0x20 @ 0x304
.byte 0x0 @ 0x305
.byte 0x1 @ 0x306
.byte 0x0 @ 0x307
.byte 0xfe @ 0x308
.byte 0x0 @ 0x309
.byte 0x0 @ 0x30a
.byte 0x0 @ 0x30b

Script_2: @ 30c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 31f

Script_3: @ 31f
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xc7
	CompareLastResultJump EQUAL, Script_branch_364
	Message 0x7
	SetVar 0x8004, 0x17a
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_36f
	CallStandard 0x7fc
	SetFlag 0xc7
	Jump Script_branch_364
Script_branch_364: @ 364
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 36f

Script_branch_36f: @ 36f
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 379

Script_4: @ 379
	CallMessageBox 0xa, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 390

Script_5: @ 390
	CallMessageBox 0xb, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 3a7

Script_6: @ 3a7
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3ba

.byte 0x0 @ 0x3ba
.byte 0x0 @ 0x3bb

@ end_0x3bc
