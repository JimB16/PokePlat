.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIf Ne, 0x5, 0x1, Script_branch_28
	Cmd_11
	Cmd_e
	Cmd_17 0x1
	Cmd_e
Script_branch_28: @ 28
	Cmd_14
	Cmd_e
	Cmd_1e 0x1e
	end
@ 3c

@ end_0x3c
