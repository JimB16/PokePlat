.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf Eq, Var_0x18, 0x16c, Script_branch_40
	Cmd_90 0x2, 0x2, 0x0, Script_branch_5c
	Cmd_12 0x4db, 0x2, 0x2
	Jump Script_branch_50
@ 40

Script_branch_40: @ 40
	Cmd_12 0x418, 0x2, 0x2
Script_branch_50: @ 50
	Cmd_e
@ 54


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000081.bin", 0x54, 0x5c - 0x54


Script_branch_5c: @ 5c
	Cmd_91 0x2, 0x2, 0x0
	end
@ 70

@ end_0x70
