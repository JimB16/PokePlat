.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_12 0x33d, 0x2, 0x1
	Cmd_e
	Cmd_1e 0x1e
	Cmd_12 0x31d, 0x0
	Cmd_e
	Cmd_1e 0x1e
	Cmd_41 0x1
	Cmd_23_LoadSubSeq
@ 40


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000258.bin", 0x40, 0x44 - 0x40


@ end_0x44
