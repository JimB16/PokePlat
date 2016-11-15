.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIf Eq, 0x18, 0x16c, Script_branch_40
	Cmd_90 0x2, 0x2, 0x0, Script_branch_5c
	Cmd_12 0x4db, 0x2, 0x2
	Jump Script_branch_50
@ 40

Script_branch_40: @ 40
	Cmd_12 0x418, 0x2, 0x2
Script_branch_50: @ 50
	Cmd_e
	Cmd_1e 0x1e
Script_branch_5c: @ 5c
	Cmd_91 0x2, 0x2, 0x0
	end
@ 70

@ end_0x70
