.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIf TstNe, 0xa, 0x1fd849, Script_branch_3c
	Cmd_11
	Cmd_e
	JumpIfPkmnBattleData Ne, 0x2, 0x50, 0x0, Script_branch_40
	Cmd_3c 0x6f
Script_branch_3c: @ 3c
	end
@ 40

Script_branch_40: @ 40
	Cmd_32 Cmd32_Store, 0x23, 0x179
	Cmd_12 0x41e, 0xa, 0x2
	Cmd_e
	Cmd_1e 0x1e
	end
@ 74

@ end_0x74
