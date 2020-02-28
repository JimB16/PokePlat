.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, 0x1, 0x35, 0x1000, Script_branch_18
Script_branch_18: @ 18
	Cmd_12 0x261, 0xa, 0x1, 0x1
	Cmd_e
	Cmd_1e 0x1e
	Cmd_41 0x1
	end
@ 0x44
@ 44

