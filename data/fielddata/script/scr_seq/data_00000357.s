.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	SetFlag 0x9e1
	CheckFlag 0x15e
	CompareLastResultJump 0x0, Script_branch_2e
	CheckFlag 0x15e
	CompareLastResultJump 0x1, Script_branch_38
	End
@ 2e

Script_branch_2e: @ 2e
	SetTilePassable 0x1, 0xa, 0x1d
	End
@ 38

Script_branch_38: @ 38
	SetTilePassable 0x0, 0xa, 0x1d
	End
@ 42

Script_2: @ 42
	SetFlag 0x9e1
	CheckFlag 0x8e
	CompareLastResultCall 0x1, Script_branch_69
	CheckFlag 0x15e
	CompareLastResultJump 0x0, Script_branch_2e
	CheckFlag 0x15e
	CompareLastResultJump 0x1, Script_branch_38
	End
@ 69

Script_branch_69: @ 69
	SetFlag 0x1e0
	RemovePeople 0x0
	ClearFlag 0x8e
	Return
@ 77

Script_3: @ 77
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	PlayCry 0x1e2, 0x0
	Message 0x3
	CloseMsgOnKeyPress
	SetFlag 0x8e
	WildBattle2 0x1e2, 0x32
	ClearFlag 0x8e
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_cd
	CheckWildBattle2 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_c2
	SetFlag 0x126
	ReleaseAll
	End
@ c2

Script_branch_c2: @ c2
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ cd

Script_branch_cd: @ cd
	LostGoPc
	ReleaseAll
	End
@ d3

Script_4: @ d3
	PlayFanfare 0x5dc
	LockAll
	Message 0x0
	CloseMsgOnKeyPress
	FacePlayer
	ApplyMovement 0x1, Movement_13c
	WaitMovement
	Return2 0x1e, 0x800c
	Message 0x1
	CloseMsgOnKeyPress
	TrainerBattle 0x198, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_144
	Message 0x2
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	RemovePeople 0x1
	SetFlag 0x13e
	SetFlag 0x984
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 139

.byte 0x0 @ 0x139
.byte 0x0 @ 0x13a
.byte 0x0 @ 0x13b

Movement_13c: @ 13c
	Exclamation 0x1
	EndMovement 0x0
@ 144

Script_branch_144: @ 144
	LostGoPc
	ReleaseAll
	End
@ 14a

.byte 0x0 @ 0x14a
.byte 0x0 @ 0x14b

@ end_0x14c
