.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, 0x1, 0x35, 0x1000, Script_branch_c8
	JumpIf TstNe, 0x6, 0x200, Script_branch_c8
	Cmd_a6 0x0, 0x1, 0x63, Script_branch_78
	Cmd_34 0xa, 0x1, 0x3b, 0x20000000
	Cmd_32 Cmd32_Store, Var_2, 0x4000000c
	Cmd_32 Cmd32_Orr, 0x6, 0x23
	end
@ 78

Script_branch_78: @ 78
	Cmd_34 0xa, 0x1, 0x3b, 0x20000000
	Cmd_34 0xa, 0x1, 0x3c, 0x20000000
	Cmd_3c 0xd9
	Cmd_36 0x1, 0x1
	JumpIf Eq, 0x10, 0xff, Script_branch_e0
Script_branch_c8: @ c8
	Cmd_32 Cmd32_Store, Var_3, 0x2000004f
	Cmd_26
	Cmd_f
Script_branch_e0: @ e0
	Cmd_34 0xb, 0x1, 0x3b, 0x200400c0
	Cmd_3c 0x103
	end
@ 100

@ end_0x100