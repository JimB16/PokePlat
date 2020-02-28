.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_11
	Cmd_e
	Cmd_1e 0x1e
	JumpIf TstEq, 0xa, 0x20000, Script_branch_30
	Cmd_14
	Jump Script_branch_2d0
@ 30

Script_branch_30: @ 30
	JumpIf TstEq, 0xa, 0x10000, Script_branch_4c
	Jump Script_branch_278
@ 4c

Script_branch_4c: @ 4c
	JumpIf TstEq, 0xa, 0x8000, Script_branch_118
	JumpIf Eq, 0x18, 0xad, Script_branch_ec
	JumpIf Eq, 0x18, 0xab, Script_branch_ec
	JumpIf Eq, 0x18, 0x176, Script_branch_ec
	JumpIf Eq, 0x18, 0x183, Script_branch_ec
	JumpIf Eq, 0x18, 0x177, Script_branch_ec
	JumpIf Eq, 0x18, 0xfc, Script_branch_ec
	JumpIf Ne, 0x18, 0x16b, Script_branch_100
Script_branch_ec: @ ec
	JumpIf TstNe, 0xa, 0x40, Script_branch_188
Script_branch_100: @ 100
	Cmd_12 0xf, 0x2, 0x2
	Jump Script_branch_2d0
@ 118

Script_branch_118: @ 118
	JumpIf TstEq, 0xa, 0x800, Script_branch_148
	Cmd_12 0x15, 0xb, 0x2, 0x2
	Jump Script_branch_2d0
@ 148

Script_branch_148: @ 148
	JumpIf TstEq, 0xa, 0x100000, Script_branch_188
	Cmd_32 Store, 0x23, 0x189
	Cmd_12 0x40c, 0xa, 0x2, 0xff
	Jump Script_branch_2d0
@ 188

Script_branch_188: @ 188
	JumpIf TstEq, 0xa, 0x40, Script_branch_1b0
	Cmd_12 0x31c, 0x0
	Jump Script_branch_2d0
@ 1b0

Script_branch_1b0: @ 1b0
	JumpIf TstEq, 0xa, 0x40000, Script_branch_1e0
	Cmd_12 0x12, 0xb, 0x2, 0x2
	Jump Script_branch_2d0
@ 1e0

Script_branch_1e0: @ 1e0
	JumpIf TstEq, 0xa, 0x8, Script_branch_21c
	Cmd_c3 0x1, 0x0, 0x5f
	Cmd_12 0x1b, 0x2, 0x2
	Jump Script_branch_2d0
@ 21c

Script_branch_21c: @ 21c
	JumpIf TstEq, 0xa, 0x80000, Script_branch_24c
	Cmd_12 0x271, 0xb, 0x2, 0x2
	Jump Script_branch_2d0
@ 24c

Script_branch_24c: @ 24c
	JumpIf TstEq, 0xa, 0x1000, Script_branch_278
	Cmd_12 0x156, 0x2, 0x2
	Jump Script_branch_2d0
@ 278

Script_branch_278: @ 278
	LoadMoveData 0x7
	JumpIf Eq, 0x9, 0x4, Script_branch_2c0
	JumpIf Eq, 0x9, 0x8, Script_branch_2c0
	Cmd_12 0xc, 0x2, 0x1
	Jump Script_branch_2d0
@ 2c0

Script_branch_2c0: @ 2c0
	Cmd_12 0x18, 0x2, 0x2
Script_branch_2d0: @ 2d0
	Cmd_e
	Cmd_1e 0x1e
	JumpIf TstEq, 0x6, 0x40000, Script_branch_2f8
	AddNewScript 57
Script_branch_2f8: @ 2f8
	Cmd_41 0x1
	AddNewScript 61
	end
@ 0x30c
@ 30c

