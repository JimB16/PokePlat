.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_12 0x31c, 0x0
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Orr, 0xa, 0x80000000
	end
@ 0x2c
@ 2c

