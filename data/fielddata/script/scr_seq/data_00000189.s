.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	SetVar 0x4000, 0x0
	ElevIrAnm
	CheckElevPosition 0x4001
	If 0x4001, 0x0
	CompareLastResultJump EQUAL, Script_branch_29
	End
@ 29

Script_2: @ 29
Script_branch_29: @ 29
	SetVar 0x4000, 0x1
	End
@ 31

Script_3: @ 31
	StopElevAnm
	SetVar 0x4000, 0x1
	End
@ 3b

.byte 0x0 @ 0x3b

@ end_0x3c
