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
	SetFlag 0x1a7
	SetVar 0x40d0, 0x1
	End
@ 2e

Script_2: @ 2e
	ClearFlag 0x178
	ClearFlag 0x179
	SetVar 0x4095, 0x1
	SetVar 0x4082, 0x2
	ClearFlag 0x195
	SetVar 0x4086, 0x2
	SetVar 0x40a4, 0x3
	End
@ 54

Script_3: @ 54
	SetVar 0x4057, 0x1
	End
@ 5c

Script_4: @ 5c
	ClearFlag 0x194
	ClearFlag 0x175
	SetVar 0x4095, 0x1
	SetFlag 0x196
	SetFlag 0x1ae
	ClearFlag 0x293
	End
@ 78

Script_5: @ 78
	SetFlag 0x23f
	SetVar 0x40f0, 0x1
	SetVar 0x40d4, 0x1
	End
@ 8a

Script_6: @ 8a
	End
@ 8c

Script_7: @ 8c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVar 0x8005, 0x0
	Jump Script_branch_b8
	End
@ a2

Script_8: @ a2
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVar 0x8005, 0x1
	Jump Script_branch_b8
	End
@ b8

Script_branch_b8: @ b8
	If 0x8005, 0x0
	CompareLastResultCall EQUAL, Script_branch_254
	If 0x8005, 0x1
	CompareLastResultCall EQUAL, Script_branch_259
	If 0x8005, 0x2
	CompareLastResultCall EQUAL, Script_branch_25b
	Jump Script_branch_e7
	End
@ e7

Script_branch_e7: @ e7
	If 0x8005, 0x0
	CompareLastResultCall EQUAL, Script_branch_260
	If 0x8005, 0x1
	CompareLastResultCall EQUAL, Script_branch_265
	If 0x8005, 0x2
	CompareLastResultCall EQUAL, Script_branch_267
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0xe, 0x0
	Cmd_42 0xf, 0x1
	Cmd_42 0x10, 0x2
	CloseMulti
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_188
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_146
	Jump Script_branch_175
	End
@ 146

Script_branch_146: @ 146
	If 0x8005, 0x0
	CompareLastResultCall EQUAL, Script_branch_26c
	If 0x8005, 0x1
	CompareLastResultCall EQUAL, Script_branch_271
	If 0x8005, 0x2
	CompareLastResultCall EQUAL, Script_branch_273
	Jump Script_branch_e7
	End
@ 175

Script_branch_175: @ 175
	Jump Script_branch_17d
	End
@ 17d

Script_branch_17d: @ 17d
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 188

Script_branch_188: @ 188
	Message 0x7
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x11, 0x0
	Cmd_42 0x12, 0x1
	Cmd_42 0x13, 0x2
	CloseMulti
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1c3
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1d1
	Jump Script_branch_175
	End
@ 1c3

Script_branch_1c3: @ 1c3
	SetVar 0x8006, 0x0
	Jump Script_branch_1df
	End
@ 1d1

Script_branch_1d1: @ 1d1
	SetVar 0x8006, 0x1
	Jump Script_branch_1df
	End
@ 1df

Script_branch_1df: @ 1df
	Message 0x8
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_175
	Jump Script_branch_1fb
	End
@ 1fb

Script_branch_1fb: @ 1fb
	SetVar 0x4000, 0x0
	CallStandard 0x7d6
	CopyVar 0x800c, 0x4000
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_175
	Jump Script_branch_220
	End
@ 220

Script_branch_220: @ 220
	Message 0x9
	CloseMsgOnKeyPress
	If 0x8005, 0x0
	CompareLastResultCall EQUAL, Script_branch_24e
	If 0x8005, 0x1
	CompareLastResultCall EQUAL, Script_branch_250
	If 0x8005, 0x2
	CompareLastResultCall EQUAL, Script_branch_252
	End
@ 24e

Script_branch_24e: @ 24e
	Return
@ 250

Script_branch_250: @ 250
	Return
@ 252

Script_branch_252: @ 252
	Return
@ 254

Script_branch_254: @ 254
	Message 0x0
	Return
@ 259

Script_branch_259: @ 259
	Return
@ 25b

Script_branch_25b: @ 25b
	Message 0x3
	Return
@ 260

Script_branch_260: @ 260
	Message 0x1
	Return
@ 265

Script_branch_265: @ 265
	Return
@ 267

Script_branch_267: @ 267
	Message 0x4
	Return
@ 26c

Script_branch_26c: @ 26c
	Message 0x2
	Return
@ 271

Script_branch_271: @ 271
	Return
@ 273

Script_branch_273: @ 273
	Message 0x5
	Return
@ 278

@ end_0x278
