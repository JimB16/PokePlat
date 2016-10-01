.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	SetFlag 0x9df
	End
@ 10

Script_2: @ 10
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	PokemonPicture 0x1e1, 0x0
	Cmd_30
	HidePicture
	PlayCry 0x1e1, 0x0
	Message 0x0
	CloseMsgOnKeyPress
	SetFlag 0x1df
	RemovePeople 0x0
	Return2 0x8, 0x800c
	ClearFlag 0x1df
	AddPeople 0x0
	Return2 0x8, 0x800c
	SetFlag 0x1df
	RemovePeople 0x0
	Return2 0x8, 0x800c
	ClearFlag 0x1df
	AddPeople 0x0
	Return2 0x8, 0x800c
	SetFlag 0x1df
	RemovePeople 0x0
	Return2 0x8, 0x800c
	ClearFlag 0x1df
	AddPeople 0x0
	Return2 0x8, 0x800c
	SetFlag 0x1df
	RemovePeople 0x0
	ActSwarmPoke 0x0
	Message 0x1
	CloseMsgOnKeyPress
	If 0x4059, 0x3
	CompareLastResultJump EQUAL, Script_branch_184
	Return2 0x1e, 0x800c
	CheckFacePosition 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_de
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_ee
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_fe
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_10e
	End
@ de

Script_branch_de: @ de
	ChangeOwPosition 0x1, 0xc, 0x16
	Jump Script_branch_11e
	End
@ ee

Script_branch_ee: @ ee
	ChangeOwPosition 0x1, 0xc, 0x14
	Jump Script_branch_11e
	End
@ fe

Script_branch_fe: @ fe
	ChangeOwPosition 0x1, 0xd, 0x15
	Jump Script_branch_11e
	End
@ 10e

Script_branch_10e: @ 10e
	ChangeOwPosition 0x1, 0xb, 0x15
	Jump Script_branch_11e
	End
@ 11e

Script_branch_11e: @ 11e
	ClearFlag 0x296
	AddPeople 0x1
	ApplyMovement 0x1, Movement_190
	WaitMovement
	ApplyMovement 0xff, Movement_1b0
	WaitMovement
	SetVarHero 0x0
	Message 0x2
	CloseMsgOnKeyPress
	ApplyMovement 0x1, Movement_198
	WaitMovement
	SetVarHero 0x0
	Message 0x3
	StorePoketchApp 0xc, 0x800c
	If 0x800c, 0x0
	CompareLastResultCall EQUAL, Script_branch_17f
	SetVarHero 0x0
	Message 0x5
	CloseMsgOnKeyPress
	ApplyMovement 0x1, Movement_1a8
	WaitMovement
	RemovePeople 0x1
	ReleaseAll
	End
@ 17f

Script_branch_17f: @ 17f
	Message 0x4
	Return
@ 184

Script_branch_184: @ 184
	SetVar 0x4059, 0x0
	ReleaseAll
	End
@ 18e

.byte 0x0 @ 0x18e
.byte 0x0 @ 0x18f

Movement_190: @ 190
	WalkUpFast 0x7
	EndMovement 0x0
@ 198

Movement_198: @ 198
	MoveDownFast 0x1
	Move_3f 0x2
	MoveUpFast 0x1
	EndMovement 0x0
@ 1a8

Movement_1a8: @ 1a8
	WalkDownFast 0x9
	EndMovement 0x0
@ 1b0

Movement_1b0: @ 1b0
	SeeDown 0x1
	EndMovement 0x0
@ 1b8

@ end_0x1b8
