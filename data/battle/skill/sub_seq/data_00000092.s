.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, 0x2, 0x3b, 0x200400c0, Script_branch_60
	JumpIfPkmnBattleData TstNe, 0x2, 0x35, 0x200000, Script_branch_60
	Cmd_3c 0x4c
	Cmd_67
	Cmd_12 0x159, 0xe, 0x1
	Cmd_e
	Cmd_1e 0x1e
	end
@ 60

Script_branch_60: @ 60
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 74

@ end_0x74
