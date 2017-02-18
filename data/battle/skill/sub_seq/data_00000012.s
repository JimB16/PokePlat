.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_33 Script_branch_a0, Script_branch_ec, Script_branch_f4
	JumpIf Ne, Var_5, 0x1, Script_branch_2c
	Cmd_11
	Cmd_e
@ 2c

Script_branch_2c: @ 2c
	JumpIf Ne, Var_5, 0x1, Script_branch_4c
	Cmd_17 0x1
	Cmd_e
@ 4c

Script_branch_4c: @ 4c
	JumpIf TstNe, Var_0x3c, 0x2, Script_branch_94
	Cmd_47 0x7, Var_0x2b
	Cmd_e
@ 70


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000012.bin", 0x70, 0x94 - 0x70


Script_branch_94: @ 94
	Cmd_14
	Cmd_e
@ 9c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000012.bin", 0x9c, 0xa0 - 0x9c


Script_branch_a0: @ a0
	Cmd_1e
	end
@ a8


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000012.bin", 0xa8, 0xec - 0xa8


Script_branch_ec: @ ec
	Cmd_1e
	end
@ f4

Script_branch_f4: @ f4
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 108

@ end_0x108
