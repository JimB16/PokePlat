.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_32 Cmd32_Bic, Var_Weather, 0x1
	Cmd_12 0x323, 0x0
	Cmd_e
	Cmd_1e 0x1e
	end
@ 2c

@ end_0x2c
