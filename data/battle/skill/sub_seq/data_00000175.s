.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_c8 0x2, Script_branch_2b4
	Cmd_74 0x1, 0x1, Script_branch_2b4
	Cmd_c5 Script_branch_2c
	Cmd_3d Var_0x2b
Script_branch_2c: @ 2c
	Cmd_d5 Script_branch_3c
	Cmd_3d Var_0x2b
Script_branch_3c: @ 3c
	JumpIfPkmnBattleData Ne, Target_2, PkmnBattleData_CurHP, 0x0, Script_branch_140
	JumpIfPkmnBattleData TstEq, Target_2, PkmnBattleData_35, 0x2000000, Script_branch_140
	Cmd_a2 0x1, 0x2, Script_branch_140
	JumpIfPkmnBattleData Eq, Target_1, PkmnBattleData_CurHP, 0x0, Script_branch_140
	Cmd_12 0x187, 0x9, 0x2, 0x1
	Cmd_3a 0x11, 0x1, 0x2f, 0x20
	Cmd_32 0xc, Var_StatusEffectDamage, 0xffffffff
	Cmd_39 Store, Var_0x14, Var_NrOfPkmn
	Cmd_32 Orr, Var_6, 0x40
	Cmd_3c_AddNewScript 0x2
	Cmd_1d
	Cmd_e
@ fc


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000175.bin", 0xfc, 0x140 - 0xfc


Script_branch_140: @ 140
	Cmd_39 0x11, Var_0x12, Var_0x1d
	Cmd_39 Store, Var_0x12, Var_TargetPkmn
	JumpIfPkmnBattleData Ne, Target_2, PkmnBattleData_CurHP, 0x0, Script_branch_1a0
	Cmd_8a Script_branch_1a0
	Cmd_12 0x238, 0xa, 0x1, 0xff
	Cmd_e
@ 198


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000175.bin", 0x198, 0x1a0 - 0x198


Script_branch_1a0: @ 1a0
	Cmd_39 Store, Var_0x12, Var_0x1d
	JumpIfPkmnBattleData Eq, Target_1, PkmnBattleData_CurHP, 0x0, Script_branch_2b4
	Cmd_39 Store, Var_0x13, Var_NrOfPkmn
	Cmd_12 0x42b, 0x12, 0x6, 0x6
	Cmd_e
@ 1f0


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000175.bin", 0x1f0, 0x2b4 - 0x1f0


Script_branch_2b4: @ 2b4
	end
@ 2b8

@ end_0x2b8
