.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_4: @ 12
	CheckNatPokedexStatus 0x2, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_2c
	SetFlag 0x27f
	SetFlag 0x280
Script_branch_2c: @ 2c
	End
@ 2e

Script_1: @ 2e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 41

Script_2: @ 41
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 54

Script_3: @ 54
	CallMessageBox 0x2, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 6b

.byte 0x0 @ 0x6b

@ end_0x6c
