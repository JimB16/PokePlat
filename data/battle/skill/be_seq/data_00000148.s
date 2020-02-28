.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_79 Script_branch_2c
	Cmd_32 Store, Var_3, 0x2000005a
	Cmd_32 Orr, 0x6, 0x8841c
	end
@ 2c

Script_branch_2c: @ 2c
	Cmd_11
	Cmd_e
	Cmd_1e 0x1e
	AddNewScript 75
	end
@ 0x48
@ 48

