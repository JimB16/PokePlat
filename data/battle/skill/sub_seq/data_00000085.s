.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_63 0x2e, Script_branch_a0
@ c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000085.bin", 0xc, 0xa0 - 0xc


Script_branch_a0: @ a0
	Cmd_12 0x2ca, 0x25, 0x2
	Cmd_e
	Cmd_1e 0x1e
	end
@ c8

@ end_0xc8
