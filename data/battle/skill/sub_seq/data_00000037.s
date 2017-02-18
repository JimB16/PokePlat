.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf Ne, Var_5, 0x5, Script_branch_5c
	Cmd_37 0x0, Target_7, OWN_TEMPO, Script_branch_194
	JumpIfPkmnBattleData TstNe, Target_7, PkmnBattleData_35, 0x7, Script_branch_194
	JumpIf TstNe, Var_0xd, 0x8, Script_branch_194
	Jump Script_branch_134
@ 5c

Script_branch_5c: @ 5c
	Cmd_a1 0x0, Target_7, OWN_TEMPO, Script_branch_238
	JumpIf Eq, Var_5, 0x4, Script_branch_134
	JumpIf Ne, Var_5, 0x2, Script_branch_ac
	Cmd_a1 0x0, Target_7, SHIELD_DUST, Script_branch_198
Script_branch_ac: @ ac
	JumpIf Ne, Var_5, 0x1, Script_branch_c8
	Cmd_11
	Cmd_e
@ c8

Script_branch_c8: @ c8
	Cmd_d2 0x7, Script_branch_198
	JumpIfPkmnBattleData TstNe, Target_7, PkmnBattleData_35, 0x7, Script_branch_204
	JumpIf TstNe, Var_0xa, 0x10001, Script_branch_198
	JumpIf TstNe, Var_0xd, 0x8, Script_branch_2a0
	JumpIf Ne, Var_5, 0x1, Script_branch_134
	Cmd_17 0x1
	Cmd_e
@ 134

Script_branch_134: @ 134
	Cmd_45 0x7, 0x6
	Cmd_e
@ 144


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000037.bin", 0x144, 0x194 - 0x144


Script_branch_194: @ 194
	end
@ 198

Script_branch_198: @ 198
	JumpIf Eq, Var_5, 0x2, Script_branch_2e8
	Cmd_1e
	Cmd_1e
	LoadMoveData MoveData_Flag1
	JumpIf Eq, Var_0x9, 0x4, Script_branch_1f4
	JumpIf Eq, Var_0x9, 0x8, Script_branch_1f4
	Cmd_3c_AddNewScript 0x4b
	Jump Script_branch_2e8
@ 1f4

Script_branch_1f4: @ 1f4
	Cmd_3c_AddNewScript 0xb0
	Jump Script_branch_2e8
@ 204

Script_branch_204: @ 204
	JumpIf Eq, Var_5, 0x2, Script_branch_2e8
	Cmd_1e
	Cmd_1e
	Cmd_12 0x9f, 0x2, 0x7
	Jump Script_branch_2cc
@ 238

Script_branch_238: @ 238
	JumpIf Eq, Var_5, 0x2, Script_branch_2e8
	JumpIf Eq, Var_5, 0x5, Script_branch_2e8
	JumpIf Eq, Var_5, 0x4, Script_branch_2e8
	Cmd_11
	Cmd_e
@ 27c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000037.bin", 0x27c, 0x2a0 - 0x27c


Script_branch_2a0: @ 2a0
	JumpIf Eq, Var_5, 0x2, Script_branch_2e8
	Cmd_1e
	Cmd_1e
	Cmd_12 0xc8, 0x2, 0x7
Script_branch_2cc: @ 2cc
	Cmd_e
@ 2d0


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000037.bin", 0x2d0, 0x2e8 - 0x2d0


Script_branch_2e8: @ 2e8
	end
@ 2ec

@ end_0x2ec
