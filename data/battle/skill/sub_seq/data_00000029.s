.include "macros/script_seq.s"


Script_1: @ 0
	ChangePkmnBattleData Bic, 0xff, PkmnBattleData_StatusEffect, 0x0|Frozen
	Cmd_12 0x72, 0x2, 0xff
	Cmd_e
@ 28


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000029.bin", 0x28, 0x40 - 0x28


@ end_0x40
