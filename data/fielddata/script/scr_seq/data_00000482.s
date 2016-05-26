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
	SetFlag 0x9ef
	End
@ 24

Script_2: @ 24
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x19, 0x0
	Message 0x0
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 43

Script_3: @ 43
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x19, 0x0
	Message 0x1
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 62

Script_4: @ 62
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x19, 0x0
	Message 0x2
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 81

Script_5: @ 81
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x19, 0x0
	Message 0x3
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a0

Script_6: @ a0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x19, 0x0
	Message 0x4
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ bf

Script_7: @ bf
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d2

.byte 0x0 @ 0xd2
.byte 0x0 @ 0xd3

@ end_0xd4
