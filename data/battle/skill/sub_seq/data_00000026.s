.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_37 0x0, 0xff, MAGIC_GUARD, Script_branch_a8
	Cmd_3a 0x11, 0xff, 0x30, 0x20
	Cmd_55 0x20, 0x8
	Cmd_37 0x1, 0xff, HEATPROOF, Script_branch_54
	Cmd_55 0x20, 0x2
Script_branch_54: @ 54
	Cmd_32 0xc, Var_StatusEffectDamage, 0xffffffff
	Cmd_12 0x5f, 0x2, 0xff
	Cmd_e
@ 78


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000026.bin", 0x78, 0xa8 - 0x78


Script_branch_a8: @ a8
	end
@ ac

@ end_0xac
