.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	.hword 0xfd13
@ 1a

Script_6: @ 1a
	CheckFlag 0x8e
	CompareLastResultJump 0x1, Script_branch_27
	End
@ 27

Script_branch_27: @ 27
	SetFlag 0x29c
	RemovePeople 0x2
	RemovePeople 0x1
	ClearFlag 0x8e
	End
@ 39

Script_1: @ 39
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFacePosition 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_7b
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_8b
	If 0x800c, 0x2
	CompareLastResultJump 0x1, Script_branch_9b
	If 0x800c, 0x3
	CompareLastResultJump 0x1, Script_branch_ab
	End
@ 7b

Script_branch_7b: @ 7b
	ApplyMovement 0x0, Movement_1b8
	WaitMovement
	Jump Script_branch_bb
@ 8b

Script_branch_8b: @ 8b
	ApplyMovement 0x0, Movement_1dc
	WaitMovement
	Jump Script_branch_bb
@ 9b

Script_branch_9b: @ 9b
	ApplyMovement 0x0, Movement_200
	WaitMovement
	Jump Script_branch_bb
@ ab

Script_branch_ab: @ ab
	ApplyMovement 0x0, Movement_224
	WaitMovement
	Jump Script_branch_bb
@ bb

Script_branch_bb: @ bb
	CheckBadge 0x4, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_1a0
	DeActivateLeader 0x9, 0x5b, 0x0, 0x0, 0x0
	Message 0x0
	CloseMsgOnKeyPress
	SetFlag 0x8e
	TrainerBattle 0x13e, 0x0
	ClearFlag 0x8e
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_248
	Message 0x1
	SetVarHero 0x0
	Message 0x2
	Soundfr 0x489
	Cmd_4f
	EnableBadge 0x4
	MainEvent 0x17
	SetTrainerId 0x10a
	SetTrainerId 0x118
	SetTrainerId 0x11c
	SetTrainerId 0x145
	SetTrainerId 0x14a
	SetTrainerId 0x154
	SetTrainerId 0x157
	SetTrainerId 0x165
	DeActivateLeader 0xa, 0x5b, 0x13e, 0x0, 0x0
	SetVar 0x407b, 0x1
	SetFlag 0x206
	ClearFlag 0x207
	Message 0x3
	Jump Script_branch_158
@ 158

Script_2: @ 158
Script_branch_158: @ 158
	SetVar 0x8004, 0x188
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_196
	CallStandard 0x7fc
	SetFlag 0x7d
	SetVarItem 0x0, 0x8004
	SetVarAtkItem 0x1, 0x8004
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 196

Script_3: @ 196
Script_branch_196: @ 196
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1a0

Script_4: @ 1a0
Script_branch_1a0: @ 1a0
	CheckFlag 0x7d
	CompareLastResultJump 0x0, Script_branch_158
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1b6

.byte 0x0 @ 0x1b6
.byte 0x0 @ 0x1b7

Movement_1b8: @ 1b8
	SeeLeft 0x4
	SeeUp 0x4
	SeeRight 0x4
	SeeDown 0x4
	SeeLeft 0x4
	SeeUp 0x4
	SeeRight 0x4
	SeeDown 0x4
	EndMovement 0x0
@ 1dc

Movement_1dc: @ 1dc
	SeeRight 0x4
	SeeDown 0x4
	SeeLeft 0x4
	SeeUp 0x4
	SeeRight 0x4
	SeeDown 0x4
	SeeLeft 0x4
	SeeUp 0x4
	EndMovement 0x0
@ 200

Movement_200: @ 200
	SeeUp 0x4
	SeeLeft 0x4
	SeeDown 0x4
	SeeRight 0x4
	SeeUp 0x4
	SeeLeft 0x4
	SeeDown 0x4
	SeeRight 0x4
	EndMovement 0x0
@ 224

Movement_224: @ 224
	SeeUp 0x4
	SeeRight 0x4
	SeeDown 0x4
	SeeLeft 0x4
	SeeUp 0x4
	SeeRight 0x4
	SeeDown 0x4
	SeeLeft 0x4
	EndMovement 0x0
@ 248

Script_5: @ 248
Script_branch_248: @ 248
	ClearFlag 0x29c
	LostGoPc
	ReleaseAll
	End
@ 252

.byte 0x0 @ 0x252
.byte 0x0 @ 0x253

@ end_0x254
