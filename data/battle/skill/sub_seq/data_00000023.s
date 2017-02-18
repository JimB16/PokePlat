.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_37 0x0, 0xff, MAGIC_GUARD, Script_branch_e0
	Cmd_37 0x1, 0xff, POISON_HEAL, Script_branch_9c
	Cmd_3a 0x11, 0xff, 0x30, 0x20
	Cmd_4f 0x0, Var_0xff, 0x2f, 0x20, Script_branch_e0
	Cmd_55 0x20, 0x8
	Cmd_32 Orr, Var_6, 0x40
	Cmd_3c_AddNewScript 0x2
	Cmd_12 0x27b, 0xb, 0xff, 0x15
	Cmd_e
@ 90


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000023.bin", 0x90, 0x9c - 0x90


Script_branch_9c: @ 9c
	Cmd_12 0x49, 0x2, 0xff
	Cmd_e
@ b0


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000023.bin", 0xb0, 0xe0 - 0xb0


Script_branch_e0: @ e0
	end
@ e4

@ end_0xe4
