.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_6, 0x40, Script_branch_44
	Cmd_d7 0xff
	Cmd_19 0xff
	Cmd_e
@ 28


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000002.bin", 0x28, 0x44 - 0x28


Script_branch_44: @ 44
	Cmd_32 Bic, Var_6, 0x40
	Cmd_1b 0xff
	Cmd_e
@ 60


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000002.bin", 0x60, 0x98 - 0x60


@ end_0x98
