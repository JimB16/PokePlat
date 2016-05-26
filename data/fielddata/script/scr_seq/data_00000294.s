.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	Call Function_14
	CheckTurnBack 0x410b, 0x410c
	End
@ 14

Function_14: @ 14
	SetValue 0x410c, 0x1
	Return
@ 1c

@ end_0x1c
