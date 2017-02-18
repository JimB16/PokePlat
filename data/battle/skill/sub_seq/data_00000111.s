.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_3a 0x11, 0xff, 0x30, 0x9
	Cmd_4f 0x0, Var_0xff, 0x2f, 0x9, Script_branch_94
	Cmd_17 0x1
	Cmd_e
@ 38


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000111.bin", 0x38, 0x94 - 0x38


Script_branch_94: @ 94
	Cmd_1e
	Cmd_1e
	Cmd_12 0xbb, 0x2, 0xff
	Cmd_e
@ b0


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000111.bin", 0xb0, 0xcc - 0xb0


@ end_0xcc
