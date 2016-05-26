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
	Cmd_17e 0x8000
	Cmd_181 0x8001
	Cmd_17d 0x800c
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump 0x1, Script_branch_33e
	If 0x8008, 0x1
	CompareLastResultJump 0x1, Script_branch_82
	If 0x8008, 0x2
	CompareLastResultJump 0x1, Script_branch_b9
	If 0x8008, 0x3
	CompareLastResultJump 0x1, Script_branch_ee
	If 0x8008, 0x4
	CompareLastResultJump 0x1, Script_branch_123
	If 0x8008, 0x5
	CompareLastResultJump 0x1, Script_branch_21b
	Jump Script_branch_33e
@ 80

.byte 0x2 @ 0x80
.byte 0x0 @ 0x81

Script_branch_82: @ 82
	Call Function_158
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_a6
	Cmd_33c 0x0, 0x8000
	Cmd_346 0x0
	Message 0xd
	Jump Script_branch_1f2
@ a6

Script_branch_a6: @ a6
	Cmd_33c 0x0, 0x8000
	Cmd_346 0x0
	Message 0x1f
	WaitButton
	Jump Script_branch_53a
@ b9

Script_branch_b9: @ b9
	Call Function_158
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_dc
	Cmd_17b 0x0, 0x8000, 0x8001
	Message 0xe
	Jump Script_branch_1f2
@ dc

Script_branch_dc: @ dc
	Cmd_17b 0x0, 0x8000, 0x8001
	Message 0x20
	WaitButton
	Jump Script_branch_53a
@ ee

Script_branch_ee: @ ee
	Call Function_158
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_111
	Cmd_17b 0x0, 0x8000, 0x8001
	Message 0xf
	Jump Script_branch_1f2
@ 111

Script_branch_111: @ 111
	Cmd_17b 0x0, 0x8000, 0x8001
	Message 0x21
	WaitButton
	Jump Script_branch_53a
@ 123

Script_branch_123: @ 123
	Call Function_158
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_146
	Cmd_17b 0x0, 0x8000, 0x8001
	Message 0x10
	Jump Script_branch_1f2
@ 146

Script_branch_146: @ 146
	Cmd_17b 0x0, 0x8000, 0x8001
	Message 0x22
	WaitButton
	Jump Script_branch_53a
@ 158

Function_158: @ 158
	CheckFacePosition 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x5, Script_branch_186
	CheckItem 0x1c0, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_186
	SetVar 0x800c, 0x1
	Return
@ 186

Script_branch_186: @ 186
	SetVar 0x800c, 0x0
	Return
@ 18e

Function_18e: @ 18e
	CheckItem 0x5f, 0x1, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_1ea
	CheckItem 0x60, 0x1, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_1ea
	CheckItem 0x61, 0x1, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_1ea
	CheckItem 0x62, 0x1, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_1ea
	SetVar 0x800c, 0x0
	Return
@ 1ea

Script_branch_1ea: @ 1ea
	SetVar 0x800c, 0x1
	Return
@ 1f2

Script_branch_1f2: @ 1f2
	Message 0x11
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_53a
	CloseMsgOnKeyPress
	Cmd_184 0x0
	Message 0x14
	WaitButton
	Cmd_184 0x1
	Jump Script_branch_53a
@ 21b

Script_branch_21b: @ 21b
	SetVariableNumber 0x1, 0x8001
	If 0x8001, 0x1
	CompareLastResultJump 0x2, Script_branch_23b
	Cmd_33c 0x0, 0x8000
	Message 0x23
	Jump Script_branch_243
@ 23b

Script_branch_23b: @ 23b
	Cmd_33d 0x0, 0x8000
	Message 0x15
Script_branch_243: @ 243
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_2f7
	CheckStoreItem 0x8000, 0x8001, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_2cf
	SetVariableNumber 0x1, 0x8001
	If 0x8001, 0x1
	CompareLastResultJump 0x2, Script_branch_289
	SetVarItem 0x0, 0x8000
	Message 0x25
	Jump Script_branch_291
@ 289

Script_branch_289: @ 289
	Cmd_33d 0x0, 0x8000
	Message 0x19
Script_branch_291: @ 291
	Soundfr 0x48f
	Cmd_4f
	Cmd_185
	SetVarHero 0x0
	If 0x8001, 0x1
	CompareLastResultJump 0x2, Script_branch_2b4
	SetVarItem 0x1, 0x8000
	Jump Script_branch_2b9
@ 2b4

Script_branch_2b4: @ 2b4
	Cmd_33d 0x1, 0x8000
Script_branch_2b9: @ 2b9
	StoreItemType 0x8000, 0x800c
	SetVarItemNum 0x3, 0x800c
	Message 0x1b
	WaitButton
	Jump Script_branch_53a
