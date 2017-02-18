.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d1 0x9, 0x5
	ChangePkmnBattleData Store, 0x9, PkmnBattleData_StatusEffect, 0x0
	Cmd_d1 0xb, 0x5
	ChangePkmnBattleData Store, 0xb, PkmnBattleData_StatusEffect, 0x0
	Cmd_1f 0x1, 0x6ff
	JumpIf TstNe, Var_0, 0x80, Script_branch_108
	JumpIf TstNe, Var_0, 0x4, Script_branch_134
	Cmd_37 0x0, Target_1, RUN_AWAY, Script_branch_b0
	Cmd_a6 0x0, Target_1, 0x3f, Script_branch_cc
	Cmd_12 0x30d, 0x0
	Jump Script_branch_e0
@ b0

Script_branch_b0: @ b0
	Cmd_12 0x30f, 0xb, 0x1, 0x1
	Jump Script_branch_e0
@ cc

Script_branch_cc: @ cc
	Cmd_12 0x30e, 0xf, 0x1, 0x1
Script_branch_e0: @ e0
	Cmd_e
@ e4


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000003.bin", 0xe4, 0x108 - 0xe4


Script_branch_108: @ 108
	Cmd_cf
	Cmd_e
@ 110


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000003.bin", 0x110, 0x134 - 0x110


Script_branch_134: @ 134
	Cmd_ce
	Cmd_e
@ 13c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000003.bin", 0x13c, 0x160 - 0x13c


@ end_0x160
