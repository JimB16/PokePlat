.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, Target_1, PkmnBattleData_35, 0x300, Script_branch_9c
	Cmd_12 0x14f, 0x2, 0x1
	Cmd_e
@ 2c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000036.bin", 0x2c, 0x9c - 0x2c


Script_branch_9c: @ 9c
	Cmd_12 0x14c, 0x2, 0x1
	Cmd_e
@ b0


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000036.bin", 0xb0, 0xbc - 0xb0


@ end_0xbc
