.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_37 0x0, 0x6, 0x62, Script_branch_1a8
	JumpIf TstNe, Var_Weather, 0x7000, Script_branch_98
	Cmd_a6 0x0, 0x6, 0x6a, Script_branch_98
	Cmd_37 0x0, 0x6, 0x1a, Script_branch_158
	JumpIfPkmnBattleData Eq, 0x6, 0x1b, 0x2, Script_branch_158
	JumpIfPkmnBattleData Eq, 0x6, 0x1c, 0x2, Script_branch_158
	JumpIfPkmnBattleData TstNe, 0x6, 0x3b, 0x8000000, Script_branch_158
Script_branch_98: @ 98
	Cmd_a0 0x6, 0x19
	JumpIf Eq, 0x9, 0x2, Script_branch_100
	JumpIf Eq, 0x9, 0x1, Script_branch_f0
	Cmd_12 0x429, 0x1, 0x6
	Cmd_e
	Cmd_1e 0x1e
	Jump Script_branch_108
@ f0

Script_branch_f0: @ f0
	AddNewScript 22
	Jump Script_branch_108
@ 100

Script_branch_100: @ 100
	AddNewScript 47
Script_branch_108: @ 108
	Cmd_69 0x6, Script_branch_158
	Cmd_39 0x7, 0x14, 0x13
	Cmd_32 Orr, 0x6, 0x40
	AddNewScript 2
	Cmd_12 0x1ad, 0x2, 0x6
	Cmd_e
	Cmd_1e 0x1e
Script_branch_158: @ 158
	Cmd_b4 0x6, Script_branch_1a8
	Cmd_39 0x7, 0x14, 0x13
	Cmd_32 Orr, 0x6, 0x40
	AddNewScript 2
	Cmd_12 0x437, 0x2, 0x6
	Cmd_e
	Cmd_1e 0x1e
Script_branch_1a8: @ 1a8
	end
@ 0x1ac
@ 1ac

