.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_2: @ a
	LockAll
	Call Function_6a
	SetVarHero 0x0
	SetVarAlter 0x1
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_31
	Jump Script_branch_3c
@ 2f

.byte 0x2 @ 0x2f
.byte 0x0 @ 0x30

Script_branch_31: @ 31
	Message 0x2
	Jump Script_branch_47
@ 3a

.byte 0x2 @ 0x3a
.byte 0x0 @ 0x3b

Script_branch_3c: @ 3c
	Message 0x3
	Jump Script_branch_47
@ 45

.byte 0x2 @ 0x45
.byte 0x0 @ 0x46

Script_branch_47: @ 47
	Message 0x4
	CloseMsgOnKeyPress
	CloseOakAssistantEvent
	Call Function_e8
	PlayFanfare 0x603
	SetFlag 0x21c
	RemovePeople 0x1
	SetVar 0x4105, 0x1
	ReleaseAll
	End
@ 6a

Function_6a: @ 6a
	CheckSpritePosition 0x8005, 0x8006
	If 0x8006, 0x5
	CompareLastResultJump EQUAL, Script_branch_ac
	If 0x8006, 0x6
	CompareLastResultJump EQUAL, Script_branch_b8
	If 0x8006, 0x7
	CompareLastResultJump EQUAL, Script_branch_c4
	If 0x8006, 0x8
	CompareLastResultJump EQUAL, Script_branch_d0
	Jump Script_branch_dc
@ aa

.byte 0x2 @ 0xaa
.byte 0x0 @ 0xab

Script_branch_ac: @ ac
	ApplyMovement 0x1, Movement_168
	WaitMovement
	Return
@ b8

Script_branch_b8: @ b8
	ApplyMovement 0x1, Movement_17c
	WaitMovement
	Return
@ c4

Script_branch_c4: @ c4
	ApplyMovement 0x1, Movement_190
	WaitMovement
	Return
@ d0

Script_branch_d0: @ d0
	ApplyMovement 0x1, Movement_19c
	WaitMovement
	Return
@ dc

Script_branch_dc: @ dc
	ApplyMovement 0x1, Movement_1b0
	WaitMovement
	Return
@ e8

Function_e8: @ e8
	CheckSpritePosition 0x8005, 0x8006
	If 0x8006, 0x5
	CompareLastResultJump EQUAL, Script_branch_12a
	If 0x8006, 0x6
	CompareLastResultJump EQUAL, Script_branch_136
	If 0x8006, 0x7
	CompareLastResultJump EQUAL, Script_branch_142
	If 0x8006, 0x8
	CompareLastResultJump EQUAL, Script_branch_14e
	Jump Script_branch_15a
@ 128

.byte 0x2 @ 0x128
.byte 0x0 @ 0x129

Script_branch_12a: @ 12a
	ApplyMovement 0x1, Movement_1c4
	WaitMovement
	Return
@ 136

Script_branch_136: @ 136
	ApplyMovement 0x1, Movement_1d0
	WaitMovement
	Return
@ 142

Script_branch_142: @ 142
	ApplyMovement 0x1, Movement_1dc
	WaitMovement
	Return
@ 14e

Script_branch_14e: @ 14e
	ApplyMovement 0x1, Movement_1f0
	WaitMovement
	Return
@ 15a

Script_branch_15a: @ 15a
	ApplyMovement 0x1, Movement_1fc
	WaitMovement
	Return
@ 166

.byte 0x0 @ 0x166
.byte 0x0 @ 0x167

Movement_168: @ 168
	Exclamation 0x1
	WalkRightFast 0x1
	WalkUpFast 0x2
	MoveRightFast 0x1
	EndMovement 0x0
@ 17c

Movement_17c: @ 17c
	Exclamation 0x1
	WalkRightFast 0x1
	WalkUpFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 190

Movement_190: @ 190
	Exclamation 0x1
	WalkRightFast 0x1
	EndMovement 0x0
@ 19c

Movement_19c: @ 19c
	Exclamation 0x1
	WalkRightFast 0x1
	WalkDownFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 1b0

Movement_1b0: @ 1b0
	Exclamation 0x1
	WalkRightFast 0x1
	WalkDownFast 0x2
	MoveRightFast 0x1
	EndMovement 0x0
@ 1c4

Movement_1c4: @ 1c4
	WalkDownFast 0x2
	WalkRightFast 0x4
	EndMovement 0x0
@ 1d0

Movement_1d0: @ 1d0
	WalkDownFast 0x1
	WalkRightFast 0x4
	EndMovement 0x0
@ 1dc

Movement_1dc: @ 1dc
	WalkUpFast 0x1
	WalkRightFast 0x3
	WalkDownFast 0x1
	WalkRightFast 0x1
	EndMovement 0x0
@ 1f0

Movement_1f0: @ 1f0
	WalkUpFast 0x1
	WalkRightFast 0x4
	EndMovement 0x0
@ 1fc

Movement_1fc: @ 1fc
	WalkUpFast 0x2
	WalkRightFast 0x4
	EndMovement 0x0
@ 208

Script_1: @ 208
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 21b

.byte 0x0 @ 0x21b

@ end_0x21c
