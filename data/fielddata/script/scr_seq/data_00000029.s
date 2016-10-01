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
	script Script_10
	script Script_11
	script Script_12
	script Script_13
	script Script_14
	.hword 0xfd13
@ 3a

Script_2: @ 3a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4d

Script_3: @ 4d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 60

Script_4: @ 60
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 73

Script_5: @ 73
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 86

Script_6: @ 86
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 99

Script_7: @ 99
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ac

Script_8: @ ac
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ bf

Script_9: @ bf
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d2

Script_10: @ d2
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e5

Script_11: @ e5
	PlayFanfare 0x5dc
	LockAll
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ f6

Script_12: @ f6
	PlayFanfare 0x5dc
	LockAll
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 107

Script_1: @ 107
	End
@ 109

Script_13: @ 109
	PlayFanfare 0x5dc
	LockAll
	SetVar 0x8005, 0x6
	Jump Script_branch_11d
	End
@ 11d

Script_branch_11d: @ 11d
	Message 0xd
	Multi2 0x1f, 0xb, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0xf, 0x0
	Cmd_42 0x10, 0x1
	Cmd_42 0x11, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_167
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_188
	Jump Script_branch_161
	End
@ 161

Script_branch_161: @ 161
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 167

Script_branch_167: @ 167
	CallStandard 0x7d6
	CopyVar 0x800c, 0x4000
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_161
	CloseMsgOnKeyPress
	CallStandard 0x802
	ReleaseAll
	End
@ 188

Script_branch_188: @ 188
	Message 0xe
	Jump Script_branch_11d
	End
@ 193

Script_14: @ 193
	PlayFanfare 0x5dc
	LockAll
	SetVar 0x8005, 0x5
	Jump Script_branch_1a7
	End
@ 1a7

Script_branch_1a7: @ 1a7
	Message 0xb
	Multi2 0x1f, 0xb, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0xf, 0x0
	Cmd_42 0x10, 0x1
	Cmd_42 0x11, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1f1
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_212
	Jump Script_branch_1eb
	End
@ 1eb

Script_branch_1eb: @ 1eb
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1f1

Script_branch_1f1: @ 1f1
	CallStandard 0x7d6
	CopyVar 0x800c, 0x4000
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1eb
	CloseMsgOnKeyPress
	CallStandard 0x802
	ReleaseAll
	End
@ 212

Script_branch_212: @ 212
	Message 0xc
	Jump Script_branch_1a7
	End
@ 21d

.byte 0x0 @ 0x21d
.byte 0x0 @ 0x21e
.byte 0x0 @ 0x21f

@ end_0x220
