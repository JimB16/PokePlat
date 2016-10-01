.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	CheckFlag 0x13e
	CompareLastResultJump LESSER, Script_branch_2a
	CheckFlag 0x13e
	CompareLastResultJump EQUAL, Script_branch_3c
	End
@ 2a

Script_branch_2a: @ 2a
	SetTilePassable 0x2, 0x50, 0x348
	SetTilePassable 0x3, 0x51, 0x348
	End
@ 3c

Script_branch_3c: @ 3c
	SetTilePassable 0x1, 0x50, 0x348
	SetTilePassable 0x0, 0x51, 0x348
	End
@ 4e

Script_2: @ 4e
	CheckFlag 0x13e
	CompareLastResultJump LESSER, Script_branch_2a
	CheckFlag 0x13e
	CompareLastResultJump EQUAL, Script_branch_3c
	End
@ 66

Script_3: @ 66
	LockAll
	ApplyMovement 0xf2, Movement_124
	ApplyMovement 0xff, Movement_144
	WaitMovement
	SetVariableRival 0x0
	Message 0x0
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x50
	CompareLastResultJump EQUAL, Script_branch_d8
	If 0x8004, 0x51
	CompareLastResultJump EQUAL, Script_branch_d8
	If 0x8004, 0x52
	CompareLastResultJump EQUAL, Script_branch_d8
	If 0x8004, 0x53
	CompareLastResultJump EQUAL, Script_branch_d8
	If 0x8004, 0x54
	CompareLastResultJump EQUAL, Script_branch_d8
	If 0x8004, 0x55
	CompareLastResultJump EQUAL, Script_branch_d8
	End
@ d8

Script_branch_d8: @ d8
	ApplyMovement 0xff, Movement_138
	ApplyMovement 0xf2, Movement_12c
	WaitMovement
	Jump Script_branch_f0
Script_branch_f0: @ f0
	SetVar 0x4082, 0x1
	ReleaseAll
	PlayFanfare 0x603
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x137, 0x0, 0x2e, 0x36, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 122

.byte 0x0 @ 0x122
.byte 0x0 @ 0x123

Movement_124: @ 124
	MoveUpFast 0x1
	EndMovement 0x0
@ 12c

Movement_12c: @ 12c
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 138

Movement_138: @ 138
	WalkUpFast 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 144

Movement_144: @ 144
	MoveDownFast 0x1
	EndMovement 0x0
@ 14c

Script_4: @ 14c
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x3, 0x800c
	CallStandard 0x7d0
	End
@ 161

.byte 0x0 @ 0x161
.byte 0x0 @ 0x162
.byte 0x0 @ 0x163

@ end_0x164
