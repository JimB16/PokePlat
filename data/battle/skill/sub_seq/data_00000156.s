.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_12 0x3e5, 0x0
	Cmd_e
@ 10


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000156.bin", 0x10, 0x178 - 0x10


@ end_0x178
