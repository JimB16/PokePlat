.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_0xb, 0x300, Script_branch_4c
	Cmd_3c_AddNewScript 0x4c
	Cmd_12 0x4ce, 0x1, 0x1
	Cmd_e
@ 30


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000160.bin", 0x30, 0x4c - 0x30


Script_branch_4c: @ 4c
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 60

@ end_0x60
