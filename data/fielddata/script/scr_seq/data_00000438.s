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
	CheckGender 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_3e
	If 0x4000, 0x1
	CompareLastResultJump 0x1, Script_branch_46
	End
@ 3e

Script_branch_3e: @ 3e
	SetVar 0x4020, 0x61
	End
@ 46

Script_branch_46: @ 46
	SetVar 0x4020, 0x0
	End
@ 4e

Script_2: @ 4e
	LockAll
	CheckSpritePosition 0x8004, 0x8005
	ChangeOwPosition 0x12, 0x14b, 0x8005
	Call Function_8e
	ApplyMovement 0x12, Movement_194
	WaitMovement
	CallStandard 0x7f8
	ApplyMovement 0x12, Movement_1a0
	WaitMovement
	ApplyMovement 0xff, Movement_174
	WaitMovement
	Jump Script_branch_9c
@ 8c

.byte 0x2 @ 0x8c
.byte 0x0 @ 0x8d

Function_8e: @ 8e
	ClearFlag 0x1cc
	AddPeople 0x12
	Lock 0x12
	Return
@ 9c

Script_branch_9c: @ 9c
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_b3
	Jump Script_branch_f1
@ b3

Script_branch_b3: @ b3
	SetVarHero 0x0
	Message 0x0
	Multi3 0x1e, 0xd, 0x0, 0x0, 0x800c
	Cmd_33a 0x1
	TxtMsgScrpMulti 0x89, 0xff, 0x0
	TxtMsgScrpMulti 0x8a, 0xff, 0x1
	CloseMulti4
	Message 0x1
	Call Function_12f
	Message 0x2
	Call Function_145
	Message 0x3
	Jump Script_branch_156
@ f1

Script_branch_f1: @ f1
	SetVarHero 0x0
	Message 0x4
	Multi3 0x1e, 0xd, 0x0, 0x0, 0x800c
	Cmd_33a 0x1
	TxtMsgScrpMulti 0x89, 0xff, 0x0
	TxtMsgScrpMulti 0x8a, 0xff, 0x1
	CloseMulti4
	Message 0x5
	Call Function_12f
	Message 0x6
	Call Function_145
	Message 0x7
	Jump Script_branch_156
@ 12f

Function_12f: @ 12f
	SetFlag 0x97f
	SetVar 0x8004, 0x1bb
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	Return
@ 145

Function_145: @ 145
	SetVar 0x8004, 0x6
	CallStandard 0x7d9
	SetVarObj 0x1, 0x6
	Return
@ 156

Script_branch_156: @ 156
	CloseMsgOnKeyPress
	ApplyMovement 0x12, Movement_1a8
	WaitMovement
	RemovePeople 0x12
	CallStandard 0x7f9
	SetVar 0x408c, 0x1
	ReleaseAll
	End
@ 174

Movement_174: @ 174
	MoveLeftFast 0x1
	EndMovement 0x0
@ 17c

.byte 0x3f @ 0x17c
.byte 0x0 @ 0x17d
.byte 0x8 @ 0x17e
.byte 0x0 @ 0x17f
.byte 0x22 @ 0x180
.byte 0x0 @ 0x181
.byte 0x1 @ 0x182
.byte 0x0 @ 0x183
.byte 0xfe @ 0x184
.byte 0x0 @ 0x185
.byte 0x0 @ 0x186
.byte 0x0 @ 0x187
.byte 0x3f @ 0x188
.byte 0x0 @ 0x189
.byte 0x1 @ 0x18a
.byte 0x0 @ 0x18b
.byte 0x20 @ 0x18c
.byte 0x0 @ 0x18d
.byte 0x1 @ 0x18e
.byte 0x0 @ 0x18f
.byte 0xfe @ 0x190
.byte 0x0 @ 0x191
.byte 0x0 @ 0x192
.byte 0x0 @ 0x193

Movement_194: @ 194
	WalkRightFast 0x3
	Exclamation 0x1
	EndMovement 0x0
@ 1a0

Movement_1a0: @ 1a0
	WalkRightFast 0x5
	EndMovement 0x0
@ 1a8

Movement_1a8: @ 1a8
	WalkLeftFast 0x8
	EndMovement 0x0
@ 1b0

Script_3: @ 1b0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1c3

Script_4: @ 1c3
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x82
	CompareLastResultJump 0x1, Script_branch_1e1
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1e1

Script_branch_1e1: @ 1e1
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1ec

Script_5: @ 1ec
	CallMessageBox 0xb, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 203

Script_6: @ 203
	CallMessageBox 0xc, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 21a

Script_7: @ 21a
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0xd, 0x800c
	CallStandard 0x7d0
	End
@ 22f

.byte 0x0 @ 0x22f

@ end_0x230
