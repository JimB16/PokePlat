.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_0, 0x1, Script_branch_1dc
	JumpIf TstNe, Var_0, 0x20, Script_branch_360
	JumpIf TstNe, Var_0, 0x200, Script_branch_3b8
	Cmd_1 0x4
	Cmd_6 0x3
	Cmd_0
	Cmd_da 0x7a
	Cmd_c 0x4
	Cmd_e
@ 64


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000000.bin", 0x64, 0x1dc - 0x64


Script_branch_1dc: @ 1dc
	JumpIf TstNe, Var_0x34, 0x20, Script_branch_2a8
	Cmd_0
	Cmd_6 0x0
	Cmd_da 0x60
	Cmd_c1
	Cmd_bd 0x4
	Cmd_bd 0x3
	Cmd_4a 0x4
	Cmd_e
@ 224


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000000.bin", 0x224, 0x2a8 - 0x224


Script_branch_2a8: @ 2a8
	Cmd_0
	Cmd_6 0x0
	Cmd_da 0x60
	Cmd_c1
	Cmd_bd 0x4
	Cmd_bd 0x3
	Cmd_4a 0x4
	Cmd_e
@ 2dc


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000000.bin", 0x2dc, 0x360 - 0x2dc


Script_branch_360: @ 360
	Cmd_1 0x4
	Cmd_6 0x3
	Cmd_0
	Cmd_da 0x7a
	Cmd_c 0x4
	Cmd_e
@ 388


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000000.bin", 0x388, 0x3b8 - 0x388


Script_branch_3b8: @ 3b8
	Cmd_1 0x4
	Cmd_6 0x3
	Cmd_0
	Cmd_da 0x7a
	Cmd_c 0x4
	Cmd_e
@ 3e0


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000000.bin", 0x3e0, 0x414 - 0x3e0


@ end_0x414
