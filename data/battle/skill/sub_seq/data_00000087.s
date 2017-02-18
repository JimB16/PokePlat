.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_64 Script_branch_1c
	Cmd_3c_AddNewScript 0x4c
	Cmd_3c_AddNewScript 0x39
	end
@ 1c

Script_branch_1c: @ 1c
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 30

@ end_0x30
