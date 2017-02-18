.include "macros/script_seq.s"


Script_1: @ 0
	ChangePkmnBattleData Orr, Target_7, PkmnBattleData_3b, 0x100
	Cmd_32 Store, Var_MoveEffectNr, 0x15
	Cmd_23_LoadSubSeq
@ 28


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000095.bin", 0x28, 0x2c - 0x28


@ end_0x2c
