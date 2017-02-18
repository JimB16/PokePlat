.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Bic, Var_Weather, 0x0|Sunny_Day
	Cmd_12 0x329, 0x0
	Cmd_e
@ 20


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000236.bin", 0x20, 0x2c - 0x20


@ end_0x2c
