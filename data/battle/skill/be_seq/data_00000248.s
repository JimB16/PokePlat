.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_9a Script_branch_14
	Cmd_26
	Cmd_f_CalcDamage
	end
@ 14

Script_branch_14: @ 14
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x28
@ 28

