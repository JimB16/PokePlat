.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Store, Var_3, 0x80000002
	Cmd_31 0x2, 0xfd
	Cmd_32 Store, 0x1f, 0x1
	Cmd_26
	Cmd_f_CalcDamage
	end
@ 0x38
@ 38

