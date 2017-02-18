.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_37 0x0, Target_1, ROCK_HEAD, Script_branch_9c
	Cmd_37 0x0, Target_1, MAGIC_GUARD, Script_branch_9c
	Cmd_39 Store, Var_0x14, Var_NrOfPkmn
	Cmd_39 Store, Var_StatusEffectDamage, Var_0x36
	JumpIf Eq, Var_StatusEffectDamage, 0x0, Script_branch_68
	Cmd_55 0x20, 0x3
Script_branch_68: @ 68
	Cmd_32 Orr, Var_6, 0x40
	Cmd_3c_AddNewScript 0x2
	Cmd_12 0x117, 0x2, 0x1
	Cmd_e
@ 94


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000147.bin", 0x94, 0x9c - 0x94


Script_branch_9c: @ 9c
	end
@ a0

@ end_0xa0
