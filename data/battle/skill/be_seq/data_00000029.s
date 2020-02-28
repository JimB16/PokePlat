.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_31 0x0, 0xfd
	Cmd_32 Store, 0x1f, 0x1
	Cmd_26
	Cmd_f_CalcDamage
	end
@ 0x28
@ 28

