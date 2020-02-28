.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, 0x2, 0x3b, 0x200400c0, Script_branch_60
	JumpIfPkmnBattleData TstNe, 0x2, 0x35, 0x200000, Script_branch_60
	AddNewScript 76
	Cmd_67
	Cmd_12 0x159, 0xe, 0x1, 0x2
	Cmd_e
	Cmd_1e 0x1e
	end
@ 60

Script_branch_60: @ 60
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x74
@ 74

