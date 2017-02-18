.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_1f 0x1, 0x6ff
	Cmd_13 0x310, 0x2, 0x1
	Cmd_e
@ 20


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000230.bin", 0x20, 0x54 - 0x20


@ end_0x54
