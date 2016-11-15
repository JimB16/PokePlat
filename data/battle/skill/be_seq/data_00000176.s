.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_7e Script_branch_40
	Cmd_15 0x1f7, 0x9, 0x1
	Cmd_32 Cmd32_Store, Var_3, 0x2000005a
	Cmd_32 Cmd32_Orr, 0x6, 0x8001c
	end
@ 40

Script_branch_40: @ 40
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 54

@ end_0x54
