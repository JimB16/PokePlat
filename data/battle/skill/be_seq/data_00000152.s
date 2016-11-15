.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_32 Cmd32_Store, Var_3, 0x80000005
	Cmd_32 Cmd32_Orr, 0x6, 0x4
	Cmd_26
	Cmd_f
	end
@ 2c

@ end_0x2c
