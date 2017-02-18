.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_Weather, 0x0|Rain_Dance|Drizzle, Script_branch_94
	Cmd_15 0x31f, 0x0
	Cmd_32 Bic, Var_Weather, 0x8000|Rain_Dance|Drizzle|Sandstorm|Sand_Stream|Sunny_Day|Drought|Hail|Snow_Warning
	Cmd_32 Orr, Var_Weather, 0x0|Rain_Dance
	Cmd_32 Store, Var_WeatherCounter, 0x5
	Cmd_32 Store, Var_3, 0x2000005d
	Cmd_a6 0x1, Target_1, 0x71, Script_branch_90
	Cmd_a8 Target_1, Var_0x9
	Cmd_39 Add, Var_WeatherCounter, Var_0x9
Script_branch_90: @ 90
	end
@ 94

Script_branch_94: @ 94
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ a8

@ end_0xa8
