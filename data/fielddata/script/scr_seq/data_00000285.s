.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	.hword 0xfd13
@ 1a

Script_6: @ 1a
	If 0x4094, 0x2
	CompareLastResultJump 0x0, Script_branch_29
	End
@ 29

Script_branch_29: @ 29
	SetVar 0x4094, 0x0
	End
@ 31

Script_1: @ 31
	LockAll
	RideBike 0x0
	CheckFlag 0xdd
	CompareLastResultCall 0x0, Script_branch_7d
	CheckFlag 0xdd
	CompareLastResultCall 0x1, Script_branch_b7
	SetVarHero 0x0
	Soundfr 0x481
	Message 0x1
	Cmd_4f
	SetFlag 0xdd
	SetVar 0x4094, 0x1
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	SetVar 0x403f, 0x263
	StartFollow
	FollowHero 0xe, 0x30
	ReleaseAll
	End
@ 7b

.byte 0x1b @ 0x7b
.byte 0x0 @ 0x7c

Script_branch_7d: @ 7d
	ChangeOwPosition 0xe, 0x2a, 0x4e
	ReleaseOw 0xe, 0x0
	ChangeOwMovement 0xe, 0xe
	ClearFlag 0x1da
	AddPeople 0xe
	ApplyMovement 0xe, Movement_dc
	WaitMovement
	ApplyMovement 0xff, Movement_ec
	WaitMovement
	SetVarHero 0x0
	Message 0x0
	CloseMsgOnKeyPress
	Return
@ b7

Script_branch_b7: @ b7
	ChangeOwPosition 0xe, 0x2a, 0x44
	ReleaseOw 0xe, 0x0
	ChangeOwMovement 0xe, 0xe
	ApplyMovement 0xe, Movement_144
	WaitMovement
	Message 0x3
	Return
@ da

.byte 0x0 @ 0xda
.byte 0x0 @ 0xdb

Movement_dc: @ dc
	WalkUpFast 0x8
	EndMovement 0x0
@ e4

.byte 0xc @ 0xe4
.byte 0x0 @ 0xe5
.byte 0x1 @ 0xe6
.byte 0x0 @ 0xe7
.byte 0xfe @ 0xe8
.byte 0x0 @ 0xe9
.byte 0x0 @ 0xea
.byte 0x0 @ 0xeb

Movement_ec: @ ec
	MoveDownFast 0x1
	EndMovement 0x0
@ f4

.byte 0xc @ 0xf4
.byte 0x0 @ 0xf5
.byte 0x1 @ 0xf6
.byte 0x0 @ 0xf7
.byte 0xfe @ 0xf8
.byte 0x0 @ 0xf9
.byte 0x0 @ 0xfa
.byte 0x0 @ 0xfb

Script_2: @ fc
	LockAll
	ApplyMovement 0xe, Movement_14c
	ApplyMovement 0xff, Movement_134
	WaitMovement
	Message 0x4
	CloseMsgOnKeyPress
	SetVar 0x4094, 0x0
	StopFollow
	FollowHero 0xe, 0xf
	ApplyMovement 0xe, Movement_13c
	WaitMovement
	ReleaseAll
	End
@ 131

.byte 0x0 @ 0x131
.byte 0x0 @ 0x132
.byte 0x0 @ 0x133

Movement_134: @ 134
	MoveUpFast 0x1
	EndMovement 0x0
@ 13c

Movement_13c: @ 13c
	WalkUpFast 0x1
	EndMovement 0x0
@ 144

Movement_144: @ 144
	MoveDownFast 0x1
	EndMovement 0x0
@ 14c

Movement_14c: @ 14c
	MoveDownFast 0x1
	EndMovement 0x0
@ 154

Script_3: @ 154
	LockAll
	StopFollow
	FollowHero 0xe, 0xf
	CheckFacePosition 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_177
	Jump Script_branch_191
@ 175

.byte 0x2 @ 0x175
.byte 0x0 @ 0x176

Script_branch_177: @ 177
	ApplyMovement 0xe, Movement_1f0
	ApplyMovement 0xff, Movement_1e4
	WaitMovement
	Jump Script_branch_1ab
@ 18f

.byte 0x2 @ 0x18f
.byte 0x0 @ 0x190

Script_branch_191: @ 191
	ApplyMovement 0xe, Movement_1fc
	ApplyMovement 0xff, Movement_1e4
	WaitMovement
	Jump Script_branch_1ab
@ 1a9

.byte 0x2 @ 0x1a9
.byte 0x0 @ 0x1aa

Script_branch_1ab: @ 1ab
	ApplyMovement 0xe, Movement_204
	WaitMovement
	SetVarHero 0x0
	Message 0x5
	CloseMsgOnKeyPress
	ApplyMovement 0xe, Movement_214
	WaitMovement
	WaitFanfare 0x5dc
	PlayFanfare 0x603
	RemovePeople 0xe
	WaitFanfare 0x603
	SetVar 0x4094, 0x2
	ReleaseAll
	End
@ 1e1

.byte 0x0 @ 0x1e1
.byte 0x0 @ 0x1e2
.byte 0x0 @ 0x1e3

Movement_1e4: @ 1e4
	WalkLeftFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 1f0

Movement_1f0: @ 1f0
	WalkUpFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 1fc

Movement_1fc: @ 1fc
	WalkLeftFast 0x1
	EndMovement 0x0
@ 204

Movement_204: @ 204
	MoveUpFast 0x1
	Move_3f 0x2
	MoveLeftFast 0x1
	EndMovement 0x0
@ 214

Movement_214: @ 214
	WalkUpFast 0x1
	EndMovement 0x0
@ 21c

Script_4: @ 21c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 22f

Script_5: @ 22f
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 242

.byte 0x0 @ 0x242
.byte 0x0 @ 0x243

@ end_0x244
