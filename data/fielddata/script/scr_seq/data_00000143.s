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
	CheckFirstTimeVShop 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_63
	Message 0x0
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0xe5, 0x1
	Cmd_42 0xe4, 0x0
	CloseMulti
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_c6
	Jump Script_branch_bb
Script_branch_63: @ 63
	SetVarHero 0x0
	Message 0x1
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0xe5, 0x0
	Cmd_42 0xe4, 0x1
	CloseMulti
	If 0x800c, 0x0
	CompareLastResultJump 0x5, Script_branch_bb
	CheckIdPlayer 0x800c, 0x4
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_c6
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_d1
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_dc
	Jump Script_branch_e7
Script_branch_bb: @ bb
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c6

Script_branch_c6: @ c6
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d1

Script_branch_d1: @ d1
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ dc

Script_branch_dc: @ dc
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e7

Script_branch_e7: @ e7
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ f2

Script_2: @ f2
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 105

Script_3: @ 105
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 118

Script_4: @ 118
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 12b

Script_5: @ 12b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	StorePoketchApp 0xa, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_16f
	Message 0xa
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_17a
	Message 0xb
	SetVar 0x8004, 0xa
	CallStandard 0x7d9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 16f

Script_branch_16f: @ 16f
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 17a

Script_branch_17a: @ 17a
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 185

.byte 0x49 @ 0x185
.byte 0x0 @ 0x186
.byte 0xdc @ 0x187
.byte 0x5 @ 0x188
.byte 0x60 @ 0x189
.byte 0x0 @ 0x18a
.byte 0x68 @ 0x18b
.byte 0x0 @ 0x18c
.byte 0x2c @ 0x18d
.byte 0x0 @ 0x18e
.byte 0xa @ 0x18f
.byte 0x31 @ 0x190
.byte 0x0 @ 0x191
.byte 0x34 @ 0x192
.byte 0x0 @ 0x193
.byte 0x61 @ 0x194
.byte 0x0 @ 0x195
.byte 0x2 @ 0x196
.byte 0x0 @ 0x197

Script_6: @ 198
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CallStandard StdFunc_PkmnMarket
	FreezeMessageBox
	Pokemart1 0xa
	ReleaseAll
	End
@ 1ae

Script_7: @ 1ae
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CallStandard StdFunc_PkmnMarket
	FreezeMessageBox
	Pokemart1 0xb
	ReleaseAll
	End
@ 1c4

Script_8: @ 1c4
	PlayFanfare 0x5dc
	LockAll
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1d5

.byte 0x0 @ 0x1d5
.byte 0x0 @ 0x1d6
.byte 0x0 @ 0x1d7

@ end_0x1d8
