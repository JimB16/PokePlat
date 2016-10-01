.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_2: @ e
	If 0x406a, 0x122
	CompareLastResultCall 0x5, Script_branch_3b
	Cmd_32b 0x4001
	If 0x4001, 0x0
	CompareLastResultJump EQUAL, Script_branch_63
	If 0x4001, 0x1
	CompareLastResultJump EQUAL, Script_branch_6d
	End
@ 3b

Script_branch_3b: @ 3b
	SetVar 0x406a, 0x0
	Return
@ 43

Script_3: @ 43
	Cmd_32b 0x4001
	If 0x4001, 0x0
	CompareLastResultJump EQUAL, Script_branch_63
	If 0x4001, 0x1
	CompareLastResultJump EQUAL, Script_branch_6d
	End
@ 63

Script_branch_63: @ 63
	SetTilePassable 0x3, 0x11, 0x10
	End
@ 6d

Script_branch_6d: @ 6d
	SetTilePassable 0x2, 0x11, 0x10
	End
@ 77

Script_1: @ 77
	End
@ 79

.byte 0x0 @ 0x79
.byte 0x0 @ 0x7a
.byte 0x0 @ 0x7b

@ end_0x7c
