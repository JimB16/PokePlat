.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_84
	JumpIfPkmnBattleData Eq, 0x2, 0x1a, 0x79, Script_branch_84
	JumpIfPkmnBattleData Eq, 0x2, 0x37, 0x70, Script_branch_84
	JumpIfPkmnBattleData Ne, 0x2, 0x56, 0x0, Script_branch_84
	JumpIfPkmnBattleData Ne, 0x2, 0x55, 0x0, Script_branch_84
	Cmd_87 Script_branch_84
	Cmd_14
	Cmd_e
	Cmd_1e 0x1e
Script_branch_84: @ 84
	end
@ 0x88
@ 88

