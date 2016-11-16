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
	CallStandard StdFunc_PkmnMarket
	FreezeMessageBox
	Pokemart 0x1
	ReleaseAll
	End
@ 28

Script_2: @ 28
	End
@ 2a

Script_3: @ 2a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xd5
	CompareLastResultJump EQUAL, Script_branch_71
	Message 0x0
	SetVar 0x8004, 0xe8
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_7c
	CallStandard 0x7fc
	SetFlag 0xd5
	Jump Script_branch_71
@ 6f

.byte 0x2 @ 0x6f
.byte 0x0 @ 0x70

Script_branch_71: @ 71
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7c

Script_branch_7c: @ 7c
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 86

Script_4: @ 86
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 99

.byte 0x0 @ 0x99
.byte 0x0 @ 0x9a
.byte 0x0 @ 0x9b

@ end_0x9c
