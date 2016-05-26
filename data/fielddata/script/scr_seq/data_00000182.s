.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	CallMessageBox 0x1, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 25

Script_2: @ 25
	CallMessageBox 0x2, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 3c

Script_3: @ 3c
	PlayFanfare 0x5dc
	LockAll
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4d

.byte 0x0 @ 0x4d
.byte 0x0 @ 0x4e
.byte 0x0 @ 0x4f

@ end_0x50
