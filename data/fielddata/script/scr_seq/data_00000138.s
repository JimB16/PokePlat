.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	SetVar 0x8007, 0x0
	CallStandard 0x7d2
	End
@ 1a

Script_2: @ 1a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVarAtkItem 0x0, 0x1a6
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 32

Script_3: @ 32
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 45

.byte 0x0 @ 0x45
.byte 0x0 @ 0x46
.byte 0x0 @ 0x47

@ end_0x48
