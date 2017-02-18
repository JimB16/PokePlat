.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_62
	JumpIf Eq, Var_0x18, 0x138, Script_branch_2c
	Cmd_12 0x335, 0x0
	Jump Script_branch_38
@ 2c

Script_branch_2c: @ 2c
	Cmd_12 0x250, 0x0
Script_branch_38: @ 38
	Cmd_e
@ 3c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000088.bin", 0x3c, 0x10c - 0x3c


@ end_0x10c
