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
	.hword 0xfd13
@ 26

Script_1: @ 26
	If 0x4069, 0x118
	CompareLastResultJump LESSER, Script_branch_35
	End
@ 35

Script_branch_35: @ 35
	SetVar 0x4069, 0x0
	End
@ 3d

Script_2: @ 3d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x4069, 0x122
	CompareLastResultJump EQUAL, Script_branch_ed
	If 0x4069, 0x118
	CompareLastResultJump EQUAL, Script_branch_f8
	CheckFlag 0x964
	CompareLastResultJump LESSER, Script_branch_10f
	Cmd_32b 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_11a
	If 0x4069, 0x10e
	CompareLastResultJump EQUAL, Script_branch_ae
	If 0x4069, 0x104
	CompareLastResultJump LESSER, Script_branch_11a
	WaitFanfare 0x5dc
	CameraBumpEffect 0x1
	SetVar 0x4069, 0x10e
	Message 0x1
	Jump Script_branch_125
	End
@ ae

Script_branch_ae: @ ae
	PlayCry 0x17b, 0x0
	Message 0x2
	WaitCry
	CloseMsgOnKeyPress
	WildBattle2 0x17b, 0x1e
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_109
	CheckWildBattle2 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_f8
	SetVar 0x4069, 0x122
	ReleaseAll
	End
@ ed

Script_branch_ed: @ ed
	Message 0x3
	Jump Script_branch_125
	End
@ f8

Script_branch_f8: @ f8
	SetVar 0x4069, 0x118
	Message 0x3
	Jump Script_branch_125
	End
@ 109

Script_branch_109: @ 109
	LostGoPc
	ReleaseAll
	End
@ 10f

Script_branch_10f: @ 10f
	Message 0x4
	Jump Script_branch_125
	End
@ 11a

Script_branch_11a: @ 11a
	Message 0x0
	Jump Script_branch_125
	End
@ 125

Script_branch_125: @ 125
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 12d

Script_3: @ 12d
	SetVar 0x4001, 0x1
	If 0x4069, 0x104
	CompareLastResultJump 0x4, Script_branch_20d
	Jump Script_branch_1ea
	End
@ 148

Script_4: @ 148
	SetVar 0x4002, 0x1
	If 0x4069, 0x104
	CompareLastResultJump 0x4, Script_branch_20d
	Jump Script_branch_1ea
	End
@ 163

Script_5: @ 163
	SetVar 0x4003, 0x1
	If 0x4069, 0x104
	CompareLastResultJump 0x4, Script_branch_20d
	Jump Script_branch_1ea
	End
@ 17e

Script_6: @ 17e
	SetVar 0x4004, 0x1
	If 0x4069, 0x104
	CompareLastResultJump 0x4, Script_branch_20d
	Jump Script_branch_1ea
	End
@ 199

Script_7: @ 199
	SetVar 0x4005, 0x1
	If 0x4069, 0x104
	CompareLastResultJump 0x4, Script_branch_20d
	Jump Script_branch_1ea
	End
@ 1b4

Script_8: @ 1b4
	SetVar 0x4006, 0x1
	If 0x4069, 0x104
	CompareLastResultJump 0x4, Script_branch_20d
	Jump Script_branch_1ea
	End
@ 1cf

Script_9: @ 1cf
	SetVar 0x4007, 0x1
	If 0x4069, 0x104
	CompareLastResultJump 0x4, Script_branch_20d
	Jump Script_branch_1ea
	End
@ 1ea

Script_branch_1ea: @ 1ea
	LockAll
	CheckSpritePosition 0x8004, 0x8005
	Cmd_32c 0x4069, 0x24c, 0x8004, 0x8005
	If 0x4069, 0x104
	CompareLastResultJump 0x4, Script_branch_20f
	ReleaseAll
	End
@ 20d

Script_branch_20d: @ 20d
	End
@ 20f

Script_branch_20f: @ 20f
	CheckFlag 0x964
	CompareLastResultJump LESSER, Script_branch_20d
	WaitFanfare 0x5dc
	CameraBumpEffect 0x1
	SetVar 0x4069, 0x10e
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 233

.byte 0x0 @ 0x233

@ end_0x234
