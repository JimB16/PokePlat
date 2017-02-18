.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_42 0x1, 0x0
	Cmd_1e
	Cmd_1e
	ChangePkmnBattleData Store, Target_1, PkmnBattleData_StatusEffect, 0x0
	ChangePkmnBattleData Bic, Target_1, PkmnBattleData_35, 0x7
	Cmd_23_LoadSubSeq
@ 40


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000289.bin", 0x40, 0x44 - 0x40


@ end_0x44
