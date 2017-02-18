.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_12 0x281, 0x28, 0x2, 0x2, 0xff
	Cmd_e
@ 1c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000188.bin", 0x1c, 0x50 - 0x1c


@ end_0x50
