.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_0, 0x80, Script_branch_114
	JumpIf TstNe, Var_0, 0x4, Script_branch_108
	Cmd_12 0x24, 0x8, 0x3
	Cmd_e
@ 3c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000005.bin", 0x3c, 0x108 - 0x3c


Script_branch_108: @ 108
	Cmd_3c_AddNewScript 0x11b
	end
@ 114

Script_branch_114: @ 114
	JumpIfPkmnBattleData Eq, 0xa, PkmnBattleData_CurHP, 0x0, Script_branch_134
	Cmd_4 0xa
Script_branch_134: @ 134
	JumpIf TstEq, Var_0, 0x2, Script_branch_168
	JumpIfPkmnBattleData Eq, 0xc, PkmnBattleData_CurHP, 0x0, Script_branch_168
	Cmd_4 0xc
Script_branch_168: @ 168
	Cmd_e
@ 16c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000005.bin", 0x16c, 0x208 - 0x16c


@ end_0x208
