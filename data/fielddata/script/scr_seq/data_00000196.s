.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	ElevIrAnm
	End
@ e

Script_2: @ e
	ApplyMovement 0xff, Movement_12c
	WaitMovement
	StoreLeagueTrainer 0x10b
	CheckFlag 0x964
	CompareLastResultCall LESSER, Script_branch_eb
	CheckFlag 0x964
	CompareLastResultCall EQUAL, Script_branch_f0
	CloseMsgOnKeyPress
	SetFlag 0x98b
	CheckFlag 0xd6
	CompareLastResultCall LESSER, Script_branch_f5
	CheckFlag 0xd6
	CompareLastResultCall EQUAL, Script_branch_fd
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_121
	Message 0x1
	SetFlag 0xb4
	CheckFlag 0xd6
	CompareLastResultCall LESSER, Script_branch_105
	CheckFlag 0xd6
	CompareLastResultCall EQUAL, Script_branch_113
	Message 0x2
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_144
	WaitMovement
	ApplyMovement 0xff, Movement_134
	WaitMovement
	ApplyMovement 0x0, Movement_150
	WaitMovement
	Return2 0x1e, 0x800c
	StopElevAnm
	Return2 0x1e, 0x800c
	SetFlag 0x23a
	SetFlag 0x23b
	ApplyMovement 0xff, Movement_13c
	WaitMovement
	PlayFanfare 0x603
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0xba, 0x0, 0x5, 0x17, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ eb

Script_branch_eb: @ eb
	Message 0x0
	Return
@ f0

Script_branch_f0: @ f0
	Message 0x3
	Return
@ f5

Script_branch_f5: @ f5
	TrainerBattle 0x10b, 0x0
	Return
@ fd

Script_branch_fd: @ fd
	TrainerBattle 0x366, 0x0
	Return
@ 105

Script_branch_105: @ 105
	DeActivateLeader 0xc, 0x10b, 0x0, 0x0, 0x0
	Return
@ 113

Script_branch_113: @ 113
	DeActivateLeader 0xc, 0x366, 0x0, 0x0, 0x0
	Return
@ 121

Script_branch_121: @ 121
	ClearFlag 0x98b
	LostGoPc
	ReleaseAll
	End
@ 12b

.byte 0x0 @ 0x12b

Movement_12c: @ 12c
	WalkUpFast 0x4
	EndMovement 0x0
@ 134

Movement_134: @ 134
	WalkUpFast 0x6
	EndMovement 0x0
@ 13c

Movement_13c: @ 13c
	WalkUpFast 0x6
	EndMovement 0x0
@ 144

Movement_144: @ 144
	WalkLeftFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 150

Movement_150: @ 150
	MoveUpFast 0x1
	EndMovement 0x0
@ 158

@ end_0x158
