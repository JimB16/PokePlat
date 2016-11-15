.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_37 0x0, 0x1, 0x79, Script_branch_40
	JumpIfPkmnBattleData Eq, 0x1, 0x37, 0x70, Script_branch_40
	Cmd_32 Cmd32_Store, Var_2, 0x9000006f
	end
@ 40

Script_branch_40: @ 40
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 54

@ end_0x54
