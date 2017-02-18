.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_38 0x2, 0x3
	Cmd_32 Add, Var_0x9, 0x80000000
	Cmd_39 Store, Var_3, Var_0x9
	Cmd_26
	Cmd_f
	end
@ 38

@ end_0x38
