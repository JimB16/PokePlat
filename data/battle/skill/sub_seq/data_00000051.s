.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_32 Cmd32_Store, 0x5, 0x4
	Cmd_3c 0x25
	JumpIfPkmnBattleData TstEq, 0x7, 0x35, 0x7, Script_branch_4c
	Cmd_12 0x152, 0x2, 0x7
	Cmd_e
	Cmd_1e 0x1e
Script_branch_4c: @ 4c
	end
@ 50

@ end_0x50
