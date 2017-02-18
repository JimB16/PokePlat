.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_ad Script_branch_60, Script_branch_60
	Cmd_12 0x475, 0xf, 0x1, 0x2
	Cmd_e
@ 24


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000219.bin", 0x24, 0x60 - 0x24


Script_branch_60: @ 60
	end
@ 64


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000219.bin", 0x64, 0x8c - 0x64


@ end_0x8c
