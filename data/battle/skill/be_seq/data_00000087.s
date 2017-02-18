.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Orr, Var_6, 0x800
	Cmd_3a 0x11, 0x1, 0x2b, 0xe
	Cmd_32 0xc, Var_Damage, 0xffffffff
	end
@ 38

@ end_0x38
