.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_6a Script_branch_b8
	Cmd_3c_AddNewScript 0x4c
	Cmd_12 0x336, 0x0
	Cmd_e
@ 20


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000101.bin", 0x20, 0xb8 - 0x20


Script_branch_b8: @ b8
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ cc

@ end_0xcc
