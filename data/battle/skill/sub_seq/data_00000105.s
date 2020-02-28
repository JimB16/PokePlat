.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_80
	JumpIfPkmnBattleData Ne, 0x2, 0x13, 0xc, Script_branch_44
	JumpIfPkmnBattleData TstEq, 0x2, 0x35, 0x7, Script_branch_74
	Jump Script_branch_80
@ 44

Script_branch_44: @ 44
	Cmd_32 Store, Var_MoveEffectNr, 0x27
	AddNewScript 12
	JumpIfPkmnBattleData TstNe, 0x2, 0x35, 0x7, Script_branch_7c
Script_branch_74: @ 74
	AddNewScript 37
Script_branch_7c: @ 7c
	end
@ 80

Script_branch_80: @ 80
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x94
@ 94

