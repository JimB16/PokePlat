.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_1e 0xf
	Cmd_12 0x45e, 0xf, 0xff
	Cmd_e
	Cmd_1e 0x1e
	end
@ 2c

@ end_0x2c
