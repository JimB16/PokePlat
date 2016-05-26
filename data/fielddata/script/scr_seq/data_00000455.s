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
	CheckFlag 0x139
	CompareLastResultJump 0x1, Script_branch_5d
	Message 0x0
	SetVar 0x8004, 0xda
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_53
	SetFlag 0x139
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 53

Script_branch_53: @ 53
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5d

Script_branch_5d: @ 5d
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 68

Script_2: @ 68
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7b

Script_3: @ 7b
	PlayFanfare 0x5dc
	LockAll
	Message 0x3
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_9d
	Jump Script_branch_d3
@ 9b

.byte 0x2 @ 0x9b
.byte 0x0 @ 0x9c

Script_branch_9d: @ 9d
	SetVarHero 0x0
	Message 0x4
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Soundfr 0x48e
	Cmd_4f
	HealPokemon
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	SetVarHero 0x0
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d3

Script_branch_d3: @ d3
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d9

.byte 0x0 @ 0xd9
.byte 0x0 @ 0xda
.byte 0x0 @ 0xdb

@ end_0xdc
