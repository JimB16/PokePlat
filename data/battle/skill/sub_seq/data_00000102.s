.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_12 0x1b7, 0x11, 0xff, 0xff
	Cmd_e
	Cmd_1e 0x1e
	JumpIfPkmnBattleData TstNe, 0xff, 0x3b, 0x20, Script_branch_40
	AddNewScript 2
Script_branch_40: @ 40
	end
@ 0x44
@ 44

