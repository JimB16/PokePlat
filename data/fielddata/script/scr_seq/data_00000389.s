.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	script Script_8
	.hword 0xfd13
@ 22

Script_1: @ 22
	Cmd_2f2
	End
@ 26

Script_2: @ 26
	CheckFlag 0x8e
	CompareLastResultJump EQUAL, Script_branch_33
	End
@ 33

Script_branch_33: @ 33
	Cmd_31f
	SetVar 0x4055, 0xe
	RemovePeople 0x80
	End
@ 41

Script_3: @ 41
	PlayFanfare 0x5dc
	LockAll
	Message 0xd
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_61
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 61

Script_branch_61: @ 61
	SetVarHero 0x0
	Message 0xe
	CloseMsgOnKeyPress
	ShayminAnm 0x2, 0x1
	SetVar 0x40aa, 0x1
	PlayFanfare 0x5d2
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x10b, 0x0, 0x20, 0x11, 0x1
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 9e

Script_4: @ 9e
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x245, 0x0, 0x59, 0x39, 0x1
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ c4

Script_5: @ c4
	PlayFanfare 0x5dc
	LockAll
	PlayCry 0x1e7, 0x0
	Message 0x2
	WaitCry
	CloseMsgOnKeyPress
	SetFlag 0x8e
	Cmd_319 0x1e7, 0x2f
	ClearFlag 0x8e
	CheckTrainerLost 0x800c
	Cmd_314 0x800c
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_204
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_204
	If 0x800c, 0x5
	CompareLastResultJump EQUAL, Script_branch_14e
	If 0x800c, 0x6
	CompareLastResultJump EQUAL, Script_branch_14e
	If 0x800c, 0x4
	CompareLastResultJump EQUAL, Script_branch_16e
	Cmd_311 0x82
	Cmd_311 0x81
	ApplyMovement 0x81, Movement_250
	WaitMovement
	Message 0x3
	CloseMsgOnKeyPress
	Message 0x4
	Jump Script_branch_194
Script_branch_14e: @ 14e
	Cmd_311 0x82
	Cmd_311 0x81
	ApplyMovement 0x81, Movement_250
	WaitMovement
	Message 0x3
	CloseMsgOnKeyPress
	Message 0x6
	Jump Script_branch_194
Script_branch_16e: @ 16e
	SetFlag 0x121
	SetFlag 0x250
	ClearFlag 0x278
	Cmd_311 0x82
	Cmd_311 0x81
	ApplyMovement 0x81, Movement_250
	WaitMovement
	Message 0x3
	CloseMsgOnKeyPress
	Message 0x5
Script_branch_194: @ 194
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	LockCam 0x8004, 0x8005
	ApplyMovement 0xf1, Movement_280
	ApplyMovement 0x82, Movement_26c
	ApplyMovement 0x81, Movement_258
	ApplyMovement 0xff, Movement_244
	WaitMovement
	Message 0x7
	Message 0x8
	Message 0x9
	Message 0xa
	CloseMsgOnKeyPress
	ApplyMovement 0x82, Movement_274
	WaitMovement
	Cmd_312 0x82
	ApplyMovement 0xf1, Movement_288
	WaitMovement
	ZoomCam
	Message 0xb
	ApplyMovement 0x81, Movement_264
	WaitMovement
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 204

Script_branch_204: @ 204
	LostGoPc
	ReleaseAll
	End
@ 20a

Script_6: @ 20a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 21d

Script_7: @ 21d
	LockAll
	PlayCry 0x1e7, 0x0
	Message 0x0
	WaitCry
	Cmd_32
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 232

Script_8: @ 232
	LockAll
	SetVarHero 0x0
	Message 0x1
	Cmd_32
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 242

.byte 0x0 @ 0x242
.byte 0x0 @ 0x243

Movement_244: @ 244
	MoveDownFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 250

Movement_250: @ 250
	Move_75 0x2
	EndMovement 0x0
@ 258

Movement_258: @ 258
	MoveDownFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 264

Movement_264: @ 264
	MoveUpFast 0x1
	EndMovement 0x0
@ 26c

Movement_26c: @ 26c
	Move_75 0x1
	EndMovement 0x0
@ 274

Movement_274: @ 274
	Move_76 0x1
	WalkDownFast 0x5
	EndMovement 0x0
@ 280

Movement_280: @ 280
	WalkDownFast 0x5
	EndMovement 0x0
@ 288

Movement_288: @ 288
	WalkUpFast 0x5
	EndMovement 0x0
@ 290

@ end_0x290
