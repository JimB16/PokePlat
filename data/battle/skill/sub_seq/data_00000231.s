.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf Eq, Var_0x2b, 0x1, Script_branch_8c
	JumpIf TstNe, Var_0, 0x1, Script_branch_4c
	Cmd_12 0xb, 0x0
	Cmd_e
@ 38


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000231.bin", 0x38, 0x4c - 0x38


Script_branch_4c: @ 4c
	Cmd_2b
	Cmd_2c
	Cmd_2d 0x6
	Jump Script_branch_104
@ 64


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000231.bin", 0x64, 0x8c - 0x64


Script_branch_8c: @ 8c
	Cmd_2b
	Cmd_2c
	Cmd_2d 0x6
	Cmd_12 0x343, 0x3a, 0x6, 0x6, 0x6, 0x3
	Cmd_e
@ bc


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000231.bin", 0xbc, 0x104 - 0xbc


Script_branch_104: @ 104
	Cmd_c1
	Cmd_bf 0x6
	Cmd_e
@ 114


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000231.bin", 0x114, 0x17c - 0x114


@ end_0x17c
