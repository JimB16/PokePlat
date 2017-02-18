.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_9c Script_branch_24
	Cmd_32 Store, Var_3, 0x2000004f
	Cmd_26
	Cmd_f
	end
@ 24

Script_branch_24: @ 24
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 38

@ end_0x38
