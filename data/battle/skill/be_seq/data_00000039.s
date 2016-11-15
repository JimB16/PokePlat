.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, 0x1, 0x35, 0x1000, Script_branch_80
	JumpIf TstNe, 0x6, 0x200, Script_branch_80
	Cmd_a6 0x0, 0x1, 0x63, Script_branch_64
	Cmd_32 Cmd32_Store, Var_2, 0x4000000c
	Cmd_32 Cmd32_Orr, 0x6, 0x23
	end
@ 64

Script_branch_64: @ 64
	Cmd_3c 0xd9
	JumpIf Eq, 0x10, 0xff, Script_branch_98
Script_branch_80: @ 80
	Cmd_32 Cmd32_Add, Var_1, 0x1
	Cmd_26
	Cmd_f
Script_branch_98: @ 98
	Cmd_3c 0x103
	end
@ a4

@ end_0xa4
