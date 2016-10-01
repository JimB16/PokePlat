.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	ScriptCmd_AddValue 0x410c, 0x1
	CheckTurnBack 0x410b, 0x410c
	End
@ 14

@ end_0x14
