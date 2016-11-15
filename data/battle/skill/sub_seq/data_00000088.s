.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_62
	JumpIf Eq, 0x18, 0x138, Script_branch_2c
	Cmd_12 0x335, 0x0
	Jump Script_branch_38
@ 2c

Script_branch_2c: @ 2c
	Cmd_12 0x250, 0x0
Script_branch_38: @ 38
	Cmd_e
	Cmd_1e 0x1e
	JumpIf Eq, 0x18, 0x138, Script_branch_c8
	JumpIf TstEq, 0x9, 0x1, Script_branch_90
	Cmd_12 0x2b1, 0x25, 0x1
	Cmd_e
	Cmd_1e 0x1e
Script_branch_90: @ 90
	JumpIf TstEq, 0x9, 0x2, Script_branch_c8
	Cmd_12 0x2b1, 0x25, 0x10
	Cmd_e
	Cmd_1e 0x1e
Script_branch_c8: @ c8
	JumpIf TstNe, 0x9, 0x4, Script_branch_e8
	Cmd_42 0x1, 0x0
Script_branch_e8: @ e8
	JumpIf TstNe, 0x9, 0x8, Script_branch_108
	Cmd_42 0x10, 0x0
Script_branch_108: @ 108
	end
@ 10c

@ end_0x10c
