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
	.hword 0xfd13
@ 2a

Script_8: @ 2a
	Jump Script_branch_32
	End
@ 32

Script_branch_32: @ 32
	CheckIdPlayer 0x40c2, 0x3
	CheckFlag 0xd6
	CompareLastResultJump LESSER, Script_branch_52
	End
@ 45

Script_9: @ 45
	CheckFlag 0xd6
	CompareLastResultJump LESSER, Script_branch_52
	End
@ 52

Script_branch_52: @ 52
	SetTilePassable 0x0, 0x28c, 0x150
	End
@ 5c

Script_1: @ 5c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6f

Script_2: @ 6f
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 82

Script_3: @ 82
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 95

Script_4: @ 95
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xd7
	CompareLastResultJump EQUAL, Script_branch_b3
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b3

Script_branch_b3: @ b3
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ be

Script_5: @ be
	CallMessageBox 0xd, 0x0, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ d5

Script_6: @ d5
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVarHero 0x0
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x8, Movement_11c
	WaitMovement
	PrepareDoorAnimation 0x14, 0xa, 0xc, 0x12, 0x4d
	OpenDoor 0x4d
	WaitAction 0x4d
	ApplyMovement 0x8, Movement_124
	WaitMovement
	CloseDoor 0x4d
	WaitAction 0x4d
	WaitClose 0x4d
	RemovePeople 0x8
	ReleaseAll
	End
@ 11b

.byte 0x0 @ 0x11b

Movement_11c: @ 11c
	MoveUpFast 0x1
	EndMovement 0x0
@ 124

Movement_124: @ 124
	WalkUpFast 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 130

Script_7: @ 130
	PlayFanfare 0x5dc
	LockAll
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 141

Script_10: @ 141
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckPokemart 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_1be
	If 0x4000, 0x6
	CompareLastResultJump EQUAL, Script_branch_1be
	SetVariableRival 0x0
	SetVarHero 0x1
	CopyVar 0x8008, 0x40c2
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_195
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_1a0
	Jump Script_branch_1ab
	End
@ 195

Script_branch_195: @ 195
	Message 0x4
	Jump Script_branch_1b6
	End
@ 1a0

Script_branch_1a0: @ 1a0
	Message 0x5
	Jump Script_branch_1b6
	End
@ 1ab

Script_branch_1ab: @ 1ab
	Message 0x6
	Jump Script_branch_1b6
	End
@ 1b6

Script_branch_1b6: @ 1b6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1be

Script_branch_1be: @ 1be
	CheckFlag 0xab2
	CompareLastResultJump EQUAL, Script_branch_2cb
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x2
	CloseMsgOnKeyPress
	StoreStarter 0x800c
	If 0x800c, 0x183
	CompareLastResultJump EQUAL, Script_branch_236
	If 0x800c, 0x186
	CompareLastResultJump EQUAL, Script_branch_272
	Jump Script_branch_1fa
	End
@ 1fa

Script_branch_1fa: @ 1fa
	CheckFirstTimeChampion 0x800c
	If 0x800c, 0x14
	CompareLastResultJump LESSER, Script_branch_21a
	If 0x800c, 0x14
	CompareLastResultJump 0x4, Script_branch_228
	End
@ 21a

Script_branch_21a: @ 21a
	TrainerBattle 0x345, 0x0
	Jump Script_branch_2ae
	End
@ 228

Script_branch_228: @ 228
	TrainerBattle 0x367, 0x0
	Jump Script_branch_2ae
	End
@ 236

Script_branch_236: @ 236
	CheckFirstTimeChampion 0x800c
	If 0x800c, 0x14
	CompareLastResultJump LESSER, Script_branch_256
	If 0x800c, 0x14
	CompareLastResultJump 0x4, Script_branch_264
	End
@ 256

Script_branch_256: @ 256
	TrainerBattle 0x346, 0x0
	Jump Script_branch_2ae
	End
@ 264

Script_branch_264: @ 264
	TrainerBattle 0x368, 0x0
	Jump Script_branch_2ae
	End
@ 272

Script_branch_272: @ 272
	CheckFirstTimeChampion 0x800c
	If 0x800c, 0x14
	CompareLastResultJump LESSER, Script_branch_292
	If 0x800c, 0x14
	CompareLastResultJump 0x4, Script_branch_2a0
	End
@ 292

Script_branch_292: @ 292
	TrainerBattle 0x347, 0x0
	Jump Script_branch_2ae
	End
@ 2a0

Script_branch_2a0: @ 2a0
	TrainerBattle 0x369, 0x0
	Jump Script_branch_2ae
	End
@ 2ae

Script_branch_2ae: @ 2ae
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2dc
	SetFlag 0xab2
	Jump Script_branch_2cb
	End
@ 2cb

Script_branch_2cb: @ 2cb
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2dc

Script_branch_2dc: @ 2dc
	LostGoPc
	ReleaseAll
	End
@ 2e2

.byte 0x0 @ 0x2e2
.byte 0x0 @ 0x2e3

@ end_0x2e4
