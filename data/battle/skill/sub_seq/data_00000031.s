.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_a1 0x0, Target_7, LIMBER, Script_branch_2ac
	Cmd_d3 0xa
	JumpIf TstEq, Var_Weather, 0x0|Sunny_Day|Drought, Script_branch_44
	Cmd_a1 0x0, Target_7, LEAF_GUARD, Script_branch_2ac
Script_branch_44: @ 44
	JumpIf Ne, Var_5, 0x2, Script_branch_6c
	Cmd_a1 0x0, Target_7, SHIELD_DUST, Script_branch_1f0
Script_branch_6c: @ 6c
	JumpIf Ne, Var_5, 0x1, Script_branch_88
	Cmd_11
	Cmd_e
@ 88

Script_branch_88: @ 88
	JumpIf Eq, Var_5, 0x3, Script_branch_a8
	Cmd_d2 0x7, Script_branch_1f0
Script_branch_a8: @ a8
	JumpIfPkmnBattleData TstNe, Target_7, PkmnBattleData_StatusEffect, 0x0|Paralyzed, Script_branch_230
	JumpIfPkmnBattleData Ne, Target_7, PkmnBattleData_StatusEffect, 0x0, Script_branch_1f0
	JumpIf Eq, Var_5, 0x3, Script_branch_134
	JumpIf TstNe, Var_0xa, 0x10001, Script_branch_1f0
	JumpIf TstNe, Var_0xd, 0x8, Script_branch_324
	JumpIf Ne, Var_5, 0x1, Script_branch_134
	Cmd_17 0x1
	Cmd_e
@ 134

Script_branch_134: @ 134
	Cmd_45 0x7, 0x5
	Cmd_e
@ 144


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000031.bin", 0x144, 0x1f0 - 0x144


Script_branch_1f0: @ 1f0
	JumpIf Eq, Var_5, 0x2, Script_branch_36c
	JumpIf Eq, Var_5, 0x3, Script_branch_36c
	Cmd_1e
	Cmd_1e
	Cmd_3c_AddNewScript 0x4b
	Jump Script_branch_36c
@ 230

Script_branch_230: @ 230
	JumpIf Eq, Var_5, 0x2, Script_branch_36c
	JumpIf Eq, Var_5, 0x3, Script_branch_36c
	Cmd_1e
	Cmd_1e
	Cmd_12 0x85, 0x2, 0x7
	Jump Script_branch_350
@ 278


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000031.bin", 0x278, 0x2ac - 0x278


Script_branch_2ac: @ 2ac
	JumpIf Eq, Var_5, 0x2, Script_branch_36c
	JumpIf Eq, Var_5, 0x3, Script_branch_36c
	Cmd_11
	Cmd_e
@ 2dc


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000031.bin", 0x2dc, 0x324 - 0x2dc


Script_branch_324: @ 324
	JumpIf Eq, Var_5, 0x2, Script_branch_36c
	Cmd_1e
	Cmd_1e
	Cmd_12 0xc8, 0x2, 0x7
Script_branch_350: @ 350
	Cmd_e
@ 354


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000031.bin", 0x354, 0x36c - 0x354


Script_branch_36c: @ 36c
	end
@ 370

@ end_0x370
