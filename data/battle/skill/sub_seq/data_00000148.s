.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData Ne, 0x7, 0x13, 0x0, Script_branch_30
	JumpIfPkmnBattleData Eq, 0x7, 0x14, 0x0, Script_branch_cc
Script_branch_30: @ 30
	JumpIf TstNe, 0xa, 0x10001, Script_branch_b8
	Cmd_32 Orr, 0x3c, 0x80
	Cmd_32 Store, Var_MoveEffectNr, 0x16
	AddNewScript 12
	Cmd_32 Orr, 0x6, 0x200000
	Cmd_32 Store, Var_MoveEffectNr, 0x17
	AddNewScript 12
	Cmd_32 Bic, 0x3c, 0x2
	Cmd_32 Bic, 0x3c, 0x80
	end
@ b8

Script_branch_b8: @ b8
	Cmd_32 Orr, 0xa, 0x40
	end
@ cc

Script_branch_cc: @ cc
	Cmd_11
	Cmd_e
	Cmd_1e 0x1e
	Cmd_12 0x303, 0x2, 0x7
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Orr, 0xa, 0x80000000
	end
@ 0x10c
@ 10c

