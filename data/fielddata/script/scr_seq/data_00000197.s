.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
Script_2: @ a
	LockAll
	ApplyMovement 0xff, Movement_16c
	WaitMovement
	ChangeOwPosition 0x0, 0x6, 0xe
	ClearFlag 0x23a
	AddPeople 0x0
	Lock 0x0
	ApplyMovement 0x0, Movement_138
	ApplyMovement 0xff, Movement_17c
	WaitMovement
	Message 0x0
	CloseMsgOnKeyPress
	ChangeOwPosition 0x1, 0x4, 0xe
	ClearFlag 0x23b
	AddPeople 0x1
	Lock 0x1
	ApplyMovement 0x1, Movement_114
	WaitMovement
	ApplyMovement 0xff, Movement_190
	WaitMovement
	SetVarHero 0x0
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_144
	WaitMovement
	Message 0x2
	SetVarHero 0x0
	Message 0x3
	ApplyMovement 0x0, Movement_150
	WaitMovement
	Message 0x4
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_b1
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_bd
	End
@ b1

Script_branch_b1: @ b1
	SetVarHero 0x0
	Message 0x5
	Jump Script_branch_c9
@ bd

Script_branch_bd: @ bd
	SetVarHero 0x0
	Message 0x6
	Jump Script_branch_c9
@ c9

Script_branch_c9: @ c9
	Message 0x7
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_158
	ApplyMovement 0x1, Movement_120
	ApplyMovement 0xff, Movement_198
	WaitMovement
	PlayFanfare 0x603
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0xbb, 0x0, 0x8, 0xf, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 114

Movement_114: @ 114
	WalkUpFast 0x8
	MoveRightFast 0x1
	EndMovement 0x0
@ 120

Movement_120: @ 120
	Move_3f 0x3
	WalkUpFast 0x2
	WalkRightFast 0x1
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 138

Movement_138: @ 138
	WalkUpFast 0x8
	MoveLeftFast 0x1
	EndMovement 0x0
@ 144

Movement_144: @ 144
	MoveLeftFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 150

Movement_150: @ 150
	MoveLeftFast 0x1
	EndMovement 0x0
@ 158

Movement_158: @ 158
	WalkUpFast 0x2
	WalkLeftFast 0x1
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 16c

Movement_16c: @ 16c
	WalkUpFast 0x11
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 17c

Movement_17c: @ 17c
	Move_3f 0x6
	MoveRightFast 0x1
	EndMovement 0x0
@ 188

.byte 0x23 @ 0x188
.byte 0x0 @ 0x189
.byte 0x1 @ 0x18a
.byte 0x0 @ 0x18b
.byte 0xfe @ 0x18c
.byte 0x0 @ 0x18d
.byte 0x0 @ 0x18e
.byte 0x0 @ 0x18f

Movement_190: @ 190
	MoveLeftFast 0x1
	EndMovement 0x0
@ 198

Movement_198: @ 198
	Move_3f 0x1
	MoveUpFast 0x1
	Move_3f 0x6
	WalkUpFast 0x4
	EndMovement 0x0
@ 1ac

@ end_0x1ac
