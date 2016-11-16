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
	ApplyMovement 0x0, Movement_44
	WaitMovement
	Message 0x0
	CloseMsgOnKeyPress
	Return2 0x8, 0x800c
	ApplyMovement 0x0, Movement_4c
	WaitMovement
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 44

Movement_44: @ 44
	SeeRight 0x1
	EndMovement 0x0
@ 4c

Movement_4c: @ 4c
	SeeLeft 0x1
	EndMovement 0x0
@ 54

Script_2: @ 54
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 67

Script_3: @ 67
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7a

Script_4: @ 7a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_9c
	Jump Script_branch_15b
@ 9c

Script_branch_9c: @ 9c
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CloseMsgOnKeyPress
	StorePhraseBox2W 0x0, 0x800c, 0x8000, 0x8001
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_15b
	Message 0x5
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CloseMsgOnKeyPress
	StorePhraseBox2W 0x0, 0x800c, 0x8002, 0x8003
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_15b
	CheckPhraseBoxInput2 0x800c, 0x8000, 0x8001, 0x8002, 0x8003
	If 0x800c, 0xff
	CompareLastResultJump EQUAL, Script_branch_131
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_131
	Jump Script_branch_166
@ 131

Script_branch_131: @ 131
	ComparePhraseBoxInput 0x800c, 0x8000, 0x8001, 0x8002, 0x8003
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_150
	Jump Script_branch_171
@ 150

Script_branch_150: @ 150
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 15b

Script_branch_15b: @ 15b
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 166

Script_branch_166: @ 166
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 171

Script_branch_171: @ 171
	Message 0x9
	WaitButton
	ActivateMysteryGift
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 17e

.byte 0x0 @ 0x17e
.byte 0x0 @ 0x17f

@ end_0x180
