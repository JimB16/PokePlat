.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_32 Cmd32_Store, Var_3, 0x20000077
	Cmd_32 Cmd32_Orr, 0x6, 0x8000
	end
@ 24

@ end_0x24
