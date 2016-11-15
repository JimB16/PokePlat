.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_a1 0x0, 0x7, 0x7, Script_branch_2ac
	Cmd_d3 0xa
	JumpIf TstEq, Var_Weather, 0x30, Script_branch_44
	Cmd_a1 0x0, 0x7, 0x66, Script_branch_2ac
Script_branch_44: @ 44
	JumpIf Ne, 0x5, 0x2, Script_branch_6c
	Cmd_a1 0x0, 0x7, 0x13, Script_branch_1f0
Script_branch_6c: @ 6c
	JumpIf Ne, 0x5, 0x1, Script_branch_88
	Cmd_11
	Cmd_e
Script_branch_88: @ 88
	JumpIf Eq, 0x5, 0x3, Script_branch_a8
	Cmd_d2 0x7, Script_branch_1f0
Script_branch_a8: @ a8
	JumpIfPkmnBattleData TstNe, 0x7, 0x34, 0x40, Script_branch_230
	JumpIfPkmnBattleData Ne, 0x7, 0x34, 0x0, Script_branch_1f0
	JumpIf Eq, 0x5, 0x3, Script_branch_134
	JumpIf TstNe, 0xa, 0x10001, Script_branch_1f0
	JumpIf TstNe, 0xd, 0x8, Script_branch_324
	JumpIf Ne, 0x5, 0x1, Script_branch_134
	Cmd_17 0x1
	Cmd_e
Script_branch_134: @ 134
	Cmd_45 0x7, 0x5
	Cmd_e
	Cmd_34 0xa, 0x7, 0x34, 0x40
	JumpIf Eq, 0x5, 0x3, Script_branch_184
	Cmd_12 0x78, 0x2, 0x7
	Jump Script_branch_19c
@ 184

Script_branch_184: @ 184
	Cmd_12 0x7b, 0x24, 0xff
Script_branch_19c: @ 19c
	Cmd_e
	Cmd_42 0x7, 0x5
	Cmd_1e 0x1e
	JumpIf TstNe, 0x6, 0x80, Script_branch_1dc
	Cmd_32 Cmd32_Orr, 0x6, 0x80
	end
@ 1dc

Script_branch_1dc: @ 1dc
	Cmd_32 Cmd32_Bic, 0x6, 0x80
	end
@ 1f0

Script_branch_1f0: @ 1f0
	JumpIf Eq, 0x5, 0x2, Script_branch_36c
	JumpIf Eq, 0x5, 0x3, Script_branch_36c
	Cmd_1e 0x1e
	Cmd_3c 0x4b
	Jump Script_branch_36c
@ 230

Script_branch_230: @ 230
	JumpIf Eq, 0x5, 0x2, Script_branch_36c
	JumpIf Eq, 0x5, 0x3, Script_branch_36c
	Cmd_1e 0x1e
	Cmd_12 0x85, 0x2, 0x7
	Jump Script_branch_350
@ 278


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000031.bin", 0x278, 0x2ac - 0x278


Script_branch_2ac: @ 2ac
	JumpIf Eq, 0x5, 0x2, Script_branch_36c
	JumpIf Eq, 0x5, 0x3, Script_branch_36c
	Cmd_11
	Cmd_e
	Cmd_1e 0x1e
	Cmd_12 0x284, 0xb, 0x7
	Jump Script_branch_350
@ 300


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000031.bin", 0x300, 0x324 - 0x300


Script_branch_324: @ 324
	JumpIf Eq, 0x5, 0x2, Script_branch_36c
	Cmd_1e 0x1e
	Cmd_12 0xc8, 0x2, 0x7
Script_branch_350: @ 350
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Cmd32_Orr, 0xa, 0x80000000
Script_branch_36c: @ 36c
	end
@ 370

@ end_0x370
