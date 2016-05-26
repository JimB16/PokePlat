.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	.hword 0xfd13
@ 1e

Script_1: @ 1e
	CallMessageBox 0x5, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 35

Script_2: @ 35
	CallMessageBox 0x6, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 4c

Script_3: @ 4c
	PlayFanfare 0x5dc
	LockAll
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5d

Script_4: @ 5d
	PlayFanfare 0x5dc
	LockAll
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6e

Script_5: @ 6e
	PlayFanfare 0x5dc
	LockAll
	WaitFanfare 0x5dc
	PlayCry 0x23, 0x0
	Message 0x1
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 8b

Script_6: @ 8b
	PlayFanfare 0x5dc
	LockAll
	WaitFanfare 0x5dc
	PlayCry 0x23, 0x0
	Message 0x2
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a8

Script_7: @ a8
	PlayFanfare 0x5dc
	LockAll
	WaitFanfare 0x5dc
	PlayCry 0x19, 0x0
	Message 0x3
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c5

.byte 0x0 @ 0xc5
.byte 0x0 @ 0xc6
.byte 0x0 @ 0xc7

@ end_0xc8
