.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xaa4
	CompareLastResultJump EQUAL, Script_branch_6a
	CheckFlag 0xaa7
	CompareLastResultJump EQUAL, Script_branch_5f
	CheckFlag 0xf7
	CompareLastResultJump LESSER, Script_branch_4c
	CheckFirstPokeParty 0x8002
	Call Function_70
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_136
	Jump Script_branch_146
Script_branch_4c: @ 4c
	SetFlag 0xf7
	SetFlag 0xaa7
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5f

Script_branch_5f: @ 5f
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6a

Script_branch_6a: @ 6a
	Jump Script_branch_12b
Function_70: @ 70
	CheckPokemart 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_c8
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_d2
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_dc
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_e6
	If 0x800c, 0x4
	CompareLastResultJump EQUAL, Script_branch_f0
	If 0x800c, 0x5
	CompareLastResultJump EQUAL, Script_branch_fa
	Jump Script_branch_104
Script_branch_c8: @ c8
	CheckRibbon 0x800c, 0x8002, 0x41
	Return
@ d2

Script_branch_d2: @ d2
	CheckRibbon 0x800c, 0x8002, 0x3b
	Return
@ dc

Script_branch_dc: @ dc
	CheckRibbon 0x800c, 0x8002, 0x3c
	Return
@ e6

Script_branch_e6: @ e6
	CheckRibbon 0x800c, 0x8002, 0x3d
	Return
@ f0

Script_branch_f0: @ f0
	CheckRibbon 0x800c, 0x8002, 0x3e
	Return
@ fa

Script_branch_fa: @ fa
	CheckRibbon 0x800c, 0x8002, 0x3f
	Return
@ 104

Script_branch_104: @ 104
	CheckRibbon 0x800c, 0x8002, 0x40
	Return
@ 10e

Script_branch_10e: @ 10e
	SetVarPoke 0x1, 0x8002
	SetVarHero 0x2
	Message 0x4
	Soundfr 0x483
	Message 0x5
	Cmd_4f
	Message 0x6
	Jump Script_branch_12b
Script_branch_12b: @ 12b
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 136

Script_branch_136: @ 136
	SetVarPoke 0x1, 0x8002
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 146

Script_branch_146: @ 146
	CheckPokemart 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_19e
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1f2
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_246
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_29a
	If 0x800c, 0x4
	CompareLastResultJump EQUAL, Script_branch_2ee
	If 0x800c, 0x5
	CompareLastResultJump EQUAL, Script_branch_342
	Jump Script_branch_396
Script_branch_19e: @ 19e
	Message 0x14
	Cmd_30
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	StorePhraseBox1W 0x0, 0x800c, 0x8000
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3ea
	SetvarPhraseBox1W 0x0, 0x8000
	Message 0x15
	SetFlag 0xaa4
	GiveRibbon 0x8002, 0x41
	SetvarRibbon 0x3, 0x41
	Jump Script_branch_10e
Script_branch_1f2: @ 1f2
	Message 0x2
	Cmd_30
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	StorePhraseBox1W 0x0, 0x800c, 0x8000
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3ea
	SetvarPhraseBox1W 0x0, 0x8000
	Message 0x3
	SetFlag 0xaa4
	GiveRibbon 0x8002, 0x3b
	SetvarRibbon 0x3, 0x3b
	Jump Script_branch_10e
Script_branch_246: @ 246
	Message 0xa
	Cmd_30
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	StorePhraseBox1W 0x0, 0x800c, 0x8000
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3ea
	SetvarPhraseBox1W 0x0, 0x8000
	Message 0xb
	SetFlag 0xaa4
	GiveRibbon 0x8002, 0x3c
	SetvarRibbon 0x3, 0x3c
	Jump Script_branch_10e
Script_branch_29a: @ 29a
	Message 0xc
	Cmd_30
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	StorePhraseBox1W 0x0, 0x800c, 0x8000
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3ea
	SetvarPhraseBox1W 0x0, 0x8000
	Message 0xd
	SetFlag 0xaa4
	GiveRibbon 0x8002, 0x3d
	SetvarRibbon 0x3, 0x3d
	Jump Script_branch_10e
Script_branch_2ee: @ 2ee
	Message 0xe
	Cmd_30
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	StorePhraseBox1W 0x0, 0x800c, 0x8000
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3ea
	SetvarPhraseBox1W 0x0, 0x8000
	Message 0xf
	SetFlag 0xaa4
	GiveRibbon 0x8002, 0x3e
	SetvarRibbon 0x3, 0x3e
	Jump Script_branch_10e
Script_branch_342: @ 342
	Message 0x10
	Cmd_30
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	StorePhraseBox1W 0x0, 0x800c, 0x8000
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3ea
	SetvarPhraseBox1W 0x0, 0x8000
	Message 0x11
	SetFlag 0xaa4
	GiveRibbon 0x8002, 0x3f
	SetvarRibbon 0x3, 0x3f
	Jump Script_branch_10e
Script_branch_396: @ 396
	Message 0x12
	Cmd_30
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	StorePhraseBox1W 0x0, 0x800c, 0x8000
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3ea
	SetvarPhraseBox1W 0x0, 0x8000
	Message 0x13
	SetFlag 0xaa4
	GiveRibbon 0x8002, 0x40
	SetvarRibbon 0x3, 0x40
	Jump Script_branch_10e
Script_branch_3ea: @ 3ea
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3f5

.byte 0x0 @ 0x3f5
.byte 0x0 @ 0x3f6
.byte 0x0 @ 0x3f7

@ end_0x3f8
