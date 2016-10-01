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
	.hword 0xfd13
@ 22

Script_1: @ 22
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 35

Script_2: @ 35
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 48

Script_3: @ 48
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5b

Script_4: @ 5b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CallStandard StdFunc_PkmnMarket
	FreezeMessageBox
	Pokemart1 0x8
	ReleaseAll
	End
@ 71

Script_5: @ 71
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CallStandard StdFunc_PkmnMarket
	FreezeMessageBox
	Pokemart1 0x9
	ReleaseAll
	End
@ 87

Script_6: @ 87
	PlayFanfare 0x5dc
	LockAll
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 98

Script_7: @ 98
	PlayFanfare 0x5dc
	LockAll
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
	CheckFlag 0x129
	CompareLastResultJump EQUAL, Script_branch_109
	StoreStarter 0x800c
	If 0x800c, 0x183
	CompareLastResultCall EQUAL, Script_branch_119
	If 0x800c, 0x186
	CompareLastResultCall EQUAL, Script_branch_121
	If 0x800c, 0x189
	CompareLastResultCall EQUAL, Script_branch_129
	CopyVar 0x4107, 0x8004
	Cmd_343 0x0, 0x8004
	Message 0x3
	SetVar 0x8005, 0x1
	CallStandard 0x7df
	SetFlag 0x129
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 109

Script_branch_109: @ 109
	CheckAccessories3 0x0, 0x4107
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 119

Script_branch_119: @ 119
	SetVar 0x8004, 0x5e
	Return
@ 121

Script_branch_121: @ 121
	SetVar 0x8004, 0x5c
	Return
@ 129

Script_branch_129: @ 129
	SetVar 0x8004, 0x5d
	Return
@ 131

.byte 0x0 @ 0x131
.byte 0x0 @ 0x132
.byte 0x0 @ 0x133

@ end_0x134
