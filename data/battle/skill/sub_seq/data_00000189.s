.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Orr, Var_6, 0x40
	Cmd_3c_AddNewScript 0x2
	Cmd_12 0x2a0, 0x24, 0x2, 0x2, 0x1
	Cmd_e
@ 34


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000189.bin", 0x34, 0x40 - 0x34


@ end_0x40
