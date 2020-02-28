.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_ac Script_branch_1c
	Cmd_26
	Cmd_f_CalcDamage
	Cmd_ca 0x1
	end
@ 1c

Script_branch_1c: @ 1c
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x30
@ 30

