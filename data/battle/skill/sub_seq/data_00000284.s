.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_1f 0x1, 0x6ff
	Cmd_12 0x30d, 0x0
	Cmd_e
@ 1c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000284.bin", 0x1c, 0x44 - 0x1c


@ end_0x44
