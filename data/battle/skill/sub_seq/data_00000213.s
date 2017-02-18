.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_45 0xff, 0xa
	Cmd_e
@ 10


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000213.bin", 0x10, 0x4c - 0x10


@ end_0x4c
