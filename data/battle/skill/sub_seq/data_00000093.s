.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_78
	JumpIfPkmnBattleData TstNe, 0x2, 0x35, 0x8000000, Script_branch_78
	JumpIfPkmnBattleData TstEq, 0x2, 0x34, 0x7, Script_branch_78
	AddNewScript 76
	ChangePkmnBattleData 0xa, 0x2, 0x35, 0x8000000
	Cmd_12 0x19b, 0x2, 0x2
	Cmd_e
	Cmd_1e 0x1e
	end
@ 78

Script_branch_78: @ 78
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x8c
@ 8c

