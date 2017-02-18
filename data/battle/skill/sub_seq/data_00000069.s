.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_46 0xe, 0xf, 0x20
	Cmd_e
@ 14


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000069.bin", 0x14, 0x200 - 0x14


@ end_0x200
