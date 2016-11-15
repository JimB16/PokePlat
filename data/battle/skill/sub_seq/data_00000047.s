.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIf Ne, 0x5, 0x6, Script_branch_60
	Cmd_37 0x0, 0x7, 0x11, Script_branch_3e8
	Cmd_d3 0x6e
	JumpIf TstEq, Var_Weather, 0x30, Script_branch_1e8
	Cmd_37 0x0, 0x7, 0x66, Script_branch_3e8
	Jump Script_branch_1e8
@ 60

Script_branch_60: @ 60
	JumpIf Ne, 0x5, 0x5, Script_branch_17c
	Cmd_37 0x0, 0x7, 0x11, Script_branch_3e4
	Cmd_d3 0xa
	JumpIf TstEq, Var_Weather, 0x30, Script_branch_b8
	Cmd_37 0x0, 0x7, 0x66, Script_branch_3e4
Script_branch_b8: @ b8
	JumpIfPkmnBattleData TstNe, 0x7, 0x34, 0x8, Script_branch_3e4
	JumpIfPkmnBattleData TstNe, 0x7, 0x34, 0x80, Script_branch_3e4
	JumpIfPkmnBattleData Eq, 0x7, 0x1b, 0x3, Script_branch_3e4
	JumpIfPkmnBattleData Eq, 0x7, 0x1c, 0x3, Script_branch_3e4
	JumpIfPkmnBattleData Eq, 0x7, 0x1b, 0x8, Script_branch_3e4
	JumpIfPkmnBattleData Eq, 0x7, 0x1c, 0x8, Script_branch_3e4
	JumpIfPkmnBattleData Ne, 0x7, 0x34, 0x0, Script_branch_3e4
	JumpIf TstNe, 0xd, 0x8, Script_branch_3e4
	Jump Script_branch_300
@ 17c

Script_branch_17c: @ 17c
	Cmd_a1 0x0, 0x7, 0x11, Script_branch_3e8
	Cmd_d3 0xa
	JumpIf TstEq, Var_Weather, 0x30, Script_branch_1c0
	Cmd_a1 0x0, 0x7, 0x66, Script_branch_3e8
Script_branch_1c0: @ 1c0
	JumpIf Ne, 0x5, 0x2, Script_branch_1e8
	Cmd_a1 0x0, 0x7, 0x13, Script_branch_450
Script_branch_1e8: @ 1e8
	JumpIf Ne, 0x5, 0x1, Script_branch_204
	Cmd_11
	Cmd_e
Script_branch_204: @ 204
	Cmd_d2 0x7, Script_branch_450
	JumpIfPkmnBattleData TstNe, 0x7, 0x34, 0x8, Script_branch_4a4
	JumpIfPkmnBattleData TstNe, 0x7, 0x34, 0x80, Script_branch_4a4
	JumpIfPkmnBattleData Eq, 0x7, 0x1b, 0x3, Script_branch_4ec
	JumpIfPkmnBattleData Eq, 0x7, 0x1c, 0x3, Script_branch_4ec
	JumpIfPkmnBattleData Eq, 0x7, 0x1b, 0x8, Script_branch_4ec
	JumpIfPkmnBattleData Eq, 0x7, 0x1c, 0x8, Script_branch_4ec
	JumpIfPkmnBattleData Ne, 0x7, 0x34, 0x0, Script_branch_450
	JumpIf TstNe, 0xa, 0x10001, Script_branch_450
	JumpIf TstNe, 0xd, 0x8, Script_branch_534
	JumpIf Ne, 0x5, 0x1, Script_branch_300
	Cmd_17 0x1
	Cmd_e
Script_branch_300: @ 300
	JumpIf Ne, 0x5, 0x5, Script_branch_32c
	Cmd_45 0x7, 0xa
	Cmd_e
	Cmd_1e 0xf
Script_branch_32c: @ 32c
	Cmd_45 0x7, 0x2
	Cmd_e
	Cmd_34 0xa, 0x7, 0x34, 0x80
	JumpIf Eq, 0x5, 0x5, Script_branch_37c
	Cmd_12 0x4f, 0x2, 0x7
	Jump Script_branch_390
@ 37c

Script_branch_37c: @ 37c
	Cmd_12 0x490, 0xf, 0x7
Script_branch_390: @ 390
	Cmd_e
	Cmd_42 0x7, 0x2
	Cmd_1e 0x1e
	JumpIf TstNe, 0x6, 0x80, Script_branch_3d4
	Cmd_32 Cmd32_Orr, 0x6, 0x80
	Jump Script_branch_3e4
@ 3d4

Script_branch_3d4: @ 3d4
	Cmd_32 Cmd32_Bic, 0x6, 0x80
Script_branch_3e4: @ 3e4
	end
@ 3e8

Script_branch_3e8: @ 3e8
	JumpIf Eq, 0x5, 0x2, Script_branch_590
	JumpIf Eq, 0x5, 0x4, Script_branch_42c
	JumpIf Eq, 0x5, 0x6, Script_branch_42c
	Cmd_11
	Cmd_e
Script_branch_42c: @ 42c
	Cmd_1e 0x1e
	Cmd_12 0x28a, 0xb, 0x7
	Jump Script_branch_574
@ 450

Script_branch_450: @ 450
	JumpIf Eq, 0x5, 0x2, Script_branch_590
	JumpIf Eq, 0x5, 0x4, Script_branch_590
	JumpIf Eq, 0x5, 0x6, Script_branch_590
	Cmd_1e 0x1e
	Cmd_3c 0x4b
	Jump Script_branch_590
@ 4a4

Script_branch_4a4: @ 4a4
	JumpIf Eq, 0x5, 0x2, Script_branch_590
	JumpIf Eq, 0x5, 0x6, Script_branch_590
	Cmd_1e 0x1e
	Cmd_12 0x4c, 0x2, 0x7
	Jump Script_branch_574
@ 4ec

Script_branch_4ec: @ 4ec
	JumpIf Eq, 0x5, 0x2, Script_branch_590
	JumpIf Eq, 0x5, 0x6, Script_branch_590
	Cmd_1e 0x1e
	Cmd_12 0x1b, 0x2, 0x7
	Jump Script_branch_574
@ 534

Script_branch_534: @ 534
	JumpIf Eq, 0x5, 0x2, Script_branch_590
	JumpIf Eq, 0x5, 0x6, Script_branch_590
	Cmd_1e 0x1e
	Cmd_12 0xc8, 0x2, 0x7
Script_branch_574: @ 574
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Cmd32_Orr, 0xa, 0x80000000
Script_branch_590: @ 590
	end
@ 594

@ end_0x594
