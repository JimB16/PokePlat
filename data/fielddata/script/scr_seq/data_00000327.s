.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	ElevIrAnm
	End
@ e

Script_2: @ e
	StopElevAnm
	End
@ 12

.byte 0x0 @ 0x12
.byte 0x0 @ 0x13

@ end_0x14
