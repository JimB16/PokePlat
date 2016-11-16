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
	SetVar 0x8007, 0x3
	CallStandard 0x7d2
	End
@ 2a

Script_2: @ 2a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3d

Script_3: @ 3d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 50

Script_4: @ 50
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x70
	CompareLastResultJump EQUAL, Script_branch_6c
	Message 0x2
	Jump Script_branch_78
@ 6c

Script_branch_6c: @ 6c
	SetVarWiFiSprite 0x0
	Message 0x7
	Jump Script_branch_78
@ 78

Script_branch_78: @ 78
	Message 0x3
	OpenWiFiSprite
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x32, 0x0
	Cmd_42 0x33, 0x1
	Cmd_42 0x34, 0x2
	Cmd_42 0x35, 0x3
	Cmd_42 0x2b, 0x4
	CloseMulti
	CopyVar 0x8004, 0x800c
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_e9
	If 0x8008, 0xfffe
	CompareLastResultJump EQUAL, Script_branch_e9
	StoreWiFiSprite 0x8004, 0x8005
	Cmd_344 0x0, 0x8005
	Cmd_346 0x0
	Message 0x4
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_f4
	Jump Script_branch_78
@ e9

Script_branch_e9: @ e9
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ f4

Script_branch_f4: @ f4
	Cmd_344 0x0, 0x8005
	Message 0x5
	SetFlag 0x70
	Cmd_29c 0x8004, 0x8005
	ActWiFiSprite 0x8005
	Jump Script_branch_e9
@ 110

Script_5: @ 110
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x964
	CompareLastResultJump EQUAL, Script_branch_12e
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 12e

Script_branch_12e: @ 12e
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 139

Script_6: @ 139
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 14c

Script_7: @ 14c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 15f

.byte 0x0 @ 0x15f

@ end_0x160
