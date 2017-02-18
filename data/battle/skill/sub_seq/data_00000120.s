.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData Eq, Target_1, PkmnBattleData_13, 0xc, Script_branch_d4
	Cmd_3a 0x11, 0x1, 0x30, 0x20
	Cmd_55 0x20, 0x2
	Cmd_4f 0x3, Var_1, 0x2f, 0x20, Script_branch_d4
	Cmd_3c_AddNewScript 0x4c
	ChangePkmnBattleData Store, Target_1, PkmnBattleData_13, 0xc
	Cmd_32 0xc, Var_StatusEffectDamage, 0xffffffff
	Cmd_39 Store, Var_0x14, Var_NrOfPkmn
	Cmd_32 Orr, Var_6, 0x40
	Cmd_3c_AddNewScript 0x2
	Cmd_45 0x1, 0xc
	Cmd_e
@ b4


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000120.bin", 0xb4, 0xd4 - 0xb4


Script_branch_d4: @ d4
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ e8

@ end_0xe8
