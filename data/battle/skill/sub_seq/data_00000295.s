.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Store, Var_0x23, 0x1b1
	Cmd_17 0xff
	Cmd_e
@ 1c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000295.bin", 0x1c, 0x68 - 0x1c


@ end_0x68
