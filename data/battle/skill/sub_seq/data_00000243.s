.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Store, Var_0x23, 0x179
	Cmd_12 0x424, 0xa, 0xff, 0xff
	Cmd_e
@ 28


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000243.bin", 0x28, 0x48 - 0x28


@ end_0x48
