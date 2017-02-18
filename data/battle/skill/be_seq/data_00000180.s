.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_81 Script_branch_24
	Cmd_11
	Cmd_e
@ 10


.incbin "./baserom/data/battle/skill/be_seq_narc/data_00000180.bin", 0x10, 0x24 - 0x10


Script_branch_24: @ 24
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 38

@ end_0x38
