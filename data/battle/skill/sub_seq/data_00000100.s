.include "macros/script_seq.s"


Script_1: @ 0
	ChangePkmnBattleData Orr, Target_2, PkmnBattleData_35, 0x20000000
	Cmd_12 0x1b0, 0x9, 0x1, 0x2
	Cmd_e
@ 2c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000100.bin", 0x2c, 0x38 - 0x2c


@ end_0x38
