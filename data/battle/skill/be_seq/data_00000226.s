.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_18
	Cmd_c9 Script_branch_18
	end
@ 18

Script_branch_18: @ 18
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 2c

@ end_0x2c
