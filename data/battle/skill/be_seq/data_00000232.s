.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_20
	Cmd_32 Cmd32_Store, Var_2, 0xa0000086
	end
@ 20

Script_branch_20: @ 20
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 34

@ end_0x34
