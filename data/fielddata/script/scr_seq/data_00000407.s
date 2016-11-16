.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	Cmd_23e 0x0
	Cmd_23e 0x1, 0x40ed
	If 0x40ed, 0x0
	CompareLastResultJump EQUAL, Script_branch_2b
	ClearFlag 0x20a
	Cmd_23e 0x7
	End
@ 2b

Script_branch_2b: @ 2b
	SetFlag 0x20a
	Cmd_23e 0x7
	End
@ 35

Script_2: @ 35
	Cmd_23e 0x0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Cmd_23e 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_ee
	CheckTime 0x800c
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_7e
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_8a
	Jump Script_branch_96
@ 7e

Script_branch_7e: @ 7e
	SetVarHero 0x0
	Message 0x0
	Jump Script_branch_a2
@ 8a

Script_branch_8a: @ 8a
	SetVarHero 0x0
	Message 0x1
	Jump Script_branch_a2
@ 96

Script_branch_96: @ 96
	SetVarHero 0x0
	Message 0x2
	Jump Script_branch_a2
@ a2

Script_branch_a2: @ a2
	Cmd_23e 0x3, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_d8
	Soundfr 0x486
	Cmd_23e 0x5, 0x8005, 0x8006
	CopyFurniture 0x8005, 0x8006
	Cmd_4f
	Message 0x12
	WaitButton
	Cmd_23e 0x4
	Jump Script_branch_103
@ d8

Script_branch_d8: @ d8
	Cmd_23e 0x6, 0x8005, 0x8006
	CopyFurniture 0x8005, 0x8006
	WaitButton
	Jump Script_branch_f9
@ ee

Script_branch_ee: @ ee
	Message 0x3
	WaitButton
	Jump Script_branch_f9
@ f9

Script_branch_f9: @ f9
	CloseMsgOnKeyPress
	ReleaseAll
	Cmd_23e 0x7
	End
@ 103

Script_branch_103: @ 103
	CloseMsgOnKeyPress
	ReleaseAll
	Cmd_23e 0x8
	End
@ 10d

.byte 0x0 @ 0x10d
.byte 0x0 @ 0x10e
.byte 0x0 @ 0x10f

@ end_0x110
