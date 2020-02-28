.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, 0xa, 0x10001, Script_branch_a8
	Cmd_d2 0x2, Script_branch_a8
	JumpIfPkmnBattleData Eq, 0x2, 0x1a, 0x36, Script_branch_a8
	JumpIfPkmnBattleData Eq, 0x2, 0x1a, 0x79, Script_branch_a8
	JumpIfPkmnBattleData Eq, 0x2, 0x37, 0x70, Script_branch_a8
	AddNewScript 76
	ChangePkmnBattleData 0x7, 0x2, 0x1a, 0xf
	Cmd_12 0x3fd, 0xb, 0x2, 0x2
	Cmd_e
	Cmd_1e 0x1e
	end
@ a8

Script_branch_a8: @ a8
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0xbc
@ bc

