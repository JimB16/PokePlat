.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	CheckIdPlayer 0x800c, 0x4
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_44
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_4f
	If 0x800c, 0x2
	CompareLastResultJump 0x1, Script_branch_5a
	Jump Script_branch_65
@ 44

Script_branch_44: @ 44
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4f

Script_branch_4f: @ 4f
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5a

Script_branch_5a: @ 5a
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 65

Script_branch_65: @ 65
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 70

@ end_0x70
