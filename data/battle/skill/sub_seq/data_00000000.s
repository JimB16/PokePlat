.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIf TstNe, Var_0, 0x1, Script_branch_1dc
	JumpIf TstNe, Var_0, 0x20, Script_branch_360
	JumpIf TstNe, Var_0, 0x200, Script_branch_3b8
	Cmd_1 0x4
	Cmd_6 0x3
	Cmd_0
	Cmd_da 0x7a
	Cmd_c 0x4
	Cmd_e
	JumpIf TstNe, 0x34, 0x80, Script_branch_128
	JumpIf TstNe, 0x34, 0x8, Script_branch_110
	JumpIf TstNe, 0x34, 0x1, Script_branch_e0
	JumpIf TstNe, 0x34, 0x2, Script_branch_f8
	JumpIf TstNe, Var_0, 0x2, Script_branch_140
	Cmd_13 0x3c5, 0x2, 0x4
	Jump Script_branch_154
@ e0

Script_branch_e0: @ e0
	Cmd_13 0x48f, 0x2, 0x4
	Jump Script_branch_154
@ f8

Script_branch_f8: @ f8
	Cmd_13 0x3c8, 0x2, 0x4
	Jump Script_branch_154
@ 110

Script_branch_110: @ 110
	Cmd_13 0x4de, 0x2, 0x4
	Jump Script_branch_154
@ 128

Script_branch_128: @ 128
	Cmd_13 0x4f4, 0x2, 0x4
	Jump Script_branch_154
@ 140

Script_branch_140: @ 140
	Cmd_13 0x3c7, 0x9, 0xa
Script_branch_154: @ 154
	Cmd_e
	Cmd_1e 0x1e
	JumpIf TstNe, Var_0, 0x8, Script_branch_18c
	Cmd_12 0x3d3, 0x2, 0x3
	Jump Script_branch_194
@ 18c

Script_branch_18c: @ 18c
	Cmd_4b 0x3
Script_branch_194: @ 194
	Cmd_c6 0x4
	Cmd_e
	Cmd_7 0x3, 0x0
	Cmd_2 0x3
	Cmd_da 0x60
	Cmd_c 0x3
	Cmd_e
	Cmd_c7 0x4
	Cmd_e
	Jump Script_branch_40c
@ 1dc

Script_branch_1dc: @ 1dc
	JumpIf TstNe, 0x34, 0x20, Script_branch_2a8
	Cmd_0
	Cmd_6 0x0
	Cmd_da 0x60
	Cmd_c1
	Cmd_bd 0x4
	Cmd_bd 0x3
	Cmd_4a 0x4
	Cmd_e
	Cmd_1e 0x1e
	Cmd_4b 0x4
	Cmd_be 0x4
	Cmd_7 0x4, 0x0
	Cmd_2 0x4
	Cmd_da 0x70
	Cmd_c 0x4
	Cmd_e
	Cmd_4b 0x3
	Cmd_be 0x3
	Cmd_7 0x3, 0x0
	Cmd_2 0x3
	Cmd_da 0x60
	Cmd_c 0x3
	Cmd_e
	Cmd_c2
	Jump Script_branch_40c
@ 2a8

Script_branch_2a8: @ 2a8
	Cmd_0
	Cmd_6 0x0
	Cmd_da 0x60
	Cmd_c1
	Cmd_bd 0x4
	Cmd_bd 0x3
	Cmd_4a 0x4
	Cmd_e
	Cmd_1e 0x1e
	Cmd_4b 0x3
	Cmd_be 0x3
	Cmd_7 0x3, 0x0
	Cmd_2 0x3
	Cmd_da 0x60
	Cmd_c 0x3
	Cmd_e
	Cmd_4b 0x4
	Cmd_be 0x4
	Cmd_7 0x4, 0x0
	Cmd_2 0x4
	Cmd_da 0x70
	Cmd_c 0x4
	Cmd_e
	Cmd_c2
	Jump Script_branch_40c
@ 360

Script_branch_360: @ 360
	Cmd_1 0x4
	Cmd_6 0x3
	Cmd_0
	Cmd_da 0x7a
	Cmd_c 0x4
	Cmd_e
	Cmd_13 0x3c5, 0x2, 0x4
	Cmd_e
	Cmd_b 0x3
	Cmd_1e 0x7
	Cmd_e
	Jump Script_branch_40c
@ 3b8

Script_branch_3b8: @ 3b8
	Cmd_1 0x4
	Cmd_6 0x3
	Cmd_0
	Cmd_da 0x7a
	Cmd_c 0x4
	Cmd_e
	Cmd_13 0x4c3, 0x1b, 0x4
	Cmd_e
	Cmd_b 0x3
	Cmd_1e 0x7
	Cmd_e
Script_branch_40c: @ 40c
	Cmd_ba
	end
@ 414

@ end_0x414
