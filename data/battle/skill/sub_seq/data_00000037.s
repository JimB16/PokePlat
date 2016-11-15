.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIf Ne, 0x5, 0x5, Script_branch_5c
	Cmd_37 0x0, 0x7, 0x14, Script_branch_194
	JumpIfPkmnBattleData TstNe, 0x7, 0x35, 0x7, Script_branch_194
	JumpIf TstNe, 0xd, 0x8, Script_branch_194
	Jump Script_branch_134
@ 5c

Script_branch_5c: @ 5c
	Cmd_a1 0x0, 0x7, 0x14, Script_branch_238
	JumpIf Eq, 0x5, 0x4, Script_branch_134
	JumpIf Ne, 0x5, 0x2, Script_branch_ac
	Cmd_a1 0x0, 0x7, 0x13, Script_branch_198
Script_branch_ac: @ ac
	JumpIf Ne, 0x5, 0x1, Script_branch_c8
	Cmd_11
	Cmd_e
Script_branch_c8: @ c8
	Cmd_d2 0x7, Script_branch_198
	JumpIfPkmnBattleData TstNe, 0x7, 0x35, 0x7, Script_branch_204
	JumpIf TstNe, 0xa, 0x10001, Script_branch_198
	JumpIf TstNe, 0xd, 0x8, Script_branch_2a0
	JumpIf Ne, 0x5, 0x1, Script_branch_134
	Cmd_17 0x1
	Cmd_e
Script_branch_134: @ 134
	Cmd_45 0x7, 0x6
	Cmd_e
	Cmd_38 0x3, 0x2
	Cmd_3a 0xa, 0x7, 0x35, 0x9
	JumpIf Eq, 0x5, 0x4, Script_branch_2e8
	Cmd_12 0x9c, 0x2, 0x7
	Cmd_e
	Cmd_1e 0x1e
Script_branch_194: @ 194
	end
@ 198

Script_branch_198: @ 198
	JumpIf Eq, 0x5, 0x2, Script_branch_2e8
	Cmd_1e 0x1e
	LoadMoveData 0x7
	JumpIf Eq, 0x9, 0x4, Script_branch_1f4
	JumpIf Eq, 0x9, 0x8, Script_branch_1f4
	Cmd_3c 0x4b
	Jump Script_branch_2e8
@ 1f4

Script_branch_1f4: @ 1f4
	Cmd_3c 0xb0
	Jump Script_branch_2e8
@ 204

Script_branch_204: @ 204
	JumpIf Eq, 0x5, 0x2, Script_branch_2e8
	Cmd_1e 0x1e
	Cmd_12 0x9f, 0x2, 0x7
	Jump Script_branch_2cc
@ 238

Script_branch_238: @ 238
	JumpIf Eq, 0x5, 0x2, Script_branch_2e8
	JumpIf Eq, 0x5, 0x5, Script_branch_2e8
	JumpIf Eq, 0x5, 0x4, Script_branch_2e8
	Cmd_11
	Cmd_e
	Cmd_1e 0x1e
	Cmd_12 0x28d, 0xb, 0x7
	Jump Script_branch_2cc
@ 2a0

Script_branch_2a0: @ 2a0
	JumpIf Eq, 0x5, 0x2, Script_branch_2e8
	Cmd_1e 0x1e
	Cmd_12 0xc8, 0x2, 0x7
Script_branch_2cc: @ 2cc
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Cmd32_Orr, 0xa, 0x80000000
Script_branch_2e8: @ 2e8
	end
@ 2ec

@ end_0x2ec
