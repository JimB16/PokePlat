.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Store, Var_0x23, 0x108
	Cmd_18 0xff, 0xff, 0xff
	Cmd_e
@ 24


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000232.bin", 0x24, 0x54 - 0x24


@ end_0x54
