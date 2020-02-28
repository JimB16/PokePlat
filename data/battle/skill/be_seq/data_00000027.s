.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, 0x1, 0x35, 0xc00, Script_branch_28
	Cmd_32 Store, Var_3, 0x20000035
Script_branch_28: @ 28
	Cmd_26
	Cmd_f_CalcDamage
	end
@ 0x34
@ 34

