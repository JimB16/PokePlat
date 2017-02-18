.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_9 0x4, 0x1
	Cmd_e
@ 10


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000041.bin", 0x10, 0x34 - 0x10


@ end_0x34
