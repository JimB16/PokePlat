.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstEq, Target_1, PkmnBattleData_StatusEffect, 0x0|7, Script_branch_38
	Cmd_3c_AddNewScript 0x14
	Cmd_5f 0x4
	Cmd_3c_AddNewScript 0x4c
	Cmd_25 0x0
@ 38

Script_branch_38: @ 38
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 4c

@ end_0x4c
