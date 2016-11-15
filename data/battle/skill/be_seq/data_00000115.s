.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIf TstNe, Var_Weather, 0xc, Script_branch_94
	Cmd_15 0x324, 0x0
	Cmd_32 Cmd32_Bic, Var_Weather, 0x80ff
	Cmd_32 Cmd32_Orr, Var_Weather, 0x4
	Cmd_32 Cmd32_Store, Var_WeatherCounter, 0x5
	Cmd_32 Cmd32_Store, Var_3, 0x2000005d
	Cmd_a6 0x1, 0x1, 0x6f, Script_branch_90
	Cmd_a8 0x1, 0x9
	Cmd_39 0x8, 0x26, 0x9
Script_branch_90: @ 90
	end
@ 94

Script_branch_94: @ 94
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ a8

@ end_0xa8
