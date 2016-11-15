.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_32 Cmd32_Add, Var_1, 0x1
	Cmd_32 Cmd32_Store, Var_3, 0x80000002
	Cmd_26
	Cmd_f
	end
@ 2c

@ end_0x2c
