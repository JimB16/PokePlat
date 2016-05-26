.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFirstPokeParty 0x8000
	CheckFlag 0x140
	CompareLastResultJump 0x0, Script_branch_5c
	CheckFlag 0x141
	CompareLastResultJump 0x0, Script_branch_5c
	CheckFlag 0x142
	CompareLastResultJump 0x0, Script_branch_5c
	CheckFlag 0x143
	CompareLastResultJump 0x0, Script_branch_5c
	CheckFlag 0x144
	CompareLastResultJump 0x0, Script_branch_5c
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5c

Script_branch_5c: @ 5c
	Message 0x0
	Message 0x1
	Call Function_21c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_d7
	Call Function_24c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_118
	Call Function_27c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_159
	Call Function_2ac
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_19a
	Call Function_2dc
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_1db
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ cc

Script_branch_cc: @ cc
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d7

Script_branch_d7: @ d7
	SetVar 0x8004, 0x104
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_cc
	SetVarPoke 0x0, 0x8000
	SetVarItem 0x1, 0x104
	Message 0x4
	CallStandard 0x7fc
	SetFlag 0x140
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 118

Script_branch_118: @ 118
	SetVar 0x8004, 0x105
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_cc
	SetVarPoke 0x0, 0x8000
	SetVarItem 0x1, 0x105
	Message 0x4
	CallStandard 0x7fc
	SetFlag 0x141
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 159

Script_branch_159: @ 159
	SetVar 0x8004, 0x106
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_cc
	SetVarPoke 0x0, 0x8000
	SetVarItem 0x1, 0x106
	Message 0x4
	CallStandard 0x7fc
	SetFlag 0x142
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 19a

Script_branch_19a: @ 19a
	SetVar 0x8004, 0x107
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_cc
	SetVarPoke 0x0, 0x8000
	SetVarItem 0x1, 0x107
	Message 0x4
	CallStandard 0x7fc
	SetFlag 0x143
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1db

Script_branch_1db: @ 1db
	SetVar 0x8004, 0x108
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_cc
	SetVarPoke 0x0, 0x8000
	SetVarItem 0x1, 0x108
	Message 0x4
	CallStandard 0x7fc
	SetFlag 0x144
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 21c

Function_21c: @ 21c
	CheckFlag 0x140
	CompareLastResultJump 0x1, Script_branch_244
	Cmd_281 0x8000, 0x0, 0x800c
	If 0x800c, 0xc8
	CompareLastResultJump 0x0, Script_branch_244
	SetVar 0x800c, 0x1
	Return
@ 244

Script_branch_244: @ 244
	SetVar 0x800c, 0x0
	Return
@ 24c

Function_24c: @ 24c
	CheckFlag 0x141
	CompareLastResultJump 0x1, Script_branch_274
	Cmd_281 0x8000, 0x1, 0x800c
	If 0x800c, 0xc8
	CompareLastResultJump 0x0, Script_branch_274
	SetVar 0x800c, 0x1
	Return
@ 274

Script_branch_274: @ 274
	SetVar 0x800c, 0x0
	Return
@ 27c

Function_27c: @ 27c
	CheckFlag 0x142
	CompareLastResultJump 0x1, Script_branch_2a4
	Cmd_281 0x8000, 0x2, 0x800c
	If 0x800c, 0xc8
	CompareLastResultJump 0x0, Script_branch_2a4
	SetVar 0x800c, 0x1
	Return
@ 2a4

Script_branch_2a4: @ 2a4
	SetVar 0x800c, 0x0
	Return
@ 2ac

Function_2ac: @ 2ac
	CheckFlag 0x143
	CompareLastResultJump 0x1, Script_branch_2d4
	Cmd_281 0x8000, 0x3, 0x800c
	If 0x800c, 0xc8
	CompareLastResultJump 0x0, Script_branch_2d4
	SetVar 0x800c, 0x1
	Return
@ 2d4

Script_branch_2d4: @ 2d4
	SetVar 0x800c, 0x0
	Return
@ 2dc

Function_2dc: @ 2dc
	CheckFlag 0x144
	CompareLastResultJump 0x1, Script_branch_304
	Cmd_281 0x8000, 0x4, 0x800c
	If 0x800c, 0xc8
	CompareLastResultJump 0x0, Script_branch_304
	SetVar 0x800c, 0x1
	Return
@ 304

Script_branch_304: @ 304
	SetVar 0x800c, 0x0
	Return
@ 30c

Script_2: @ 30c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 31f

Script_3: @ 31f
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x1a1, 0x0
	Message 0xc
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 33e

.byte 0x0 @ 0x33e
.byte 0x0 @ 0x33f

@ end_0x340
