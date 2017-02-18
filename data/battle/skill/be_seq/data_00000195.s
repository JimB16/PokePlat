.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_8b Script_branch_2c
	Cmd_15 0x241, 0x2, 0x1
	Cmd_32 Store, Var_3, 0x2000005a
	end
@ 2c

Script_branch_2c: @ 2c
	Cmd_32 Store, Var_0xa, 0x40
	end
@ 40

@ end_0x40
