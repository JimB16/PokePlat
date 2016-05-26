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
	script Script_11
	script Script_12
	script Script_13
	script Script_14
	script Script_15
	script Script_16
	script Script_17
	script Script_18
	script Script_19
	.hword 0xfd13
@ 4e

Script_1: @ 4e
	SetVar 0x8000, 0x1
	Jump Script_branch_159
@ 5a

Script_2: @ 5a
	SetVar 0x8000, 0x2
	Jump Script_branch_159
@ 66

Script_3: @ 66
	SetVar 0x8000, 0x3
	Jump Script_branch_159
@ 72

Script_4: @ 72
	SetVar 0x8000, 0x4
	Jump Script_branch_159
@ 7e

Script_5: @ 7e
	SetVar 0x8000, 0x5
	Jump Script_branch_159
@ 8a

Script_6: @ 8a
	SetVar 0x8000, 0x6
	Jump Script_branch_159
@ 96

Script_7: @ 96
	SetVar 0x8000, 0x7
	Jump Script_branch_159
@ a2

Script_8: @ a2
	SetVar 0x8000, 0x8
	Jump Script_branch_159
@ ae

Script_9: @ ae
	SetVar 0x8000, 0x9
	Jump Script_branch_159
@ ba

Script_10: @ ba
	SetVar 0x8000, 0xa
	Jump Script_branch_159
@ c6

Script_11: @ c6
	SetVar 0x8000, 0xb
	Jump Script_branch_159
@ d2

Script_12: @ d2
	SetVar 0x8000, 0xc
	Jump Script_branch_159
@ de

Script_13: @ de
	SetVar 0x8000, 0xd
	Jump Script_branch_159
@ ea

Script_14: @ ea
	SetVar 0x8000, 0xe
	Jump Script_branch_159
@ f6

Script_15: @ f6
	If 0x4032, 0x1
	CompareLastResultJump 0x1, Script_branch_129
	If 0x4032, 0x2
	CompareLastResultJump 0x1, Script_branch_135
	If 0x4032, 0x3
	CompareLastResultJump 0x1, Script_branch_141
	SetVar 0x8000, 0xf
	Jump Script_branch_159
@ 129

Script_16: @ 129
Script_branch_129: @ 129
	SetVar 0x8000, 0x10
	Jump Script_branch_159
@ 135

Script_17: @ 135
Script_branch_135: @ 135
	SetVar 0x8000, 0x11
	Jump Script_branch_159
@ 141

Script_18: @ 141
Script_branch_141: @ 141
	SetVar 0x8000, 0x12
	Jump Script_branch_159
@ 14d

Script_19: @ 14d
	SetVar 0x8000, 0x13
	Jump Script_branch_159
@ 159

Script_branch_159: @ 159
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckStatusPhraseBox 0x8000, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_2a1
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_190
	Jump Script_branch_2ae
@ 18e

.byte 0x2 @ 0x18e
.byte 0x0 @ 0x18f

Script_branch_190: @ 190
	CheckPhraseBoxInput 0x0, 0x8000, 0x8004, 0x8005
	CopyFurniture 0x8004, 0x8005
	If 0x8000, 0xa
	CompareLastResultJump 0x1, Script_branch_1f0
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CloseMsgOnKeyPress
	StorePhraseBox1W 0x0, 0x800c, 0x8004
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_2ae
	CheckPhraseBoxInput 0x1, 0x8000, 0x8004, 0x8005
	Jump Script_branch_2a1
@ 1ee

.byte 0x2 @ 0x1ee
.byte 0x0 @ 0x1ef

Script_branch_1f0: @ 1f0
	Multi4 0x1, 0x1, 0x0, 0x1, 0x8004
	TxtMsgScrpMulti 0x16, 0xff, 0x1
	TxtMsgScrpMulti 0x17, 0xff, 0x2
	TxtMsgScrpMulti 0x18, 0xff, 0x3
	TxtMsgScrpMulti 0x19, 0xff, 0x4
	TxtMsgScrpMulti 0x1a, 0xff, 0x5
	TxtMsgScrpMulti 0x1b, 0xff, 0x6
	TxtMsgScrpMulti 0x1c, 0xff, 0x7
	TxtMsgScrpMulti 0x1d, 0xff, 0x8
	TxtMsgScrpMulti 0x1e, 0xff, 0x9
	TxtMsgScrpMulti 0x1f, 0xff, 0xa
	TxtMsgScrpMulti 0x20, 0xff, 0xb
	TxtMsgScrpMulti 0x21, 0xff, 0xc
	TxtMsgScrpMulti 0x22, 0xff, 0xd
	TxtMsgScrpMulti 0x23, 0xff, 0xe
	TxtMsgScrpMulti 0x24, 0xff, 0xf
	TxtMsgScrpMulti 0x25, 0xff, 0x10
	TxtMsgScrpMulti 0x26, 0xff, 0x11
	CloseMulti4
	If 0x8004, 0xfffe
	CompareLastResultJump 0x1, Script_branch_2ae
	CheckPhraseBoxInput 0x1, 0x8000, 0x8004, 0x8005
	Jump Script_branch_2a1
@ 29f

.byte 0x2 @ 0x29f
.byte 0x0 @ 0x2a0

Script_branch_2a1: @ 2a1
	Message 0x2
	WaitButton
	Jump Script_branch_2bb
@ 2ac

.byte 0x2 @ 0x2ac
.byte 0x0 @ 0x2ad

Script_branch_2ae: @ 2ae
	Message 0x1
	WaitButton
	Jump Script_branch_2bb
@ 2b9

.byte 0x2 @ 0x2b9
.byte 0x0 @ 0x2ba

Script_branch_2bb: @ 2bb
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2c1

.byte 0x0 @ 0x2c1
.byte 0x0 @ 0x2c2
.byte 0x0 @ 0x2c3

@ end_0x2c4
