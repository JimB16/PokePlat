.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d1 0x6, 0x5
	ChangePkmnBattleData Store, Target_6, PkmnBattleData_StatusEffect, 0x0
	Cmd_48 0x6
	Cmd_e
@ 2c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000009.bin", 0x2c, 0x144 - 0x2c


@ end_0x144
