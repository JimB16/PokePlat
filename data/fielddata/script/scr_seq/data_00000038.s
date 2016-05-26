.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	CanalaveGymFunction
	End
@ 16

Script_2: @ 16
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 0x5, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_107
	DeActivateLeader 0x9, 0x23, 0x0, 0x0, 0x0
	Message 0x0
	CloseMsgOnKeyPress
	TrainerBattle 0xfa, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_120
	Message 0x1
	SetVarHero 0x0
	Message 0x2
	Soundfr 0x489
	Cmd_4f
	EnableBadge 0x5
	MainEvent 0x17
	SetTrainerId 0xe8
	SetTrainerId 0x100
	SetTrainerId 0x101
	SetTrainerId 0x117
	SetTrainerId 0x11b
	SetTrainerId 0x13a
	SetTrainerId 0x16f
	DeActivateLeader 0xa, 0x23, 0xfa, 0x0, 0x0
	ClearFlag 0x1b2
	ClearFlag 0x2cc
	ClearFlag 0x1b8
	ClearFlag 0x1b6
	ClearFlag 0x1b7
	SetVar 0x4078, 0x2
	SetFlag 0x198
	Message 0x3
	Jump Script_branch_bf
@ bf

Script_branch_bf: @ bf
	SetVar 0x8004, 0x1a2
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_fd
	CallStandard 0x7fc
	SetFlag 0x92
	SetVarItem 0x0, 0x8004
	SetVarAtkItem 0x1, 0x8004
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ fd

Script_branch_fd: @ fd
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 107

Script_branch_107: @ 107
	CheckFlag 0x92
	CompareLastResultJump 0x0, Script_branch_bf
	SetVariableRival 0x1
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 120

Script_branch_120: @ 120
	LostGoPc
	ReleaseAll
	End
@ 126

Script_3: @ 126
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 0x5, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_14c
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 14c

Script_branch_14c: @ 14c
	SetVarHero 0x0
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 15a

Script_4: @ 15a
	PlayFanfare 0x5dc
	LockAll
	CheckBadge 0x5, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_184
	SetVariableRival 0x0
	SetVariableRival 0x1
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 184

Script_branch_184: @ 184
	SetVariableRival 0x0
	SetVarHero 0x1
	SetVariableRival 0x2
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 198

@ end_0x198
