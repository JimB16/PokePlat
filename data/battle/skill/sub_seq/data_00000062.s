.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_3c_AddNewScript 0x4c
	ChangePkmnBattleData Orr, Target_7, PkmnBattleData_35, 0x100000
	Cmd_12 0x114, 0x2, 0x7
	Cmd_e
@ 30


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000062.bin", 0x30, 0x3c - 0x30


@ end_0x3c
