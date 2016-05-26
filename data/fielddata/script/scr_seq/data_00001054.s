.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	LockAll
	SetVariableRival 0x0
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_60
	WaitMovement
	CallStandard 0x7fa
	SetVarHero 0x0
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_6c
	ApplyMovement 0xff, Movement_80
	WaitMovement
	PlayFanfare 0x603
	RemovePeople 0x0
	CallStandard 0x7fb
	SetFlag 0xea
	SetVar 0x40a3, 0x1
	SetVar 0x4070, 0x2
	ReleaseAll
	End
@ 60

Movement_60: @ 60
	MoveLeftFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 6c

Movement_6c: @ 6c
	WalkLeftVeryFast 0x4
	WalkUpVeryFast  0x1
	WalkLeftVeryFast 0x3
	WaitDisappear 0x1
	EndMovement 0x0
@ 80

Movement_80: @ 80
	Move_3f 0x2
	WalkDownFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 90

Script_2: @ 90
	PlayFanfare 0x5dc
	LockAll
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a1

Script_3: @ a1
	PlayFanfare 0x5dc
	LockAll
	SetVarHero 0x0
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b5

.byte 0x0 @ 0xb5
.byte 0x0 @ 0xb6
.byte 0x0 @ 0xb7

@ end_0xb8
