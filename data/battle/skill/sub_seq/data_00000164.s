.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Store, Var_0x9, 0x5000
	Cmd_39 Orr, Var_0xb, Var_0x9
	Cmd_12 0x4d9, 0x1, 0x1
	Cmd_e
@ 34


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000164.bin", 0x34, 0x40 - 0x34


@ end_0x40
