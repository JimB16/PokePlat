.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstEq, 0x1, 0x34, 0x7, Script_branch_38
	AddNewScript 20
	Cmd_5f 0x4
	AddNewScript 76
	Cmd_25 0x0
@ 38

Script_branch_38: @ 38
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x4c
@ 4c

