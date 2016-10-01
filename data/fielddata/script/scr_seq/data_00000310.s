.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	SetFlag 0x9d5
	CheckNatPokedexStatus 0x2, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_5c
	CheckItem 0x1c4, 0x1, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_5c
	UnkFunct2 0x1, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_5c
	CheckFlag 0x123
	CompareLastResultJump EQUAL, Script_branch_5c
	ClearFlag 0x251
	End
@ 5c

Script_branch_5c: @ 5c
	SetFlag 0x251
	End
@ 62

Script_2: @ 62
	CheckFlag 0x8e
	CompareLastResultJump EQUAL, Script_branch_6f
	End
@ 6f

Script_branch_6f: @ 6f
	SetFlag 0x251
	RemovePeople 0x0
	ClearFlag 0x8e
	End
@ 7d

Script_3: @ 7d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	PlayCry 0x1ec, 0x0
	Message 0x0
	CloseMsgOnKeyPress
	SetFlag 0x8e
	Cmd_318 0x1ec, 0x1e
	ClearFlag 0x8e
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_d7
	CheckWildBattle2 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_c8
	SetFlag 0x123
	ReleaseAll
	End
@ c8

Script_branch_c8: @ c8
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ClearFlag 0x251
	ReleaseAll
	End
@ d7

Script_branch_d7: @ d7
	LostGoPc
	ClearFlag 0x251
	ReleaseAll
	End
@ e1

.byte 0x0 @ 0xe1
.byte 0x0 @ 0xe2
.byte 0x0 @ 0xe3

@ end_0xe4
