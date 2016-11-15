.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_12 0x1b7, 0x11, 0xff
	Cmd_e
	Cmd_1e 0x1e
	JumpIfPkmnBattleData TstNe, 0xff, 0x3b, 0x20, Script_branch_40
	Cmd_3c 0x2
Script_branch_40: @ 40
	end
@ 44

@ end_0x44
