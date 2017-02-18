.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_36 0xff, 0x0
	Cmd_e
@ 10


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000287.bin", 0x10, 0x14 - 0x10


@ end_0x14
