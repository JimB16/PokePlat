.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_5c Script_branch_2c
	AddNewScript 76
	Cmd_12 0x174, 0x2, 0x2
	Cmd_e
	Cmd_1e 0x1e
Script_branch_2c: @ 2c
	end
@ 0x30
@ 30

