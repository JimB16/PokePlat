.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	If 0x40db, 0x0
	CompareLastResultCall 0x5, Script_branch_8a
	CallBTowerFunctions 0x2b, 0x0, 0x400a
	Call Function_8e
	If 0x400a, 0x2
	CompareLastResultCall EQUAL, Script_branch_9e
	If 0x400a, 0x3
	CompareLastResultCall EQUAL, Script_branch_9e
	If 0x400a, 0x0
	CompareLastResultCall EQUAL, Function_8e
	If 0x400a, 0x1
	CompareLastResultCall EQUAL, Function_8e
	If 0x400a, 0x4
	CompareLastResultCall EQUAL, Script_branch_96
	If 0x400a, 0x5
	CompareLastResultCall EQUAL, Script_branch_96
	If 0x400a, 0x6
	CompareLastResultCall EQUAL, Script_branch_96
	End
@ 8a

Script_branch_8a: @ 8a
	ActContestMap
	Return
@ 8e

Function_8e: @ 8e
Script_branch_8e: @ 8e
	SetVar 0x402a, 0xe7
	Return
@ 96

Script_branch_96: @ 96
	SetVar 0x402a, 0xeb
	Return
@ 9e

Script_branch_9e: @ 9e
	SetVar 0x402a, 0xe8
	Return
@ a6

Script_branch_a6: @ a6
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CallBTowerFunctions 0x2b, 0x0, 0x800c
	If 0x800c, 0x4
	CompareLastResultJump EQUAL, Script_branch_1f8
	If 0x800c, 0x5
	CompareLastResultJump EQUAL, Script_branch_1f8
	PreWfc
	ShowBTowerSome 0x5
	CallEnd
	Warp 0x146, 0x0, 0xf, 0x6, 0x0
	End
@ e9

Script_branch_e9: @ e9
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	PreWfc
	ShowBTowerSome 0x6
	CallEnd
	Warp 0x146, 0x0, 0xb, 0x6, 0x0
	End
@ 10a

Script_branch_10a: @ 10a
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x1ed, 0x0, 0x8, 0x2, 0x1
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 132

Function_132: @ 132
	Call Function_188
	StoreElevatorDirection 0x4000, 0x3
	Call Function_194
	Return
@ 146

Script_2: @ 146
	LockAll
	SetVar 0x4000, 0x0
	Call Function_132
	Jump Script_branch_a6
	End
@ 15c

Script_3: @ 15c
	LockAll
	SetVar 0x4000, 0x0
	Call Function_132
	Jump Script_branch_e9
	End
@ 172

Script_4: @ 172
	LockAll
	SetVar 0x4000, 0x1
	Call Function_132
	Jump Script_branch_10a
	End
@ 188

Function_188: @ 188
	ApplyMovement 0xff, Movement_1bc
	WaitMovement
	Return
@ 194

Function_194: @ 194
	ApplyMovement 0x0, Movement_1c8
	ApplyMovement 0xff, Movement_1e4
	WaitMovement
	Return
@ 1a8

.byte 0xc @ 0x1a8
.byte 0x0 @ 0x1a9
.byte 0x2 @ 0x1aa
.byte 0x0 @ 0x1ab
.byte 0x3 @ 0x1ac
.byte 0x0 @ 0x1ad
.byte 0x1 @ 0x1ae
.byte 0x0 @ 0x1af
.byte 0xf @ 0x1b0
.byte 0x0 @ 0x1b1
.byte 0x1 @ 0x1b2
.byte 0x0 @ 0x1b3
.byte 0x1 @ 0x1b4
.byte 0x0 @ 0x1b5
.byte 0x1 @ 0x1b6
.byte 0x0 @ 0x1b7
.byte 0xfe @ 0x1b8
.byte 0x0 @ 0x1b9
.byte 0x0 @ 0x1ba
.byte 0x0 @ 0x1bb

Movement_1bc: @ 1bc
	WalkUpFast 0x2
	SeeDown 0x1
	EndMovement 0x0
@ 1c8

Movement_1c8: @ 1c8
	WalkDownFast 0x1
	SeeLeft 0x1
	WalkLeftFast 0x1
	SeeDown 0x1
	WalkDownFast 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 1e4

Movement_1e4: @ 1e4
	Move_3f 0x2
	Move_3d 0x1
	WalkDownFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 1f8

Script_branch_1f8: @ 1f8
	PreWfc
	ShowBTowerSome 0x5
	CallEnd
	Warp 0x146, 0x0, 0x13, 0x6, 0x0
	End
@ 20d

.byte 0x0 @ 0x20d
.byte 0x0 @ 0x20e
.byte 0x0 @ 0x20f

@ end_0x210
