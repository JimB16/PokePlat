.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

.byte 0x2 @ 0xa
.byte 0x0 @ 0xb

Script_1: @ c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x117
	CompareLastResultJump 0x0, Script_branch_fe
	CheckFlag 0x1
	CompareLastResultCall 0x0, Script_branch_f6
	CheckPokeParty 0x800c, 0xc9
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_48
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 48

Script_branch_48: @ 48
	Cmd_2dd 0x8004, 0xc9
	SetPokemonPartyStored 0x8004, 0x8006
	If2 0x4000, 0x8006
	CompareLastResultJump 0x1, Script_branch_eb
	Jump Script_branch_67
@ 67

Script_branch_67: @ 67
	SetVar 0x8007, 0x32
	SetValue 0x8007, 0x8006
	CheckPokemonParty 0x8007, 0x800c
	If 0x800c, 0x63
	CompareLastResultJump 0x1, Script_branch_eb
	SetVarPoke 0x0, 0x8004
	Message 0x1
	SetVar 0x8000, 0xa
	CheckPokemonParty 0x8007, 0x800c
	If 0x800c, 0x59
	CompareLastResultJump 0x3, Script_branch_b3
	CopyValue 0x800c, 0x59
	CopyValue 0x8000, 0x800c
Script_branch_b3: @ b3
	StorePokemonParty 0x8007, 0x8000
	CopyVar 0x4000, 0x8006
	SetFlag 0x1
	If 0x8000, 0x1
	CompareLastResultJump 0x1, Script_branch_db
	Cmd_345 0x0, 0x8007
	Jump Script_branch_e0
@ db

Script_branch_db: @ db
	SetvarSealRandom 0x0, 0x8007
Script_branch_e0: @ e0
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ eb

Script_branch_eb: @ eb
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ f6

Script_branch_f6: @ f6
	SetVar 0x4000, 0xffff
	Return
@ fe

Script_branch_fe: @ fe
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 109

Script_2: @ 109
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x117
	CompareLastResultJump 0x1, Script_branch_144
	Message 0x5
	SetVar 0x8004, 0x1b2
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	SetFlag 0x117
	Call Function_14f
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 144

Script_branch_144: @ 144
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 14f

Function_14f: @ 14f
	Message 0x6
	CheckIdPlayer 0x8007, 0x6
	SetValue 0x8007, 0x1
	StorePokemonParty 0x8007, 0x1
	CheckIdPlayer 0x8007, 0x6
	SetValue 0x8007, 0x7
	StorePokemonParty 0x8007, 0x1
	CheckIdPlayer 0x8007, 0x6
	SetValue 0x8007, 0x7
	StorePokemonParty 0x8007, 0x1
	CheckIdPlayer 0x8007, 0x4
	SetValue 0x8007, 0x19
	StorePokemonParty 0x8007, 0x1
	CheckIdPlayer 0x8007, 0x7
	SetValue 0x8007, 0x2b
	StorePokemonParty 0x8007, 0x1
	Return
@ 1ae

.byte 0x0 @ 0x1ae
.byte 0x0 @ 0x1af

@ end_0x1b0
