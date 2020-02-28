.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Store, Var_3, 0x80000005
	Cmd_32 Orr, 0x6, 0x4
	Cmd_26
	Cmd_f_CalcDamage
	end
@ 0x2c
@ 2c

