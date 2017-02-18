.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_0xa, 0x8000, Script_branch_b4
	JumpIf TstNe, Var_0xa, 0x1fd849, Script_branch_9c
	JumpIfPkmnBattleData TstNe, Target_2, PkmnBattleData_35, 0x4000000, Script_branch_c4
	Cmd_d2 0x2, Script_branch_c4
	Cmd_3c_AddNewScript 0x4c
	ChangePkmnBattleData Orr, Target_2, PkmnBattleData_35, 0x4000000
	Cmd_3a 0xa, 0x2, 0x4d, 0xf
	Cmd_12 0x198, 0x2, 0x2
	Cmd_e
@ 90


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000086.bin", 0x90, 0x9c - 0x90


Script_branch_9c: @ 9c
	Cmd_32 Bic, Var_0xa, 0x10000
	Jump Script_branch_c4
@ b4

Script_branch_b4: @ b4
	Cmd_32 Bic, Var_0xa, 0x8000
Script_branch_c4: @ c4
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ d8

@ end_0xd8
