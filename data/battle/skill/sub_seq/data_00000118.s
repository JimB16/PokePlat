.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstEq, 0x1, 0x34, 0x7, Script_branch_28
	AddNewScript 18
	Jump Script_branch_a8
@ 28

Script_branch_28: @ 28
	JumpIfPkmnBattleData TstEq, 0x1, 0x34, 0x8, Script_branch_50
	AddNewScript 22
	Jump Script_branch_a8
@ 50

Script_branch_50: @ 50
	JumpIfPkmnBattleData TstEq, 0x1, 0x34, 0x10, Script_branch_78
	AddNewScript 25
	Jump Script_branch_a8
@ 78

Script_branch_78: @ 78
	JumpIfPkmnBattleData TstEq, 0x1, 0x34, 0x40, Script_branch_a0
	AddNewScript 31
	Jump Script_branch_a8
@ a0

Script_branch_a0: @ a0
	AddNewScript 47
Script_branch_a8: @ a8
	JumpIfPkmnBattleData TstEq, 0x2, 0x34, 0xff, Script_branch_e0
	Cmd_42 0x1, 0x0
	ChangePkmnBattleData 0x7, 0x1, 0x34, 0x0
Script_branch_e0: @ e0
	end
@ 0xe4
@ e4

