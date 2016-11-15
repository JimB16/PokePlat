.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, 0x1, 0x35, 0x1000, Script_branch_6c
	Cmd_a6 0x0, 0x1, 0x63, Script_branch_50
	Cmd_32 Cmd32_Store, Var_2, 0x4000000c
	Cmd_32 Cmd32_Orr, 0x6, 0x23
	end
@ 50

Script_branch_50: @ 50
	Cmd_3c 0xd9
	JumpIf Eq, 0x10, 0xff, Script_branch_94
Script_branch_6c: @ 6c
	Cmd_32 Cmd32_Add, Var_1, 0x1
	Cmd_26
	Cmd_f
	Cmd_32 Cmd32_Store, Var_3, 0x80000008
Script_branch_94: @ 94
	Cmd_3c 0x103
	end
@ a0

@ end_0xa0
