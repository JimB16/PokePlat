.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_2: @ 12
	CheckFlag 0xba
	CompareLastResultJump LESSER, Script_branch_2a
	CheckFlag 0xba
	CompareLastResultJump EQUAL, Script_branch_3c
	End
@ 2a

Script_branch_2a: @ 2a
	SetTilePassable 0x2, 0x131, 0xe5
	SetTilePassable 0x3, 0x132, 0xe5
	End
@ 3c

Script_branch_3c: @ 3c
	SetTilePassable 0x0, 0x131, 0xe5
	SetTilePassable 0x1, 0x132, 0xe5
	End
@ 4e

Script_1: @ 4e
	CheckBadge 6, 0x4000
	If 0x4000, 0x1
	CompareLastResultCall EQUAL, Script_branch_79
	CheckFlag 0xba
	CompareLastResultJump LESSER, Script_branch_2a
	CheckFlag 0xba
	CompareLastResultJump EQUAL, Script_branch_3c
	End
@ 79

Script_branch_79: @ 79
	SetFlag 0x234
	ClearFlag 0x298
	Return
@ 83

Script_3: @ 83
	CallMessageBox 0x5, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 9a

Script_4: @ 9a
	LockAll
	CheckSpritePosition 0x8004, 0x8005
	LockCam 0x8004, 0x8005
	ApplyMovement 0xf1, Movement_e8
	WaitMovement
	Return2 0xf, 0x800c
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_f8
	WaitMovement
	RemovePeople 0x2
	ApplyMovement 0xf1, Movement_f0
	WaitMovement
	ZoomCam
	SetVar 0x4084, 0x1
	ReleaseAll
	End
@ e7

.byte 0x0 @ 0xe7

Movement_e8: @ e8
	WalkUpFast 0x6
	EndMovement 0x0
@ f0

Movement_f0: @ f0
	WalkDownFast 0x6
	EndMovement 0x0
@ f8

Movement_f8: @ f8
	WalkUpFast 0x3
	WalkLeftFast 0x1
	WalkUpFast 0x4
	EndMovement 0x0
@ 108

@ end_0x108
