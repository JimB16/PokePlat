.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	SetVar 0x800c, 0x0
	Cmd_20a 0x800c
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_43
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_47
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_50
	Jump Script_branch_59
@ 43

Script_branch_43: @ 43
	ReleaseAll
	End
@ 47

Script_branch_47: @ 47
	Message 0x0
	Jump Script_branch_68
@ 50

Script_branch_50: @ 50
	Message 0x1
	Jump Script_branch_68
@ 59

Script_branch_59: @ 59
	Return2 0x1e, 0x800c
	Message 0x2
	Jump Script_branch_68
@ 68

Script_branch_68: @ 68
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 70

@ end_0x70
