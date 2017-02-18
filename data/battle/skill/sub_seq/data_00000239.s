.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Store, Var_0x23, 0x179
	Cmd_12 0x41e, 0xa, 0xff, 0xff
	Cmd_e
@ 28


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000239.bin", 0x28, 0x34 - 0x28


@ end_0x34
