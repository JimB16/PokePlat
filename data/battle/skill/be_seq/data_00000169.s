.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstEq, Target_1, PkmnBattleData_StatusEffect, 0x0|Poisond|Burned|Paralyzed|Toxic, Script_branch_28
	Cmd_32 Store, Var_0x8, 0x14
Script_branch_28: @ 28
	Cmd_26
	Cmd_f
	end
@ 34

@ end_0x34
