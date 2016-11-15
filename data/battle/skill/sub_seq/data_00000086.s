.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIf TstNe, 0xa, 0x8000, Script_branch_b4
	JumpIf TstNe, 0xa, 0x1fd849, Script_branch_9c
	JumpIfPkmnBattleData TstNe, 0x2, 0x35, 0x4000000, Script_branch_c4
	Cmd_d2 0x2, Script_branch_c4
	Cmd_3c 0x4c
	Cmd_34 0xa, 0x2, 0x35, 0x4000000
	Cmd_3a 0xa, 0x2, 0x4d, 0xf
	Cmd_12 0x198, 0x2, 0x2
	Cmd_e
	Cmd_1e 0x1e
	end
@ 9c

Script_branch_9c: @ 9c
	Cmd_32 Cmd32_Bic, 0xa, 0x10000
	Jump Script_branch_c4
@ b4

Script_branch_b4: @ b4
	Cmd_32 Cmd32_Bic, 0xa, 0x8000
Script_branch_c4: @ c4
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ d8

@ end_0xd8
