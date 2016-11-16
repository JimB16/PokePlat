.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xaa5
	CompareLastResultJump EQUAL, Script_branch_e2
	If 0x400a, 0x1
	CompareLastResultJump EQUAL, Script_branch_e2
	CheckFirstPokeParty 0x4000
	SetVarHero 0x0
	SetVarPokeNick 0x1, 0x4000
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_58
	Jump Script_branch_63
@ 58

Script_branch_58: @ 58
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 63

Script_branch_63: @ 63
	Message 0x2
	CloseMsgOnKeyPress
	Call Function_160
	Jump Script_branch_74
@ 74

Script_branch_74: @ 74
	Message 0x3
	CheckIdPlayer 0x800c, 0x4
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_aa
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_b3
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_bc
	Jump Script_branch_c5
@ aa

Script_branch_aa: @ aa
	Message 0x4
	Jump Script_branch_ce
@ b3

Script_branch_b3: @ b3
	Message 0x5
	Jump Script_branch_ce
@ bc

Script_branch_bc: @ bc
	Message 0x6
	Jump Script_branch_ce
@ c5

Script_branch_c5: @ c5
	Message 0x7
	Jump Script_branch_ce
@ ce

Script_branch_ce: @ ce
	CloseMsgOnKeyPress
	PlayFanfare 0x662
	Call Function_ed
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e2

Script_branch_e2: @ e2
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ed

Function_ed: @ ed
	CheckIdPlayer 0x800c, 0x64
	If 0x800c, 0x5
	CompareLastResultJump LESSER, Script_branch_113
	If 0x800c, 0x1e
	CompareLastResultJump LESSER, Script_branch_124
	Jump Script_branch_135
@ 113

Script_branch_113: @ 113
	StoreHappyStatus 0x1e, 0x4000
	Call Function_146
	Message 0x8
	Return
@ 124

Script_branch_124: @ 124
	StoreHappyStatus 0xa, 0x4000
	Call Function_146
	Message 0xa
	Return
@ 135

Script_branch_135: @ 135
	StoreHappyStatus 0x5, 0x4000
	Call Function_146
	Message 0xb
	Return
@ 146

Function_146: @ 146
	WaitFanfare 0x662
	SetFlag 0xaa5
	SetVar 0x400a, 0x1
	ApplyMovement 0x1, Movement_2dc
	WaitMovement
	Return
@ 160

Function_160: @ 160
	CheckSpritePosition 0x8005, 0x8006
	If 0x8005, 0xb
	CompareLastResultJump EQUAL, Script_branch_193
	If 0x8005, 0xd
	CompareLastResultJump EQUAL, Script_branch_1ab
	If 0x8006, 0x4
	CompareLastResultJump EQUAL, Script_branch_1c3
	Jump Script_branch_1db
@ 193

Script_branch_193: @ 193
	ApplyMovement 0xff, Movement_26c
	ApplyMovement 0x2, Movement_210
	WaitMovement
	Jump Script_branch_1f3
@ 1ab

Script_branch_1ab: @ 1ab
	ApplyMovement 0xff, Movement_280
	ApplyMovement 0x2, Movement_224
	WaitMovement
	Jump Script_branch_1f3
@ 1c3

Script_branch_1c3: @ 1c3
	ApplyMovement 0xff, Movement_294
	ApplyMovement 0x2, Movement_23c
	WaitMovement
	Jump Script_branch_1f3
@ 1db

Script_branch_1db: @ 1db
	ApplyMovement 0xff, Movement_2ac
	ApplyMovement 0x2, Movement_250
	WaitMovement
	Jump Script_branch_1f3
@ 1f3

Script_branch_1f3: @ 1f3
	ApplyMovement 0x0, Movement_2c4
	ApplyMovement 0x1, Movement_2cc
	ApplyMovement 0x3, Movement_2d4
	WaitMovement
	Return
@ 20f

.byte 0x0 @ 0x20f

Movement_210: @ 210
	WalkRightFast 0x2
	WalkDownFast 0x2
	WalkRightFast 0x3
	MoveLeftFast 0x1
	EndMovement 0x0
@ 224

Movement_224: @ 224
	WalkDownFast 0x1
	WalkRightFast 0x1
	WalkDownFast 0x1
	WalkRightFast 0x4
	MoveLeftFast 0x1
	EndMovement 0x0
@ 23c

Movement_23c: @ 23c
	WalkRightFast 0x2
	WalkDownFast 0x2
	WalkRightFast 0x3
	MoveLeftFast 0x1
	EndMovement 0x0
@ 250

Movement_250: @ 250
	WalkRightFast 0x1
	WalkDownFast 0x1
	WalkRightFast 0x2
	WalkDownFast 0x1
	WalkRightFast 0x2
	MoveLeftFast 0x1
	EndMovement 0x0
@ 26c

Movement_26c: @ 26c
	WalkRightFast 0x3
	WalkDownFast 0x2
	WalkRightFast 0x2
	MoveDownFast 0x1
	EndMovement 0x0
@ 280

Movement_280: @ 280
	Move_3f 0x2
	WalkDownFast 0x2
	WalkRightFast 0x3
	MoveDownFast 0x1
	EndMovement 0x0
@ 294

Movement_294: @ 294
	WalkDownFast 0x1
	WalkRightFast 0x3
	WalkDownFast 0x2
	WalkRightFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 2ac

Movement_2ac: @ 2ac
	Move_3f 0x2
	WalkRightFast 0x3
	WalkDownFast 0x1
	WalkRightFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 2c4

Movement_2c4: @ 2c4
	WalkDownFast 0x1
	EndMovement 0x0
@ 2cc

Movement_2cc: @ 2cc
	WalkRightFast 0x3
	EndMovement 0x0
@ 2d4

Movement_2d4: @ 2d4
	WalkUpFast 0x4
	EndMovement 0x0
@ 2dc

Movement_2dc: @ 2dc
	WalkUpFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 2e8

Script_2: @ 2e8
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2fb

Script_3: @ 2fb
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 30e

Script_4: @ 30e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 321

.byte 0x0 @ 0x321
.byte 0x0 @ 0x322
.byte 0x0 @ 0x323

@ end_0x324
