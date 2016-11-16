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
	CallStandard StdFunc_PkmnMarket
	FreezeMessageBox
	Pokemart 0x1
	ReleaseAll
	End
@ 2b

Script_2: @ 2b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CallStandard StdFunc_PkmnMarket
	FreezeMessageBox
	Pokemart 0x1
	ReleaseAll
	End
@ 41

Script_3: @ 41
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CallStandard StdFunc_PkmnMarket
	FreezeMessageBox
	Pokemart1 0xe
	ReleaseAll
	End
@ 57

Script_4: @ 57
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	CheckTime2 0x800c
	If 0x800c, 0x4
	CompareLastResultJump LESSER, Script_branch_113
	If 0x800c, 0xa
	CompareLastResultJump LESSER, Script_branch_93
	If 0x800c, 0x14
	CompareLastResultJump LESSER, Script_branch_d3
	Jump Script_branch_113
@ 93

Script_branch_93: @ 93
	CheckFlag 0x134
	CompareLastResultJump EQUAL, Script_branch_153
	Message 0x2
	SetVar 0x8004, 0x129
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_174
	CallStandard 0x7fc
	SetFlag 0x134
	Message 0x3
	Jump Script_branch_153
@ d3

Script_branch_d3: @ d3
	CheckFlag 0x135
	CompareLastResultJump EQUAL, Script_branch_15e
	Message 0x2
	SetVar 0x8004, 0xf0
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_174
	CallStandard 0x7fc
	SetFlag 0x135
	Message 0x4
	Jump Script_branch_15e
@ 113

Script_branch_113: @ 113
	CheckFlag 0x136
	CompareLastResultJump EQUAL, Script_branch_169
	Message 0x2
	SetVar 0x8004, 0x10b
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_174
	CallStandard 0x7fc
	SetFlag 0x136
	Message 0x5
	Jump Script_branch_169
@ 153

Script_branch_153: @ 153
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 15e

Script_branch_15e: @ 15e
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 169

Script_branch_169: @ 169
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 174

Script_branch_174: @ 174
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 17f

.byte 0x0 @ 0x17f

@ end_0x180
