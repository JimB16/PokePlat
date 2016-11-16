.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	SetFlag 0x9d7
	CheckFlag 0xe4
	CompareLastResultJump LESSER, Script_branch_23
	End
@ 23

Script_branch_23: @ 23
	SetVar 0x4091, 0x0
	End
@ 2b

Script_2: @ 2b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	RideBike 0x0
	If 0x4091, 0x1
	CompareLastResultJump 0x4, Script_branch_95
	SetVarHero 0x0
	CheckFlag 0xe0
	CompareLastResultCall LESSER, Script_branch_8b
	CheckFlag 0xe0
	CompareLastResultCall EQUAL, Script_branch_90
	SetVarHero 0x0
	Soundfr 0x481
	Message 0x1
	Cmd_4f
	SetFlag 0xe0
	SetVar 0x4091, 0x1
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	SetVar 0x403f, 0x264
	StartFollow
	FollowHero 0x4, 0x30
	ReleaseAll
	End
@ 8b

Script_branch_8b: @ 8b
	Message 0x0
	Return
@ 90

Script_branch_90: @ 90
	Message 0x3
	Return
@ 95

Script_branch_95: @ 95
	If 0x40e2, 0x2
	CompareLastResultJump 0x4, Script_branch_c4
	If 0x40e2, 0x1
	CompareLastResultJump EQUAL, Script_branch_bb
	SetVarHero 0x0
	Message 0x9
	Jump Script_branch_d2
@ bb

Script_branch_bb: @ bb
	Message 0xa
	Jump Script_branch_d2
@ c4

Script_branch_c4: @ c4
	SetVarHero 0x0
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d2

Script_branch_d2: @ d2
	ScriptCmd_AddValue 0x40e2, 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e0

Script_3: @ e0
	End
@ e2

Script_4: @ e2
	LockAll
	StopFollow
	FollowHero 0x4, 0x10
	CheckFacePosition 0x800c
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_103
	Jump Script_branch_11b
@ 103

Script_branch_103: @ 103
	ApplyMovement 0xff, Movement_194
	ApplyMovement 0x4, Movement_1d8
	WaitMovement
	Jump Script_branch_133
@ 11b

Script_branch_11b: @ 11b
	ApplyMovement 0xff, Movement_19c
	ApplyMovement 0x4, Movement_1e4
	WaitMovement
	Jump Script_branch_133
@ 133

Script_branch_133: @ 133
	SetVarHero 0x0
	Message 0x5
	CloseMsgOnKeyPress
	CheckFacePosition 0x800c
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_152
	Jump Script_branch_16a
@ 152

Script_branch_152: @ 152
	ApplyMovement 0xff, Movement_1a4
	ApplyMovement 0x4, Movement_1f0
	WaitMovement
	Jump Script_branch_182
@ 16a

Script_branch_16a: @ 16a
	ApplyMovement 0xff, Movement_1b0
	ApplyMovement 0x4, Movement_200
	WaitMovement
	Jump Script_branch_182
@ 182

Script_branch_182: @ 182
	RemovePeople 0x4
	SetFlag 0xe4
	SetVar 0x4091, 0x2
	ReleaseAll
	End
@ 194

Movement_194: @ 194
	MoveRightFast 0x1
	EndMovement 0x0
@ 19c

Movement_19c: @ 19c
	MoveUpFast 0x1
	EndMovement 0x0
@ 1a4

Movement_1a4: @ 1a4
	WalkUpFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 1b0

Movement_1b0: @ 1b0
	WalkRightFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 1bc

.byte 0x3f @ 0x1bc
.byte 0x0 @ 0x1bd
.byte 0x5 @ 0x1be
.byte 0x0 @ 0x1bf
.byte 0xe @ 0x1c0
.byte 0x0 @ 0x1c1
.byte 0x1 @ 0x1c2
.byte 0x0 @ 0x1c3
.byte 0xfe @ 0x1c4
.byte 0x0 @ 0x1c5
.byte 0x0 @ 0x1c6
.byte 0x0 @ 0x1c7
.byte 0x3f @ 0x1c8
.byte 0x0 @ 0x1c9
.byte 0x5 @ 0x1ca
.byte 0x0 @ 0x1cb
.byte 0xc @ 0x1cc
.byte 0x0 @ 0x1cd
.byte 0x1 @ 0x1ce
.byte 0x0 @ 0x1cf
.byte 0x22 @ 0x1d0
.byte 0x0 @ 0x1d1
.byte 0x1 @ 0x1d2
.byte 0x0 @ 0x1d3
.byte 0xfe @ 0x1d4
.byte 0x0 @ 0x1d5
.byte 0x0 @ 0x1d6
.byte 0x0 @ 0x1d7

Movement_1d8: @ 1d8
	MoveLeftFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 1e4

Movement_1e4: @ 1e4
	MoveDownFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 1f0

Movement_1f0: @ 1f0
	Move_3f 0x3
	WalkLeftFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 200

Movement_200: @ 200
	Move_3f 0x3
	WalkDownFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 210

@ end_0x210
