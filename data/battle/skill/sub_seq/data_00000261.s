.include "macros/script_seq.s"


Script_1: @ 0
	ChangePkmnBattleData Store, Target_1, PkmnBattleData_CurHP, 0x0
	Cmd_32 Store, Var_StatusEffectDamage, 0x7fff
	Cmd_1b 0x1
	Cmd_3c_AddNewScript 0x4c
	Cmd_1c 0x1
	Cmd_32 Bic, Var_6, 0xf000000
	Cmd_3c_AddNewScript 0x6
	Cmd_32 Bic, Var_0x3c, 0xf0000000
	Cmd_3c_AddNewScript 0x114
	Cmd_74 0x1, 0x1, Script_branch_200
	Cmd_2b
	Cmd_2c
	Cmd_2d 0x6
	Cmd_49 0x6
	Cmd_e
@ 98


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000261.bin", 0x98, 0x200 - 0x98


Script_branch_200: @ 200
	end
@ 204

@ end_0x204
