.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf Eq, Var_0, 0x4a, Script_branch_6c
	Cmd_7b Script_branch_6c
	Cmd_3c_AddNewScript 0x4c
	Cmd_12 0x1d5, 0x2, 0x1
	Cmd_e
@ 38


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000122.bin", 0x38, 0x6c - 0x38


Script_branch_6c: @ 6c
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 80

@ end_0x80
