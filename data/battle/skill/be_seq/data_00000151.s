.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_d3 0x5
	JumpIf TstNe, Var_Weather, 0x30, Script_branch_74
	JumpIfPkmnBattleData TstNe, 0x1, 0x35, 0x1000, Script_branch_88
	Cmd_a6 0x0, 0x1, 0x63, Script_branch_6c
	Cmd_32 Cmd32_Store, Var_2, 0x4000000c
	Cmd_32 Cmd32_Orr, 0x6, 0x23
	end
@ 6c

Script_branch_6c: @ 6c
	Cmd_3c 0xd9
Script_branch_74: @ 74
	JumpIf Eq, 0x10, 0xff, Script_branch_90
Script_branch_88: @ 88
	Cmd_26
	Cmd_f
Script_branch_90: @ 90
	Cmd_3c 0x103
	end
@ 9c

@ end_0x9c
