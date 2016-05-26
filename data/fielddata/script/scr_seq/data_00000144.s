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
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFirstTimeVShop 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_5f
	Message 0x0
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0xe5, 0x1
	Cmd_42 0xe4, 0x0
	CloseMulti
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_c2
	Jump Script_branch_b7
@ 5f

Script_branch_5f: @ 5f
	SetVarHero 0x0
	Message 0x1
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0xe5, 0x0
	Cmd_42 0xe4, 0x1
	CloseMulti
	If 0x800c, 0x0
	CompareLastResultJump 0x5, Script_branch_b7
	RandomTextStored 0x800c, 0x4
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_c2
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_cd
	If 0x800c, 0x2
	CompareLastResultJump 0x1, Script_branch_d8
	Jump Script_branch_e3
@ b7

Script_branch_b7: @ b7
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c2

Script_branch_c2: @ c2
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ cd

Script_branch_cd: @ cd
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d8

Script_branch_d8: @ d8
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e3

Script_branch_e3: @ e3
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ee

Script_2: @ ee
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 101

Script_3: @ 101
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 114

Script_4: @ 114
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 127

Script_5: @ 127
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CallStandard StdFunc_PkmnMarket
	FreezeMessageBox
	Pokemart1 0xc
	ReleaseAll
	End
@ 13d

Script_6: @ 13d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CallStandard StdFunc_PkmnMarket
	FreezeMessageBox
	Pokemart1 0xd
	ReleaseAll
	End
@ 153

Script_7: @ 153
	PlayFanfare 0x5dc
	LockAll
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 164

@ end_0x164
