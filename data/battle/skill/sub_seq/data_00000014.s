.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_a5 0x7, Script_branch_68
	Cmd_d2 0x7, Script_branch_b8
	Cmd_a1 0x0, Target_7, INNER_FOCUS, Script_branch_6c
	JumpIf Ne, Var_5, 0x2, Script_branch_54
	Cmd_a1 0x0, Target_7, SHIELD_DUST, Script_branch_68
Script_branch_54: @ 54
	ChangePkmnBattleData Orr, Target_7, PkmnBattleData_35, 0x8
Script_branch_68: @ 68
	end
@ 6c

Script_branch_6c: @ 6c
	JumpIf Eq, Var_0x18, 0xfc, Script_branch_94
	JumpIf Ne, Var_5, 0x1, Script_branch_b4
Script_branch_94: @ 94
	Cmd_12 0x2e1, 0xb, 0x7, 0x7
	Cmd_e
@ ac


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000014.bin", 0xac, 0xb4 - 0xac


Script_branch_b4: @ b4
	end
@ b8

Script_branch_b8: @ b8
	JumpIf Ne, Var_5, 0x1, Script_branch_dc
	Cmd_32 Orr, Var_0xa, 0x40
Script_branch_dc: @ dc
	end
@ e0

@ end_0xe0
