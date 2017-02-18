.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstEq, Target_1, PkmnBattleData_StatusEffect, 0x0|Poisond|Burned|Paralyzed|Toxic, Script_branch_60
	Cmd_3c_AddNewScript 0x4c
	ChangePkmnBattleData Store, Target_1, PkmnBattleData_StatusEffect, 0x0
	Cmd_12 0x1eb, 0x2, 0x1
	Cmd_e
@ 48


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000145.bin", 0x48, 0x60 - 0x48


Script_branch_60: @ 60
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 74

@ end_0x74
