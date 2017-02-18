.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, Target_1, PkmnBattleData_35, 0x1000, Script_branch_c8
	JumpIf TstNe, Var_6, 0x200, Script_branch_c8
	Cmd_a6 0x0, Target_1, 0x63, Script_branch_78
	ChangePkmnBattleData Orr, Target_1, PkmnBattleData_3b, 0x20000000
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0x4000000c
	Cmd_32 Orr, Var_6, 0x23
	end
@ 78

Script_branch_78: @ 78
	ChangePkmnBattleData Orr, Target_1, PkmnBattleData_3b, 0x20000000
	ChangePkmnBattleData Orr, Target_1, 0x3c, 0x20000000
	Cmd_3c_AddNewScript 0xd9
	Cmd_36 0x1, 0x1
	JumpIf Eq, Var_TargetPkmn, 0xff, Script_branch_e0
Script_branch_c8: @ c8
	Cmd_32 Store, Var_3, 0x2000004f
	Cmd_26
	Cmd_f
Script_branch_e0: @ e0
	ChangePkmnBattleData Bic, Target_1, PkmnBattleData_3b, 0x200400c0
	Cmd_3c_AddNewScript 0x103
	end
@ 100

@ end_0x100
