.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Store, Var_0x23, 0x179
	Cmd_12 0x421, 0x22, 0x1, 0xff, 0x1
	Cmd_e
@ 2c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000174.bin", 0x2c, 0x38 - 0x2c


@ end_0x38
