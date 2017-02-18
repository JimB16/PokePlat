.include "macros/script_seq.s"


Script_1: @ 0
	ChangePkmnBattleData Orr, Target_1, PkmnBattleData_3b, 0x200
	ChangePkmnBattleData Store, Target_1, 0x3f, 0x2
	Cmd_12 0x1e7, 0x2, 0x1
	Cmd_e
@ 3c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000131.bin", 0x3c, 0x70 - 0x3c


@ end_0x70
