.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	SetFlag 0x9d1
	End
@ 18

Script_2: @ 18
	CallMessageBox 0x9, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 2f

Script_3: @ 2f
	LockAll
	ApplyMovement 0x6, Movement_a4
	ApplyMovement 0x7, Movement_e0
	WaitMovement
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x6, Movement_ac
	ApplyMovement 0x7, Movement_ec
	WaitMovement
	ApplyMovement 0x7, Movement_100
	WaitMovement
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0x6, Movement_c4
	WaitMovement
	Message 0x2
	CloseMsgOnKeyPress
	ApplyMovement 0x6, Movement_d4
	ApplyMovement 0x7, Movement_108
	WaitMovement
	PlayFanfare 0x603
	RemovePeople 0x6
	RemovePeople 0x7
	WaitFanfare 0x603
	SetVar 0x40a0, 0x1
	ReleaseAll
	End
@ a4

Movement_a4: @ a4
	WalkRightFast 0x4
	EndMovement 0x0
@ ac

Movement_ac: @ ac
	WalkDownFast 0x2
	WalkRightFast 0x4
	WalkUpFast 0x1
	EndMovement 0x0
@ bc

.byte 0x22 @ 0xbc
.byte 0x0 @ 0xbd
.byte 0x1 @ 0xbe
.byte 0x0 @ 0xbf
.byte 0xfe @ 0xc0
.byte 0x0 @ 0xc1
.byte 0x0 @ 0xc2
.byte 0x0 @ 0xc3

Movement_c4: @ c4
	MoveLeftFast 0x1
	Move_3f 0x2
	MoveUpFast 0x1
	EndMovement 0x0
@ d4

Movement_d4: @ d4
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ e0

Movement_e0: @ e0
	WalkUpFast 0x1
	WalkRightFast 0x3
	EndMovement 0x0
@ ec

Movement_ec: @ ec
	WalkRightFast 0x1
	WalkDownFast 0x2
	WalkRightFast 0x3
	WalkUpFast 0x1
	EndMovement 0x0
@ 100

Movement_100: @ 100
	MoveRightFast 0x1
	EndMovement 0x0
@ 108

Movement_108: @ 108
	WalkRightFast 0x1
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 118

Script_4: @ 118
	LockAll
	Message 0x3
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	Message 0x4
	ApplyMovement 0x5, Movement_1f0
	WaitMovement
	Message 0x5
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_1f8
	WaitMovement
	ApplyMovement 0x4, Movement_1cc
	WaitMovement
	SetVarHero 0x0
	Message 0x6
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	ApplyMovement 0x5, Movement_204
	ApplyMovement 0x4, Movement_1dc
	WaitMovement
	SetVarHero 0x0
	Message 0x7
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_214
	ApplyMovement 0xff, Movement_238
	WaitMovement
	RemovePeople 0x5
	ApplyMovement 0x4, Movement_1e8
	ApplyMovement 0xff, Movement_240
	WaitMovement
	SetVarHero 0x0
	Message 0x8
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	RemovePeople 0x4
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	SetVar 0x40a0, 0x3
	ReleaseAll
	End
@ 1c9

.byte 0x0 @ 0x1c9
.byte 0x0 @ 0x1ca
.byte 0x0 @ 0x1cb

Movement_1cc: @ 1cc
	MoveLeftFast 0x1
	Move_3f 0x2
	MoveDownFast 0x1
	EndMovement 0x0
@ 1dc

Movement_1dc: @ 1dc
	Move_3f 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 1e8

Movement_1e8: @ 1e8
	MoveDownFast 0x1
	EndMovement 0x0
@ 1f0

Movement_1f0: @ 1f0
	MoveRightFast 0x1
	EndMovement 0x0
@ 1f8

Movement_1f8: @ 1f8
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 204

Movement_204: @ 204
	Move_46 0x1
	WalkDownFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 214

Movement_214: @ 214
	WalkDownFast 0x2
	WalkLeftFast 0x5
	WalkUpFast 0x2
	WalkLeftFast 0x3
	RunDown 0x9
	RunRight 0xa
	WalkUpFast 0x6
	WalkRightFast 0x8
	EndMovement 0x0
@ 238

Movement_238: @ 238
	MoveLeftFast 0x1
	EndMovement 0x0
@ 240

Movement_240: @ 240
	MoveUpFast 0x1
	EndMovement 0x0
@ 248

@ end_0x248
