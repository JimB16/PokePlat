.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_b5 Script_branch_10
	AddNewScript 25
Script_branch_10: @ 10
	Cmd_b5 Script_branch_20
	AddNewScript 14
Script_branch_20: @ 20
	end
@ 0x24
@ 24

