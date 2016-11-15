.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIf TstNe, 0xa, 0x10000, Script_branch_12c
	Cmd_a1 0x0, 0x2, 0x15, Script_branch_140
	JumpIfPkmnBattleData Eq, 0x2, 0x3b, 0x400, Script_branch_15c
	JumpIf Eq, Var_0, 0x4a, Script_branch_12c
	Cmd_66 Script_branch_12c
	Cmd_3c 0x4c
	Cmd_d1 0x2, 0x5
	Cmd_34 0x7, 0x2, 0x34, 0x0
	Cmd_5 0x2
	Cmd_e
	JumpIf TstEq, Var_0, 0x1, Script_branch_110
	Cmd_d 0x2
	Cmd_e
	Cmd_2d 0x12
	Cmd_e
	Cmd_3 0x2
	Cmd_da 0x48
	Cmd_b 0x2
	Cmd_e
	Cmd_12 0x25b, 0x2, 0x2
	Cmd_e
	Cmd_1e 0x1e
	Cmd_39 0x7, 0x13, 0x10
	Cmd_3c 0x63
	end
@ 110

Script_branch_110: @ 110
	Cmd_22
	Cmd_e
	Cmd_32 Cmd32_Orr, 0x21, 0x5
	end
@ 12c

Script_branch_12c: @ 12c
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 140

Script_branch_140: @ 140
	Cmd_15 0x293, 0xb, 0x2
	Jump Script_branch_16c
@ 15c

Script_branch_15c: @ 15c
	Cmd_15 0x21e, 0x2, 0x2
Script_branch_16c: @ 16c
	Cmd_11
	Cmd_e
	Cmd_1e 0x1e
	Cmd_14
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Cmd32_Orr, 0xa, 0x80000000
	end
@ 1a0

@ end_0x1a0
