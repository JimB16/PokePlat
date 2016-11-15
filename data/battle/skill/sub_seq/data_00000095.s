.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_34 0xa, 0x7, 0x3b, 0x100
	Cmd_32 Cmd32_Store, 0x22, 0x15
	Cmd_23_LoadSubSeq
@ 28


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000095.bin", 0x28, 0x2c - 0x28


@ end_0x2c
