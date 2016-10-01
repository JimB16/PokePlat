.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	End
@ 14

Script_2: @ 14
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Soundfr 0x48e
	Cmd_4f
	HealPokemon
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4c

Script_3: @ 4c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5f

Script_4: @ 5f
	PlayFanfare 0x5dc
	LockAll
	CheckFlag 0xfd
	CompareLastResultJump EQUAL, Script_branch_81
	SetFlag 0xfd
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 81

Script_branch_81: @ 81
	ApplyMovement 0x2, Movement_9c
	WaitMovement
	Message 0x4
	FacePlayer
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9b

.byte 0x0 @ 0x9b

Movement_9c: @ 9c
	SeeRight 0x1
	EndMovement 0x0
@ a4

@ end_0xa4
