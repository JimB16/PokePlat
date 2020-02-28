.include "macros/script_seq.s"


Script_1: @ 0
	AddNewScript 57
	Cmd_47 0x3, 0x2b
	Cmd_e
	Cmd_32 Store, 0x27, 0x0
Script_branch_28: @ 28
	Cmd_6b 0x14
	Cmd_6d 0xff
	JumpIf Eq, 0x2b, 0x1, Script_branch_18c
	JumpIf Eq, Var_StatusEffectDamage, 0x0, Script_branch_16c
	JumpIf Gt, Var_StatusEffectDamage, 0x0, Script_branch_134
	Cmd_37 0x0, 0xff, 0x62, Script_branch_16c
	JumpIf TstNe, Var_Weather, 0x30, Script_branch_b8
	Cmd_12 0x11d, 0x15, 0xff, 0xff
	Jump Script_branch_fc
@ b8

Script_branch_b8: @ b8
	JumpIf Eq, 0x2b, 0x2, Script_branch_e8
	Cmd_12 0x442, 0xb, 0xff, 0x15
	Jump Script_branch_fc
@ e8

Script_branch_e8: @ e8
	Cmd_12 0x448, 0xb, 0xff, 0x15
Script_branch_fc: @ fc
	Cmd_e
	Cmd_1e 0x1e
	AddNewScript 2
	JumpIf TstEq, 0x6, 0xf000000, Script_branch_16c
	AddNewScript 6
	Jump Script_branch_16c
@ 134

Script_branch_134: @ 134
	Cmd_32 Orr, 0x6, 0x40
	AddNewScript 2
	Cmd_12 0x27b, 0xb, 0xff, 0x15
	Cmd_e
	Cmd_1e 0x1e
Script_branch_16c: @ 16c
	Cmd_32 Add, 0x27, 0x1
	Cmd_6c 0x27, Script_branch_28
	end
@ 18c

Script_branch_18c: @ 18c
	AddNewScript 190
	Jump Script_branch_16c
@ 0x19c
@ 19c

