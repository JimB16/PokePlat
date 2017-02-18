.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_93 Script_branch_1c
	Cmd_32 Orr, Var_6, 0x800
	end
@ 1c

Script_branch_1c: @ 1c
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 30

@ end_0x30
