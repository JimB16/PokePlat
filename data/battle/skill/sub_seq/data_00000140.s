.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_85 Script_branch_40
	Cmd_32 Cmd32_Store, 0x3a, 0x1
	Cmd_3c 0x4c
	Cmd_12 0x25e, 0x0
	Cmd_e
	Cmd_1e 0x1e
	Jump Script_branch_5c
@ 40

Script_branch_40: @ 40
	JumpIf TstNe, 0xa, 0x1fd849, Script_branch_5c
	Cmd_3c 0x4c
Script_branch_5c: @ 5c
	end
@ 60

@ end_0x60
