.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_80
	JumpIfPkmnBattleData Ne, 0x2, 0x16, 0xc, Script_branch_44
	JumpIfPkmnBattleData TstEq, 0x2, 0x35, 0x7, Script_branch_74
	Jump Script_branch_80
@ 44

Script_branch_44: @ 44
	Cmd_32 Cmd32_Store, 0x22, 0x12
	Cmd_3c 0xc
	JumpIfPkmnBattleData TstNe, 0x2, 0x35, 0x7, Script_branch_7c
Script_branch_74: @ 74
	Cmd_3c 0x25
Script_branch_7c: @ 7c
	end
@ 80

Script_branch_80: @ 80
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 94

@ end_0x94
