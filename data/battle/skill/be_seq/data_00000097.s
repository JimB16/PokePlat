.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstEq, 0x1, 0x34, 0x7, Script_branch_38
	Cmd_3c 0x14
	Cmd_5f 0x4
	Cmd_3c 0x4c
	Cmd_25 0x0
@ 38

Script_branch_38: @ 38
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 4c

@ end_0x4c
