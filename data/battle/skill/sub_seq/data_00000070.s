.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_0xa, 0x10001, Script_branch_48
	Cmd_59 Script_branch_48
	Cmd_3c_AddNewScript 0x4c
	Cmd_12 0x16e, 0xa, 0x2, 0xff
	Cmd_e
@ 3c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000070.bin", 0x3c, 0x48 - 0x3c


Script_branch_48: @ 48
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 5c

@ end_0x5c
