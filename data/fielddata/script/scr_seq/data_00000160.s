.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	SetVar 0x4000, 0x0
	SunishoreGymFunction 0x2
	End
@ 1d

Script_2: @ 1d
	SunishoreGymFunction2 0x0
	End
@ 22

Script_3: @ 22
	SunishoreGymFunction2 0x2
	End
@ 27

Script_4: @ 27
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 0x7, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_104
	DeActivateLeader 0x9, 0x9c, 0x0, 0x0, 0x0
	Message 0x0
	CloseMsgOnKeyPress
	TrainerBattle 0x140, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_11a
	Message 0x1
	SetVarHero 0x0
	Message 0x2
	Soundfr 0x489
	Cmd_4f
	EnableBadge 0x7
	MainEvent 0x17
	SetTrainerId 0x119
	SetTrainerId 0x11d
	SetTrainerId 0x12d
	SetTrainerId 0x12e
	SetTrainerId 0x12f
	SetTrainerId 0x14b
	SetTrainerId 0x155
	SetTrainerId 0x158
	SetVar 0x407e, 0x2
	DeActivateLeader 0xa, 0x9c, 0xf6, 0x0, 0x0
	Message 0x3
	Jump Script_branch_bc
@ bc

Script_branch_bc: @ bc
	SetVar 0x8004, 0x180
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_fa
	CallStandard 0x7fc
	SetFlag 0xb6
	SetVarItem 0x0, 0x8004
	SetVarAtkItem 0x1, 0x8004
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ fa

Script_branch_fa: @ fa
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 104

Script_branch_104: @ 104
	CheckFlag 0xb6
	CompareLastResultJump LESSER, Script_branch_bc
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 11a

Script_branch_11a: @ 11a
	LostGoPc
	ReleaseAll
	End
@ 120

@ end_0x120
