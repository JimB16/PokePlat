.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	SetVar 0x4000, 0x0
	SunishoreGymFunction 0x0
	End
@ 1d

Script_2: @ 1d
	SunishoreGymFunction2 0x0
	End
@ 22

Script_3: @ 22
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 0x7, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_48
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 48

Script_branch_48: @ 48
	SetVarHero 0x0
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 56

Script_4: @ 56
	PlayFanfare 0x5dc
	LockAll
	CheckBadge 0x7, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_7a
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7a

Script_branch_7a: @ 7a
	If 0x40ef, 0x1
	CompareLastResultJump 0x4, Script_branch_98
	SetVarHero 0x0
	SetVariableRival 0x1
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 98

Script_branch_98: @ 98
	SetVarHero 0x0
	SetVariableRival 0x1
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a9

.byte 0x0 @ 0xa9
.byte 0x0 @ 0xaa
.byte 0x0 @ 0xab

@ end_0xac
