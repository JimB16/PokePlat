.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_74
	JumpIfPkmnBattleData Ne, Target_2, 0x50, 0x0, Script_branch_74
	Cmd_3c_AddNewScript 0x4c
	ChangePkmnBattleData Orr, Target_2, PkmnBattleData_3b, 0x2000000
	ChangePkmnBattleData Store, Target_2, 0x50, 0x5
	Cmd_12 0x41b, 0x2, 0x2
	Cmd_e
@ 68


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000173.bin", 0x68, 0x74 - 0x68


Script_branch_74: @ 74
	Cmd_11
	Cmd_e
@ 7c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000173.bin", 0x7c, 0xb4 - 0x7c


@ end_0xb4
