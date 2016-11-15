.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_32 Cmd32_Store, 0x23, 0x10d
	Cmd_12 0x4e9, 0xa, 0xff
	Cmd_e
	Cmd_1e 0x1e
	end
@ 34

@ end_0x34
