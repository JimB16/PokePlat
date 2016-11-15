.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_2b
	Cmd_2c
Script_branch_8: @ 8
	Cmd_2d 0x6
	Cmd_c1
	Cmd_bf 0x6
	Cmd_e
	Cmd_49 0x6
	Cmd_e
	Cmd_c0 0x6
	Cmd_e
	Cmd_c2
	Cmd_3 0x6
	Cmd_da 0x48
	Cmd_b 0x6
	Cmd_e
	Cmd_3c 0x63
	JumpIf TstEq, 0x6, 0xf000000, Script_branch_7c
	Cmd_3c 0x6
Script_branch_7c: @ 7c
	Cmd_2e Script_branch_8
	end
@ 88

@ end_0x88
