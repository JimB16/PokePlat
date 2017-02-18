.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_57 Script_branch_44
	Cmd_3c_AddNewScript 0x4c
	Cmd_12 0x344, 0xa, 0x1, 0xff
	Cmd_e
@ 28


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000067.bin", 0x28, 0x44 - 0x28


Script_branch_44: @ 44
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 58

@ end_0x58
