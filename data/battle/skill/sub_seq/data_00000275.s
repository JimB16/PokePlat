.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_0, 0x200, Script_branch_40
	Cmd_12 0x359, 0x1c, 0x1, 0xff
	Cmd_e
@ 2c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000275.bin", 0x2c, 0x40 - 0x2c


Script_branch_40: @ 40
	Cmd_13 0x4c9, 0x2, 0x4
	Cmd_e
@ 54


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000275.bin", 0x54, 0xd4 - 0x54


@ end_0xd4
