.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	SetFlag 0x9ca
	CheckFlag 0x964
	CompareLastResultJump LESSER, Script_branch_2f
	CheckNatPokedexStatus 0x2, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_2f
	SetFlag 0x27e
Script_branch_2f: @ 2f
	End
@ 31

Script_2: @ 31
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x964
	CompareLastResultJump EQUAL, Script_branch_4f
	Message 0x0
	Jump Script_branch_5a
	End
@ 4f

Script_branch_4f: @ 4f
	Message 0x1
	Jump Script_branch_5a
	End
@ 5a

Script_branch_5a: @ 5a
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 62

.byte 0x0 @ 0x62
.byte 0x0 @ 0x63

@ end_0x64
