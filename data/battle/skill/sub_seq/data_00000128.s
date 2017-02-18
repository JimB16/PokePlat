.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_80
	JumpIfPkmnBattleData Ne, Target_2, PkmnBattleData_16, 0xc, Script_branch_44
	JumpIfPkmnBattleData TstEq, Target_2, PkmnBattleData_35, 0x7, Script_branch_74
	Jump Script_branch_80
@ 44

Script_branch_44: @ 44
	Cmd_32 Store, Var_MoveEffectNr, 0x12
	Cmd_3c_AddNewScript 0xc
	JumpIfPkmnBattleData TstNe, Target_2, PkmnBattleData_35, 0x7, Script_branch_7c
Script_branch_74: @ 74
	Cmd_3c_AddNewScript 0x25
Script_branch_7c: @ 7c
	end
@ 80

Script_branch_80: @ 80
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 94

@ end_0x94
