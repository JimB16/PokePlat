.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_37 0x0, 0xff, MAGIC_GUARD, Script_branch_88
	Cmd_45 0xff, 0x1f
	Cmd_e
@ 24


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000094.bin", 0x24, 0x88 - 0x24


Script_branch_88: @ 88
	end
@ 8c

@ end_0x8c
