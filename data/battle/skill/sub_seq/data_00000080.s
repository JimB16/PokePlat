.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_40
	Cmd_5e Script_branch_40
	Cmd_3c_AddNewScript 0x4c
	Cmd_12 0x181, 0xa, 0x1, 0xff
	Cmd_e
@ 34


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000080.bin", 0x34, 0x40 - 0x34


Script_branch_40: @ 40
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 54

@ end_0x54
