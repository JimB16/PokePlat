.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_0, 0x80, Script_branch_114
	JumpIf TstNe, Var_0, 0x4, Script_branch_108
	Cmd_12 0x24, 0x8, 0x3
	Cmd_e
	Cmd_1e 0x1e
	JumpIf TstNe, Var_0, 0x80, Script_branch_cc
	Cmd_44
	JumpIf Eq, 0x16, 0x0, Script_branch_cc
	JumpIf TstNe, Var_0, 0x1, Script_branch_ac
	Cmd_12 0x22, 0x1d, 0x3, 0xff
	Cmd_e
	Cmd_1e 0x1e
	Jump Script_branch_cc
@ ac

Script_branch_ac: @ ac
	Cmd_12 0x23, 0x1d, 0x3, 0xff
	Cmd_e
	Cmd_1e 0x1e
Script_branch_cc: @ cc
	Cmd_12 0x26, 0x0
	Cmd_e
	Cmd_1e 0x1e
	Cmd_12 0x25, 0x0
	Cmd_e
	Cmd_1e 0x1e
	Cmd_22
	Cmd_e
	end
@ 108

Script_branch_108: @ 108
	AddNewScript 283
	end
@ 114

Script_branch_114: @ 114
	JumpIfPkmnBattleData Eq, 0xa, 0x2f, 0x0, Script_branch_134
	Cmd_4 0xa
Script_branch_134: @ 134
	JumpIf TstEq, Var_0, 0x2, Script_branch_168
	JumpIfPkmnBattleData Eq, 0xc, 0x2f, 0x0, Script_branch_168
	Cmd_4 0xc
Script_branch_168: @ 168
	Cmd_e
	Cmd_d 0x4
	Cmd_e
	Cmd_9 0xa, 0x1
	Cmd_e
	Cmd_43 0xa, 0x64
	Cmd_e
	Cmd_1e 0x1e
	JumpIf TstEq, Var_0, 0x8, Script_branch_1f0
	Cmd_8 0xa
	Cmd_e
	Cmd_9 0xc, 0x1
	Cmd_e
	Cmd_43 0xc, 0x64
	Cmd_e
	Cmd_1e 0x3c
	Jump Script_branch_1f8
@ 1f0

Script_branch_1f0: @ 1f0
	Cmd_1e 0x1e
Script_branch_1f8: @ 1f8
	Cmd_b3
	Cmd_22
	Cmd_e
	end
@ 0x208
@ 208

