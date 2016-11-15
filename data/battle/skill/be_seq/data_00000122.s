.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_72 Script_branch_14
	Cmd_26
	Cmd_f
	end
@ 14

Script_branch_14: @ 14
	Cmd_39 0x7, 0x14, 0x10
	Cmd_32 Cmd32_Store, Var_2, 0x20000061
	Cmd_32 Cmd32_Orr, 0x6, 0x8000
	Cmd_32 Cmd32_Store, 0x3a, 0x1
	end
@ 58

@ end_0x58
