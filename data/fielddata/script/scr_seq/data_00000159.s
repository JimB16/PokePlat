.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	SetVar 0x4000, 0x0
	SunishoreGymFunction 0x1
	End
@ 1d

Script_2: @ 1d
	SunishoreGymFunction2 0x0
	End
@ 22

Script_3: @ 22
	SunishoreGymFunction2 0x1
	End
@ 27

Script_4: @ 27
	End
@ 29

.byte 0x0 @ 0x29
.byte 0x0 @ 0x2a
.byte 0x0 @ 0x2b

@ end_0x2c