@ 2cf

Script_branch_2cf: @ 2cf
	If 0x8001, 0x1
	CompareLastResultJump 0x2, Script_branch_2e7
	SetVarItem 0x0, 0x8000
	Jump Script_branch_2ec
@ 2e7

Script_branch_2e7: @ 2e7
	Cmd_33d 0x0, 0x8000
Script_branch_2ec: @ 2ec
	Message 0x1a
	WaitButton
	Jump Script_branch_53a
@ 2f7

Script_branch_2f7: @ 2f7
	Call Function_158
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_310
	Jump Script_branch_1f2
@ 310

Script_branch_310: @ 310
	SetVarHero 0x0
	If 0x8001, 0x1
	CompareLastResultJump 0x2, Script_branch_32e
	SetVarItem 0x1, 0x8000
	Message 0x24
	Jump Script_branch_336
@ 32e

Script_branch_32e: @ 32e
	Cmd_33d 0x1, 0x8000
	Message 0x18
Script_branch_336: @ 336
	WaitButton
	Jump Script_branch_53a
@ 33e

Script_branch_33e: @ 33e
	Cmd_17f 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_374
	Cmd_17a 0x4, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_54b
	Cmd_17f 0x800c
	SetVarItem 0x0, 0x800c
	Message 0x1
	Jump Script_branch_4da
@ 374

Script_branch_374: @ 374
	CheckFacePosition 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x5, Script_branch_540
	Call Function_18e
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_3b4
	Cmd_17a 0x4, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_540
	Message 0x0
	Jump Script_branch_4da
@ 3b4

Script_branch_3b4: @ 3b4
	Message 0x0
	Cmd_17a 0x4, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_413
	Multi2 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x2, 0x0
	Cmd_42 0x3, 0x1
	Cmd_42 0x4, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump 0x1, Script_branch_42d
	If 0x8008, 0x1
	CompareLastResultJump 0x1, Script_branch_4ee
	If 0x8008, 0x2
	CompareLastResultJump 0x1, Script_branch_53a
	Jump Script_branch_53a
@ 413

Script_branch_413: @ 413
	Message 0x5
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_42d
	Jump Script_branch_53a
@ 42d

Script_branch_42d: @ 42d
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	OpenBerryPouch 0x0
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Cmd_179 0x8005
	CopyVar 0x8008, 0x8005
	If 0x8008, 0x0
	CompareLastResultJump 0x1, Script_branch_53c
	If 0x8008, 0x5f
	CompareLastResultJump 0x1, Script_branch_49d
	If 0x8008, 0x60
	CompareLastResultJump 0x1, Script_branch_49d
	If 0x8008, 0x61
	CompareLastResultJump 0x1, Script_branch_49d
	If 0x8008, 0x62
	CompareLastResultJump 0x1, Script_branch_49d
	Jump Script_branch_53c
@ 49d

Script_branch_49d: @ 49d
	GiveItem 0x8005, 0x1, 0x8004
	CheckDeoxis 0x8005
	Cmd_17a 0x4, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_4ca
	SetVarItem 0x0, 0x8005
	Message 0xb
	Jump Script_branch_4da
@ 4ca

Script_branch_4ca: @ 4ca
	SetVarItem 0x0, 0x8005
	Message 0x1e
	WaitButton
	Jump Script_branch_53a
@ 4da

Script_branch_4da: @ 4da
	Message 0x8
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_53a
Script_branch_4ee: @ 4ee
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	OpenBerryPouch 0x1
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Cmd_179 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_53c
	SetVarItem 0x0, 0x800c
	Message 0xc
	WaitButton
	GiveItem 0x800c, 0x1, 0x8004
	Cmd_183 0x800c
	Jump Script_branch_53a
@ 53a

Script_branch_53a: @ 53a
	CloseMsgOnKeyPress
Script_branch_53c: @ 53c
	ReleaseAll
	End
@ 540

Script_branch_540: @ 540
	Message 0x1c
	WaitButton
	Jump Script_branch_53a
@ 54b

Script_branch_54b: @ 54b
	Cmd_17f 0x800c
	SetVarItem 0x0, 0x800c
	Message 0x1d
	WaitButton
	Jump Script_branch_53a
@ 55f

Script_2: @ 55f
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVarItem 0x0, 0x8000
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	GiveItem 0x8000, 0x1, 0x8004
	Cmd_183 0x8000
	ReleaseAll
	End
@ 583

Script_3: @ 583
	LockAll
	Cmd_184 0x0
	Message 0x14
	WaitButton
	Cmd_184 0x1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 598

Script_4: @ 598
	LockAll
	CopyVar 0x800c, 0x8000
	CopyVar 0x8005, 0x8000
	Jump Script_branch_49d
@ 5ac

@ end_0x5ac
