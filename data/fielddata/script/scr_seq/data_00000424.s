.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	LockAll
	Return2 0x1, 0x800c
	CopyVar 0x8005, 0x8000
	PokemonPartyPicture 0x8000
	CheckSayingLearned 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_31
	Jump Script_branch_54
	End
@ 31

Script_branch_31: @ 31
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_54
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_b2
	End
@ 54

Script_branch_54: @ 54
	SwitchMusic 0x2a, 0xa
	Message 0x1
	SwithMusic2 0x800c
	CopyVar 0x8004, 0x800c
	Return2 0x1e, 0x800c
	StoreSayingLearned 0xa
	Return2 0xa, 0x800c
	If 0x8004, 0x0
	CompareLastResultJump EQUAL, Script_branch_ba
	ActMicrophone
	Return2 0x1, 0x800c
	DeactMicrophone
	Return2 0x1, 0x800c
	ActLearning
	SetVarPokeNick 0x0, 0x8005
	Message 0x2
	SetSoundLearning 0x800c
	PlayCry 0x1b9, 0x0
	WaitCry
	Jump Script_branch_b2
	End
@ b2

Script_branch_b2: @ b2
	HidePicture
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ba

Script_branch_ba: @ ba
	SetVarPokeNick 0x0, 0x8005
	Message 0x3
	Message 0x4
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_54
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_b2
	End
@ e5

.byte 0x0 @ 0xe5
.byte 0x0 @ 0xe6
.byte 0x0 @ 0xe7

@ end_0xe8
