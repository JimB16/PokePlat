.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf Eq, 0x2b, 0x1, Script_branch_8c
	JumpIf TstNe, Var_0, 0x1, Script_branch_4c
	Cmd_12 0xb, 0x0
	Cmd_e
	Cmd_af 0x3
	Cmd_b0 Script_branch_4c, Script_branch_64
Script_branch_4c: @ 4c
	Cmd_2b
	Cmd_2c
	Cmd_2d 0x6
	Jump Script_branch_104
@ 64

Script_branch_64: @ 64
	Cmd_bc 0x3, Script_branch_80
	AddNewScript 8
	Jump Script_branch_4c
@ 80

Script_branch_80: @ 80
	AddNewScript 3
	end
@ 8c

Script_branch_8c: @ 8c
	Cmd_2b
	Cmd_2c
Script_branch_94: @ 94
	Cmd_2d 0x6
	Cmd_12 0x343, 0x3a, 0x6, 0x6, 0x6, 0x3
	Cmd_e
	Cmd_af 0x4
	Cmd_b0 Script_branch_d0, Script_branch_104
Script_branch_d0: @ d0
	Cmd_39 0x7, 0x38, 0x13
	Cmd_b1
	Cmd_b2 Script_branch_f4
	AddNewScript 9
Script_branch_f4: @ f4
	Cmd_39 0x7, 0x13, 0x38
Script_branch_104: @ 104
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
	AddNewScript 99
	JumpIf TstEq, 0x6, 0xf000000, Script_branch_170
	AddNewScript 6
Script_branch_170: @ 170
	Cmd_2e Script_branch_94
	end
@ 0x17c
@ 17c

