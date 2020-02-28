.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData Ne, 0x7, 0x13, 0xc, Script_branch_30
	JumpIfPkmnBattleData Eq, 0x7, 0x14, 0xc, Script_branch_bc
Script_branch_30: @ 30
	AddNewScript 76
	Cmd_32 Orr, 0x6, 0x200000
	Cmd_32 Orr, 0x6, 0x4001
	Cmd_32 Orr, 0x3c, 0x80
	Cmd_32 Store, Var_MoveEffectNr, 0xf
	AddNewScript 12
	Cmd_32 Store, Var_MoveEffectNr, 0x10
	AddNewScript 12
	Cmd_32 Bic, 0x3c, 0x2
	Cmd_32 Bic, 0x3c, 0x80
	end
@ bc

Script_branch_bc: @ bc
	Cmd_11
	Cmd_e
	Cmd_1e 0x1e
	Cmd_12 0x300, 0x2, 0x7
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Orr, 0xa, 0x80000000
	end
@ 0xfc
@ fc

