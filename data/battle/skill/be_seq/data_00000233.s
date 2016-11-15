.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIfPkmnBattleData Eq, 0x1, 0x1a, 0x79, Script_branch_8c
	JumpIfPkmnBattleData Eq, 0x1, 0x37, 0x70, Script_branch_8c
	Cmd_ae Script_branch_8c
	Cmd_32 Cmd32_Store, Var_3, 0xa0000088
	Cmd_26
	Cmd_f
	Cmd_11
	Cmd_e
	Cmd_1e 0x1e
	Cmd_12 0x478, 0xf, 0x1
	Cmd_e
	Cmd_1e 0x1e
	Cmd_ca 0x1
	end
@ 8c

Script_branch_8c: @ 8c
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ a0

@ end_0xa0
