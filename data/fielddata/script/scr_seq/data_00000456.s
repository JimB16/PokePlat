.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	.hword 0xfd13
@ 1e

Script_1: @ 1e
	CheckTime2 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_4f
	If 0x4000, 0x1
	CompareLastResultJump EQUAL, Script_branch_4f
	If 0x4000, 0x5
	CompareLastResultJump 0x3, Script_branch_5b
	Jump Script_branch_4f
@ 4f

Script_branch_4f: @ 4f
	ClearFlag 0x28b
	SetVar 0x4116, 0x0
	End
@ 5b

Script_branch_5b: @ 5b
	SetFlag 0x28b
	SetVar 0x4116, 0x1
	End
@ 67

Script_2: @ 67
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xaa2
	CompareLastResultJump EQUAL, Script_branch_155
	If 0x400b, 0x1
	CompareLastResultJump EQUAL, Script_branch_155
	CheckNatPokedexStatus 0x2, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_aa
	Jump Script_branch_9f
@ 9f

Script_branch_9f: @ 9f
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ aa

Script_branch_aa: @ aa
	Message 0x3
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_d8
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_cd
	End
@ cd

Script_branch_cd: @ cd
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d8

Script_branch_d8: @ d8
	Message 0x5
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_fb
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_cd
	End
@ fb

Script_branch_fb: @ fb
	Cmd_1ec
	StoreTrophyPokemon 0x8000
	SetVarPokeStored 0x0, 0x8000, 0x0, 0x0
	Message 0x6
	CheckSpritePosition 0x8001, 0x8002
	ApplyMovement 0x2, Movement_1d4
	WaitMovement
	Message 0x7
	ApplyMovement 0x1, Movement_1e4
	WaitMovement
	Message 0x8
	Message 0x9
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_1f0
	WaitMovement
	RemovePeople 0x2
	SetVar 0x400b, 0x1
	Call Function_16c
	SetFlag 0xaa2
	Jump Script_branch_155
@ 155

Script_branch_155: @ 155
	StoreTrophyPokemon 0x8000
	SetVarPokeStored 0x0, 0x8000, 0x0, 0x0
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 16c

Function_16c: @ 16c
	If 0x8001, 0x4
	CompareLastResultJump EQUAL, Script_branch_199
	If 0x8001, 0x6
	CompareLastResultJump EQUAL, Script_branch_1a5
	If 0x8002, 0x6
	CompareLastResultJump EQUAL, Script_branch_1b1
	Jump Script_branch_1bd
@ 199

Script_branch_199: @ 199
	ApplyMovement 0x1, Movement_204
	WaitMovement
	Return
@ 1a5

Script_branch_1a5: @ 1a5
	ApplyMovement 0x1, Movement_20c
	WaitMovement
	Return
@ 1b1

Script_branch_1b1: @ 1b1
	ApplyMovement 0x1, Movement_214
	WaitMovement
	Return
@ 1bd

Script_branch_1bd: @ 1bd
	ApplyMovement 0x1, Movement_21c
	WaitMovement
	Return
@ 1c9

.byte 0x0 @ 0x1c9
.byte 0x0 @ 0x1ca
.byte 0x0 @ 0x1cb

Movement_1cc: @ 1cc
	SeeDown 0x1
	EndMovement 0x0
@ 1d4

Movement_1d4: @ 1d4
	Exclamation 0x1
	Move_41 0x1
	SeeRight 0x1
	EndMovement 0x0
@ 1e4

Movement_1e4: @ 1e4
	Exclamation 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 1f0

Movement_1f0: @ 1f0
	WalkDownFast 0x2
	WalkRightFast 0x1
	SeeDown 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 204

Movement_204: @ 204
	MoveLeftFast 0x1
	EndMovement 0x0
@ 20c

Movement_20c: @ 20c
	MoveRightFast 0x1
	EndMovement 0x0
@ 214

Movement_214: @ 214
	MoveUpFast 0x1
	EndMovement 0x0
@ 21c

Movement_21c: @ 21c
	MoveDownFast 0x1
	EndMovement 0x0
@ 224

