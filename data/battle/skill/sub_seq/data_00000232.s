.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_32 Cmd32_Store, 0x23, 0x108
	Cmd_18 0xff, 0xff, 0xff
	Cmd_e
	Cmd_12 0x1f1, 0x2, 0xff
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Cmd32_Bic, 0x6, 0x4000
	end
@ 54

@ end_0x54