.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_45 0x3, 0x14
	Cmd_e
	Cmd_1e 0xf
	Cmd_12 0x2bd, 0xb, 0xff
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Cmd32_Bic, Var_Weather, 0x80ff
	Cmd_32 Cmd32_Orr, Var_Weather, 0x80
	end
@ 5c

@ end_0x5c
