.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstEq, 0xff, PkmnBattleData_35, 0x1000000, Script_branch_44
	Cmd_45 0xff, 0xf
	Cmd_e
@ 28


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000262.bin", 0x28, 0x44 - 0x28


Script_branch_44: @ 44
	Cmd_1f 0xff, 0x7bc
	Cmd_b8 0xff, 0x8, 0x1
	Cmd_e
@ 64


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000262.bin", 0x64, 0xf0 - 0x64


@ end_0xf0
