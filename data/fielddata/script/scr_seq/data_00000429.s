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
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2d

Script_2: @ 2d
	CallMessageBox 0x3, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 44

Script_3: @ 44
	CallMessageBox 0x4, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 5b

Script_4: @ 5b
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x5, 0x800c
	CallStandard 0x7d0
	End
@ 70

Script_5: @ 70
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x6, 0x800c
	CallStandard 0x7d0
	End
@ 85

Script_6: @ 85
	LockAll
	ApplyMovement 0x5, Movement_268
	WaitMovement
	CallStandard 0x7fa
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x2f5
	CompareLastResultJump EQUAL, Script_branch_d1
	If 0x8005, 0x2f6
	CompareLastResultJump EQUAL, Script_branch_e1
	If 0x8005, 0x2f7
	CompareLastResultJump EQUAL, Script_branch_f1
	If 0x8005, 0x2f8
	CompareLastResultJump EQUAL, Script_branch_101
	End
@ d1

Script_branch_d1: @ d1
	ApplyMovement 0x5, Movement_230
	WaitMovement
	Jump Script_branch_111
@ e1

Script_branch_e1: @ e1
	ApplyMovement 0x5, Movement_238
	WaitMovement
	Jump Script_branch_111
@ f1

Script_branch_f1: @ f1
	ApplyMovement 0x5, Movement_248
	WaitMovement
	Jump Script_branch_111
@ 101

Script_branch_101: @ 101
	ApplyMovement 0x5, Movement_258
	WaitMovement
	Jump Script_branch_111
@ 111

Script_branch_111: @ 111
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x0
	CloseMsgOnKeyPress
	StoreStarter 0x800c
	If 0x800c, 0x183
	CompareLastResultJump EQUAL, Script_branch_14c
	If 0x800c, 0x186
	CompareLastResultJump EQUAL, Script_branch_158
	Jump Script_branch_140
@ 140

Script_branch_140: @ 140
	TrainerBattle 0xf7, 0x0
	Jump Script_branch_164
@ 14c

Script_branch_14c: @ 14c
	TrainerBattle 0xf8, 0x0
	Jump Script_branch_164
@ 158

Script_branch_158: @ 158
	TrainerBattle 0xf9, 0x0
	Jump Script_branch_164
@ 164

Script_branch_164: @ 164
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_207
	SetVariableRival 0x0
	Message 0x1
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x2f5
	CompareLastResultJump EQUAL, Script_branch_1b9
	If 0x8005, 0x2f6
	CompareLastResultJump EQUAL, Script_branch_1c9
	If 0x8005, 0x2f7
	CompareLastResultJump EQUAL, Script_branch_1d9
	If 0x8005, 0x2f8
	CompareLastResultJump EQUAL, Script_branch_1e9
	End
@ 1b9

Script_branch_1b9: @ 1b9
	ApplyMovement 0x5, Movement_210
	WaitMovement
	Jump Script_branch_1f9
@ 1c9

Script_branch_1c9: @ 1c9
	ApplyMovement 0x5, Movement_218
	WaitMovement
	Jump Script_branch_1f9
@ 1d9

Script_branch_1d9: @ 1d9
	ApplyMovement 0x5, Movement_220
	WaitMovement
	Jump Script_branch_1f9
@ 1e9

Script_branch_1e9: @ 1e9
	ApplyMovement 0x5, Movement_228
	WaitMovement
	Jump Script_branch_1f9
@ 1f9

Script_branch_1f9: @ 1f9
	RemovePeople 0x5
	SetVar 0x4088, 0x1
	ReleaseAll
	End
@ 207

Script_branch_207: @ 207
	LostGoPc
	ReleaseAll
	End
@ 20d

.byte 0x0 @ 0x20d
.byte 0x0 @ 0x20e
.byte 0x0 @ 0x20f

Movement_210: @ 210
	WalkRightVeryFast 0xa
	EndMovement 0x0
@ 218

Movement_218: @ 218
	WalkRightVeryFast 0xa
	EndMovement 0x0
@ 220

Movement_220: @ 220
	WalkRightVeryFast 0xa
	EndMovement 0x0
@ 228

Movement_228: @ 228
	WalkRightVeryFast 0xa
	EndMovement 0x0
@ 230

Movement_230: @ 230
	WalkLeftVeryFast 0x4
	EndMovement 0x0
@ 238

Movement_238: @ 238
	WalkLeftVeryFast 0x2
	WalkDownVeryFast  0x1
	WalkLeftVeryFast 0x2
	EndMovement 0x0
@ 248

Movement_248: @ 248
	WalkLeftVeryFast 0x2
	WalkDownVeryFast  0x2
	WalkLeftVeryFast 0x2
	EndMovement 0x0
@ 258

Movement_258: @ 258
	WalkLeftVeryFast 0x2
	WalkDownVeryFast  0x3
	WalkLeftVeryFast 0x2
	EndMovement 0x0
@ 268

Movement_268: @ 268
	Move_3f 0x1
	Exclamation 0x1
	Move_3f 0x1
	EndMovement 0x0
@ 278

@ end_0x278
