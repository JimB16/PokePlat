.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_a1 0x0, 0x7, 0x28, Script_branch_204
	Cmd_d3 0x5
	JumpIf TstNe, Var_Weather, 0x30, Script_branch_180
	JumpIf Ne, 0x5, 0x2, Script_branch_58
	Cmd_a1 0x0, 0x7, 0x13, Script_branch_180
Script_branch_58: @ 58
	JumpIf Ne, 0x5, 0x1, Script_branch_74
	Cmd_11
	Cmd_e
Script_branch_74: @ 74
	Cmd_d2 0x7, Script_branch_180
	JumpIfPkmnBattleData TstNe, 0x7, 0x34, 0x20, Script_branch_1ac
	JumpIfPkmnBattleData Eq, 0x7, 0x1b, 0xf, Script_branch_1d0
	JumpIfPkmnBattleData Eq, 0x7, 0x1c, 0xf, Script_branch_1d0
	JumpIfPkmnBattleData Ne, 0x7, 0x34, 0x0, Script_branch_180
	JumpIf TstNe, 0xa, 0x10001, Script_branch_180
	JumpIf TstNe, 0xd, 0x8, Script_branch_230
	JumpIf Ne, 0x5, 0x1, Script_branch_128
	Cmd_17 0x1
	Cmd_e
Script_branch_128: @ 128
	Cmd_45 0x7, 0x4
	Cmd_e
	Cmd_34 0xa, 0x7, 0x34, 0x20
	Cmd_41 0x7
	Cmd_12 0x65, 0x2, 0x7
	Cmd_e
	Cmd_42 0x7, 0x4
	Cmd_1e 0x1e
	end
@ 180

Script_branch_180: @ 180
	JumpIf Eq, 0x5, 0x2, Script_branch_278
	Cmd_1e 0x1e
	Cmd_3c 0x4b
	Jump Script_branch_278
@ 1ac

Script_branch_1ac: @ 1ac
	JumpIf Eq, 0x5, 0x2, Script_branch_278
	Cmd_1e 0x1e
	Jump Script_branch_25c
@ 1d0

Script_branch_1d0: @ 1d0
	JumpIf Eq, 0x5, 0x2, Script_branch_278
	Cmd_1e 0x1e
	Cmd_12 0x1b, 0x2, 0x7
	Jump Script_branch_25c
@ 204

Script_branch_204: @ 204
	JumpIf Eq, 0x5, 0x2, Script_branch_278
	Cmd_11
	Cmd_e
	Cmd_1e 0x1e
	Jump Script_branch_25c
@ 230

Script_branch_230: @ 230
	JumpIf Eq, 0x5, 0x2, Script_branch_278
	Cmd_1e 0x1e
	Cmd_12 0xc8, 0x2, 0x7
Script_branch_25c: @ 25c
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Cmd32_Orr, 0xa, 0x80000000
Script_branch_278: @ 278
	end
@ 27c

@ end_0x27c
