.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	LockAll
	CheckSpritePosition 0x8004, 0x8005
	LockCam 0x8004, 0x8005
	ApplyMovement 0xf1, Movement_228
	WaitMovement
	Return2 0xf, 0x800c
	ApplyMovement 0x2, Movement_1c4
	WaitMovement
	SetVariableRival 0x0
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x1, Movement_1ec
	WaitMovement
	Message 0x1
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0xe
	CompareLastResultCall 0x1, Script_branch_136
	If 0x8004, 0xf
	CompareLastResultCall 0x1, Script_branch_154
	ZoomCam
	Message 0x2
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0xe
	CompareLastResultCall 0x1, Script_branch_168
	If 0x8004, 0xf
	CompareLastResultCall 0x1, Script_branch_174
	PlayFanfare 0x603
	RemovePeople 0x1
	WaitFanfare 0x603
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0xe
	CompareLastResultCall 0x1, Script_branch_180
	If 0x8004, 0xf
	CompareLastResultCall 0x1, Script_branch_18c
	ApplyMovement 0x2, Movement_1cc
	WaitMovement
	SetVariableRival 0x0
	Message 0x3
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_1d4
	WaitMovement
	Message 0x4
	CloseMsgOnKeyPress
	Return2 0x1e, 0x800c
	ApplyMovement 0x2, Movement_1cc
	WaitMovement
	Message 0x5
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_1dc
	ApplyMovement 0xff, Movement_1b8
	WaitMovement
	PlayFanfare 0x603
	RemovePeople 0x2
	WaitFanfare 0x603
	SetFlag 0x98f
	ClearFlag 0x223
	SetVar 0x40d3, 0x2
	ClearFlag 0x198
	SetFlag 0x194
	SetFlag 0x175
	SetFlag 0x28d
	SetFlag 0x28c
	ClearFlag 0xa8
	ReleaseAll
	End
@ 136

Script_branch_136: @ 136
	ApplyMovement 0x1, Movement_1f4
	ApplyMovement 0xf1, Movement_230
	WaitMovement
	ApplyMovement 0xff, Movement_1b0
	WaitMovement
	Return
@ 154

Script_branch_154: @ 154
	ApplyMovement 0x1, Movement_204
	ApplyMovement 0xf1, Movement_230
	WaitMovement
	Return
@ 168

Script_branch_168: @ 168
	ApplyMovement 0x1, Movement_210
	WaitMovement
	Return
@ 174

Script_branch_174: @ 174
	ApplyMovement 0x1, Movement_218
	WaitMovement
	Return
@ 180

Script_branch_180: @ 180
	ApplyMovement 0xff, Movement_198
	WaitMovement
	Return
@ 18c

Script_branch_18c: @ 18c
	ApplyMovement 0xff, Movement_1a4
	WaitMovement
	Return
@ 198

Movement_198: @ 198
	WalkUpFast 0x5
	WalkRightFast 0x2
	EndMovement 0x0
@ 1a4

Movement_1a4: @ 1a4
	WalkUpFast 0x5
	WalkRightFast 0x1
	EndMovement 0x0
@ 1b0

Movement_1b0: @ 1b0
	MoveRightFast 0x1
	EndMovement 0x0
@ 1b8

Movement_1b8: @ 1b8
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 1c4

Movement_1c4: @ 1c4
	MoveUpFast 0x1
	EndMovement 0x0
@ 1cc

Movement_1cc: @ 1cc
	MoveLeftFast 0x1
	EndMovement 0x0
@ 1d4

Movement_1d4: @ 1d4
	MoveUpFast 0x1
	EndMovement 0x0
@ 1dc

Movement_1dc: @ 1dc
	WalkDownFast 0x2
	WalkLeftFast 0x2
	WalkDownFast 0x3
	EndMovement 0x0
@ 1ec

Movement_1ec: @ 1ec
	MoveDownFast 0x1
	EndMovement 0x0
@ 1f4

Movement_1f4: @ 1f4
	WalkLeftFast 0x2
	WalkDownFast 0x6
	MoveLeftFast 0x1
	EndMovement 0x0
@ 204

Movement_204: @ 204
	WalkLeftFast 0x2
	WalkDownFast 0x5
	EndMovement 0x0
@ 210

Movement_210: @ 210
	MoveDownFast 0x1
	EndMovement 0x0
@ 218

Movement_218: @ 218
	WalkLeftFast 0x1
	WalkDownFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 228

Movement_228: @ 228
	WalkUpFast 0x5
	EndMovement 0x0
@ 230

Movement_230: @ 230
	WalkDownFast 0x5
	EndMovement 0x0
@ 238

@ end_0x238
