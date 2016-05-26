.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	CheckFlag 0x132
	CompareLastResultJump 0x1, Script_branch_40
	CheckFlag 0x132
	CompareLastResultJump 0x0, Script_branch_4a
	End
@ 22

Script_2: @ 22
	Call Function_118
	CheckFlag 0x132
	CompareLastResultJump 0x1, Script_branch_40
	CheckFlag 0x132
	CompareLastResultJump 0x0, Script_branch_4a
	End
@ 40

Script_branch_40: @ 40
	SetTilePassable 0x2, 0x7, 0x5
	End
@ 4a

Script_branch_4a: @ 4a
	If 0x40aa, 0x2
	CompareLastResultJump 0x4, Script_branch_69
	Jump Script_branch_5f
@ 5d

.byte 0x2 @ 0x5d
.byte 0x0 @ 0x5e

Script_branch_5f: @ 5f
	SetTilePassable 0x1, 0x7, 0x5
	End
@ 69

Script_branch_69: @ 69
	CheckFlag 0x145
	CompareLastResultJump 0x0, Script_branch_5f
	CheckFlag 0xd0
	CompareLastResultJump 0x1, Script_branch_bc
	If 0x40c4, 0x1
	CompareLastResultJump 0x4, Script_branch_bc
	CheckItem 0x87, 0x1, 0x4001
	If 0x4001, 0x1
	CompareLastResultJump 0x1, Script_branch_104
	Cmd_32f 0x87, 0x4001
	If 0x4001, 0x1
	CompareLastResultJump 0x1, Script_branch_104
	Jump Script_branch_bc
@ ba

.byte 0x2 @ 0xba
.byte 0x0 @ 0xbb

Script_branch_bc: @ bc
	CheckFlag 0xd1
	CompareLastResultJump 0x1, Script_branch_5f
	If 0x40c5, 0x1
	CompareLastResultJump 0x4, Script_branch_5f
	CheckItem 0x88, 0x1, 0x4001
	If 0x4001, 0x1
	CompareLastResultJump 0x1, Script_branch_10e
	Cmd_32f 0x88, 0x4001
	If 0x4001, 0x1
	CompareLastResultJump 0x1, Script_branch_10e
	Jump Script_branch_5f
@ 102

.byte 0x2 @ 0x102
.byte 0x0 @ 0x103

Script_branch_104: @ 104
	SetTilePassable 0x3, 0x7, 0x5
	End
@ 10e

Script_branch_10e: @ 10e
	SetTilePassable 0x4, 0x7, 0x5
	End
@ 118

Function_118: @ 118
	SetTilePassable 0x1, 0x1, 0x5
	SetTilePassable 0x2, 0x1, 0x5
	SetTilePassable 0x3, 0x1, 0x5
	SetTilePassable 0x4, 0x1, 0x5
	Return
@ 13a

.byte 0x0 @ 0x13a
.byte 0x0 @ 0x13b

@ end_0x13c
