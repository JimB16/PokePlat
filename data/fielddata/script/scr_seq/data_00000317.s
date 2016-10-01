.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	CheckFlag 0x8e
	CompareLastResultJump EQUAL, Script_branch_17
	End
@ 17

Script_branch_17: @ 17
	SetFlag 0x243
	RemovePeople 0x0
	ClearFlag 0x8e
	End
@ 25

Script_2: @ 25
	LockAll
	PlayFanfare 0x5dc
	WaitFanfare 0x5dc
	CheckFlag 0x11a
	CompareLastResultJump EQUAL, Script_branch_81
	CheckRegi 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_73
	SetFlag 0x11a
	SetVarHero 0x0
	Message 0x1
	CloseMsgOnKeyPress
	Release 0x0
	RegigigasAnm 0x0, 0x8, 0x5a, 0x3, 0x0
	Lock 0x0
	Jump Script_branch_81
	End
@ 73

Script_branch_73: @ 73
	SetVarHero 0x0
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 81

Script_branch_81: @ 81
	Message 0x2
	CloseMsgOnKeyPress
	PlayCry 0x1e6, 0x0
	WaitCry
	SetFlag 0x8e
	WildBattle2 0x1e6, 0x1
	ClearFlag 0x8e
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_d1
	CheckWildBattle2 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_c6
	SetFlag 0x11b
	ReleaseAll
	End
@ c6

Script_branch_c6: @ c6
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d1

Script_branch_d1: @ d1
	LostGoPc
	ReleaseAll
	End
@ d7

.byte 0x0 @ 0xd7

@ end_0xd8
