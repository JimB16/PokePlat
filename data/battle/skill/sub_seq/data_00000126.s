.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf Ne, Var_5, 0x1, Script_branch_28
	Cmd_11
	Cmd_e
@ 1c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000126.bin", 0x1c, 0x28 - 0x1c


Script_branch_28: @ 28
	Cmd_14
	Cmd_e
@ 30


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000126.bin", 0x30, 0x3c - 0x30


@ end_0x3c
