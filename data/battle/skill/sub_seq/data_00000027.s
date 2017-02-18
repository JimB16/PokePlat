.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_a1 0x0, Target_7, MAGMA_ARMOR, Script_branch_204
	Cmd_d3 0x5
	JumpIf TstNe, Var_Weather, 0x0|Sunny_Day|Drought, Script_branch_180
	JumpIf Ne, Var_5, 0x2, Script_branch_58
	Cmd_a1 0x0, Target_7, SHIELD_DUST, Script_branch_180
Script_branch_58: @ 58
	JumpIf Ne, Var_5, 0x1, Script_branch_74
	Cmd_11
	Cmd_e
@ 74

Script_branch_74: @ 74
	Cmd_d2 0x7, Script_branch_180
	JumpIfPkmnBattleData TstNe, Target_7, PkmnBattleData_StatusEffect, 0x0|Frozen, Script_branch_1ac
	JumpIfPkmnBattleData Eq, Target_7, PkmnBattleData_Type1, ICE, Script_branch_1d0
	JumpIfPkmnBattleData Eq, Target_7, PkmnBattleData_Type2, ICE, Script_branch_1d0
	JumpIfPkmnBattleData Ne, Target_7, PkmnBattleData_StatusEffect, 0x0, Script_branch_180
	JumpIf TstNe, Var_0xa, 0x10001, Script_branch_180
	JumpIf TstNe, Var_0xd, 0x8, Script_branch_230
	JumpIf Ne, Var_5, 0x1, Script_branch_128
	Cmd_17 0x1
	Cmd_e
@ 128

Script_branch_128: @ 128
	Cmd_45 0x7, 0x4
	Cmd_e
@ 138


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000027.bin", 0x138, 0x180 - 0x138


Script_branch_180: @ 180
	JumpIf Eq, Var_5, 0x2, Script_branch_278
	Cmd_1e
	Cmd_1e
	Cmd_3c_AddNewScript 0x4b
	Jump Script_branch_278
@ 1ac

Script_branch_1ac: @ 1ac
	JumpIf Eq, Var_5, 0x2, Script_branch_278
	Cmd_1e
	Cmd_1e
	Jump Script_branch_25c
@ 1d0

Script_branch_1d0: @ 1d0
	JumpIf Eq, Var_5, 0x2, Script_branch_278
	Cmd_1e
	Cmd_1e
	Cmd_12 0x1b, 0x2, 0x7
	Jump Script_branch_25c
@ 204

Script_branch_204: @ 204
	JumpIf Eq, Var_5, 0x2, Script_branch_278
	Cmd_11
	Cmd_e
@ 220


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000027.bin", 0x220, 0x230 - 0x220


Script_branch_230: @ 230
	JumpIf Eq, Var_5, 0x2, Script_branch_278
	Cmd_1e
	Cmd_1e
	Cmd_12 0xc8, 0x2, 0x7
Script_branch_25c: @ 25c
	Cmd_e
@ 260


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000027.bin", 0x260, 0x278 - 0x260


Script_branch_278: @ 278
	end
@ 27c

@ end_0x27c
