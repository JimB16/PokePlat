.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	.hword 0xfd13
@ 1a

Script_5: @ 1a
	End
@ 1c

Script_1: @ 1c
	CheckFlag 0x8e
	CompareLastResultJump EQUAL, Script_branch_29
	End
@ 29

Script_branch_29: @ 29
	SetFlag 0x250
	RemovePeople 0x0
	ClearFlag 0x8e
	End
@ 37

Script_2: @ 37
	LockAll
	PlayFanfare 0x5dc
	WaitFanfare 0x5dc
	PlayCry 0x1e7, 0x0
	Message 0x0
	CloseMsgOnKeyPress
	SetFlag 0x8e
	WildBattle2 0x1e7, 0x2f
	ClearFlag 0x8e
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_9b
	CheckWildBattle2 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_90
	Jump Script_branch_84
	End
@ 84

Script_branch_84: @ 84
	SetFlag 0x121
	SetFlag 0x250
	ReleaseAll
	End
@ 90

Script_branch_90: @ 90
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9b

Script_branch_9b: @ 9b
	ClearFlag 0x250
	LostGoPc
	ReleaseAll
	End
@ a5

Script_3: @ a5
	PlayFanfare 0x5dc
	LockAll
	If 0x410c, 0x3
	CompareLastResultJump EQUAL, Script_branch_f4
	If 0x410c, 0xf
	CompareLastResultJump LESSER, Script_branch_100
	SetVar 0x8004, 0x5a
Script_branch_cb: @ cb
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_10c
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	RemovePeople 0x1
	ReleaseAll
	End
@ f4

Script_branch_f4: @ f4
	SetVar 0x8004, 0x145
	Jump Script_branch_cb
Script_branch_100: @ 100
	SetVar 0x8004, 0x6a
	Jump Script_branch_cb
Script_branch_10c: @ 10c
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 116

Script_4: @ 116
	PlayFanfare 0x5dc
	LockAll
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 127

Script_6: @ 127
	PlayFanfare 0x5dc
	LockAll
	Message 0x2
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_149
	Jump Script_branch_17f
	End
@ 149

Script_branch_149: @ 149
	SetVarHero 0x0
	Message 0x3
	CloseMsgOnKeyPress
	PlayFanfare 0x5d2
	PortalEffect 0x1
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x247, 0x0, 0x74, 0x4b, 0x1
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 17f

Script_branch_17f: @ 17f
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 185

.byte 0x0 @ 0x185
.byte 0x0 @ 0x186
.byte 0x0 @ 0x187

@ end_0x188
