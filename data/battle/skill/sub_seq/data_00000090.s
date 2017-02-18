.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_6, 0x40, Script_branch_28
	Cmd_d7 0xff
	Cmd_19 0xff
	Cmd_e
@ 28

Script_branch_28: @ 28
	Cmd_12 0x162, 0x2, 0xff
	Cmd_e
@ 3c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000090.bin", 0x3c, 0xa8 - 0x3c


@ end_0xa8
