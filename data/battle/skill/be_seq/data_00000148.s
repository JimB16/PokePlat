.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_79 Script_branch_2c
	Cmd_32 Cmd32_Store, Var_3, 0x2000005a
	Cmd_32 Cmd32_Orr, 0x6, 0x8841c
	end
@ 2c

Script_branch_2c: @ 2c
	Cmd_11
	Cmd_e
	Cmd_1e 0x1e
	Cmd_3c 0x4b
	end
@ 48

@ end_0x48
