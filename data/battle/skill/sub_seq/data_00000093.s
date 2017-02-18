.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_78
	JumpIfPkmnBattleData TstNe, Target_2, PkmnBattleData_35, 0x8000000, Script_branch_78
	JumpIfPkmnBattleData TstEq, Target_2, PkmnBattleData_StatusEffect, 0x0|7, Script_branch_78
	Cmd_3c_AddNewScript 0x4c
	ChangePkmnBattleData Orr, Target_2, PkmnBattleData_35, 0x8000000
	Cmd_12 0x19b, 0x2, 0x2
	Cmd_e
@ 6c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000093.bin", 0x6c, 0x78 - 0x6c


Script_branch_78: @ 78
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 8c

@ end_0x8c
