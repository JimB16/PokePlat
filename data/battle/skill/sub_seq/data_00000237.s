.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Bic, Var_Weather, 0x40
	Cmd_12 0x32c, 0x0
	Cmd_e
	Cmd_1e 0x1e
	end
@ 0x2c
@ 2c

