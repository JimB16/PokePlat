.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, 0x1, 0x35, 0x1000, Script_branch_7c
	Cmd_a6 0x0, 0x1, 0x63, Script_branch_60
	Cmd_32 Cmd32_Store, Var_2, 0x4000000c
	Cmd_32 Cmd32_Store, Var_3, 0x40000010
	Cmd_32 Cmd32_Orr, 0x6, 0x23
	end
@ 60

Script_branch_60: @ 60
	Cmd_3c 0x124
	JumpIf Eq, 0x10, 0xff, Script_branch_84
Script_branch_7c: @ 7c
	Cmd_26
	Cmd_f
Script_branch_84: @ 84
	Cmd_3c 0x103
	end
@ 90

@ end_0x90
