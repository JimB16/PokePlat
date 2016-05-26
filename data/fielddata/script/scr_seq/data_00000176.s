.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	CheckFlag 0xeb
	CompareLastResultJump 0x1, Script_branch_1f
	End
@ 1f

Script_branch_1f: @ 1f
	SetFlag 0x1f3
	End
@ 25

Script_2: @ 25
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 0x6, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_f8
	DeActivateLeader 0x9, 0xa7, 0x0, 0x0, 0x0
	Message 0x0
	CloseMsgOnKeyPress
	TrainerBattle 0x13f, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_10e
	Message 0x1
	SetVarHero 0x0
	Message 0x2
	Soundfr 0x489
	Cmd_4f
	EnableBadge 0x6
	MainEvent 0x17
	SetTrainerId 0x10c
	SetTrainerId 0x10d
	SetTrainerId 0x33b
	SetTrainerId 0x10e
	SetTrainerId 0x10f
	SetTrainerId 0x33c
	DeActivateLeader 0xa, 0xa7, 0x13f, 0x0, 0x0
	SetFlag 0x1bf
	Message 0x3
	Jump Script_branch_b0
@ b0

Script_branch_b0: @ b0
	SetVar 0x8004, 0x18f
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_ee
	CallStandard 0x7fc
	SetFlag 0x9e
	SetVarItem 0x0, 0x8004
	SetVarAtkItem 0x1, 0x8004
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ee

Script_branch_ee: @ ee
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ f8

Script_branch_f8: @ f8
	CheckFlag 0x9e
	CompareLastResultJump 0x0, Script_branch_b0
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 10e

Script_branch_10e: @ 10e
	LostGoPc
	ReleaseAll
	End
@ 114

Script_3: @ 114
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 0x6, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_13a
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 13a

Script_branch_13a: @ 13a
	SetVarHero 0x0
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 148

Script_4: @ 148
	PlayFanfare 0x5dc
	LockAll
	CheckBadge 0x6, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_172
	SetVariableRival 0x0
	SetVariableRival 0x1
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 172

Script_branch_172: @ 172
	SetVariableRival 0x0
	SetVarHero 0x1
	SetVariableRival 0x2
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 186

.byte 0x0 @ 0x186
.byte 0x0 @ 0x187

@ end_0x188