Script_3: @ 224
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckNatPokedexStatus 0x2, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_244
	Jump Script_branch_270
@ 244

Script_branch_244: @ 244
	CheckFlag 0x164
	CompareLastResultJump EQUAL, Script_branch_270
	Jump Script_branch_257
@ 255

.byte 0x2 @ 0x255
.byte 0x0 @ 0x256

Script_branch_257: @ 257
	Message 0xf
	SetFlag 0x164
	WaitButton
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_1cc
	WaitMovement
	ReleaseAll
	End
@ 270

Script_branch_270: @ 270
	CheckFlag 0xaa2
	CompareLastResultJump EQUAL, Script_branch_304
	Cmd_166 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_2c8
	CheckIdPlayer 0x800c, 0x2
	If 0x800c, 0x0
	CompareLastResultCall EQUAL, Script_branch_2be
	If 0x800c, 0x1
	CompareLastResultCall EQUAL, Script_branch_2c3
	WaitButton
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_1cc
	WaitMovement
	ReleaseAll
	End
@ 2be

Script_branch_2be: @ 2be
	Message 0xb
	Return
@ 2c3

Script_branch_2c3: @ 2c3
	Message 0xc
	Return
@ 2c8

Script_branch_2c8: @ 2c8
	CheckIdPlayer 0x800c, 0x2
	If 0x800c, 0x0
	CompareLastResultCall EQUAL, Script_branch_2fa
	If 0x800c, 0x1
	CompareLastResultCall EQUAL, Script_branch_2ff
	WaitButton
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_1cc
	WaitMovement
	ReleaseAll
	End
@ 2fa

Script_branch_2fa: @ 2fa
	Message 0xb
	Return
@ 2ff

Script_branch_2ff: @ 2ff
	Message 0xd
	Return
@ 304

Script_branch_304: @ 304
	StoreTrophyPokemon 0x8000
	SetVarPokeStored 0x0, 0x8000, 0x0, 0x0
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_1cc
	WaitMovement
	ReleaseAll
	End
@ 325

Script_4: @ 325
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ApplyMovement 0x3, Movement_344
	WaitMovement
	ReleaseAll
	End
@ 342

.byte 0x0 @ 0x342
.byte 0x0 @ 0x343

Movement_344: @ 344
	SeeDown 0x1
	EndMovement 0x0
@ 34c

Movement_34c: @ 34c
	SeeLeft 0x1
	EndMovement 0x0
@ 354

Script_5: @ 354
	LockAll
	ApplyMovement 0x3, Movement_34c
	WaitMovement
	Message 0x11
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_37c
	ApplyMovement 0x3, Movement_344
	WaitMovement
	ReleaseAll
	End
@ 37b

.byte 0x0 @ 0x37b

Movement_37c: @ 37c
	WalkDownFast 0x1
	SeeUp 0x1
	EndMovement 0x0
@ 388

Script_6: @ 388
	PlayFanfare 0x5dc
	LockAll
	Message 0x12
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 399

Script_7: @ 399
	PlayFanfare 0x5dc
	LockAll
	Message 0x13
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3c2
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_408
	End
@ 3c2

Script_branch_3c2: @ 3c2
	Message 0x14
	CheckFlag 0xfb
	CompareLastResultJump EQUAL, Script_branch_408
	Cmd_337 0x1ea, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_3fc
	PokemonPicture 0x1ea, 0x0
	Cmd_30
	HidePicture
	SetFlag 0xfb
	Message 0x15
	Jump Script_branch_416
@ 3fa

.byte 0x2 @ 0x3fa
.byte 0x0 @ 0x3fb

Script_branch_3fc: @ 3fc
	SetFlag 0xfb
	Jump Script_branch_408
@ 406

.byte 0x2 @ 0x406
.byte 0x0 @ 0x407

Script_branch_408: @ 408
	SetVarHero 0x0
	Message 0x16
	Jump Script_branch_416
@ 414

.byte 0x2 @ 0x414
.byte 0x0 @ 0x415

Script_branch_416: @ 416
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 41e

.byte 0x0 @ 0x41e
.byte 0x0 @ 0x41f

@ end_0x420
