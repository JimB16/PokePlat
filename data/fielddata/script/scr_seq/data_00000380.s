.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	.hword 0xfd13
@ 16

Script_1: @ 16
	Cmd_2f2
	End
@ 1a

Script_2: @ 1a
	PlayFanfare 0x5dc
	LockAll
	Message 0x7
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_3a
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3a

Script_branch_3a: @ 3a
	SetVarHero 0x0
	Message 0x8
	CloseMsgOnKeyPress
	PlayFanfare 0x5d2
	Cmd_328 0x0
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0xdd, 0x0, 0x1f, 0x21, 0x1
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 70

Script_3: @ 70
	LockAll
	ApplyMovement 0xff, Movement_140
	WaitMovement
	ApplyMovement 0xff, Movement_14c
	WaitMovement
	Cmd_311 0x80
	ApplyMovement 0x80, Movement_17c
	WaitMovement
	Message 0x0
	FreezeMessageBox
	ApplyMovement 0x80, Movement_198
	WaitMovement
	Message 0x1
	FreezeMessageBox
	ApplyMovement 0x80, Movement_1a4
	WaitMovement
	Message 0x2
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_154
	ApplyMovement 0x80, Movement_1ac
	WaitMovement
	Cmd_321 0x0
	ApplyMovement 0xff, Movement_160
	ApplyMovement 0x80, Movement_1b4
	WaitMovement
	Return2 0x1e, 0x800c
	Cmd_322
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_174
	ApplyMovement 0x80, Movement_1c4
	WaitMovement
	Message 0x4
	CloseMsgOnKeyPress
	ApplyMovement 0x80, Movement_1cc
	WaitMovement
	Cmd_312 0x80
	SetVar 0x4055, 0x1
	ReleaseAll
	End
@ 11d

Script_4: @ 11d
	LockAll
	Message 0x5
	Cmd_32
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 12a

Script_5: @ 12a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 13d

.byte 0x0 @ 0x13d
.byte 0x0 @ 0x13e
.byte 0x0 @ 0x13f

Movement_140: @ 140
	WalkLeftFast 0x1
	Move_3f 0x1
	EndMovement 0x0
@ 14c

Movement_14c: @ 14c
	MoveRightFast 0x1
	EndMovement 0x0
@ 154

Movement_154: @ 154
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 160

Movement_160: @ 160
	Move_3e 0x1
	SeeLeft 0x1
	Exclamation 0x1
	SeeRight 0x1
	EndMovement 0x0
@ 174

Movement_174: @ 174
	MoveDownFast 0x1
	EndMovement 0x0
@ 17c

Movement_17c: @ 17c
	MoveDownFast 0x1
	Move_41 0x2
	MoveRightFast 0x1
	Move_3f 0x1
	MoveUpFast 0x1
	Move_3f 0x1
	EndMovement 0x0
@ 198

Movement_198: @ 198
	MoveDownFast 0x1
	Move_3f 0x1
	EndMovement 0x0
@ 1a4

Movement_1a4: @ 1a4
	MoveLeftFast 0x1
	EndMovement 0x0
@ 1ac

Movement_1ac: @ 1ac
	WalkDownFast 0x2
	EndMovement 0x0
@ 1b4

Movement_1b4: @ 1b4
	SeeLeft 0x1
	Exclamation 0x1
	SeeRight 0x1
	EndMovement 0x0
@ 1c4

Movement_1c4: @ 1c4
	MoveUpFast 0x1
	EndMovement 0x0
@ 1cc

Movement_1cc: @ 1cc
	WalkLeftFast 0x3
	WalkDownFast 0x3
	WalkLeftFast 0x2
	WalkDownFast 0x1
	WalkLeftFast 0x6
	EndMovement 0x0
@ 1e4

@ end_0x1e4
