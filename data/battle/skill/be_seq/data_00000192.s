.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_89 Script_branch_2c
	Cmd_15 0x232, 0x2, 0x1
	Cmd_32 Store, Var_3, 0x2000005a
	end
@ 2c

Script_branch_2c: @ 2c
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x40
@ 40

