.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf Eq, 0x5, 0x1, Script_branch_1c
	AddNewScript 76
Script_branch_1c: @ 1c
	end
@ 0x20
@ 20

