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
	SetFlag 0x9dd
	End
@ 28

Script_2: @ 28
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x15e
	CompareLastResultJump 0x1, Script_branch_46
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 46

Script_branch_46: @ 46
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 51

Script_3: @ 51
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x15e
	CompareLastResultJump 0x1, Script_branch_6f
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6f

Script_branch_6f: @ 6f
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7a

Script_4: @ 7a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x15e
	CompareLastResultJump 0x1, Script_branch_98
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 98

Script_branch_98: @ 98
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a3

Script_5: @ a3
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x15e
	CompareLastResultJump 0x1, Script_branch_c1
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c1

Script_branch_c1: @ c1
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ cc

Script_8: @ cc
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ df

Script_6: @ df
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckItem 0x1b8, 0x1, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_107
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 107

Script_branch_107: @ 107
	Message 0xa
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_12a
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_15e
	End
@ 12a

Script_branch_12a: @ 12a
	SetVarHero 0x0
	Message 0xb
	WaitButton
	WaitFanfare 0x5dc
	PlayFanfare 0x608
	ApplyMovement 0x5, Movement_164
	ApplyMovement 0x6, Movement_16c
	WaitMovement
	SetFlag 0x224
	RemovePeople 0x5
	RemovePeople 0x6
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 15e

Script_branch_15e: @ 15e
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 164

Movement_164: @ 164
	WalkLeftVeryFast 0x1
	EndMovement 0x0
@ 16c

Movement_16c: @ 16c
	WalkRightVeryFast 0x1
	EndMovement 0x0
@ 174

Script_7: @ 174
	PlayFanfare 0x5dc
	LockAll
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 185

.byte 0x0 @ 0x185
.byte 0x0 @ 0x186
.byte 0x0 @ 0x187

@ end_0x188
