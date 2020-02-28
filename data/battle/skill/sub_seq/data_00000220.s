.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf Eq, 0x33, 0x0, Script_branch_50
	JumpIfPkmnBattleData Eq, 0x2, 0x2f, 0x0, Script_branch_50
	Cmd_d2 0x2, Script_branch_50
	Cmd_39 0x7, 0x20, 0x32
	Cmd_3d 0x33
Script_branch_50: @ 50
	end
@ 0x54
@ 54

