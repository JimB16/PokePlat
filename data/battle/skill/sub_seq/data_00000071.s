.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, Target_1, PkmnBattleData_35, 0x1000, Script_branch_18
Script_branch_18: @ 18
	Cmd_12 0x261, 0xa, 0x1, 0x1
	Cmd_e
@ 30


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000071.bin", 0x30, 0x44 - 0x30


@ end_0x44
