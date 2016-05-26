.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x108
	CompareLastResultJump 0x1, Script_branch_3b
	SetFlag 0x108
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_55
	Jump Script_branch_28f
@ 3b

Script_branch_3b: @ 3b
	Message 0x1
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_55
	Jump Script_branch_28f
@ 55

Script_branch_55: @ 55
	Message 0x2
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ChsPokemenu
	StorePokeMenu2 0x8000
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x8000, 0xff
	CompareLastResultJump 0x1, Script_branch_28f
	CheckPokeEgg 0x8000, 0x8001
	If 0x8001, 0x0
	CompareLastResultJump 0x1, Script_branch_2a5
	Call Function_195
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_29a
	CopyVar 0x8002, 0x800c
	Call Function_251
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_2bb
	StoreHappyPoke 0x800c, 0x8000
	If 0x800c, 0xff
	CompareLastResultJump 0x0, Script_branch_2b0
	SetVarPoke 0x0, 0x8000
	If 0x8002, 0x1
	CompareLastResultJump 0x1, Script_branch_fe
	If 0x8002, 0x2
	CompareLastResultJump 0x1, Script_branch_11e
	Jump Script_branch_13e
@ fe

Script_branch_fe: @ fe
	Message 0x9
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_28f
	SetVar 0x8003, 0x133
	Jump Script_branch_15e
@ 11e

Script_branch_11e: @ 11e
	Message 0xa
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_28f
	SetVar 0x8003, 0x134
	Jump Script_branch_15e
@ 13e

Script_branch_13e: @ 13e
	Message 0xb
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_28f
	SetVar 0x8003, 0x152
	Jump Script_branch_15e
@ 15e

Script_branch_15e: @ 15e
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CopyMoveRemember 0x8000, 0x8003
	StoreMoveRemember 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x800c, 0xff
	CompareLastResultJump 0x1, Script_branch_28f
	ReleaseAll
	End
@ 195

Function_195: @ 195
	If 0x8001, 0x6
	CompareLastResultJump 0x1, Script_branch_239
	If 0x8001, 0x9d
	CompareLastResultJump 0x1, Script_branch_239
	If 0x8001, 0x101
	CompareLastResultJump 0x1, Script_branch_239
	If 0x8001, 0x188
	CompareLastResultJump 0x1, Script_branch_239
	If 0x8001, 0x9
	CompareLastResultJump 0x1, Script_branch_241
	If 0x8001, 0xa0
	CompareLastResultJump 0x1, Script_branch_241
	If 0x8001, 0x104
	CompareLastResultJump 0x1, Script_branch_241
	If 0x8001, 0x18b
	CompareLastResultJump 0x1, Script_branch_241
	If 0x8001, 0x3
	CompareLastResultJump 0x1, Script_branch_249
	If 0x8001, 0x9a
	CompareLastResultJump 0x1, Script_branch_249
	If 0x8001, 0xfe
	CompareLastResultJump 0x1, Script_branch_249
	If 0x8001, 0x185
	CompareLastResultJump 0x1, Script_branch_249
	SetVar 0x800c, 0x0
	Return
@ 239

Script_branch_239: @ 239
	SetVar 0x800c, 0x1
	Return
@ 241

Script_branch_241: @ 241
	SetVar 0x800c, 0x2
	Return
@ 249

Script_branch_249: @ 249
	SetVar 0x800c, 0x3
	Return
@ 251

Function_251: @ 251
	If 0x8002, 0x1
	CompareLastResultJump 0x1, Script_branch_271
	If 0x8002, 0x2
	CompareLastResultJump 0x1, Script_branch_27b
	Jump Script_branch_285
@ 271

Script_branch_271: @ 271
	CheckMove 0x800c, 0x133, 0x8000
	Return
@ 27b

Script_branch_27b: @ 27b
	CheckMove 0x800c, 0x134, 0x8000
	Return
@ 285

Script_branch_285: @ 285
	CheckMove 0x800c, 0x152, 0x8000
	Return
@ 28f

Script_branch_28f: @ 28f
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 29a

Script_branch_29a: @ 29a
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2a5

Script_branch_2a5: @ 2a5
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2b0

Script_branch_2b0: @ 2b0
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2bb

Script_branch_2bb: @ 2bb
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2c6

Script_2: @ 2c6
	PlayFanfare 0x5dc
	LockAll
	Message 0x12
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2d7

.byte 0x0 @ 0x2d7

@ end_0x2d8
