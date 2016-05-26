.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x40b5, 0x1
	CompareLastResultJump 0x4, Script_branch_2c
	SetVar 0x40b5, 0x1
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2c

Script_branch_2c: @ 2c
	StorePoketchApp 0x12, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_125
	StorePoketchApp 0x11, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_a7
	StorePoketchApp 0x10, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_89
	Jump Script_branch_6b
@ 6b

Script_branch_6b: @ 6b
	CheckPokeNature 0x8000, 0xc
	If 0x8000, 0xff
	CompareLastResultJump 0x5, Script_branch_c5
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 89

Script_branch_89: @ 89
	CheckPokeNature 0x8000, 0xe
	If 0x8000, 0xff
	CompareLastResultJump 0x5, Script_branch_e5
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a7

Script_branch_a7: @ a7
	CheckPokeNature 0x8000, 0x18
	If 0x8000, 0xff
	CompareLastResultJump 0x5, Script_branch_105
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c5

Script_branch_c5: @ c5
	CheckPokeEgg 0x8000, 0x8001
	SetVarPoke 0x0, 0x8000
	Message 0x4
	SetVar 0x8004, 0x10
	CallStandard 0x7d9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e5

Script_branch_e5: @ e5
	CheckPokeEgg 0x8000, 0x8001
	SetVarPoke 0x0, 0x8000
	Message 0x5
	SetVar 0x8004, 0x11
	CallStandard 0x7d9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 105

Script_branch_105: @ 105
	CheckPokeEgg 0x8000, 0x8001
	SetVarPoke 0x0, 0x8000
	Message 0x6
	SetVar 0x8004, 0x12
	CallStandard 0x7d9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 125

Script_branch_125: @ 125
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 130

@ end_0x130
