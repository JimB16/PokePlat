.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	CheckNatPokedexStatus 0x2, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_58
	CheckItem 0x1c6, 0x1, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_58
	UnkFunct2 0x0, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_58
	CheckFlag 0x158
	CompareLastResultJump EQUAL, Script_branch_58
	ClearFlag 0x240
	End
@ 58

Script_branch_58: @ 58
	SetFlag 0x240
	End
@ 5e

Script_2: @ 5e
	CheckFlag 0x8e
	CompareLastResultJump EQUAL, Script_branch_6b
	End
@ 6b

Script_branch_6b: @ 6b
	SetFlag 0x240
	RemovePeople 0x0
	ClearFlag 0x8e
	End
@ 79

Script_3: @ 79
	LockAll
	PlayFanfare 0x5dc
	WaitFanfare 0x5dc
	Message 0x0
	CloseMsgOnKeyPress
	SetFlag 0x8e
	WildBattle2 0x1eb, 0x32
	ClearFlag 0x8e
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_14c
	CheckWildBattle2 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_d8
	SetFlag 0x158
Script_branch_bc: @ bc
	SetFlag 0x241
	If 0x40f8, 0x2
	CompareLastResultJump EQUAL, Script_branch_e3
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d8

Script_branch_d8: @ d8
	Message 0x1
	CloseMsgOnKeyPress
	Jump Script_branch_bc
@ e3

Script_branch_e3: @ e3
	Message 0x2
	CloseMsgOnKeyPress
	Return2 0x1e, 0x800c
	FadeScreen 0x6, 0x3, 0x0, 0x0
	ResetScreen
	FadeScreen 0x6, 0x3, 0x1, 0x0
	ResetScreen
	FadeScreen 0x6, 0x3, 0x0, 0x0
	ResetScreen
	FadeScreen 0x6, 0x3, 0x1, 0x0
	ResetScreen
	FadeScreen 0x6, 0x6, 0x0, 0x0
	ResetScreen
	Return2 0x78, 0x800c
	Warp 0x2b, 0x0, 0x8, 0x6, 0x1
	FadeScreen 0x6, 0x6, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 14c

Script_branch_14c: @ 14c
	LostGoPc
	ReleaseAll
	End
@ 152

.byte 0x0 @ 0x152
.byte 0x0 @ 0x153

@ end_0x154
