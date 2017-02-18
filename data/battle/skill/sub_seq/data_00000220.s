.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf Eq, Var_0x33, 0x0, Script_branch_50
	JumpIfPkmnBattleData Eq, Target_2, PkmnBattleData_CurHP, 0x0, Script_branch_50
	Cmd_d2 0x2, Script_branch_50
	Cmd_39 Store, Var_StatusEffectDamage, Var_0x32
	Cmd_3d Var_0x33
Script_branch_50: @ 50
	end
@ 54

@ end_0x54
