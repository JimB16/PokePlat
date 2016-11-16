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
	CheckSpritePosition 0x4004, 0x4005
	If 0x4005, 0xc
	CompareLastResultCall 0x4, Script_branch_35
	SetVar 0x4003, 0x1
	End
@ 35

Script_branch_35: @ 35
	SetFlag 0x996
	Return
@ 3b

Script_1: @ 3b
	CheckFlag 0x10b
	CompareLastResultCall EQUAL, Script_branch_48
	End
@ 48

Script_branch_48: @ 48
	SetFlag 0x222
	Return
@ 4e

Script_2: @ 4e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 61

Script_3: @ 61
	LockAll
	CheckBike 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_91
	ApplyMovement 0x1, Movement_a0
	WaitMovement
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_a8
	WaitMovement
	ReleaseAll
	End
@ 91

Script_branch_91: @ 91
	SetFlag 0x996
	SetVar 0x4002, 0x1
	ReleaseAll
	End
@ 9f

.byte 0x0 @ 0x9f

Movement_a0: @ a0
	Exclamation 0x1
	EndMovement 0x0
@ a8

Movement_a8: @ a8
	WalkUpFast 0x1
	EndMovement 0x0
@ b0

Script_4: @ b0
	LockAll
	ClearFlag 0x996
	SetVar 0x4002, 0x0
	ReleaseAll
	End
@ c0

Script_5: @ c0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x10b
	CompareLastResultJump EQUAL, Script_branch_154
	SetVarHero 0x0
	SetVarAlter 0x1
	CheckGender 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_f0
	Jump Script_branch_f9
@ f0

Script_branch_f0: @ f0
	Message 0x3
	Jump Script_branch_102
@ f9

Script_branch_f9: @ f9
	Message 0x4
	Jump Script_branch_102
@ 102

Script_branch_102: @ 102
	StoreTotPokemonSeen 0x8004
	SetVariableNumber 0x1, 0x8004
	If 0x8004, 0x23
	CompareLastResultJump LESSER, Script_branch_15f
	Message 0x5
	SetVar 0x8004, 0xd8
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_14a
	SetFlag 0x10b
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 14a

Script_branch_14a: @ 14a
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 154

Script_branch_154: @ 154
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 15f

Script_branch_15f: @ 15f
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 16a

.byte 0x0 @ 0x16a
.byte 0x0 @ 0x16b

@ end_0x16c
