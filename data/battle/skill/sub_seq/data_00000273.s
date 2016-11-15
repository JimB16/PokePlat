.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_45 0x3, 0x15
	Cmd_e
	Cmd_12 0x324, 0x0
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Cmd32_Orr, Var_Weather, 0x8
	end
@ 3c

@ end_0x3c
