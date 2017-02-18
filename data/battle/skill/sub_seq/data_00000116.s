.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_12 0x1cb, 0x1f, 0x1, 0xff, 0xff
	Cmd_e
@ 1c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000116.bin", 0x1c, 0x28 - 0x1c


@ end_0x28
