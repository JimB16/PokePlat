.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Store, 0x5, 0x4
	AddNewScript 37
	JumpIfPkmnBattleData TstEq, 0x7, 0x35, 0x7, Script_branch_4c
	Cmd_12 0x152, 0x2, 0x7
	Cmd_e
	Cmd_1e 0x1e
Script_branch_4c: @ 4c
	end
@ 0x50
@ 50

