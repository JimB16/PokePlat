.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_a1 0x0, Target_7, OBLIVIOUS, Script_branch_e0
	JumpIf TstNe, Var_0xa, 0x10001, Script_branch_1b4
	Cmd_70 Script_branch_1b4
	Cmd_3c_AddNewScript 0x4c
	JumpIf Eq, Var_5, 0x3, Script_branch_78
	JumpIf Eq, Var_5, 0x5, Script_branch_98
	Cmd_12 0xa2, 0x2, 0x7
	Jump Script_branch_c0
@ 78

Script_branch_78: @ 78
	Cmd_12 0x2c3, 0x24, 0xff, 0x15, 0x7
	Jump Script_branch_c0
@ 98

Script_branch_98: @ 98
	Cmd_45 0xff, 0xa
	Cmd_e
@ a8


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000106.bin", 0xa8, 0xc0 - 0xa8


Script_branch_c0: @ c0
	Cmd_e
@ c4


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000106.bin", 0xc4, 0xe0 - 0xc4


Script_branch_e0: @ e0
	JumpIf Eq, Var_5, 0x3, Script_branch_14c
	JumpIf Eq, Var_5, 0x5, Script_branch_18c
	Cmd_11
	Cmd_e
@ 110


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000106.bin", 0x110, 0x14c - 0x110


Script_branch_14c: @ 14c
	JumpIf Eq, Var_5, 0x3, Script_branch_1d8
	Cmd_12 0x2d7, 0x35, 0x7, 0x7, 0xff, 0x15
	Cmd_e
@ 180


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000106.bin", 0x180, 0x18c - 0x180


Script_branch_18c: @ 18c
	Cmd_12 0x47b, 0x26, 0x7, 0x7, 0x15
	Cmd_e
@ 1a8


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000106.bin", 0x1a8, 0x1b4 - 0x1a8


Script_branch_1b4: @ 1b4
	JumpIf Eq, Var_5, 0x3, Script_branch_1d8
	Cmd_32 Orr, Var_0xa, 0x40
Script_branch_1d8: @ 1d8
	end
@ 1dc

@ end_0x1dc
