.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	LockAll
	CheckSpritePosition 0x8004, 0x8005
	ApplyMovement 0x3, Movement_234
	WaitMovement
	Message 0x0
	CloseMsgOnKeyPress
	If 0x8005, 0xc
	CompareLastResultCall EQUAL, Script_branch_1ad
	If 0x8005, 0xd
	CompareLastResultCall EQUAL, Script_branch_1c1
	LockCam 0x8004, 0x8005
	FadeScreen 0x6, 0x3, 0x0, 0x0
	ApplyMovement 0xf1, Movement_1f8
	WaitMovement
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Return2 0xf, 0x800c
	ClearFlag 0x253
	AddPeople 0x2
	ApplyMovement 0x2, Movement_1d8
	WaitMovement
	PlayFanfare 0x60f
	Return2 0x1e, 0x800c
	Message 0x1
	CloseMsgOnKeyPress
	PlayFanfare 0x60f
	Return2 0x1e, 0x800c
	Message 0x2
	CloseMsgOnKeyPress
	Return2 0x1e, 0x800c
	Message 0x3
	CloseMsgOnKeyPress
	PlayFanfare 0x60f
	Return2 0xf, 0x800c
	Message 0x4
	Message 0x5
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	ApplyMovement 0x2, Movement_1e8
	WaitMovement
	RemovePeople 0x2
	FadeScreen 0x6, 0x3, 0x0, 0x0
	ResetScreen
	ApplyMovement 0xf1, Movement_204
	WaitMovement
	ZoomCam
	RemovePeople 0x0
	RemovePeople 0x1
	RemovePeople 0x4
	RemovePeople 0x5
	RemovePeople 0x6
	RemovePeople 0x7
	RemovePeople 0x8
	RemovePeople 0x9
	RemovePeople 0xa
	RemovePeople 0xb
	RemovePeople 0xc
	RemovePeople 0xd
	RemovePeople 0xe
	RemovePeople 0xf
	RemovePeople 0x10
	RemovePeople 0x11
	RemovePeople 0x12
	RemovePeople 0x13
	RemovePeople 0x14
	RemovePeople 0x15
	RemovePeople 0x16
	RemovePeople 0x17
	RemovePeople 0x18
	RemovePeople 0x19
	RemovePeople 0x1a
	RemovePeople 0x1b
	RemovePeople 0x1c
	RemovePeople 0x1d
	RemovePeople 0x1e
	RemovePeople 0x1f
	RemovePeople 0x20
	RemovePeople 0x21
	RemovePeople 0x22
	RemovePeople 0x23
	ApplyMovement 0x3, Movement_248
	ApplyMovement 0xff, Movement_224
	WaitMovement
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Return2 0xf, 0x800c
	Message 0x6
	CloseMsgOnKeyPress
	ApplyMovement 0x3, Movement_250
	ApplyMovement 0xff, Movement_22c
	WaitMovement
	RemovePeople 0x3
	SetVar 0x408e, 0x1
	ReleaseAll
	End
@ 1ad

Script_branch_1ad: @ 1ad
	ApplyMovement 0x3, Movement_240
	ApplyMovement 0xff, Movement_210
	WaitMovement
	Return
@ 1c1

Script_branch_1c1: @ 1c1
	ApplyMovement 0x3, Movement_240
	ApplyMovement 0xff, Movement_21c
	WaitMovement
	Return
@ 1d5

.byte 0x0 @ 0x1d5
.byte 0x0 @ 0x1d6
.byte 0x0 @ 0x1d7

Movement_1d8: @ 1d8
	WalkDownFast 0x3
	WalkLeftFast 0x4
	WalkDownFast 0x1
	EndMovement 0x0
@ 1e8

Movement_1e8: @ 1e8
	WalkUpFast 0x1
	WalkRightFast 0x4
	WalkUpFast 0x3
	EndMovement 0x0
@ 1f8

Movement_1f8: @ 1f8
	WalkLeftFast 0x6
	WalkUpFast 0x6
	EndMovement 0x0
@ 204

Movement_204: @ 204
	WalkDownFast 0x6
	WalkRightFast 0x6
	EndMovement 0x0
@ 210

Movement_210: @ 210
	WalkDownFast 0x1
	WalkLeftFast 0x1
	EndMovement 0x0
@ 21c

Movement_21c: @ 21c
	WalkLeftFast 0x1
	EndMovement 0x0
@ 224

Movement_224: @ 224
	MoveUpFast 0x1
	EndMovement 0x0
@ 22c

Movement_22c: @ 22c
	MoveLeftFast 0x1
	EndMovement 0x0
@ 234

Movement_234: @ 234
	MoveRightVeryFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 240

Movement_240: @ 240
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 248

Movement_248: @ 248
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ 250

Movement_250: @ 250
	WalkLeftVeryFast 0x1
	MoveUpVeryFast 0x1
	Move_3f 0x1
	MoveDownVeryFast 0x1
	Move_3e 0x1
	MoveLeftVeryFast 0x1
	Move_3f 0x1
	WalkLeftVeryFast 0x9
	EndMovement 0x0
@ 274

@ end_0x274
