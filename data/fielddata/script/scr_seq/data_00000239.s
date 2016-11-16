.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_2: @ a
	Call Function_12
	End
@ 12

Function_12: @ 12
	Cmd_166 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_75
	CheckNatPokedexStatus 0x2, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_75
	CheckItem 0x1c7, 0x1, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_75
	UnkFunct2 0x2, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_75
	CheckFlag 0x11e
	CompareLastResultJump EQUAL, Script_branch_75
	SetVar 0x4118, 0x1
	Jump Script_branch_75
@ 73

.byte 0x2 @ 0x73
.byte 0x0 @ 0x74

Script_branch_75: @ 75
	Return
@ 77

Script_1: @ 77
	PlayFanfare 0x5dc
	LockAll
	If 0x40c4, 0x1
	CompareLastResultJump 0x4, Script_branch_f4
	CheckFlag 0xd0
	CompareLastResultJump EQUAL, Script_branch_f4
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_101
	PlayCry 0x1e3, 0x0
	Message 0x1
	WaitCry
	CloseMsgOnKeyPress
	WildBattle2 0x1e3, 0x46
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_e8
	SetVar 0x40c4, 0x1
	CheckWildBattle2 0x800c
	If 0x800c, 0x0
	CompareLastResultCall EQUAL, Script_branch_ee
	ReleaseAll
	End
@ e8

Script_branch_e8: @ e8
	LostGoPc
	ReleaseAll
	End
@ ee

Script_branch_ee: @ ee
	SetFlag 0xd0
	Return
@ f4

Script_branch_f4: @ f4
	Message 0x2
	WaitButton
	Jump Script_branch_101
@ ff

.byte 0x2 @ 0xff
.byte 0x0 @ 0x100

Script_branch_101: @ 101
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 107

.byte 0x0 @ 0x107

@ end_0x108
