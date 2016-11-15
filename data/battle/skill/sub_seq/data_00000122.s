.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIf Eq, Var_0, 0x4a, Script_branch_6c
	Cmd_7b Script_branch_6c
	Cmd_3c 0x4c
	Cmd_12 0x1d5, 0x2, 0x1
	Cmd_e
	Cmd_1e 0x1e
	Cmd_22
	Cmd_e
	Cmd_32 Cmd32_Orr, 0x21, 0x5
	Cmd_c3 0x1, 0x1, 0x63
	end
@ 6c

Script_branch_6c: @ 6c
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 80

@ end_0x80
