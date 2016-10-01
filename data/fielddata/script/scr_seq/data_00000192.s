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
	CheckFlag 0xb2
	CompareLastResultJump EQUAL, Script_branch_d2
	StoreLeagueTrainer 0x107
	CheckFlag 0x964
	CompareLastResultCall LESSER, Script_branch_f0
	CheckFlag 0x964
	CompareLastResultCall EQUAL, Script_branch_104
	CloseMsgOnKeyPress
	CheckFlag 0xd6
	CompareLastResultCall LESSER, Script_branch_a0
	CheckFlag 0xd6
	CompareLastResultCall EQUAL, Script_branch_a8
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_cc
	SetFlag 0xb2
	PlayFanfare 0x61a
	RemovePeople 0x1
	CheckFlag 0xd6
	CompareLastResultCall LESSER, Script_branch_b0
	CheckFlag 0xd6
	CompareLastResultCall EQUAL, Script_branch_be
	CheckFlag 0x964
	CompareLastResultCall LESSER, Script_branch_109
	CheckFlag 0x964
	CompareLastResultCall EQUAL, Script_branch_10e
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a0

Script_branch_a0: @ a0
	TrainerBattle 0x107, 0x0
	Return
@ a8

Script_branch_a8: @ a8
	TrainerBattle 0x364, 0x0
	Return
@ b0

Script_branch_b0: @ b0
	DeActivateLeader 0xb, 0x107, 0x0, 0x0, 0x0
	Return
@ be

Script_branch_be: @ be
	DeActivateLeader 0xb, 0x364, 0x0, 0x0, 0x0
	Return
@ cc

Script_branch_cc: @ cc
	LostGoPc
	ReleaseAll
	End
@ d2

Script_branch_d2: @ d2
	CheckFlag 0x964
	CompareLastResultCall LESSER, Script_branch_113
	CheckFlag 0x964
	CompareLastResultCall EQUAL, Script_branch_118
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ f0

Script_branch_f0: @ f0
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_120
	WaitMovement
	Message 0x1
	Return
@ 104

Script_branch_104: @ 104
	Message 0x4
	Return
@ 109

Script_branch_109: @ 109
	Message 0x2
	Return
@ 10e

Script_branch_10e: @ 10e
	Message 0x5
	Return
@ 113

Script_branch_113: @ 113
	Message 0x3
	Return
@ 118

Script_branch_118: @ 118
	Message 0x6
	Return
@ 11d

.byte 0x0 @ 0x11d
.byte 0x0 @ 0x11e
.byte 0x0 @ 0x11f

Movement_120: @ 120
	Move_47 0x1
	MoveDownFast 0x3
	MoveDownVeryFast 0x4
	Move_29 0x2
	Move_48 0x1
	EndMovement 0x0
@ 138

Script_2: @ 138
	LockAll
	ApplyMovement 0xff, Movement_15c
	WaitMovement
	PlayFanfare 0x61a
	ClearFlag 0x284
	AddPeople 0x2
	SetVar 0x4001, 0x1
	ReleaseAll
	End
@ 15a

.byte 0x0 @ 0x15a
.byte 0x0 @ 0x15b

Movement_15c: @ 15c
	WalkUpFast 0x2
	EndMovement 0x0
@ 164

@ end_0x164
