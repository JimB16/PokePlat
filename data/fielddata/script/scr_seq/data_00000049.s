.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_2: @ a
	CheckStatusPhraseBox 0xa, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_23
	ClearFlag 0x216
	End
@ 23

Script_branch_23: @ 23
	SetFlag 0x216
	End
@ 29

Script_1: @ 29
	End
@ 2b

.byte 0x0 @ 0x2b

@ end_0x2c
