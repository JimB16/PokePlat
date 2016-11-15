.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstEq, 0x1, 0x34, 0xd8, Script_branch_28
	Cmd_32 Cmd32_Store, 0x8, 0x14
Script_branch_28: @ 28
	Cmd_26
	Cmd_f
	end
@ 34

@ end_0x34
