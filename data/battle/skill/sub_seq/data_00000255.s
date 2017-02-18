.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_1e
	Cmd_f
	Cmd_38 0x3, 0x0
	JumpIf Eq, Var_0x9, 0x1, Script_branch_68
	JumpIf Eq, Var_0x9, 0x2, Script_branch_80
	JumpIf Eq, Var_0x9, 0x3, Script_branch_98
	Cmd_12 0x33c, 0x2, 0x1
	Jump Script_branch_b0
@ 68

Script_branch_68: @ 68
	Cmd_12 0x33d, 0x2, 0x1
	Jump Script_branch_b0
@ 80

Script_branch_80: @ 80
	Cmd_12 0x33e, 0x2, 0x1
	Jump Script_branch_b0
@ 98

Script_branch_98: @ 98
	Cmd_12 0x33f, 0x2, 0x1
	Jump Script_branch_b0
@ b0

Script_branch_b0: @ b0
	Cmd_e
@ b4


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000255.bin", 0xb4, 0xc0 - 0xb4


@ end_0xc0
