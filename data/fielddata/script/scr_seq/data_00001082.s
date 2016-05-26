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
	CheckFirstPokeParty 0x800c
	StorePokeNature 0x8004, 0x800c
	SetNaturePokemon 0x0, 0x8004
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2c

Script_2: @ 2c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3f

.byte 0x0 @ 0x3f

@ end_0x40
