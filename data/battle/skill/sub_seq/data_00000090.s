.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIf TstNe, 0x6, 0x40, Script_branch_28
	Cmd_d7 0xff
	Cmd_19 0xff
	Cmd_e
Script_branch_28: @ 28
	Cmd_12 0x162, 0x2, 0xff
	Cmd_e
	Cmd_1e 0x1e
	JumpIfPkmnBattleData TstNe, 0xff, 0x35, 0x1000000, Script_branch_a4
	Cmd_45 0xff, 0x1a
	Cmd_e
	Cmd_c4 0xff
	Cmd_e
	Cmd_45 0xff, 0x10
	Cmd_e
	Cmd_12 0x165, 0x2, 0xff
	Cmd_e
	Cmd_1e 0x1e
Script_branch_a4: @ a4
	end
@ a8

@ end_0xa8
