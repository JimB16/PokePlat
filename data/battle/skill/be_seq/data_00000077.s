.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_32 Cmd32_Store, Var_3, 0x80000002
	Cmd_31 0x2, 0xfd
	Cmd_32 Cmd32_Store, 0x1f, 0x1
	Cmd_26
	Cmd_f
	end
@ 38

@ end_0x38
