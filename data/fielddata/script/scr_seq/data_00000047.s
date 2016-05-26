.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	SetFlag 0x241
	CheckFlag 0x158
	CompareLastResultJump 0x0, Script_branch_1f
	End
@ 1f

Script_branch_1f: @ 1f
	CheckFlag 0x964
	CompareLastResultJump 0x1, Script_branch_2c
	End
@ 2c

Script_branch_2c: @ 2c
	CheckNatPokedexStatus 0x2, 0x4000
	If 0x4000, 0x1
	CompareLastResultJump 0x1, Script_branch_40
	End
@ 40

Script_branch_40: @ 40
	CheckItem 0x1c6, 0x1, 0x4000
	If 0x4000, 0x1
	CompareLastResultJump 0x1, Script_branch_57
	End
@ 57

Script_branch_57: @ 57
	UnkFunct2 0x0, 0x4000
	If 0x4000, 0x1
	CompareLastResultJump 0x1, Script_branch_6b
	End
@ 6b

Script_branch_6b: @ 6b
	CheckFlag 0x12c
	CompareLastResultJump 0x1, Script_branch_78
	End
@ 78

Script_branch_78: @ 78
	If 0x40f8, 0x2
	CompareLastResultJump 0x4, Script_branch_91
	ClearFlag 0x241
	SetVar 0x40f8, 0x1
	End
@ 91

Script_branch_91: @ 91
	End
@ 93

Script_2: @ 93
	LockAll
	Return2 0x1e, 0x800c
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_148
	ApplyMovement 0xff, Movement_130
	WaitMovement
	Return2 0xf, 0x800c
	SetVarHero 0x0
	Message 0x1
	CloseMsgOnKeyPress
	PlayFanfare 0x636
	SetFlag 0x13c
	SetFlag 0x241
	SetVar 0x40f8, 0x2
	FadeScreen 0x6, 0x3, 0x0, 0x0
	ResetScreen
	FadeScreen 0x6, 0x3, 0x1, 0x0
	ResetScreen
	FadeScreen 0x6, 0x3, 0x0, 0x0
	ResetScreen
	FadeScreen 0x6, 0x3, 0x1, 0x0
	ResetScreen
	FadeScreen 0x6, 0x6, 0x0, 0x0
	ResetScreen
	Return2 0x78, 0x800c
	Warp 0x140, 0x0, 0x98, 0x115, 0x1
	FadeScreen 0x6, 0x6, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 130

Movement_130: @ 130
	WalkUpFast 0x1
	WalkRightFast 0x3
	WalkUpFast 0x1
	WalkRightFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 148

Movement_148: @ 148
	WalkRightFast 0x3
	WalkUpFast 0x2
	MoveDownFast 0x1
	Move_3f 0x2
	MoveRightFast 0x1
	EndMovement 0x0
@ 160

Script_3: @ 160
	LockAll
	Call Function_184
	DarkraiFunction 0x21, 0x3a, 0x2ca
	Soundfr 0x48e
	Cmd_4f
	SetVarHero 0x0
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 184

Function_184: @ 184
	CheckFlag 0x158
	CompareLastResultJump 0x1, Script_branch_197
	SetVar 0x40f8, 0x0
	Return
@ 197

Script_branch_197: @ 197
	SetVar 0x40f8, 0x3
	Return
@ 19f

.byte 0x0 @ 0x19f

@ end_0x1a0
