.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_31 0x3, 0xdd
	Cmd_32 Cmd32_Store, 0x1f, 0x1
	Cmd_32 Cmd32_Add, 0x1e, 0xa
	Cmd_26
	Cmd_f
	end
@ 38

@ end_0x38
