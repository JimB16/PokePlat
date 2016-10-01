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
	EternaGymAnm
	End
@ 22

Script_2: @ 22
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 0x1, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_48
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 48

Script_branch_48: @ 48
	SetVarHero 0x0
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 56

Script_3: @ 56
	PlayFanfare 0x5dc
	LockAll
	CheckBadge 0x1, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_80
	SetVariableRival 0x0
	SetVariableRival 0x1
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 80

Script_branch_80: @ 80
	SetVariableRival 0x0
	SetVarHero 0x1
	SetVariableRival 0x2
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 94

Script_4: @ 94
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 0x1, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_161
	DeActivateLeader 0x9, 0x43, 0x0, 0x0, 0x0
	Message 0x0
	CloseMsgOnKeyPress
	TrainerBattle 0x13b, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1c3
	Message 0x1
	SetVarHero 0x0
	Message 0x2
	Soundfr 0x489
	Cmd_4f
	EnableBadge 0x1
	MainEvent 0x17
	SetTrainerId 0x103
	SetTrainerId 0x104
	SetTrainerId 0x144
	SetTrainerId 0x15c
	ClearFlag 0x1fc
	DeActivateLeader 0xa, 0x43, 0x13b, 0x0, 0x0
	Message 0x3
	Jump Script_branch_177
	End
@ 119

Script_branch_119: @ 119
	SetVar 0x8004, 0x19d
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_157
	CallStandard 0x7fc
	SetFlag 0x74
	SetVarItem 0x0, 0x8004
	SetVarAtkItem 0x1, 0x8004
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 157

Script_branch_157: @ 157
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 161

Script_branch_161: @ 161
	CheckFlag 0x74
	CompareLastResultJump LESSER, Script_branch_119
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 177

Script_branch_177: @ 177
	SetVar 0x8004, 0x19d
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1b7
	CallStandard 0x7fc
	SetFlag 0x74
	SetVarItem 0x0, 0x8004
	SetVarAtkItem 0x1, 0x8004
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	FloralClockAnimation
	End
@ 1b7

Script_branch_1b7: @ 1b7
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	FloralClockAnimation
	End
@ 1c3

Script_branch_1c3: @ 1c3
	LostGoPc
	ReleaseAll
	End
@ 1c9

Script_5: @ 1c9
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x40ae, 0x1
	CompareLastResultJump 0x4, Script_branch_211
	StoreLeagueTrainer 0x144
	Message 0x6
	CloseMsgOnKeyPress
	TrainerBattle 0x144, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1c3
	Message 0x7
	WaitButton
	SetVar 0x40ae, 0x1
	CloseMsgOnKeyPress
	ReleaseAll
	FloralClockAnimation
	End
@ 211

Script_branch_211: @ 211
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 21c

Script_6: @ 21c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x40ae, 0x2
	CompareLastResultJump 0x4, Script_branch_270
	StoreLeagueTrainer 0x103
	SetVar 0x8007, 0x3
	Call Function_2da
	Message 0x8
	CloseMsgOnKeyPress
	TrainerBattle 0x103, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1c3
	Message 0x9
	WaitButton
	SetVar 0x40ae, 0x2
	CloseMsgOnKeyPress
	ReleaseAll
	FloralClockAnimation
	End
@ 270

Script_branch_270: @ 270
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 27b

Script_7: @ 27b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x40ae, 0x3
	CompareLastResultJump 0x4, Script_branch_2cf
	StoreLeagueTrainer 0x104
	SetVar 0x8007, 0x4
	Call Function_2da
	Message 0xa
	CloseMsgOnKeyPress
	TrainerBattle 0x104, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1c3
	Message 0xb
	WaitButton
	SetVar 0x40ae, 0x3
	CloseMsgOnKeyPress
	ReleaseAll
	FloralClockAnimation
	End
@ 2cf

Script_branch_2cf: @ 2cf
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2da

Function_2da: @ 2da
	CheckFacePosition 0x800c
	If 0x800c, 0x0
	CompareLastResultCall EQUAL, Script_branch_314
	If 0x800c, 0x1
	CompareLastResultCall EQUAL, Script_branch_322
	If 0x800c, 0x2
	CompareLastResultCall EQUAL, Script_branch_330
	If 0x800c, 0x3
	CompareLastResultCall EQUAL, Script_branch_33e
	Return
@ 314

Script_branch_314: @ 314
	ChangeOwMovement 0x8007, 0xf
	ReleaseOw 0x8007, 0x1
	Return
@ 322

Script_branch_322: @ 322
	ChangeOwMovement 0x8007, 0xe
	ReleaseOw 0x8007, 0x0
	Return
@ 330

Script_branch_330: @ 330
	ChangeOwMovement 0x8007, 0x11
	ReleaseOw 0x8007, 0x3
	Return
@ 33e

Script_branch_33e: @ 33e
	ChangeOwMovement 0x8007, 0x10
	ReleaseOw 0x8007, 0x2
	Return
@ 34c

@ end_0x34c
