.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_6, 0x4000, Script_branch_40
	Cmd_11
	Cmd_e
@ 1c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000113.bin", 0x1c, 0x40 - 0x1c


Script_branch_40: @ 40
	JumpIf TstNe, Var_0xa, 0x1fd849, Script_branch_60
	Cmd_17 0x1
	Cmd_e
@ 60

Script_branch_60: @ 60
	end
@ 64

@ end_0x64
