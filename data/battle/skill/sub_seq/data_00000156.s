.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_12 0x3e5, 0x0
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Orr, Var_Weather, 0x5000
	Cmd_32 Store, 0x27, 0x0
Script_branch_38: @ 38
	Cmd_6b 0x14
	JumpIfPkmnBattleData Eq, 0xff, 0x2f, 0x0, Script_branch_158
	JumpIfPkmnBattleData Ne, 0xff, 0x4f, 0x0, Script_branch_108
	JumpIfPkmnBattleData TstNe, 0xff, 0x3b, 0x40, Script_branch_124
	JumpIfPkmnBattleData TstNe, 0xff, 0x3b, 0x200000, Script_branch_158
	JumpIfPkmnBattleData TstNe, 0xff, 0x3b, 0x400, Script_branch_158
	JumpIfPkmnBattleData Eq, 0xff, 0x1a, 0x1a, Script_branch_13c
	JumpIfPkmnBattleData Eq, 0xff, 0x1b, 0x2, Script_branch_13c
	JumpIfPkmnBattleData Eq, 0xff, 0x1c, 0x2, Script_branch_13c
	Jump Script_branch_158
@ 108

Script_branch_108: @ 108
	ChangePkmnBattleData 0x7, 0xff, 0x4f, 0x0
	Jump Script_branch_13c
@ 124

Script_branch_124: @ 124
	Cmd_41 0xff
	Cmd_36 0xff, 0x0
	Cmd_e
Script_branch_13c: @ 13c
	Cmd_12 0x3e6, 0x2, 0xff
	Cmd_e
	Cmd_1e 0x1e
Script_branch_158: @ 158
	Cmd_32 Add, 0x27, 0x1
	Cmd_6c 0x27, Script_branch_38
	end
@ 0x178
@ 178

