.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Cmd_33c 0x4, 0x5d
	CheckFlag 0xe9
	CompareLastResultJump 0x0, Script_branch_3d
	CheckItem 0x5d, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_5f
	Jump Script_branch_6a
@ 3d

Script_branch_3d: @ 3d
	SetFlag 0xe9
	Message 0x0
	CheckItem 0x5d, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_5f
	Jump Script_branch_6a
@ 5f

Script_branch_5f: @ 5f
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6a

Script_branch_6a: @ 6a
	Message 0x1
	Message 0x3
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ChsPokemenu
	StorePokeMenu2 0x8005
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x8005, 0xff
	CompareLastResultJump 0x1, Script_branch_5f
	CheckPokeEgg 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_11a
	CheckMoveRemember 0x800c, 0x8005
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_10f
	Message 0x4
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	StorePokeRemember 0x8005
	StoreRememberMove 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x800c, 0xff
	CompareLastResultJump 0x1, Script_branch_5f
	GiveItem 0x5d, 0x1, 0x800c
	SetVarHero 0x3
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 10f

Script_branch_10f: @ 10f
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 11a

Script_branch_11a: @ 11a
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 125

Script_2: @ 125
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x11
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 138

@ end_0x138
