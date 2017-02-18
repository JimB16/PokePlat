.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf Ne, Var_5, 0x6, Script_branch_60
	Cmd_37 0x0, Target_7, IMMUNITY, Script_branch_3e8
	Cmd_d3 0x6e
	JumpIf TstEq, Var_Weather, 0x0|Sunny_Day|Drought, Script_branch_1e8
	Cmd_37 0x0, Target_7, LEAF_GUARD, Script_branch_3e8
	Jump Script_branch_1e8
@ 60

Script_branch_60: @ 60
	JumpIf Ne, Var_5, 0x5, Script_branch_17c
	Cmd_37 0x0, Target_7, IMMUNITY, Script_branch_3e4
	Cmd_d3 0xa
	JumpIf TstEq, Var_Weather, 0x0|Sunny_Day|Drought, Script_branch_b8
	Cmd_37 0x0, Target_7, LEAF_GUARD, Script_branch_3e4
Script_branch_b8: @ b8
	JumpIfPkmnBattleData TstNe, Target_7, PkmnBattleData_StatusEffect, 0x0|Poisond, Script_branch_3e4
	JumpIfPkmnBattleData TstNe, Target_7, PkmnBattleData_StatusEffect, 0x0|Toxic, Script_branch_3e4
	JumpIfPkmnBattleData Eq, Target_7, PkmnBattleData_Type1, POISON, Script_branch_3e4
	JumpIfPkmnBattleData Eq, Target_7, PkmnBattleData_Type2, POISON, Script_branch_3e4
	JumpIfPkmnBattleData Eq, Target_7, PkmnBattleData_Type1, STEEL, Script_branch_3e4
	JumpIfPkmnBattleData Eq, Target_7, PkmnBattleData_Type2, STEEL, Script_branch_3e4
	JumpIfPkmnBattleData Ne, Target_7, PkmnBattleData_StatusEffect, 0x0, Script_branch_3e4
	JumpIf TstNe, Var_0xd, 0x8, Script_branch_3e4
	Jump Script_branch_300
@ 17c

Script_branch_17c: @ 17c
	Cmd_a1 0x0, Target_7, IMMUNITY, Script_branch_3e8
	Cmd_d3 0xa
	JumpIf TstEq, Var_Weather, 0x0|Sunny_Day|Drought, Script_branch_1c0
	Cmd_a1 0x0, Target_7, LEAF_GUARD, Script_branch_3e8
Script_branch_1c0: @ 1c0
	JumpIf Ne, Var_5, 0x2, Script_branch_1e8
	Cmd_a1 0x0, Target_7, SHIELD_DUST, Script_branch_450
Script_branch_1e8: @ 1e8
	JumpIf Ne, Var_5, 0x1, Script_branch_204
	Cmd_11
	Cmd_e
@ 204

Script_branch_204: @ 204
	Cmd_d2 0x7, Script_branch_450
	JumpIfPkmnBattleData TstNe, Target_7, PkmnBattleData_StatusEffect, 0x0|Poisond, Script_branch_4a4
	JumpIfPkmnBattleData TstNe, Target_7, PkmnBattleData_StatusEffect, 0x0|Toxic, Script_branch_4a4
	JumpIfPkmnBattleData Eq, Target_7, PkmnBattleData_Type1, POISON, Script_branch_4ec
	JumpIfPkmnBattleData Eq, Target_7, PkmnBattleData_Type2, POISON, Script_branch_4ec
	JumpIfPkmnBattleData Eq, Target_7, PkmnBattleData_Type1, STEEL, Script_branch_4ec
	JumpIfPkmnBattleData Eq, Target_7, PkmnBattleData_Type2, STEEL, Script_branch_4ec
	JumpIfPkmnBattleData Ne, Target_7, PkmnBattleData_StatusEffect, 0x0, Script_branch_450
	JumpIf TstNe, Var_0xa, 0x10001, Script_branch_450
	JumpIf TstNe, Var_0xd, 0x8, Script_branch_534
	JumpIf Ne, Var_5, 0x1, Script_branch_300
	Cmd_17 0x1
	Cmd_e
@ 300

Script_branch_300: @ 300
	JumpIf Ne, Var_5, 0x5, Script_branch_32c
	Cmd_45 0x7, 0xa
	Cmd_e
@ 324


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000047.bin", 0x324, 0x32c - 0x324


Script_branch_32c: @ 32c
	Cmd_45 0x7, 0x2
	Cmd_e
@ 33c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000047.bin", 0x33c, 0x3e4 - 0x33c


Script_branch_3e4: @ 3e4
	end
@ 3e8

Script_branch_3e8: @ 3e8
	JumpIf Eq, Var_5, 0x2, Script_branch_590
	JumpIf Eq, Var_5, 0x4, Script_branch_42c
	JumpIf Eq, Var_5, 0x6, Script_branch_42c
	Cmd_11
	Cmd_e
@ 42c

Script_branch_42c: @ 42c
	Cmd_1e
	Cmd_1e
	Cmd_12 0x28a, 0xb, 0x7, 0x7
	Jump Script_branch_574
@ 450

Script_branch_450: @ 450
	JumpIf Eq, Var_5, 0x2, Script_branch_590
	JumpIf Eq, Var_5, 0x4, Script_branch_590
	JumpIf Eq, Var_5, 0x6, Script_branch_590
	Cmd_1e
	Cmd_1e
	Cmd_3c_AddNewScript 0x4b
	Jump Script_branch_590
@ 4a4

Script_branch_4a4: @ 4a4
	JumpIf Eq, Var_5, 0x2, Script_branch_590
	JumpIf Eq, Var_5, 0x6, Script_branch_590
	Cmd_1e
	Cmd_1e
	Cmd_12 0x4c, 0x2, 0x7
	Jump Script_branch_574
@ 4ec

Script_branch_4ec: @ 4ec
	JumpIf Eq, Var_5, 0x2, Script_branch_590
	JumpIf Eq, Var_5, 0x6, Script_branch_590
	Cmd_1e
	Cmd_1e
	Cmd_12 0x1b, 0x2, 0x7
	Jump Script_branch_574
@ 534

Script_branch_534: @ 534
	JumpIf Eq, Var_5, 0x2, Script_branch_590
	JumpIf Eq, Var_5, 0x6, Script_branch_590
	Cmd_1e
	Cmd_1e
	Cmd_12 0xc8, 0x2, 0x7
Script_branch_574: @ 574
	Cmd_e
@ 578


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000047.bin", 0x578, 0x590 - 0x578


Script_branch_590: @ 590
	end
@ 594

@ end_0x594
