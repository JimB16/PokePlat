.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_32 Cmd32_Store, 0x23, 0x1b1
	Cmd_17 0xff
	Cmd_e
	Cmd_32 Cmd32_Store, 0x3a, 0x0
	Cmd_32 Cmd32_Bic, 0x6, 0x4000
	Cmd_12 0x4f3, 0x0
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Cmd32_Orr, Var_Weather, 0x50000
	end
@ 68

@ end_0x68
