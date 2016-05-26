.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_2: @ a
	SetFlag 0x9d8
	End
@ 10

Script_1: @ 10
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckRuinManiac 0x800c
	If 0x800c, 0x1a
	CompareLastResultJump 0x4, Script_branch_34
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 34

Script_branch_34: @ 34
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3f

.byte 0x0 @ 0x3f

@ end_0x40
