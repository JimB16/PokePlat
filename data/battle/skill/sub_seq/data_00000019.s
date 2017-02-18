.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_37 0x0, 0xff, SOUNDPROOF, Script_branch_40
	JumpIf TstEq, Var_Weather, 0xf00, Script_branch_40
	Cmd_12 0x131, 0x2, 0xff
	Jump Script_branch_50
@ 40

Script_branch_40: @ 40
	Cmd_12 0x12e, 0x2, 0xff
Script_branch_50: @ 50
	Cmd_e
@ 54


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000019.bin", 0x54, 0x94 - 0x54


@ end_0x94
