.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_11
	Cmd_e
@ 8


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000007.bin", 0x8, 0x30c - 0x8


@ end_0x30c
