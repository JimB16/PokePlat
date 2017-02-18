.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_0xa, 0x10000, Script_branch_d0
	Cmd_d2 0x2, Script_branch_d0
	JumpIfPkmnBattleData TstNe, Target_2, PkmnBattleData_35, 0x10000000, Script_branch_d0
	Cmd_3c_AddNewScript 0x4c
	ChangePkmnBattleData Orr, Target_2, PkmnBattleData_35, 0x10000000
	Cmd_3a 0x11, 0x1, 0x30, 0x20
	Cmd_32 0xc, Var_StatusEffectDamage, 0xffffffff
	Cmd_55 0x20, 0x2
	Cmd_32 Orr, Var_6, 0x40
	Cmd_39 Store, Var_0x14, Var_NrOfPkmn
	Cmd_3c_AddNewScript 0x2
	Cmd_12 0x1a1, 0x9, 0x1, 0x2
	Cmd_e
@ c4


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000097.bin", 0xc4, 0xd0 - 0xc4


Script_branch_d0: @ d0
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ e4

@ end_0xe4
