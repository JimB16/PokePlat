.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_1f 0x1, 0x6ff
	Cmd_12 0x30d, 0x0
	Cmd_e
	Cmd_1e 0x1e
	Cmd_22
	Cmd_e
	Cmd_32 Cmd32_Orr, 0x21, 0x81
	Cmd_b3
	end
@ 44

@ end_0x44
