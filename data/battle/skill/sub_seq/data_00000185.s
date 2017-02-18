.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_45 0x3, 0x16
	Cmd_e
@ 10


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000185.bin", 0x10, 0x54 - 0x10


@ end_0x54
