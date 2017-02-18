.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_1e
	Cmd_f
	Cmd_12 0x45e, 0xf, 0xff, 0xff
	Cmd_e
@ 20


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000253.bin", 0x20, 0x2c - 0x20


@ end_0x2c
