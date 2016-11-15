.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_5c
	JumpIfPkmnBattleData TstNe, 0x2, 0x34, 0x7, Script_branch_3c
	Cmd_32 Cmd32_Store, 0x8, 0xa
	Jump Script_branch_5c
@ 3c

Script_branch_3c: @ 3c
	Cmd_32 Cmd32_Store, 0x8, 0x14
	Cmd_32 Cmd32_Store, Var_3, 0x20000075
Script_branch_5c: @ 5c
	Cmd_26
	Cmd_f
	end
@ 68

@ end_0x68
