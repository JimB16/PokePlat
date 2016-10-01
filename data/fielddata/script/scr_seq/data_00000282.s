.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	End
@ c

Script_2: @ c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	PokemonPicture 0x1e8, 0x1
	Cmd_30
	HidePicture
	PlayCry 0x1e8, 0x0
	CheckFacePosition 0x800c
	If 0x800c, 0x0
	CompareLastResultCall EQUAL, Script_branch_7e
	Release 0x0
	CresseliaAnm 0x0, 0x6, 0x8
	Lock 0x0
	SetFlag 0x24f
	RemovePeople 0x0
	ActSwarmPoke 0x1
	If 0x4058, 0x3
	CompareLastResultJump EQUAL, Script_branch_74
	ClearFlag 0x452
	AddPeople 0x1
	SetFlag 0x11f
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 74

Script_branch_74: @ 74
	SetVar 0x4058, 0x0
	ReleaseAll
	End
@ 7e

Script_branch_7e: @ 7e
	ChangeOwPosition 0x1, 0x10, 0xe
	ApplyMovement 0x0, Movement_94
	WaitMovement
	Return
@ 92

.byte 0x0 @ 0x92
.byte 0x0 @ 0x93

Movement_94: @ 94
	Move_47 0x1
	WalkUpFast 0x1
	Move_48 0x1
	EndMovement 0x0
@ a4

@ end_0xa4
