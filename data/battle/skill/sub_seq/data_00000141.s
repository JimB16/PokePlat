.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_a1 0x0, 0x7, 0xf, Script_branch_10c
	Cmd_a1 0x0, 0x7, 0x48, Script_branch_10c
	Cmd_d3 0xa
	JumpIf TstEq, Var_Weather, 0x30, Script_branch_58
	Cmd_a1 0x0, 0x7, 0x66, Script_branch_10c
Script_branch_58: @ 58
	Cmd_11
	Cmd_e
	Cmd_d2 0x7, Script_branch_138
	Cmd_37 0x0, 0x7, 0x2b, Script_branch_94
	JumpIf TstNe, Var_Weather, 0xf00, Script_branch_138
Script_branch_94: @ 94
	JumpIfPkmnBattleData Ne, 0x7, 0x34, 0x0, Script_branch_138
	JumpIf TstNe, 0xd, 0x8, Script_branch_150
	JumpIf TstNe, 0xa, 0x10001, Script_branch_138
	Cmd_86 Script_branch_138
	Cmd_17 0x1
	Cmd_e
	Cmd_12 0x221, 0x9, 0x1
	Cmd_e
	Cmd_1e 0x1e
	end
@ 10c

Script_branch_10c: @ 10c
	Cmd_11
	Cmd_e
	Cmd_1e 0x1e
	Cmd_12 0x2de, 0xb, 0x7
	Jump Script_branch_168
@ 138

Script_branch_138: @ 138
	Cmd_1e 0x1e
	Cmd_3c 0x4b
	Jump Script_branch_184
@ 150

Script_branch_150: @ 150
	Cmd_1e 0x1e
	Cmd_12 0xc8, 0x2, 0x7
Script_branch_168: @ 168
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Cmd32_Orr, 0xa, 0x80000000
Script_branch_184: @ 184
	end
@ 188

@ end_0x188
