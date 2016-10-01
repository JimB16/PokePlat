.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	CheckFlag 0x149
	CompareLastResultJump EQUAL, Script_branch_9c
	CheckFlag 0xab0
	CompareLastResultJump EQUAL, Script_branch_9c
	CheckTime 0x800c
	If 0x800c, 0x3
	CompareLastResultJump LESSER, Script_branch_9c
	Message 0x1
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_96
	SetVarHero 0x0
	Message 0x2
	CloseMsgOnKeyPress
	PlayCry 0x1df, 0x0
	WaitCry
	SetFlag 0xab0
	WildBattle 0x1df, 0x14
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_a7
	CheckWildBattle2 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_8b
	SetFlag 0x149
	ReleaseAll
	End
@ 8b

Script_branch_8b: @ 8b
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 96

Script_branch_96: @ 96
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9c

Script_branch_9c: @ 9c
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a7

Script_branch_a7: @ a7
	LostGoPc
	ReleaseAll
	End
@ ad

.byte 0x0 @ 0xad
.byte 0x0 @ 0xae
.byte 0x0 @ 0xaf

@ end_0xb0
