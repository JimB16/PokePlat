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
	script Script_9
	script Script_10
	script Script_11
	script Script_12
	.hword 0xfd13
@ 32

Script_12: @ 32
	SetFlag 0x9e5
	End
@ 38

Script_1: @ 38
	LockAll
	SetVar 0x4113, 0x1
	SetFlag 0x290
	SetFlag 0x291
	Call Function_2c1
	Message 0x0
	CloseMsgOnKeyPress
	Call Function_2f5
	Message 0x1
	SetVarHero 0x0
	Soundfr 0x486
	Message 0x2
	Cmd_4f
	Message 0x3
	Call Function_95
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7c

Script_2: @ 7c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4
	Call Function_95
	Jump Script_branch_103
	End
@ 95

Function_95: @ 95
Script_branch_95: @ 95
	Multi2 0x1f, 0x5, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0xb, 0x0
	Cmd_42 0x10, 0x1
	Cmd_42 0xc, 0x2
	Cmd_42 0xd, 0x3
	Cmd_42 0xe, 0x4
	Cmd_42 0xf, 0x5
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_10e
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_146
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_11c
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_12a
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_138
	Return
@ 103

Script_branch_103: @ 103
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 10e

Script_branch_10e: @ 10e
	Message 0x5
	Message 0x4
	Jump Function_95
	End
@ 11c

Script_branch_11c: @ 11c
	Message 0x7
	Message 0x4
	Jump Function_95
	End
@ 12a

Script_branch_12a: @ 12a
	Message 0x8
	Message 0x4
	Jump Function_95
	End
@ 138

Script_branch_138: @ 138
	Message 0x9
	Message 0x4
	Jump Function_95
	End
@ 146

Script_branch_146: @ 146
	Message 0x6
	Message 0x4
	Jump Function_95
	End
@ 154

Script_3: @ 154
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x11
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_17f
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_18a
	End
@ 17f

Script_branch_17f: @ 17f
	Message 0x12
	Jump Script_branch_18a
	End
@ 18a

Script_branch_18a: @ 18a
	Message 0x13
	Jump Script_branch_195
	End
@ 195

Script_branch_195: @ 195
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 19d

Script_4: @ 19d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x14
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1c8
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1d3
	End
@ 1c8

Script_branch_1c8: @ 1c8
	Message 0x15
	Jump Script_branch_1d3
	End
@ 1d3

Script_branch_1d3: @ 1d3
	Message 0x16
	Jump Script_branch_1de
	End
@ 1de

Script_branch_1de: @ 1de
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1e6

Script_5: @ 1e6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x17
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_211
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_21c
	End
@ 211

Script_branch_211: @ 211
	Message 0x18
	Jump Script_branch_21c
	End
@ 21c

Script_branch_21c: @ 21c
	Message 0x19
	Jump Script_branch_227
	End
@ 227

Script_branch_227: @ 227
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 22f

Script_6: @ 22f
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1a
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_25a
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_265
	End
@ 25a

Script_branch_25a: @ 25a
	Message 0x1b
	Jump Script_branch_265
	End
@ 265

Script_branch_265: @ 265
	Message 0x1c
	Jump Script_branch_270
	End
@ 270

Script_branch_270: @ 270
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 278

Script_7: @ 278
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1d
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2a3
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_2ae
	End
@ 2a3

Script_branch_2a3: @ 2a3
	Message 0x1e
	Jump Script_branch_2ae
	End
@ 2ae

Script_branch_2ae: @ 2ae
	Message 0x1f
	Jump Script_branch_2b9
	End
@ 2b9

Script_branch_2b9: @ 2b9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2c1

Function_2c1: @ 2c1
	ApplyMovement 0x3, Movement_334
	ApplyMovement 0x4, Movement_334
	ApplyMovement 0x5, Movement_334
	ApplyMovement 0x6, Movement_334
	ApplyMovement 0x7, Movement_334
	ApplyMovement 0x8, Movement_334
	WaitMovement
	Return
@ 2f5

Function_2f5: @ 2f5
	ApplyMovement 0x3, Movement_33c
	ApplyMovement 0x4, Movement_33c
	ApplyMovement 0x5, Movement_33c
	ApplyMovement 0x6, Movement_344
	ApplyMovement 0x7, Movement_344
	ApplyMovement 0x8, Movement_344
	ApplyMovement 0xff, Movement_34c
	WaitMovement
	Return
@ 331

.byte 0x0 @ 0x331
.byte 0x0 @ 0x332
.byte 0x0 @ 0x333

Movement_334: @ 334
	SeeDown 0x1
	EndMovement 0x0
@ 33c

Movement_33c: @ 33c
	SeeRight 0x1
	EndMovement 0x0
@ 344

Movement_344: @ 344
	SeeLeft 0x1
	EndMovement 0x0
@ 34c

Movement_34c: @ 34c
	WalkUpFast 0x3
	MoveLeftFast 0x1
	EndMovement 0x0
@ 358

Script_8: @ 358
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x20
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 36b

Script_9: @ 36b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x21
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 37e

Script_10: @ 37e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x22
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 391

Script_11: @ 391
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x23
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3a4

@ end_0x3a4
