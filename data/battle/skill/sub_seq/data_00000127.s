.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, 0x2, 0x35, 0x80000000, Script_branch_68
	JumpIf TstNe, 0xa, 0x10001, Script_branch_68
	Cmd_3c 0x4c
	Cmd_34 0xa, 0x2, 0x35, 0x80000000
	Cmd_12 0x1ee, 0x2, 0x2
	Cmd_e
	Cmd_1e 0x1e
	end
@ 68

Script_branch_68: @ 68
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 7c

@ end_0x7c
