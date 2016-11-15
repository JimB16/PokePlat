.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_ad Script_branch_60, Script_branch_60
	Cmd_12 0x475, 0xf, 0x1
	Cmd_e
	Cmd_1e 0x1e
	Cmd_ca 0x2
	Cmd_39 0x7, 0x14, 0xf
	JumpIf Eq, 0x2b, 0x0, Script_branch_60
	Cmd_3d 0x2b
Script_branch_60: @ 60
	end
@ 64


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000219.bin", 0x64, 0x8c - 0x64


@ end_0x8c
