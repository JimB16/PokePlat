.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_74 0x1, 0x1, Script_branch_78
	Cmd_3c_AddNewScript 0x4c
	Cmd_d1 0x1, 0x5
	ChangePkmnBattleData Store, Target_1, PkmnBattleData_StatusEffect, 0x0
	Cmd_5 0x1
	Cmd_e
@ 44


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000114.bin", 0x44, 0x78 - 0x44


Script_branch_78: @ 78
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 8c

@ end_0x8c
