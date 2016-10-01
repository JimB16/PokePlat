.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	SetFlag 0x9c5
	End
@ 10

Script_2: @ 10
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xdb
	CompareLastResultJump EQUAL, Script_branch_a9
	CheckFlag 0x138
	CompareLastResultJump EQUAL, Script_branch_62
	Message 0x0
	SetVar 0x8004, 0x5b
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1f3
	SetFlag 0x138
	CallStandard 0x7fc
	Jump Script_branch_62
	End
@ 62

Script_branch_62: @ 62
	CheckItem 0x5b, 0x1, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_82
	Message 0x1
	Jump Script_branch_ec
	End
@ 82

Script_branch_82: @ 82
	SetFlag 0xdb
	Message 0x2
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_ff
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_f4
	End
@ a9

Script_branch_a9: @ a9
	CheckItem 0x5b, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_e1
	Message 0x4
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_ff
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_f4
	End
@ e1

Script_branch_e1: @ e1
	Message 0x3
	Jump Script_branch_ec
	End
@ ec

Script_branch_ec: @ ec
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ f4

Script_branch_f4: @ f4
	Message 0x7
	Jump Script_branch_ec
	End
@ ff

Script_branch_ff: @ ff
	Cmd_2fe 0x5b, 0x8000
	If 0x8000, 0xa
	CompareLastResultJump 0x4, Script_branch_14e
	Jump Script_branch_11a
	End
@ 11a

Script_branch_11a: @ 11a
	RandomEvent 0x46
	GiveItem 0x5b, 0x1, 0x800c
	TakeItem 0x48, 0x1, 0x800c
	TakeItem 0x49, 0x1, 0x800c
	TakeItem 0x4a, 0x1, 0x800c
	TakeItem 0x4b, 0x1, 0x800c
	Jump Script_branch_1e5
	End
@ 14e

Script_branch_14e: @ 14e
	Message 0x5
	Multi 0x1f, 0xb, 0x0, 0x1, 0x8001
	Cmd_33a 0x1
	ChoiceMulti 0x116, 0x0
	ChoiceMulti 0x117, 0x1
	ChoiceMulti 0xb, 0x2
	CloseMulti
	SetVar 0x8007, 0xa
	CopyVar 0x8008, 0x8001
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_11a
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_19e
	Jump Script_branch_f4
	End
@ 19e

Script_branch_19e: @ 19e
	ScriptCmd_SubValue 0x8007, 0x1
	RandomEvent 0x46
	TakeItem 0x48, 0x1, 0x800c
	TakeItem 0x49, 0x1, 0x800c
	TakeItem 0x4a, 0x1, 0x800c
	TakeItem 0x4b, 0x1, 0x800c
	GiveItem 0x5b, 0x1, 0x800c
	If 0x8007, 0x0
	CompareLastResultJump EQUAL, Script_branch_1e5
	Jump Script_branch_19e
	End
@ 1e5

Script_branch_1e5: @ 1e5
	Message 0x6
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1f3

Script_branch_1f3: @ 1f3
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1fd

.byte 0x0 @ 0x1fd
.byte 0x0 @ 0x1fe
.byte 0x0 @ 0x1ff

@ end_0x200
