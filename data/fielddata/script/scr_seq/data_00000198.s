.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	LockAll
	ApplyMovement 0xff, Movement_124
	WaitMovement
	ApplyMovement 0x1, Movement_134
	WaitMovement
	CheckFirstTimeChampion 0x800c
	If 0x800c, 0x0
	CompareLastResultCall EQUAL, Script_branch_111
	If 0x800c, 0x0
	CompareLastResultCall 0x5, Script_branch_119
	CloseMsgOnKeyPress
	ApplyMovement 0x1, Movement_144
	ApplyMovement 0x0, Movement_15c
	WaitMovement
	Return2 0xf, 0x800c
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_74
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_80
	End
@ 74

Script_branch_74: @ 74
	SetVarHero 0x0
	Message 0x4
	Jump Script_branch_8c
@ 80

Script_branch_80: @ 80
	SetVarHero 0x0
	Message 0x5
	Jump Script_branch_8c
@ 8c

Script_branch_8c: @ 8c
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_12c
	ApplyMovement 0x1, Movement_14c
	ApplyMovement 0x0, Movement_164
	WaitMovement
	Message 0x6
	CloseMsgOnKeyPress
	SetFlag 0x982
	CheckNatPokedexStatus 0x2, 0x800c
	If 0x800c, 0x1
	CompareLastResultCall EQUAL, Script_branch_10a
	If 0x40f4, 0x0
	CompareLastResultCall EQUAL, Script_branch_102
	CheckPartyNumber 0x800c
	CheckElevLgAnm 0x800c
	FadeScreen 0x6, 0x3, 0x0, 0x0
	ResetScreen
	MainEvent 0x18
	Call Function_174
	EndGame
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 102

Script_branch_102: @ 102
	SetVar 0x40f4, 0x1
	Return
@ 10a

Script_branch_10a: @ 10a
	ShayminAnm 0x2, 0x1
	Return
@ 111

Script_branch_111: @ 111
	Message 0x0
	Message 0x2
	Return
@ 119

Script_branch_119: @ 119
	Message 0x1
	Message 0x3
	Return
@ 121

.byte 0x0 @ 0x121
.byte 0x0 @ 0x122
.byte 0x0 @ 0x123

Movement_124: @ 124
	WalkUpFast 0x8
	EndMovement 0x0
@ 12c

Movement_12c: @ 12c
	WalkUpFast 0x2
	EndMovement 0x0
@ 134

Movement_134: @ 134
	MoveUpFast 0x1
	Move_3f 0x2
	MoveRightFast 0x1
	EndMovement 0x0
@ 144

Movement_144: @ 144
	MoveDownFast 0x1
	EndMovement 0x0
@ 14c

Movement_14c: @ 14c
	Move_3f 0x1
	MoveRightFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 15c

Movement_15c: @ 15c
	MoveDownFast 0x1
	EndMovement 0x0
@ 164

Movement_164: @ 164
	Move_3f 0x1
	MoveLeftFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 174

Function_174: @ 174
	ClearFlag 0x1d1
	ClearFlag 0x98b
	CheckFlag 0xd0
	CompareLastResultCall LESSER, Script_branch_23c
	CheckFlag 0xd1
	CompareLastResultCall LESSER, Script_branch_244
	CheckFlag 0x120
	CompareLastResultCall LESSER, Script_branch_24c
	CheckFlag 0x11b
	CompareLastResultCall LESSER, Script_branch_263
	CheckFlag 0x126
	CompareLastResultCall LESSER, Script_branch_27b
	CheckFlag 0x127
	CompareLastResultCall LESSER, Script_branch_281
	CheckFlag 0x121
	CompareLastResultCall LESSER, Script_branch_287
	If 0x4059, 0x2
	CompareLastResultCall EQUAL, Script_branch_28d
	If 0x4058, 0x2
	CompareLastResultCall EQUAL, Script_branch_299
	If 0x405e, 0x2
	CompareLastResultCall EQUAL, Script_branch_2a5
	If 0x405f, 0x2
	CompareLastResultCall EQUAL, Script_branch_2ad
	If 0x4060, 0x2
	CompareLastResultCall EQUAL, Script_branch_2b5
	If 0x410f, 0x0
	CompareLastResultCall EQUAL, Script_branch_234
	ClearFlag 0x177
	CheckFlag 0xb9
	CompareLastResultCall LESSER, Script_branch_2bd
	ClearFlag 0x186
	ClearFlag 0x124
	SetFlag 0x2a0
	Return
@ 234

Script_branch_234: @ 234
	SetVar 0x410f, 0x1
	Return
@ 23c

Script_branch_23c: @ 23c
	SetVar 0x40c4, 0x0
	Return
@ 244

Script_branch_244: @ 244
	SetVar 0x40c5, 0x0
	Return
@ 24c

Script_branch_24c: @ 24c
	CheckFlag 0x125
	CompareLastResultJump LESSER, Script_branch_261
	ClearFlag 0x1dd
	SetVar 0x409e, 0x1
Script_branch_261: @ 261
	Return
@ 263

Script_branch_263: @ 263
	CheckNatPokedexStatus 0x2, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_279
	ClearFlag 0x243
Script_branch_279: @ 279
	Return
@ 27b

Script_branch_27b: @ 27b
	ClearFlag 0x1e0
	Return
@ 281

Script_branch_281: @ 281
	ClearFlag 0x1e1
	Return
@ 287

Script_branch_287: @ 287
	ClearFlag 0x250
	Return
@ 28d

Script_branch_28d: @ 28d
	ClearFlag 0x1df
	SetVar 0x4059, 0x3
	Return
@ 299

Script_branch_299: @ 299
	ClearFlag 0x24f
	SetVar 0x4058, 0x3
	Return
@ 2a5

Script_branch_2a5: @ 2a5
	SetVar 0x405e, 0x3
	Return
@ 2ad

Script_branch_2ad: @ 2ad
	SetVar 0x405f, 0x3
	Return
@ 2b5

Script_branch_2b5: @ 2b5
	SetVar 0x4060, 0x3
	Return
@ 2bd

Script_branch_2bd: @ 2bd
	ClearFlag 0x185
	Return
@ 2c3

.byte 0x0 @ 0x2c3

@ end_0x2c4
