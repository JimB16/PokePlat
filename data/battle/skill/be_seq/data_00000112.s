.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_68 Script_branch_2c
	Cmd_15 0x1ab, 0x1, 0x13
	Cmd_32 Cmd32_Store, Var_3, 0x2000005a
	end
@ 2c

Script_branch_2c: @ 2c
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 40

@ end_0x40
