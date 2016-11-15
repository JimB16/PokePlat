.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_d1 0x9, 0x5
	Cmd_34 0x7, 0x9, 0x34, 0x0
	Cmd_d1 0xb, 0x5
	Cmd_34 0x7, 0xb, 0x34, 0x0
	Cmd_1f 0x1, 0x6ff
	JumpIf TstNe, Var_0, 0x80, Script_branch_108
	JumpIf TstNe, Var_0, 0x4, Script_branch_134
	Cmd_37 0x0, 0x1, 0x32, Script_branch_b0
	Cmd_a6 0x0, 0x1, 0x3f, Script_branch_cc
	Cmd_12 0x30d, 0x0
	Jump Script_branch_e0
@ b0

Script_branch_b0: @ b0
	Cmd_12 0x30f, 0xb, 0x1
	Jump Script_branch_e0
@ cc

Script_branch_cc: @ cc
	Cmd_12 0x30e, 0xf, 0x1
Script_branch_e0: @ e0
	Cmd_e
	Cmd_1e 0x1e
	Cmd_22
	Cmd_e
	Cmd_32 Cmd32_Orr, 0x21, 0x5
	end
@ 108

Script_branch_108: @ 108
	Cmd_cf
	Cmd_e
	Cmd_1e 0x1e
	Cmd_22
	Cmd_e
	Cmd_32 Cmd32_Bic, 0x21, 0x40
	end
@ 134

Script_branch_134: @ 134
	Cmd_ce
	Cmd_e
	Cmd_1e 0x1e
	Cmd_22
	Cmd_e
	Cmd_32 Cmd32_Bic, 0x21, 0x40
	end
@ 160

@ end_0x160
