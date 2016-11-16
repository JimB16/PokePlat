.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	.hword 0xfd13
@ 1e

Script_1: @ 1e
	CheckFlag 0xba
	CompareLastResultCall EQUAL, Script_branch_9d
	CheckFlag 0xba
	CompareLastResultCall LESSER, Script_branch_87
	If 0x4097, 0x0
	CompareLastResultCall EQUAL, Script_branch_71
	CheckGender 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_61
	If 0x4000, 0x1
	CompareLastResultJump EQUAL, Script_branch_69
	End
@ 61

Script_branch_61: @ 61
	SetVar 0x4020, 0x61
	End
@ 69

Script_branch_69: @ 69
	SetVar 0x4020, 0x0
	End
@ 71

Script_branch_71: @ 71
	ChangeOwPosition 0x5, 0x2e, 0x32
	ChangeOwMovement 0x5, 0xe
	ReleaseOw 0x5, 0x0
	Return
@ 87

Script_branch_87: @ 87
	ChangeOwPosition 0x5, 0x2e, 0x33
	ChangeOwMovement 0x5, 0xf
	ReleaseOw 0x5, 0x1
	Return
@ 9d

Script_branch_9d: @ 9d
	ChangeOwPosition 0x5, 0x32, 0x25
	ChangeOwMovement 0x5, 0x10
	ReleaseOw 0x5, 0x2
	ChangeOwPosition 0x6, 0x32, 0x27
	ChangeOwMovement 0x6, 0x10
	ReleaseOw 0x6, 0x2
	Return
@ c7

Script_2: @ c7
	End
@ c9

.byte 0x2 @ 0xc9
.byte 0x0 @ 0xca

Script_3: @ cb
	PlayFanfare 0x5dc
	LockAll
	CheckFlag 0xba
	CompareLastResultJump EQUAL, Script_branch_128
	ApplyMovement 0x5, Movement_1c8
	WaitMovement
	Message 0x2
	FacePlayer
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_104
	Jump Script_branch_112
@ 102

.byte 0x2 @ 0x102
.byte 0x0 @ 0x103

Script_branch_104: @ 104
	SetVarHero 0x0
	Message 0x3
	Jump Script_branch_120
@ 110

.byte 0x2 @ 0x110
.byte 0x0 @ 0x111

Script_branch_112: @ 112
	SetVarHero 0x0
	Message 0x5
	Jump Script_branch_120
@ 11e

.byte 0x2 @ 0x11e
.byte 0x0 @ 0x11f

Script_branch_120: @ 120
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 128

Script_branch_128: @ 128
	FacePlayer
	SetVarHero 0x0
	SetVariableRival 0x1
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 13b

Script_4: @ 13b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xba
	CompareLastResultJump EQUAL, Script_branch_18b
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_167
	Jump Script_branch_175
@ 165

.byte 0x2 @ 0x165
.byte 0x0 @ 0x166

Script_branch_167: @ 167
	SetVarHero 0x0
	Message 0x7
	Jump Script_branch_183
@ 173

.byte 0x2 @ 0x173
.byte 0x0 @ 0x174

Script_branch_175: @ 175
	SetVarHero 0x0
	Message 0x8
	Jump Script_branch_183
@ 181

.byte 0x2 @ 0x181
.byte 0x0 @ 0x182

Script_branch_183: @ 183
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 18b

Script_branch_18b: @ 18b
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1a4
	Jump Script_branch_1b2
@ 1a2

.byte 0x2 @ 0x1a2
.byte 0x0 @ 0x1a3

Script_branch_1a4: @ 1a4
	SetVarHero 0x0
	Message 0xf
	Jump Script_branch_1c0
@ 1b0

.byte 0x2 @ 0x1b0
.byte 0x0 @ 0x1b1

Script_branch_1b2: @ 1b2
	SetVarHero 0x0
	Message 0x10
	Jump Script_branch_1c0
@ 1be

.byte 0x2 @ 0x1be
.byte 0x0 @ 0x1bf

Script_branch_1c0: @ 1c0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1c8

Movement_1c8: @ 1c8
	MoveRightFast 0x1
	EndMovement 0x0
@ 1d0

Script_5: @ 1d0
	LockAll
	ApplyMovement 0x5, Movement_220
	WaitMovement
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1f5
	Jump Script_branch_203
@ 1f3

.byte 0x2 @ 0x1f3
.byte 0x0 @ 0x1f4

Script_branch_1f5: @ 1f5
	SetVarHero 0x0
	Message 0x0
	Jump Script_branch_211
@ 201

.byte 0x2 @ 0x201
.byte 0x0 @ 0x202

Script_branch_203: @ 203
	SetVarHero 0x0
	Message 0x1
	Jump Script_branch_211
@ 20f

.byte 0x2 @ 0x20f
.byte 0x0 @ 0x210

Script_branch_211: @ 211
	SetVar 0x4097, 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 21f

.byte 0x0 @ 0x21f

Movement_220: @ 220
	MoveDownFast 0x1
	Exclamation 0x1
	WalkDownFast 0x1
	EndMovement 0x0
@ 230

Script_6: @ 230
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	ApplyMovement 0x6, Movement_2f4
	WaitMovement
	Message 0x9
	CloseMsgOnKeyPress
	TrainerBattle 0x195, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2db
	Message 0xa
	Message 0xb
	Message 0xc
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	RemovePeople 0x7
	RemovePeople 0x8
	RemovePeople 0x0
	RemovePeople 0x1
	RemovePeople 0x2
	RemovePeople 0x3
	SetFlag 0x98e
	ApplyMovement 0x6, Movement_2fc
	ApplyMovement 0xff, Movement_304
	WaitMovement
	SetOwPosition 0x5, 0x35, 0x1, 0x27, 0x3
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	SetFlag 0x29a
	SetFlag 0xba
	ClearFlag 0x1ba
	SetVar 0x40d3, 0x1
	SetVariableRival 0x0
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2db

Script_branch_2db: @ 2db
	LostGoPc
	ReleaseAll
	End
@ 2e1

.byte 0x0 @ 0x2e1
.byte 0x0 @ 0x2e2
.byte 0x0 @ 0x2e3
.byte 0x20 @ 0x2e4
.byte 0x0 @ 0x2e5
.byte 0x1 @ 0x2e6
.byte 0x0 @ 0x2e7
.byte 0xfe @ 0x2e8
.byte 0x0 @ 0x2e9
.byte 0x0 @ 0x2ea
.byte 0x0 @ 0x2eb
.byte 0xc @ 0x2ec
.byte 0x0 @ 0x2ed
.byte 0x3 @ 0x2ee
.byte 0x0 @ 0x2ef
.byte 0xfe @ 0x2f0
.byte 0x0 @ 0x2f1
.byte 0x0 @ 0x2f2
.byte 0x0 @ 0x2f3

Movement_2f4: @ 2f4
	MoveRightFast 0x1
	EndMovement 0x0
@ 2fc

Movement_2fc: @ 2fc
	MoveDownFast 0x1
	EndMovement 0x0
@ 304

Movement_304: @ 304
	MoveLeftFast 0x1
	EndMovement 0x0
@ 30c

Script_7: @ 30c
	PlayFanfare 0x5dc
	LockAll
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 31d

.byte 0x0 @ 0x31d
.byte 0x0 @ 0x31e
.byte 0x0 @ 0x31f

@ end_0x320
