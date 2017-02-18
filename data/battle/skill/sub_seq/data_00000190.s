.include "macros/script_seq.s"


Script_1: @ 0
	ChangePkmnBattleData Store, 0xff, PkmnBattleData_StatusEffect, 0x0
	ChangePkmnBattleData Bic, 0xff, PkmnBattleData_35, 0x8000000
	Cmd_12 0x2cd, 0x29, 0xff, 0x15, 0xff
	Cmd_e
@ 44


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000190.bin", 0x44, 0x5c - 0x44


@ end_0x5c
