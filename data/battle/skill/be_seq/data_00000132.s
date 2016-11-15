.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_76
	Cmd_39 0x7, 0x14, 0xf
	Cmd_32 Cmd32_Store, Var_2, 0x20000061
	Cmd_32 Cmd32_Orr, 0x3c, 0x100
	end
@ 38

@ end_0x38
