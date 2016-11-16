.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	SetVarHero 0x0
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_31
	Jump Script_branch_3e
@ 2f

.byte 0x2 @ 0x2f
.byte 0x0 @ 0x30

Script_branch_31: @ 31
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	ExitStandard
	End
@ 3e

Script_branch_3e: @ 3e
	Call Function_e8
	CloseMsgOnKeyPress
	ReleaseAll
	ExitStandard
	End
@ 4c

Script_3: @ 4c
	SetVarHero 0x0
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultCall EQUAL, Script_branch_86
	If 0x800c, 0x1
	CompareLastResultCall EQUAL, Script_branch_8b
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_90
	Jump Script_branch_9d
@ 84

.byte 0x2 @ 0x84
.byte 0x0 @ 0x85

Script_branch_86: @ 86
	Message 0x12
	Return
@ 8b

Script_branch_8b: @ 8b
	Message 0x13
	Return
@ 90

Script_branch_90: @ 90
	Message 0x15
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	ExitStandard
	End
@ 9d

Script_4: @ 9d
Script_branch_9d: @ 9d
	Call Script_branch_126
	CloseMsgOnKeyPress
	ReleaseAll
	ExitStandard
	End
@ ab

Script_2: @ ab
	Call Function_b5
	ExitStandard
	End
@ b5

Function_b5: @ b5
	CheckNatPokedexStatus 0x2, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_d6
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_df
	End
@ d6

Script_branch_d6: @ d6
	Message 0x2b
	Jump Function_e8
@ df

Script_branch_df: @ df
	Message 0x2c
	Jump Script_branch_126
@ e8

Function_e8: @ e8
Script_branch_e8: @ e8
	CheckFlag 0x9ba
	CompareLastResultJump LESSER, Script_branch_104
	CheckSinnohPokedex 0x800c
	If 0x800c, 0x1
	CompareLastResultCall EQUAL, Script_branch_120
Script_branch_104: @ 104
	StoreSinPokemonSeen 0x8004
	SetVariableNumber 0x0, 0x8004
	Message 0x1
	SetVarTextPokedex 0x0, 0x800c
	SetVarHero 0x0
	Message3 0x800c
	Cmd_30
	Return
@ 120

Script_branch_120: @ 120
	SetFlag 0x110
	Return
@ 126

Function_126: @ 126
Script_branch_126: @ 126
	StoreNatPokemonSeen 0x8004
	CheckGender 0x8005
	SetVariableNumber 0x0, 0x8004
	Message 0x14
	SetVarTextPokedex 0x1, 0x800c
	SetVarHero 0x0
	Message3 0x800c
	Cmd_30
	Return
@ 146

.byte 0x0 @ 0x146
.byte 0x0 @ 0x147

@ end_0x148
