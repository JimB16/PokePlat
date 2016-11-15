.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_1e 0xf
	Cmd_1f 0x1, 0x5ec
	Cmd_12 0x35a, 0x33, 0x1
	Cmd_e
	Cmd_1e 0x1e
	Cmd_bb 0x1
	JumpIf Eq, 0x16, 0x0, Script_branch_d4
	JumpIf Eq, 0x16, 0x1, Script_branch_104
	JumpIf Eq, 0x16, 0x2, Script_branch_120
	JumpIf Eq, 0x16, 0x3, Script_branch_13c
	JumpIf Eq, 0x16, 0x4, Script_branch_158
	JumpIf Eq, 0x16, 0x5, Script_branch_174
	Cmd_12 0x380, 0xf, 0x1
	Jump Script_branch_190
@ d4

Script_branch_d4: @ d4
	Cmd_34 0xb, 0x1, 0x35, 0x7
	Cmd_12 0x37a, 0xf, 0x1
	Jump Script_branch_1a4
@ 104

Script_branch_104: @ 104
	Cmd_12 0x36b, 0xf, 0x1
	Jump Script_branch_190
@ 120

Script_branch_120: @ 120
	Cmd_12 0x374, 0xf, 0x1
	Jump Script_branch_190
@ 13c

Script_branch_13c: @ 13c
	Cmd_12 0x371, 0xf, 0x1
	Jump Script_branch_190
@ 158

Script_branch_158: @ 158
	Cmd_12 0x36e, 0xf, 0x1
	Jump Script_branch_190
@ 174

Script_branch_174: @ 174
	Cmd_12 0x377, 0xf, 0x1
	Jump Script_branch_190
@ 190

Script_branch_190: @ 190
	Cmd_34 0x7, 0x1, 0x34, 0x0
Script_branch_1a4: @ 1a4
	Cmd_e
	Cmd_42 0x1, 0x0
	Cmd_1e 0x1e
	end
@ 1c0

@ end_0x1c0
