.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData Eq, Target_2, PkmnBattleData_CurHP, 0x0, Script_branch_28
	Cmd_45 0x2, 0xa
	Cmd_e
@ 28

Script_branch_28: @ 28
	Cmd_32 Orr, Var_6, 0x40
	Cmd_39 Store, Var_0x14, Var_NrOfPkmn
	Cmd_3c_AddNewScript 0x2
	Cmd_12 0x488, 0x21, 0x1, 0x2, 0x2
	Cmd_e
@ 6c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000266.bin", 0x6c, 0x80 - 0x6c


@ end_0x80
