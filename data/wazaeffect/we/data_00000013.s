.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_d
	Cmd_3
	Cmd_3f 0x4, 0x38
	Cmd_39 0x0
	Cmd_39 0x1
	Cmd_39 0x2
	Cmd_39 0x3
	Cmd_3a 0x4, 0x0, 0x0, 0x0
	Cmd_3a 0x5, 0x0, 0x1, 0x1
	Cmd_3a 0x6, 0x0, 0x2, 0x2
	Cmd_3a 0x7, 0x0, 0x3, 0x3
	Cmd_2d 0x4e, 0x1, 0x0
	Cmd_33 0x0, 0x2b, 0x1
	Cmd_3b
	Cmd_3c 0x0
	Cmd_3c 0x1
	Cmd_3c 0x2
	Cmd_3c 0x3
	Cmd_2e 0x0, 0x1, 0x3
	Wait 0xa
	Cmd_16 0x72d, 0xffffff8b
	Wait 0xa
	Cmd_32
	Cmd_35 0x0
	End
@ 104


.incbin "./baserom/data/wazaeffect/we_arc/data_00000013.bin", 0x104, 0x234 - 0x104


@ end_0x234
