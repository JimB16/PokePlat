.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, Target_2, PkmnBattleData_35, 0x80000000, Script_branch_68
	JumpIf TstNe, Var_0xa, 0x10001, Script_branch_68
	Cmd_3c_AddNewScript 0x4c
	ChangePkmnBattleData Orr, Target_2, PkmnBattleData_35, 0x80000000
	Cmd_12 0x1ee, 0x2, 0x2
	Cmd_e
@ 5c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000127.bin", 0x5c, 0x68 - 0x5c


Script_branch_68: @ 68
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 7c

@ end_0x7c
