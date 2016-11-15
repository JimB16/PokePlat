.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_1e 0xf
	JumpIf TstEq, 0xa, 0x2000, Script_branch_30
	Cmd_12 0x31b, 0x0
	Jump Script_branch_180
@ 30

Script_branch_30: @ 30
	JumpIf TstEq, 0xa, 0x100, Script_branch_98
	Cmd_45 0x2, 0xa
	Cmd_e
	Cmd_12 0x390, 0xf, 0x2
	Cmd_a6 0x1, 0x2, 0x67, Script_branch_84
	Cmd_ca 0x2
Script_branch_84: @ 84
	Cmd_e
	Cmd_1e 0x1e
	Jump Script_branch_110
@ 98

Script_branch_98: @ 98
	JumpIf TstEq, 0xa, 0x80, Script_branch_e8
	JumpIfPkmnBattleData Ne, 0x2, 0x2f, 0x1, Script_branch_e8
	Cmd_12 0x1bd, 0x2, 0x2
	Cmd_e
	Cmd_1e 0x1e
	Jump Script_branch_110
@ e8

Script_branch_e8: @ e8
	JumpIf TstEq, 0xa, 0x20, Script_branch_110
	Cmd_12 0x307, 0x0
	Jump Script_branch_180
@ 110

Script_branch_110: @ 110
	JumpIf TstNe, 0x6, 0x800, Script_branch_18c
	JumpIf AndEq, 0xa, 0x6, Script_branch_18c
	JumpIf TstEq, 0xa, 0x2, Script_branch_160
	Cmd_12 0x30c, 0x0
	Jump Script_branch_180
@ 160

Script_branch_160: @ 160
	JumpIf TstEq, 0xa, 0x4, Script_branch_18c
	Cmd_12 0x30b, 0x0
Script_branch_180: @ 180
	Cmd_e
	Cmd_1e 0x1e
Script_branch_18c: @ 18c
	end
@ 190

@ end_0x190
