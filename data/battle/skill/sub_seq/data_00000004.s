.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d1 0x9, 0x5
	ChangePkmnBattleData 0x7, 0x9, 0x34, 0x0
	Cmd_d1 0xb, 0x5
	ChangePkmnBattleData 0x7, 0xb, 0x34, 0x0
	JumpIf TstEq, Var_0, 0x1, Script_branch_220
	JumpIf Eq, Var_0, 0x8f, Script_branch_154
	JumpIf TstNe, Var_0, 0x4, Script_branch_268
	JumpIf TstNe, Var_0, 0x8, Script_branch_160
	JumpIf TstNe, Var_0, 0x10, Script_branch_160
	Cmd_12 0x347, 0x1e, 0xa, 0xa
	Cmd_e
	Cmd_1e 0xf
	Cmd_9 0xa, 0x1
	Cmd_e
	JumpIf TstNe, Var_0, 0x2, Script_branch_108
	Cmd_43 0xa, 0x1
	Cmd_e
	Cmd_1e 0x3c
	Jump Script_branch_1e8
@ 108

Script_branch_108: @ 108
	Cmd_43 0xa, 0x4
	Cmd_e
	Cmd_1e 0x3c
	JumpIf TstNe, Var_0, 0x80, Script_branch_1e8
	Cmd_43 0xa, 0x8
	Cmd_e
	Cmd_1e 0x3c
	Jump Script_branch_1e8
@ 154

Script_branch_154: @ 154
	Cmd_d8 0x9, 0x468
Script_branch_160: @ 160
	Cmd_12 0x3b9, 0x3b, 0xa, 0xa, 0xc, 0xc
	Cmd_e
	Cmd_1e 0xf
	Cmd_9 0xa, 0x1
	Cmd_e
	Cmd_43 0xa, 0x1
	Cmd_e
	Cmd_1e 0x1e
	Cmd_8 0xa
	Cmd_e
	Cmd_9 0xc, 0x1
	Cmd_e
	Cmd_43 0xc, 0x1
	Cmd_e
	Cmd_1e 0x3c
	Cmd_b3
Script_branch_1e8: @ 1e8
	JumpIf TstNe, Var_0, 0x80, Script_branch_25c
	Cmd_44
	Cmd_12 0x21, 0x1d, 0x3, 0xff
	Cmd_e
	Cmd_1e 0x3c
Script_branch_220: @ 220
	Cmd_a3
	Cmd_50
	JumpIf Eq, 0x16, 0x0, Script_branch_25c
	Cmd_12 0x155, 0x1d, 0x3, 0xff
	Cmd_e
	Cmd_1e 0x3c
Script_branch_25c: @ 25c
	Cmd_22
	Cmd_e
	end
@ 268

Script_branch_268: @ 268
	AddNewScript 283
	end
@ 0x274
@ 274

