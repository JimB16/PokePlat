.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_4f 0x1, Var_1, 0x58, 0x19, Script_branch_34
	Cmd_32 Store, Var_3, 0x80000008
	Cmd_26
	Cmd_f
	end
@ 34

Script_branch_34: @ 34
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 48

@ end_0x48
