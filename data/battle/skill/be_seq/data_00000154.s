.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_32 Cmd32_Orr, 0x6, 0x8000
	Cmd_26
	Cmd_7c
	Cmd_32 Cmd32_Store, Var_2, 0x20000066
	Cmd_32 Cmd32_Orr, 0x6, 0x10000
	end
@ 3c

@ end_0x3c
