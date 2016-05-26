.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	SetFlag 0x9e3
	End
@ 14

Script_2: @ 14
	CheckFlag 0x8e
	CompareLastResultJump 0x1, Script_branch_21
	End
@ 21

Script_branch_21: @ 21
	SetFlag 0x1e1
	RemovePeople 0x0
	ClearFlag 0x8e
	End
@ 2f

Script_3: @ 2f
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	PlayCry 0x1e0, 0x0
	Message 0x0
	CloseMsgOnKeyPress
	SetFlag 0x8e
	WildBattle2 0x1e0, 0x32
	ClearFlag 0x8e
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_85
	CheckWildBattle2 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_7a
	SetFlag 0x127
	ReleaseAll
	End
@ 7a

Script_branch_7a: @ 7a
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 85

Script_branch_85: @ 85
	LostGoPc
	ReleaseAll
	End
@ 8b

.byte 0x0 @ 0x8b

@ end_0x8c
