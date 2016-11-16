.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_103
	DeActivateLeader 0x9, 0x2f, 0x0, 0x0, 0x0
	Message 0x0
	CloseMsgOnKeyPress
	TrainerBattle 0xf6, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_119
	Message 0x1
	SetVarHero 0x0
	Message 0x2
	Soundfr 0x489
	Cmd_4f
	SetTrainerId 0xf4
	SetTrainerId 0xf5
	EnableBadge 0x0
	MainEvent 0x17
	SetTrainerId 0xf4
	SetTrainerId 0xf5
	SetFlag 0x23f
	SetVar 0x40f0, 0x1
	SetVar 0x4076, 0x1
	SetVar 0x4079, 0x2
	DeActivateLeader 0xa, 0x2f, 0xf6, 0x0, 0x0
	SetVar 0x4077, 0x3
	ClearFlag 0x17a
	ClearFlag 0x19d
	ClearFlag 0x19c
	SetFlag 0x198
	Message 0x3
	Jump Script_branch_bb
@ b9

.byte 0x2 @ 0xb9
.byte 0x0 @ 0xba

Script_branch_bb: @ bb
	SetVar 0x8004, 0x193
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_f9
	CallStandard 0x7fc
	SetFlag 0x75
	SetVarItem 0x0, 0x8004
	SetVarAtkItem 0x1, 0x8004
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ f9

Script_branch_f9: @ f9
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 103

Script_branch_103: @ 103
	CheckFlag 0x75
	CompareLastResultJump LESSER, Script_branch_bb
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 119

Script_branch_119: @ 119
	LostGoPc
	ReleaseAll
	End
@ 11f

Script_2: @ 11f
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_145
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 145

Script_branch_145: @ 145
	SetVarHero 0x0
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 153

Script_3: @ 153
	PlayFanfare 0x5dc
	LockAll
	CheckBadge 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_17d
	SetVariableRival 0x0
	SetVariableRival 0x1
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 17d

Script_branch_17d: @ 17d
	SetVariableRival 0x0
	SetVarHero 0x1
	SetVariableRival 0x2
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 191

.byte 0x0 @ 0x191
.byte 0x0 @ 0x192
.byte 0x0 @ 0x193

@ end_0x194
