.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xb3
	CompareLastResultJump 0x1, Script_branch_ac
	StoreLeagueTrainer 0x108
	Message 0x0
	CloseMsgOnKeyPress
	CheckFlag 0xd6
	CompareLastResultCall 0x0, Script_branch_7a
	CheckFlag 0xd6
	CompareLastResultCall 0x1, Script_branch_82
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_a6
	SetFlag 0xb3
	PlayFanfare 0x61a
	RemovePeople 0x1
	CheckFlag 0xd6
	CompareLastResultCall 0x0, Script_branch_8a
	CheckFlag 0xd6
	CompareLastResultCall 0x1, Script_branch_98
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7a

Script_branch_7a: @ 7a
	TrainerBattle 0x108, 0x0
	Return
@ 82

Script_branch_82: @ 82
	TrainerBattle 0x365, 0x0
	Return
@ 8a

Script_branch_8a: @ 8a
	DeActivateLeader 0xb, 0x108, 0x0, 0x0, 0x0
	Return
@ 98

Script_branch_98: @ 98
	DeActivateLeader 0xb, 0x365, 0x0, 0x0, 0x0
	Return
@ a6

Script_branch_a6: @ a6
	LostGoPc
	ReleaseAll
	End
@ ac

Script_branch_ac: @ ac
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b7

Script_2: @ b7
	LockAll
	ApplyMovement 0xff, Movement_dc
	WaitMovement
	PlayFanfare 0x61a
	ClearFlag 0x285
	AddPeople 0x2
	SetVar 0x4001, 0x1
	ReleaseAll
	End
@ d9

.byte 0x0 @ 0xd9
.byte 0x0 @ 0xda
.byte 0x0 @ 0xdb

Movement_dc: @ dc
	WalkUpFast 0x2
	EndMovement 0x0
@ e4

@ end_0xe4
