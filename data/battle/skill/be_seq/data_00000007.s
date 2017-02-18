.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_a1 0x0, Target_0, DAMP, Script_branch_9c
	JumpIf TstNe, Var_6, 0xf0000000, Script_branch_90
	Cmd_32 Store, Var_0x9, 0x10000000
	Cmd_39 0xe, Var_0x9, Var_NrOfPkmn
	Cmd_39 Orr, Var_6, Var_0x9
	ChangePkmnBattleData Store, Target_1, PkmnBattleData_CurHP, 0x0
	Cmd_32 Store, Var_StatusEffectDamage, 0x7fff
	Cmd_1b 0x1
	Cmd_e
@ 88


.incbin "./baserom/data/battle/skill/be_seq_narc/data_00000007.bin", 0x88, 0x90 - 0x88


Script_branch_90: @ 90
	Cmd_26
	Cmd_f
	end
@ 9c

Script_branch_9c: @ 9c
	Cmd_11
	Cmd_e
@ a4


.incbin "./baserom/data/battle/skill/be_seq_narc/data_00000007.bin", 0xa4, 0xf8 - 0xa4


@ end_0xf8
