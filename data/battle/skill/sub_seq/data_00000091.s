.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_0xa, 0x10000, Script_branch_12c
	Cmd_a1 0x0, Target_2, SUCTION_CUPS, Script_branch_140
	JumpIfPkmnBattleData Eq, Target_2, PkmnBattleData_3b, 0x400, Script_branch_15c
	JumpIf Eq, Var_0, 0x4a, Script_branch_12c
	Cmd_66 Script_branch_12c
	Cmd_3c_AddNewScript 0x4c
	Cmd_d1 0x2, 0x5
	ChangePkmnBattleData Store, Target_2, PkmnBattleData_StatusEffect, 0x0
	Cmd_5 0x2
	Cmd_e
@ 90


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000091.bin", 0x90, 0x12c - 0x90


Script_branch_12c: @ 12c
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 140

Script_branch_140: @ 140
	Cmd_15 0x293, 0xb, 0x2, 0x2
	Jump Script_branch_16c
@ 15c

Script_branch_15c: @ 15c
	Cmd_15 0x21e, 0x2, 0x2
Script_branch_16c: @ 16c
	Cmd_11
	Cmd_e
@ 174


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000091.bin", 0x174, 0x1a0 - 0x174


@ end_0x1a0
