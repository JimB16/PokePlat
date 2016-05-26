.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 25

Script_2: @ 25
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 38

Script_3: @ 38
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4b

Script_4: @ 4b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x81, 0xb
	Message 0x3
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6a

.byte 0x0 @ 0x6a
.byte 0x0 @ 0x6b

@ end_0x6c
