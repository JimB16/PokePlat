.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Add, Var_1, 0x1
	Cmd_32 Store, Var_3, 0x80000002
	Cmd_26
	Cmd_f
	end
@ 2c

@ end_0x2c
