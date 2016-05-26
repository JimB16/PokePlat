.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	script Script_8
	script Script_9
	.hword 0xfd13
@ 26

Script_1: @ 26
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 39

Script_2: @ 39
	PlayFanfare 0x5dc
	LockAll
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4a

Script_3: @ 4a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5d

Script_4: @ 5d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 70

Script_5: @ 70
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 83

Script_6: @ 83
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 96

Script_7: @ 96
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a9

Script_8: @ a9
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ bc

Script_9: @ bc
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x19, 0x0
	Message 0x8
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ db

.byte 0x0 @ 0xdb

@ end_0xdc
