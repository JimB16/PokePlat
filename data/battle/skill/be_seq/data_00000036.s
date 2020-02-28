.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_38
	Cmd_2 0x3
	Cmd_32 Add, 0x9, 0x80000000
	Cmd_39 0x7, 0x3, 0x9
	Cmd_26
	Cmd_f_CalcDamage
	end
@ 0x38
@ 38

