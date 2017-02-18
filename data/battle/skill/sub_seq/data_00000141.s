.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_a1 0x0, Target_7, INSOMNIA, Script_branch_10c
	Cmd_a1 0x0, Target_7, VITAL_SPIRIT, Script_branch_10c
	Cmd_d3 0xa
	JumpIf TstEq, Var_Weather, 0x0|Sunny_Day|Drought, Script_branch_58
	Cmd_a1 0x0, Target_7, LEAF_GUARD, Script_branch_10c
Script_branch_58: @ 58
	Cmd_11
	Cmd_e
@ 60


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000141.bin", 0x60, 0x10c - 0x60


Script_branch_10c: @ 10c
	Cmd_11
	Cmd_e
@ 114


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000141.bin", 0x114, 0x188 - 0x114


@ end_0x188
