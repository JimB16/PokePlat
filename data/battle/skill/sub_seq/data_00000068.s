.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_f4
	JumpIfPkmnBattleData Eq, 0x2, 0x1b, 0xc, Script_branch_108
	JumpIfPkmnBattleData Eq, 0x2, 0x1c, 0xc, Script_branch_108
	Cmd_11
	Cmd_e
	JumpIfPkmnBattleData TstNe, 0x2, 0x3b, 0x4, Script_branch_bc
	JumpIf TstNe, 0xa, 0x10001, Script_branch_bc
	Cmd_17 0x1
	Cmd_e
	Cmd_3a 0xa, 0x2, 0x3b, 0xf
	ChangePkmnBattleData 0xa, 0x2, 0x3b, 0x4
	Cmd_12 0x122, 0x2, 0x2
	Jump Script_branch_e4
@ bc

Script_branch_bc: @ bc
	Cmd_32 Orr, 0xa, 0x80000000
	Cmd_1e 0x1e
	Cmd_12 0x125, 0x2, 0x2
Script_branch_e4: @ e4
	Cmd_e
	Cmd_1e 0x1e
	end
@ f4

Script_branch_f4: @ f4
	Cmd_32 Orr, 0xa, 0x40
	end
@ 108

Script_branch_108: @ 108
	Cmd_32 Orr, 0xa, 0x8
	end
@ 0x11c
@ 11c

