.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	If 0x4106, 0x0
	CompareLastResultJump 0x1, Script_branch_37
	If 0x4106, 0x3
	CompareLastResultCall 0x1, Script_branch_73
	If 0x4106, 0x1
	CompareLastResultCall 0x4, Script_branch_7b
Script_branch_35: @ 35
	End
@ 37

Script_branch_37: @ 37
	CheckFlag 0x12c
	CompareLastResultJump 0x1, Script_branch_35
	Cmd_166 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_35
	CheckNatPokedexStatus 0x2, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_35
	SetVar 0x4106, 0x1
	Call Script_branch_7b
	End
@ 73

Script_branch_73: @ 73
	SetVar 0x4106, 0x0
	Return
@ 7b

Function_7b: @ 7b
Script_branch_7b: @ 7b
	ChangeOwPosition 0x0, 0x8, 0x6
	ReleaseOw 0x0, 0x1
	ChangeOwMovement 0x0, 0x0
	ChangeOwPosition 0x1, 0x9, 0x6
	ReleaseOw 0x1, 0x2
	Return
@ 9f

.byte 0x1e @ 0x9f
.byte 0x0 @ 0xa0
.byte 0x5b @ 0xa1
.byte 0x2 @ 0xa2
.byte 0x1b @ 0xa3
.byte 0x0 @ 0xa4

Script_3: @ a5
	CopyVar 0x8008, 0x4106
	If 0x8008, 0x1
	CompareLastResultJump 0x1, Script_branch_e5
	If 0x8008, 0x2
	CompareLastResultJump 0x1, Script_branch_e5
	If 0x8008, 0x3
	CompareLastResultJump 0x1, Script_branch_f8
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e5

Script_branch_e5: @ e5
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ f8

Script_branch_f8: @ f8
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 10b

Script_2: @ 10b
	If 0x4106, 0x1
	CompareLastResultJump 0x1, Script_branch_158
	If 0x4106, 0x2
	CompareLastResultJump 0x1, Script_branch_158
	If 0x4106, 0x3
	CompareLastResultJump 0x1, Script_branch_145
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 145

Script_branch_145: @ 145
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 158

Script_branch_158: @ 158
	CheckFlag 0x133
	CompareLastResultJump 0x0, Script_branch_1ea
	CheckFlag 0x11f
	CompareLastResultJump 0x0, Script_branch_1d9
	CheckItem 0x1c5, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1d9
	PlayFanfare 0x5dc
	LockAll
	SetFlag 0x12c
	SetVar 0x4106, 0x3
	GiveItem 0x1c5, 0x1, 0x800c
	SetVarHero 0x0
	Message 0x2
	Message 0x3
	Soundfr 0x48e
	Cmd_4f
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	Call Function_1fc
	Message 0x5
	Call Function_256
	Message 0x6
	Call Function_262
	Message 0x7
	CloseMsgOnKeyPress
	Call Function_26e
	ReleaseAll
	End
@ 1d9

Script_branch_1d9: @ 1d9
	PlayFanfare 0x5dc
	LockAll
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1ea

Script_branch_1ea: @ 1ea
	SetFlag 0x133
	SetVar 0x4106, 0x2
	Jump Script_branch_1d9
@ 1fa

.byte 0x2 @ 0x1fa
.byte 0x0 @ 0x1fb

Function_1fc: @ 1fc
	PlayFanfare 0x603
	WaitFanfare 0x603
	ClearFlag 0x25b
	AddPeople 0x2
	Return2 0x5, 0x800c
	ApplyMovement 0x1, Movement_294
	ApplyMovement 0x0, Movement_294
	ApplyMovement 0xff, Movement_294
	WaitMovement
	ApplyMovement 0x2, Movement_2b4
	WaitMovement
	ApplyMovement 0xff, Movement_2c0
	WaitMovement
	ApplyMovement 0x2, Movement_2d4
	WaitMovement
	ApplyMovement 0xff, Movement_29c
	WaitMovement
	Return
@ 256

Function_256: @ 256
	ApplyMovement 0x2, Movement_2a4
	WaitMovement
	Return
@ 262

Function_262: @ 262
	ApplyMovement 0x2, Movement_2ac
	WaitMovement
	Return
@ 26e

Function_26e: @ 26e
	ApplyMovement 0xff, Movement_294
	ApplyMovement 0x2, Movement_2dc
	WaitMovement
	SetFlag 0x25b
	RemovePeople 0x2
	PlayFanfare 0x603
	WaitFanfare 0x603
	Return
@ 292

.byte 0x0 @ 0x292
.byte 0x0 @ 0x293

Movement_294: @ 294
	SeeLeft 0x1
	EndMovement 0x0
@ 29c

Movement_29c: @ 29c
	SeeUp 0x1
	EndMovement 0x0
@ 2a4

Movement_2a4: @ 2a4
	SeeDown 0x1
	EndMovement 0x0
@ 2ac

Movement_2ac: @ 2ac
	SeeRight 0x1
	EndMovement 0x0
@ 2b4

Movement_2b4: @ 2b4
	WalkUpFast 0x2
	WalkRightFast 0x2
	EndMovement 0x0
@ 2c0

Movement_2c0: @ 2c0
	SeeUp 0x1
	Move_47 0x1
	WalkDownFast 0x1
	Move_48 0x1
	EndMovement 0x0
@ 2d4

Movement_2d4: @ 2d4
	WalkRightFast 0x1
	EndMovement 0x0
@ 2dc

Movement_2dc: @ 2dc
	WalkLeftFast 0x3
	WalkDownFast 0x2
	EndMovement 0x0
@ 2e8

@ end_0x2e8
