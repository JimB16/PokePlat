.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_32 Cmd32_Store, 0x9, 0x10000000
	Cmd_39 0xe, 0x9, 0xf
	Cmd_39 0xa, 0x6, 0x9
	Cmd_34 0x7, 0x1, 0x2f, 0x0
	Cmd_32 Cmd32_Store, 0x20, 0x7fff
	Cmd_1b 0x1
	Cmd_32 Cmd32_Orr, 0x6, 0x8001c
	Cmd_32 Cmd32_Store, Var_2, 0xa000006b
	end
@ 80

@ end_0x80