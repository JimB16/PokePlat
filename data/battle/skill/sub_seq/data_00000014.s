.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_a5 0x7, Script_branch_68
	Cmd_d2 0x7, Script_branch_b8
	Cmd_a1 0x0, 0x7, 0x27, Script_branch_6c
	JumpIf Ne, 0x5, 0x2, Script_branch_54
	Cmd_a1 0x0, 0x7, 0x13, Script_branch_68
Script_branch_54: @ 54
	Cmd_34 0xa, 0x7, 0x35, 0x8
Script_branch_68: @ 68
	end
@ 6c

Script_branch_6c: @ 6c
	JumpIf Eq, 0x18, 0xfc, Script_branch_94
	JumpIf Ne, 0x5, 0x1, Script_branch_b4
Script_branch_94: @ 94
	Cmd_12 0x2e1, 0xb, 0x7
	Cmd_e
	Cmd_1e 0x1e
Script_branch_b4: @ b4
	end
@ b8

Script_branch_b8: @ b8
	JumpIf Ne, 0x5, 0x1, Script_branch_dc
	Cmd_32 Cmd32_Orr, 0xa, 0x40
Script_branch_dc: @ dc
	end
@ e0

@ end_0xe0
