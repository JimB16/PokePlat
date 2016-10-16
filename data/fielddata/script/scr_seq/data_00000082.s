.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	.hword 0xfd13
@ 1a

Script_1: @ 1a
	ActTeamGalacticEvents 0x2, 0xcd00
	GreatMarshFunction 0x0
Script_2: @ 22
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	ApplyMovement 0x2, Movement_13c
	WaitMovement
	Message 0x0
	CloseMsgOnKeyPress
	TrainerBattle 0x196, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_135
	Message 0x1
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	RemovePeople 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Return2 0xf, 0x800c
	CheckFacePosition 0x8004
	If 0x8004, 0x0
	CompareLastResultJump EQUAL, Script_branch_a4
	If 0x8004, 0x2
	CompareLastResultJump EQUAL, Script_branch_be
	If 0x8004, 0x3
	CompareLastResultJump EQUAL, Script_branch_d0
	End
@ a4

Script_branch_a4: @ a4
	ApplyMovement 0x2, Movement_144
	ApplyMovement 0xff, Movement_174
	WaitMovement
	Jump Script_branch_e2
	End
@ be

Script_branch_be: @ be
	ApplyMovement 0x2, Movement_15c
	WaitMovement
	Jump Script_branch_e2
	End
@ d0

Script_branch_d0: @ d0
	ApplyMovement 0x2, Movement_168
	WaitMovement
	Jump Script_branch_e2
	End
@ e2

Script_branch_e2: @ e2
	Message 0x4
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	SetFlag 0x1fd
	SetFlag 0x1bb
	SetFlag 0x1c2
	SetFlag 0x81
	ClearFlag 0x192
	ClearFlag 0x200
	ClearFlag 0x1fe
	RemovePeople 0x2
	RemovePeople 0x1
	RemovePeople 0x3
	SetVar 0x407a, 0x3
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	SetFlag 0x987
	ReleaseAll
	End
@ 135

Script_branch_135: @ 135
	LostGoPc
	ReleaseAll
	End
@ 13b

.byte 0x0 @ 0x13b

Movement_13c: @ 13c
	MoveUpFast 0x1
	EndMovement 0x0
@ 144

Movement_144: @ 144
	WalkUpFast 0x1
	EndMovement 0x0
@ 14c

.byte 0x3f @ 0x14c
.byte 0x0 @ 0x14d
.byte 0x1 @ 0x14e
.byte 0x0 @ 0x14f
.byte 0xf @ 0x150
.byte 0x0 @ 0x151
.byte 0x2 @ 0x152
.byte 0x0 @ 0x153
.byte 0x20 @ 0x154
.byte 0x0 @ 0x155
.byte 0x1 @ 0x156
.byte 0x0 @ 0x157
.byte 0xfe @ 0x158
.byte 0x0 @ 0x159
.byte 0x0 @ 0x15a
.byte 0x0 @ 0x15b

Movement_15c: @ 15c
	WalkUpFast 0x3
	MoveRightFast 0x1
	EndMovement 0x0
@ 168

Movement_168: @ 168
	WalkUpFast 0x3
	MoveLeftFast 0x1
	EndMovement 0x0
@ 174

Movement_174: @ 174
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 180

.byte 0x22 @ 0x180
.byte 0x0 @ 0x181
.byte 0x1 @ 0x182
.byte 0x0 @ 0x183
.byte 0x3e @ 0x184
.byte 0x0 @ 0x185
.byte 0x1 @ 0x186
.byte 0x0 @ 0x187
.byte 0x21 @ 0x188
.byte 0x0 @ 0x189
.byte 0x1 @ 0x18a
.byte 0x0 @ 0x18b
.byte 0xfe @ 0x18c
.byte 0x0 @ 0x18d
.byte 0x0 @ 0x18e
.byte 0x0 @ 0x18f
.byte 0x22 @ 0x190
.byte 0x0 @ 0x191
.byte 0x1 @ 0x192
.byte 0x0 @ 0x193
.byte 0xfe @ 0x194
.byte 0x0 @ 0x195
.byte 0x0 @ 0x196
.byte 0x0 @ 0x197

Script_3: @ 198
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x23, 0x0
	Message 0x2
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1b7

Script_4: @ 1b7
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x1ab, 0x0
	Message 0x5
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1d6

Script_5: @ 1d6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x81
	CompareLastResultJump EQUAL, Script_branch_1f4
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1f4

Script_branch_1f4: @ 1f4
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1ff

Script_6: @ 1ff
	PlayFanfare 0x5dc
	LockAll
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 210

@ end_0x210