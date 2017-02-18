.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_7e Script_branch_40
	Cmd_15 0x1f7, 0x9, 0x1, 0xff
	Cmd_32 Store, Var_3, 0x2000005a
	Cmd_32 Orr, Var_6, 0x8001c
	end
@ 40

Script_branch_40: @ 40
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 54

@ end_0x54
