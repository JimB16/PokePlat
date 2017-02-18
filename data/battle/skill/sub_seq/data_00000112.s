.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_0xa, 0x1fd849, Script_branch_3c
	Cmd_11
	Cmd_e
@ 1c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000112.bin", 0x1c, 0x3c - 0x1c


Script_branch_3c: @ 3c
	end
@ 40


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000112.bin", 0x40, 0x74 - 0x40


@ end_0x74
