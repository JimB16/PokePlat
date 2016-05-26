.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckNatPokedexStatus 0x2, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_2f
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2f

Script_branch_2f: @ 2f
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3a

Script_2: @ 3a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckNatPokedexStatus 0x2, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_9a
	Jump Script_branch_5a
@ 5a

Script_branch_5a: @ 5a
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_7a
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_86
	End
@ 7a

Script_branch_7a: @ 7a
	SetVarHero 0x0
	Message 0x2
	Jump Script_branch_92
@ 86

Script_branch_86: @ 86
	SetVarHero 0x0
	Message 0x3
	Jump Script_branch_92
@ 92

Script_branch_92: @ 92
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9a

Script_branch_9a: @ 9a
	CheckFlag 0x964
	CompareLastResultJump 0x0, Script_branch_5a
	CheckFlag 0xf0
	CompareLastResultJump 0x1, Script_branch_c4
	SetFlag 0xf0
	Cmd_21b
	SetVarHero 0x0
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c4

Script_branch_c4: @ c4
	SetVarHero 0x0
	CheckSwarmPoke 0x4001, 0x4000
	SetVarSwarmPoke 0x1, 0x4001
	SetVarPokeStored 0x2, 0x4000, 0x0, 0x1
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_fa
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_103
	End
@ fa

Script_branch_fa: @ fa
	Message 0x5
	Jump Script_branch_10f
@ 103

Script_branch_103: @ 103
	SetVarHero 0x0
	Message 0x6
	Jump Script_branch_10f
@ 10f

Script_branch_10f: @ 10f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 117

.byte 0x0 @ 0x117

@ end_0x118
