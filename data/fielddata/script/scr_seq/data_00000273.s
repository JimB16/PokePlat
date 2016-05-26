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

Script_1: @ 1a
	SetFlag 0x9cb
	End
@ 20

Script_2: @ 20
	PlayFanfare 0x5dc
	LockAll
	Message2 0x9
	Return2 0x1e, 0x800c
	Message2 0xa
	PlayFanfare 0x5dd
	Return2 0x1e, 0x800c
	Message2 0xb
	PlayFanfare 0x5dd
	Return2 0x1e, 0x800c
	Message2 0xc
	PlayFanfare 0x5dd
	Return2 0x1e, 0x800c
	Message2 0xd
	PlayFanfare 0x643
	Return2 0x1e, 0x800c
	StopGreatMarsh 0x0
	SetVar 0x40f3, 0x1
	SetFlag 0x995
	PlaySound 0x42d
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7b

.byte 0x53 @ 0x7b
.byte 0x2 @ 0x7c
.byte 0x0 @ 0x7d
.byte 0x0 @ 0x7e
.byte 0x28 @ 0x7f
.byte 0x0 @ 0x80
.byte 0xf3 @ 0x81
.byte 0x40 @ 0x82
.byte 0x1 @ 0x83
.byte 0x0 @ 0x84
.byte 0x31 @ 0x85
.byte 0x0 @ 0x86
.byte 0x34 @ 0x87
.byte 0x0 @ 0x88
.byte 0x61 @ 0x89
.byte 0x0 @ 0x8a
.byte 0x2 @ 0x8b
.byte 0x0 @ 0x8c

Script_3: @ 8d
	PlayFanfare 0x5dc
	LockAll
	PlayFanfare 0x5f1
	SetVarHero 0x0
	Message 0x5
	PlaySound 0x3ea
	Soundfr 0x486
	Cmd_4f
	CloseMsgOnKeyPress
	ReleaseAll
	SetVar 0x40f3, 0x1
	Call Function_1c0
	End
@ b9

Script_4: @ b9
	PlayFanfare 0x5dc
	LockAll
	Message 0x8
	YesNoBox 0x800c
	CloseMsgOnKeyPress
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_d9
	ReleaseAll
	End
@ d9

Script_branch_d9: @ d9
	SetVar 0x40f3, 0x2
	ReleaseAll
	Call Function_1c0
	End
@ e9

Script_5: @ e9
	PlayFanfare 0x5dc
	LockAll
	Call Function_170
	CloseMsgOnKeyPress
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_114
	SetVar 0x40f3, 0x2
	ReleaseAll
	Call Function_1c0
	End
@ 114

Script_branch_114: @ 114
	ApplyMovement 0xff, Movement_124
	WaitMovement
	ReleaseAll
	End
@ 122

.byte 0x0 @ 0x122
.byte 0x0 @ 0x123

Movement_124: @ 124
	WalkUpFast 0x1
	EndMovement 0x0
@ 12c

Script_6: @ 12c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Call Function_170
	CloseMsgOnKeyPress
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_159
	SetVar 0x40f3, 0x2
	ReleaseAll
	Call Function_1c0
	End
@ 159

Script_branch_159: @ 159
	ApplyMovement 0x0, Movement_168
	WaitMovement
	ReleaseAll
	End
@ 167

.byte 0x0 @ 0x167

Movement_168: @ 168
	MoveLeftFast 0x1
	EndMovement 0x0
@ 170

Function_170: @ 170
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1b5
	CheckGender 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_1a5
	SetVarHero 0x0
	Message 0x2
	WaitButton
	SetVar 0x800c, 0x0
	Return
@ 1a5

Script_branch_1a5: @ 1a5
	SetVarHero 0x0
	Message 0x3
	WaitButton
	SetVar 0x800c, 0x0
	Return
@ 1b5

Script_branch_1b5: @ 1b5
	Message 0x1
	SetVar 0x800c, 0x1
	Return
@ 1c0

Function_1c0: @ 1c0
	StopGreatMarsh 0x1
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x189, 0x0, 0x7, 0x7, 0x1
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Return
@ 1ea

.byte 0x0 @ 0x1ea
.byte 0x0 @ 0x1eb

@ end_0x1ec
