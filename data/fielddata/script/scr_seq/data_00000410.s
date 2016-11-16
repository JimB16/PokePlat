.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	LockAll
	CheckIdPlayer 0x8000, 0x5
	CopyVar 0x8008, 0x8000
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_57
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_71
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_8b
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_a5
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_bf
	End
@ 57

Script_branch_57: @ 57
	ApplyMovement 0xff, Movement_148
	ApplyMovement 0x0, Movement_1f0
	WaitMovement
	Jump Script_branch_d9
@ 6f

.byte 0x2 @ 0x6f
.byte 0x0 @ 0x70

Script_branch_71: @ 71
	ApplyMovement 0xff, Movement_154
	ApplyMovement 0x0, Movement_200
	WaitMovement
	Jump Script_branch_d9
@ 89

.byte 0x2 @ 0x89
.byte 0x0 @ 0x8a

Script_branch_8b: @ 8b
	ApplyMovement 0xff, Movement_160
	ApplyMovement 0x0, Movement_210
	WaitMovement
	Jump Script_branch_d9
@ a3

.byte 0x2 @ 0xa3
.byte 0x0 @ 0xa4

Script_branch_a5: @ a5
	ApplyMovement 0xff, Movement_16c
	ApplyMovement 0x0, Movement_220
	WaitMovement
	Jump Script_branch_d9
@ bd

.byte 0x2 @ 0xbd
.byte 0x0 @ 0xbe

Script_branch_bf: @ bf
	ApplyMovement 0xff, Movement_178
	ApplyMovement 0x0, Movement_230
	WaitMovement
	Jump Script_branch_d9
@ d7

.byte 0x2 @ 0xd7
.byte 0x0 @ 0xd8

Script_branch_d9: @ d9
	Message 0x0
	Cmd_30
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_184
	ApplyMovement 0x0, Movement_240
	WaitMovement
	PlayFanfare 0x64f
	ApplyMovement 0xff, Movement_1e8
	WaitMovement
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	SetVar 0x4003, 0x1
	Warp 0x405c, 0x0, 0x5, 0x2, 0x1
	PreWfc
	StartWfc 0x800c
	CopyVar 0x8004, 0x800c
	Cmd_2f7 0x8004
	CallEnd
	SetVar 0x4080, 0x1
	RemovePeople2 0xff
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 148

Movement_148: @ 148
	WalkUpFast 0x7
	WalkLeftFast 0xb
	EndMovement 0x0
@ 154

Movement_154: @ 154
	WalkUpFast 0x7
	WalkLeftFast 0x9
	EndMovement 0x0
@ 160

Movement_160: @ 160
	WalkUpFast 0x7
	WalkLeftFast 0x7
	EndMovement 0x0
@ 16c

Movement_16c: @ 16c
	WalkUpFast 0x7
	WalkLeftFast 0x5
	EndMovement 0x0
@ 178

Movement_178: @ 178
	WalkUpFast 0x7
	WalkLeftFast 0x3
	EndMovement 0x0
@ 184

Movement_184: @ 184
	WalkUpFast 0x1
	SeeLeft 0x1
	Move_3d 0x1
	SeeDown 0x1
	Move_3d 0x1
	SeeRight 0x1
	Move_3d 0x1
	SeeUp 0x1
	Move_3d 0x1
	SeeLeft 0x1
	Move_3d 0x1
	SeeDown 0x1
	Move_3d 0x1
	SeeRight 0x1
	Move_3d 0x1
	SeeUp 0x1
	Move_3d 0x1
	SeeLeft 0x1
	Move_3d 0x1
	SeeDown 0x1
	Move_3d 0x1
	SeeRight 0x1
	Move_3d 0x1
	SeeUp 0x1
	EndMovement 0x0
@ 1e8

Movement_1e8: @ 1e8
	Move_43 0x1
	EndMovement 0x0
@ 1f0

Movement_1f0: @ 1f0
	WalkUpFast 0x6
	WalkLeftFast 0xc
	MoveRightFast 0x1
	EndMovement 0x0
@ 200

Movement_200: @ 200
	WalkUpFast 0x6
	WalkLeftFast 0xa
	MoveRightFast 0x1
	EndMovement 0x0
@ 210

Movement_210: @ 210
	WalkUpFast 0x6
	WalkLeftFast 0x8
	MoveRightFast 0x1
	EndMovement 0x0
@ 220

Movement_220: @ 220
	WalkUpFast 0x6
	WalkLeftFast 0x6
	MoveRightFast 0x1
	EndMovement 0x0
@ 230

Movement_230: @ 230
	WalkUpFast 0x6
	WalkLeftFast 0x4
	MoveRightFast 0x1
	EndMovement 0x0
@ 240

Movement_240: @ 240
	MoveUpFast 0x1
	EndMovement 0x0
@ 248

@ end_0x248
