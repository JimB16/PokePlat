.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_11
	Cmd_e
	Cmd_1e 0x1e
	Cmd_12 0x4d2, 0x0
	Cmd_e
	Cmd_1e 0x1e
	Cmd_41 0x1
	JumpIf Eq, 0x18, 0x63, Script_branch_70
	JumpIfPkmnBattleData TstEq, 0x1, 0x35, 0x800000, Script_branch_70
	ChangePkmnBattleData 0xb, 0x1, 0x35, 0x800000
Script_branch_70: @ 70
	end
@ 0x74
@ 74

