.include "macros/script_seq.s"


Script_1: @ 0
	AddNewScript 147
	JumpIf TstEq, 0x6, 0x400000, Script_branch_24
	AddNewScript 25
Script_branch_24: @ 24
	end
@ 0x28
@ 28

