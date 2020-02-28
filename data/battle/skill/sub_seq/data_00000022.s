.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf Ne, 0x5, 0x6, Script_branch_60
	Cmd_37 0x0, 0x7, 0x11, Script_branch_2c8
	Cmd_d3 0x27
	JumpIf TstEq, Var_Weather, 0x30, Script_branch_cc
	Cmd_37 0x0, 0x7, 0x66, Script_branch_2c8
	Jump Script_branch_cc
@ 60

Script_branch_60: @ 60
	Cmd_a1 0x0, 0x7, 0x11, Script_branch_2c8
	Cmd_d3 0xa
	JumpIf TstEq, Var_Weather, 0x30, Script_branch_a4
	Cmd_a1 0x0, 0x7, 0x66, Script_branch_2c8
Script_branch_a4: @ a4
	JumpIf Ne, 0x5, 0x2, Script_branch_cc
	Cmd_a1 0x0, 0x7, 0x13, Script_branch_368
Script_branch_cc: @ cc
	JumpIf Ne, 0x5, 0x1, Script_branch_e8
	Cmd_11
	Cmd_e
Script_branch_e8: @ e8
	JumpIf Eq, 0x5, 0x3, Script_branch_108
	Cmd_d2 0x7, Script_branch_368
Script_branch_108: @ 108
	JumpIfPkmnBattleData TstNe, 0x7, 0x34, 0x8, Script_branch_3d0
	JumpIfPkmnBattleData TstNe, 0x7, 0x34, 0x80, Script_branch_3d0
	JumpIfPkmnBattleData Eq, 0x7, 0x1b, 0x3, Script_branch_42c
	JumpIfPkmnBattleData Eq, 0x7, 0x1c, 0x3, Script_branch_42c
	JumpIfPkmnBattleData Eq, 0x7, 0x1b, 0x8, Script_branch_42c
	JumpIfPkmnBattleData Eq, 0x7, 0x1c, 0x8, Script_branch_42c
	JumpIfPkmnBattleData Ne, 0x7, 0x34, 0x0, Script_branch_368
	JumpIf Eq, 0x5, 0x3, Script_branch_20c
	JumpIf TstNe, 0xa, 0x10001, Script_branch_368
	JumpIf TstNe, 0xd, 0x8, Script_branch_49c
	JumpIf Ne, 0x5, 0x1, Script_branch_20c
	Cmd_17 0x1
	Cmd_e
Script_branch_20c: @ 20c
	Cmd_45 0x7, 0x2
	Cmd_e
	ChangePkmnBattleData 0xa, 0x7, 0x34, 0x8
	JumpIf Eq, 0x5, 0x3, Script_branch_25c
	Cmd_12 0x3f, 0x2, 0x7
	Jump Script_branch_274
@ 25c

Script_branch_25c: @ 25c
	Cmd_12 0x42, 0x24, 0xff, 0x15, 0x7
Script_branch_274: @ 274
	Cmd_e
	Cmd_42 0x7, 0x2
	Cmd_1e 0x1e
	JumpIf TstNe, 0x6, 0x80, Script_branch_2b4
	Cmd_32 Orr, 0x6, 0x80
	end
@ 2b4

Script_branch_2b4: @ 2b4
	Cmd_32 Bic, 0x6, 0x80
	end
@ 2c8

Script_branch_2c8: @ 2c8
	JumpIf Eq, 0x5, 0x2, Script_branch_50c
	JumpIf Eq, 0x5, 0x3, Script_branch_50c
	JumpIf Eq, 0x5, 0x4, Script_branch_328
	JumpIf Eq, 0x5, 0x6, Script_branch_328
	Cmd_11
	Cmd_e
	Cmd_1e 0x1e
Script_branch_328: @ 328
	Cmd_12 0x28a, 0xb, 0x7, 0x7
	Jump Script_branch_4f0
@ 344


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000022.bin", 0x344, 0x368 - 0x344


Script_branch_368: @ 368
	JumpIf Eq, 0x5, 0x2, Script_branch_50c
	JumpIf Eq, 0x5, 0x3, Script_branch_50c
	JumpIf Eq, 0x5, 0x4, Script_branch_50c
	JumpIf Eq, 0x5, 0x6, Script_branch_50c
	Cmd_1e 0x1e
	AddNewScript 75
	Jump Script_branch_50c
@ 3d0

Script_branch_3d0: @ 3d0
	JumpIf Eq, 0x5, 0x2, Script_branch_50c
	JumpIf Eq, 0x5, 0x3, Script_branch_50c
	JumpIf Eq, 0x5, 0x6, Script_branch_50c
	Cmd_1e 0x1e
	Cmd_12 0x4c, 0x2, 0x7
	Jump Script_branch_4f0
@ 42c

Script_branch_42c: @ 42c
	JumpIf Eq, 0x5, 0x2, Script_branch_50c
	JumpIf Eq, 0x5, 0x4, Script_branch_50c
	JumpIf Eq, 0x5, 0x6, Script_branch_50c
	JumpIf Eq, 0x5, 0x3, Script_branch_50c
	Cmd_1e 0x1e
	Cmd_12 0x1b, 0x2, 0x7
	Jump Script_branch_4f0
@ 49c

Script_branch_49c: @ 49c
	JumpIf Eq, 0x5, 0x2, Script_branch_50c
	JumpIf Eq, 0x5, 0x4, Script_branch_50c
	JumpIf Eq, 0x5, 0x6, Script_branch_50c
	Cmd_1e 0x1e
	Cmd_12 0xc8, 0x2, 0x7
Script_branch_4f0: @ 4f0
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Orr, 0xa, 0x80000000
Script_branch_50c: @ 50c
	end
@ 0x510
@ 510

