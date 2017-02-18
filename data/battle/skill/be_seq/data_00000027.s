.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, Target_1, PkmnBattleData_35, 0xc00, Script_branch_28
	Cmd_32 Store, Var_3, 0x20000035
Script_branch_28: @ 28
	Cmd_26
	Cmd_f
	end
@ 34

@ end_0x34
