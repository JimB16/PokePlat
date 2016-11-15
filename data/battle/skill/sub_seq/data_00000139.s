.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_11
	Cmd_e
	Cmd_1e 0xf
	Cmd_12 0x23e, 0xa, 0x1
	Cmd_e
	Cmd_1e 0x1e
	Cmd_83
	Cmd_32 Cmd32_Bic, 0x6, 0x4000
	end
@ 48

@ end_0x48
