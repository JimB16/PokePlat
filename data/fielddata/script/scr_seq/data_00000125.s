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
	SetVar 0x4001, 0x0
	SetVar 0x4002, 0x1
	SetVar 0x4003, 0x0
	PastoriaCityFunction
	End
@ 34

Script_2: @ 34
	PastoriaCityFunction2
	SetVar 0x4001, 0x1
	SetVar 0x4002, 0x0
	SetVar 0x4003, 0x0
	End
@ 4a

Script_3: @ 4a
	PastoriaCityFunction2
	SetVar 0x4001, 0x0
	SetVar 0x4002, 0x1
	SetVar 0x4003, 0x0
	End
@ 60

Script_4: @ 60
	PastoriaCityFunction2
	SetVar 0x4001, 0x0
	SetVar 0x4002, 0x0
	SetVar 0x4003, 0x1
	End
@ 76

Script_5: @ 76
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 0x3, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_155
	DeActivateLeader 0x9, 0x7a, 0x0, 0x0, 0x0
	Message 0x0
	CloseMsgOnKeyPress
	TrainerBattle 0x13c, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_16b
	Message 0x1
	SetVarHero 0x0
	Message 0x2
	Soundfr 0x489
	Cmd_4f
	EnableBadge 0x3
	MainEvent 0x17
	SetTrainerId 0x125
	SetTrainerId 0x153
	SetTrainerId 0x191
	SetTrainerId 0x1e3
	SetTrainerId 0x1f1
	SetTrainerId 0x1f2
	SetVar 0x407c, 0x3
	SetFlag 0x20c
	SetFlag 0x156
	DeActivateLeader 0xa, 0x7a, 0x13c, 0x0, 0x0
	Message 0x3
	Jump Script_branch_10d
@ 10b

.byte 0x2 @ 0x10b
.byte 0x0 @ 0x10c

Script_branch_10d: @ 10d
	SetVar 0x8004, 0x17e
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_14b
	CallStandard 0x7fc
	SetFlag 0x9c
	SetVarItem 0x0, 0x8004
	SetVarAtkItem 0x1, 0x8004
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 14b

Script_branch_14b: @ 14b
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 155

Script_branch_155: @ 155
	CheckFlag 0x9c
	CompareLastResultJump 0x0, Script_branch_10d
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 16b

Script_branch_16b: @ 16b
	LostGoPc
	ReleaseAll
	End
@ 171

Script_6: @ 171
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 0x3, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_197
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 197

Script_branch_197: @ 197
	SetVarHero 0x0
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1a5

Script_7: @ 1a5
	PlayFanfare 0x5dc
	LockAll
	CheckBadge 0x3, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_1cf
	SetVariableRival 0x0
	SetVariableRival 0x1
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1cf

Script_branch_1cf: @ 1cf
	SetVariableRival 0x0
	SetVarHero 0x1
	SetVariableRival 0x2
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1e3

.byte 0x0 @ 0x1e3

@ end_0x1e4
