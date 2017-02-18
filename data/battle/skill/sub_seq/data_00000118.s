.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstEq, Target_1, PkmnBattleData_StatusEffect, 0x0|7, Script_branch_28
	Cmd_3c_AddNewScript 0x12
	Jump Script_branch_a8
@ 28

Script_branch_28: @ 28
	JumpIfPkmnBattleData TstEq, Target_1, PkmnBattleData_StatusEffect, 0x0|Poisond, Script_branch_50
	Cmd_3c_AddNewScript 0x16
	Jump Script_branch_a8
@ 50

Script_branch_50: @ 50
	JumpIfPkmnBattleData TstEq, Target_1, PkmnBattleData_StatusEffect, 0x0|Burned, Script_branch_78
	Cmd_3c_AddNewScript 0x19
	Jump Script_branch_a8
@ 78

Script_branch_78: @ 78
	JumpIfPkmnBattleData TstEq, Target_1, PkmnBattleData_StatusEffect, 0x0|Paralyzed, Script_branch_a0
	Cmd_3c_AddNewScript 0x1f
	Jump Script_branch_a8
@ a0

Script_branch_a0: @ a0
	Cmd_3c_AddNewScript 0x2f
Script_branch_a8: @ a8
	JumpIfPkmnBattleData TstEq, Target_2, PkmnBattleData_StatusEffect, 0x0|7|Poisond|Burned|Frozen|Paralyzed|Toxic, Script_branch_e0
	Cmd_42 0x1, 0x0
	ChangePkmnBattleData Store, Target_1, PkmnBattleData_StatusEffect, 0x0
Script_branch_e0: @ e0
	end
@ e4

@ end_0xe4
