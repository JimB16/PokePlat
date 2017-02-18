.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_12 0x2e4, 0x29, 0xff, 0xff, 0xff
	Cmd_e
@ 1c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000221.bin", 0x1c, 0xec - 0x1c


@ end_0xec
