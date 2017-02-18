.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstEq, Target_1, PkmnBattleData_StatusEffect, 0x0|7, Script_branch_50
	JumpIf Eq, Var_0x1c, 0xd6, Script_branch_34
	Cmd_3c_AddNewScript 0x14
Script_branch_34: @ 34
	Cmd_32 Orr, Var_3, 0x80000008
	Cmd_26
	Cmd_f
	end
@ 50

Script_branch_50: @ 50
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 64

@ end_0x64
