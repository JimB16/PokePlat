.include "macros/script_seq.s"


Script_1: @ 0
	ChangePkmnBattleData Bic, Target_1, PkmnBattleData_StatusEffect, 0x0|Frozen
	Cmd_12 0x75, 0xa, 0x1, 0x1
	Cmd_e
@ 2c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000030.bin", 0x2c, 0x44 - 0x2c


@ end_0x44
