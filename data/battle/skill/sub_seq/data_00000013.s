.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_17 0x1
	Cmd_e
	Cmd_14
	Cmd_e
	Cmd_1e 0x1e
	Cmd_40 0x7
	JumpIfPkmnBattleData TstEq, 0x7, 0x3b, 0x200400c0, Script_branch_48
	Cmd_36 0x7, 0x1
Script_branch_48: @ 48
	end
@ 4c

@ end_0x4c
