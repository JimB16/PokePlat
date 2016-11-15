.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_45 0x3, 0x16
	Cmd_e
	Cmd_12 0x2ba, 0xb, 0xff
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Cmd32_Bic, Var_Weather, 0x80ff
	Cmd_32 Cmd32_Orr, Var_Weather, 0x20
	end
@ 54

@ end_0x54
