.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, 0x1, 0x35, 0xc00, Script_branch_28
	Cmd_32 Cmd32_Store, Var_3, 0x20000035
Script_branch_28: @ 28
	Cmd_26
	Cmd_f
	end
@ 34

@ end_0x34
