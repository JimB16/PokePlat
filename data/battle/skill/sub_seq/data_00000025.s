.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIf Ne, 0x5, 0x5, Script_branch_d4
	Cmd_37 0x0, 0x7, 0x29, Script_branch_350
	Cmd_d3 0xa
	JumpIf TstEq, Var_Weather, 0x30, Script_branch_58
	Cmd_37 0x0, 0x7, 0x66, Script_branch_350
Script_branch_58: @ 58
	JumpIfPkmnBattleData TstNe, 0x7, 0x34, 0x10, Script_branch_350
	JumpIfPkmnBattleData Eq, 0x7, 0x1b, 0xa, Script_branch_350
	JumpIfPkmnBattleData Eq, 0x7, 0x1c, 0xa, Script_branch_350
	JumpIfPkmnBattleData Ne, 0x7, 0x34, 0x0, Script_branch_350
	JumpIf TstNe, 0xd, 0x8, Script_branch_350
	Jump Script_branch_238
@ d4

Script_branch_d4: @ d4
	Cmd_a1 0x0, 0x7, 0x29, Script_branch_424
	Cmd_d3 0xa
	JumpIf TstEq, Var_Weather, 0x30, Script_branch_118
	Cmd_a1 0x0, 0x7, 0x66, Script_branch_424
Script_branch_118: @ 118
	JumpIf Ne, 0x5, 0x2, Script_branch_140
	Cmd_a1 0x0, 0x7, 0x13, Script_branch_354
Script_branch_140: @ 140
	JumpIf Ne, 0x5, 0x1, Script_branch_15c
	Cmd_11
	Cmd_e
Script_branch_15c: @ 15c
	JumpIf Eq, 0x5, 0x3, Script_branch_17c
	Cmd_d2 0x7, Script_branch_354
Script_branch_17c: @ 17c
	JumpIfPkmnBattleData TstNe, 0x7, 0x34, 0x10, Script_branch_394
	JumpIfPkmnBattleData Eq, 0x7, 0x1b, 0xa, Script_branch_3dc
	JumpIfPkmnBattleData Eq, 0x7, 0x1c, 0xa, Script_branch_3dc
	JumpIfPkmnBattleData Ne, 0x7, 0x34, 0x0, Script_branch_354
	JumpIf Eq, 0x5, 0x3, Script_branch_238
	JumpIf TstNe, 0xa, 0x10001, Script_branch_354
	JumpIf TstNe, 0xd, 0x8, Script_branch_49c
	JumpIf Ne, 0x5, 0x1, Script_branch_238
	Cmd_17 0x1
	Cmd_e
Script_branch_238: @ 238
	JumpIf Ne, 0x5, 0x5, Script_branch_264
	Cmd_45 0x7, 0xa
	Cmd_e
	Cmd_1e 0xf
Script_branch_264: @ 264
	Cmd_45 0x7, 0x3
	Cmd_e
	Cmd_34 0xa, 0x7, 0x34, 0x10
	JumpIf Eq, 0x5, 0x3, Script_branch_2c8
	JumpIf Eq, 0x5, 0x5, Script_branch_2e8
	Cmd_12 0x55, 0x2, 0x7
	Jump Script_branch_2fc
@ 2c8

Script_branch_2c8: @ 2c8
	Cmd_12 0x58, 0x24, 0xff
	Jump Script_branch_2fc
@ 2e8

Script_branch_2e8: @ 2e8
	Cmd_12 0x493, 0xf, 0x7
Script_branch_2fc: @ 2fc
	Cmd_e
	Cmd_42 0x7, 0x3
	Cmd_1e 0x1e
	JumpIf TstNe, 0x6, 0x80, Script_branch_340
	Cmd_32 Cmd32_Orr, 0x6, 0x80
	Jump Script_branch_350
@ 340

Script_branch_340: @ 340
	Cmd_32 Cmd32_Bic, 0x6, 0x80
Script_branch_350: @ 350
	end
@ 354

Script_branch_354: @ 354
	JumpIf Eq, 0x5, 0x2, Script_branch_4e4
	JumpIf Eq, 0x5, 0x3, Script_branch_4e4
	Cmd_1e 0x1e
	Cmd_3c 0x4b
	Jump Script_branch_4e4
@ 394

Script_branch_394: @ 394
	JumpIf Eq, 0x5, 0x2, Script_branch_4e4
	JumpIf Eq, 0x5, 0x3, Script_branch_4e4
	Cmd_1e 0x1e
	Cmd_12 0x62, 0x2, 0x7
	Jump Script_branch_4c8
@ 3dc

Script_branch_3dc: @ 3dc
	JumpIf Eq, 0x5, 0x2, Script_branch_4e4
	JumpIf Eq, 0x5, 0x3, Script_branch_4e4
	Cmd_1e 0x1e
	Cmd_12 0x1b, 0x2, 0x7
	Jump Script_branch_4c8
@ 424

Script_branch_424: @ 424
	JumpIf Eq, 0x5, 0x2, Script_branch_4e4
	JumpIf Eq, 0x5, 0x3, Script_branch_4e4
	Cmd_11
	Cmd_e
	Cmd_1e 0x1e
	Cmd_12 0x2ae, 0xb, 0x7
	Jump Script_branch_4c8
@ 478


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000025.bin", 0x478, 0x49c - 0x478


Script_branch_49c: @ 49c
	JumpIf Eq, 0x5, 0x2, Script_branch_4e4
	Cmd_1e 0x1e
	Cmd_12 0xc8, 0x2, 0x7
Script_branch_4c8: @ 4c8
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Cmd32_Orr, 0xa, 0x80000000
Script_branch_4e4: @ 4e4
	end
@ 4e8

@ end_0x4e8
