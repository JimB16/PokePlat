.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstEq, Target_5, PkmnBattleData_35, 0x2000000, Script_branch_10c
	Cmd_a2 0x1, 0x5, Script_branch_10c
	JumpIfPkmnBattleData Eq, Target_1, PkmnBattleData_CurHP, 0x0, Script_branch_10c
	Cmd_12 0x187, 0x9, 0x5, 0x1
	Cmd_39 0x11, Var_0x12, Var_0x1d
	Cmd_3a 0x11, 0x1, 0x2f, 0x20
	Cmd_32 0xc, Var_StatusEffectDamage, 0xffffffff
	Cmd_39 Store, Var_0x14, Var_NrOfPkmn
	Cmd_32 Orr, Var_6, 0x40
	Cmd_3c_AddNewScript 0x2
	Cmd_1d
	Cmd_e
@ b8


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000083.bin", 0xb8, 0x10c - 0xb8


Script_branch_10c: @ 10c
	Cmd_8a Script_branch_134
	Cmd_12 0x238, 0xa, 0x1, 0xff
	Cmd_e
@ 12c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000083.bin", 0x12c, 0x134 - 0x12c


Script_branch_134: @ 134
	Cmd_32 Orr, Var_0x3c, 0x1
	Cmd_3c_AddNewScript 0x6
	Cmd_32 Bic, Var_0x3c, 0x1
	end
@ 160

@ end_0x160
