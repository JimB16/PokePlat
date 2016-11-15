.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_12 0x18, 0x2, 0x2
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Cmd32_Orr, 0xa, 0x80000000
	end
@ 30

@ end_0x30
