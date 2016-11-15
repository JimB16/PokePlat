.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_12 0x31c, 0x0
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Cmd32_Orr, 0xa, 0x80000000
	end
@ 2c

@ end_0x2c
