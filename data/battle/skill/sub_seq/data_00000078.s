.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_5d Script_branch_34
	Cmd_3c_AddNewScript 0x4c
	Cmd_12 0xb2, 0xd, 0x1, 0xff
	Cmd_e
@ 28


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000078.bin", 0x28, 0x34 - 0x28


Script_branch_34: @ 34
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 48

@ end_0x48
