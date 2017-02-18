.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, Target_1, PkmnBattleData_35, 0x1000, Script_branch_7c
	Cmd_a6 0x0, Target_1, 0x63, Script_branch_60
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0x4000000c
	Cmd_32 Store, Var_3, 0x40000010
	Cmd_32 Orr, Var_6, 0x23
	end
@ 60

Script_branch_60: @ 60
	Cmd_3c_AddNewScript 0x124
	JumpIf Eq, Var_TargetPkmn, 0xff, Script_branch_84
Script_branch_7c: @ 7c
	Cmd_26
	Cmd_f
Script_branch_84: @ 84
	Cmd_3c_AddNewScript 0x103
	end
@ 90

@ end_0x90
