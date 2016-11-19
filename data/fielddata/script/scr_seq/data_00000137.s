.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	.hword 0xfd13
@ 1e

Script_1: @ 1e
	VeilstoneGymFunction
	End
@ 22

Script_2: @ 22
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 2, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_ff
	DeActivateLeader 0x9, 0x85, 0x0, 0x0, 0x0
	Message 0x0
	CloseMsgOnKeyPress
	TrainerBattle 0x13d, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_118
	Message 0x1
	SetVarHero 0x0
	Message 0x2
	Soundfr 0x489
	Cmd_4f
	EnableBadge 2
	MainEvent 0x17
	SetTrainerId 0x135
	SetTrainerId 0x136
	SetTrainerId 0x137
	SetTrainerId 0x138
	DeActivateLeader 0xa, 0x85, 0x13d, 0x0, 0x0
	SetFlag 0x1a3
	ClearFlag 0x1a8
	SetVar 0x407d, 0x1
	SetVar 0x411a, 0x1
	Message 0x3
	Jump Script_branch_b7
@ b5

.byte 0x2 @ 0xb5
.byte 0x0 @ 0xb6

Script_branch_b7: @ b7
	SetVar 0x8004, 0x183
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_f5
	CallStandard 0x7fc
	SetFlag 0x9d
	SetVarItem 0x0, 0x8004
	SetVarAtkItem 0x1, 0x8004
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ f5

Script_branch_f5: @ f5
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ff

Script_branch_ff: @ ff
	CheckFlag 0x9d
	CompareLastResultJump LESSER, Script_branch_b7
	SetVarHero 0x0
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 118

Script_branch_118: @ 118
	LostGoPc
	ReleaseAll
	End
@ 11e

Script_3: @ 11e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 2, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_144
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 144

Script_branch_144: @ 144
	SetVarHero 0x0
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 152

Script_4: @ 152
	PlayFanfare 0x5dc
	LockAll
	CheckBadge 2, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_17c
	SetVariableRival 0x0
	SetVariableRival 0x1
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 17c

Script_branch_17c: @ 17c
	SetVariableRival 0x0
	SetVarHero 0x1
	SetVariableRival 0x2
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 190

Script_5: @ 190
	PlayFanfare 0x5dc
	LockAll
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1a1

Script_6: @ 1a1
	PlayFanfare 0x5dc
	LockAll
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1b2

Script_7: @ 1b2
	PlayFanfare 0x5dc
	LockAll
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1c3

.byte 0x0 @ 0x1c3

@ end_0x1c4
