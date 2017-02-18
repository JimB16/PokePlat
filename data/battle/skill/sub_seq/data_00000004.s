.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d1 0x9, 0x5
	ChangePkmnBattleData Store, 0x9, PkmnBattleData_StatusEffect, 0x0
	Cmd_d1 0xb, 0x5
	ChangePkmnBattleData Store, 0xb, PkmnBattleData_StatusEffect, 0x0
	JumpIf TstEq, Var_0, 0x1, Script_branch_220
	JumpIf Eq, Var_0, 0x8f, Script_branch_154
	JumpIf TstNe, Var_0, 0x4, Script_branch_268
	JumpIf TstNe, Var_0, 0x8, Script_branch_160
	JumpIf TstNe, Var_0, 0x10, Script_branch_160
	Cmd_12 0x347, 0x1e, 0xa, 0xa
	Cmd_e
@ bc


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000004.bin", 0xbc, 0x154 - 0xbc


Script_branch_154: @ 154
	Cmd_d8 0x9, 0x468
Script_branch_160: @ 160
	Cmd_12 0x3b9, 0x3b, 0xa, 0xa, 0xc, 0xc
	Cmd_e
@ 180


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000004.bin", 0x180, 0x220 - 0x180


Script_branch_220: @ 220
	Cmd_a3
	Cmd_50
	JumpIf Eq, Var_0x16, 0x0, Script_branch_25c
	Cmd_12 0x155, 0x1d, 0x3, 0xff
	Cmd_e
@ 254


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000004.bin", 0x254, 0x25c - 0x254


Script_branch_25c: @ 25c
	Cmd_22
	Cmd_e
@ 264


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000004.bin", 0x264, 0x268 - 0x264


Script_branch_268: @ 268
	Cmd_3c_AddNewScript 0x11b
	end
@ 274

@ end_0x274
