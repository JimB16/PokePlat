.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_4: @ 12
	Cmd_32b 0x4004
	If 0x4004, 0x0
	CompareLastResultJump EQUAL, Script_branch_61
	If 0x4004, 0x1
	CompareLastResultJump EQUAL, Script_branch_6b
	End
@ 32

Script_1: @ 32
	ElevIrAnm
	If 0x4069, 0x122
	CompareLastResultCall 0x5, Script_branch_79
	Cmd_32b 0x4004
	If 0x4004, 0x0
	CompareLastResultJump EQUAL, Script_branch_61
	If 0x4004, 0x1
	CompareLastResultJump EQUAL, Script_branch_6b
	End
@ 61

Script_branch_61: @ 61
	SetTilePassable 0x3, 0x11, 0x1
	End
@ 6b

Script_branch_6b: @ 6b
	SetTilePassable 0x2, 0x11, 0x1
	End
@ 75

Script_2: @ 75
	StopElevAnm
	End
@ 79

Script_branch_79: @ 79
	SetVar 0x4069, 0x0
	Return
@ 81

Script_3: @ 81
	End
@ 83

.byte 0x0 @ 0x83

@ end_0x84
