.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_0xa, 0x10001, Script_branch_4c
	Cmd_61 Script_branch_4c
	Cmd_3c_AddNewScript 0x4c
	Cmd_12 0x18e, 0x23, 0x2, 0xff, 0xff
	Cmd_e
@ 40


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000084.bin", 0x40, 0x4c - 0x40


Script_branch_4c: @ 4c
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 60

@ end_0x60
