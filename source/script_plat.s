
/*
y = current adress, where the command is
x = address where the jump goes to
*/





.macro	Script, adr=0
.word  \adr - 1f
1:
.endm


.equ EQUAL,				0x1

.equ StdFunc_PkmnMarket, 0x7e3


.macro	Nop0
.hword  0x0
.endm

.macro	Nop1
.hword  0x1
.endm

.macro	End
.hword  0x2
.endm

.macro	Return2 a, b
.hword  0x3, \a, \b
.endm

.macro	Cmd_a a, b
.hword  0xa
.byte   \a, \b
@.word   \a, \b
.endm

.macro	If var=0, nr=0
.hword  0x11, \var, \nr
.endm

.macro	CallStandard a
.hword  0x14, \a
.endm

.macro	Jump adr
.hword  0x16
.word   \adr - 1f
1:
.endm


.macro	Call adr
.hword  0x1a
.word   \adr - 1f
1:
.endm


.macro	Return
.hword  0x1b
.endm

.macro	CompareLastResultJump cond=0, adr=0
.hword  0x1c
.byte   \cond
.word   \adr - 1f
1:
.endm

.macro	CompareLastResultCall cond=0, adr=0
.hword  0x1d
.byte   \cond
.word   \adr - 1f
1:
.endm

.macro	SetFlag a
.hword  0x1e, \a
.endm

.macro	ClearFlag a
.hword  0x1f, \a
.endm

.macro	CheckFlag a
.hword  0x20, \a
.endm

.macro	SetVar a, b
.hword  0x28, \a, \b
.endm

.macro	CopyVar a, b
.hword  0x29, \a, \b
.endm

.macro	Message nr=0
.hword  0x2c
.byte   \nr
.endm

.macro	WaitButton
.hword  0x31
.endm

.macro	CloseMsgOnKeyPress
.hword  0x34
.endm

.macro	FreezeMessageBox
.hword  0x35
.endm

.macro	CallMessageBox a, b, c, d
.hword  0x36
.byte \a, \b
.hword \c, \d
.endm

.macro	ColorMsgBox a, b
.hword  0x37
.byte \a
.hword \b
.endm

.macro	TypeMessageBox a
.hword  0x38
.byte \a
.endm

.macro	NoMapMessageBox
.hword  0x39
.endm

.macro	CallTextMsgBox a, b
.hword  0x3a
.byte \a
.hword \b
.endm

.macro	StoreMenuStatus a
.hword  0x3b, \a
.endm

.macro	YesNoBox nr=0
.hword  0x3e, \nr
.endm

.macro	Multi a, b, c, d, e
.hword  0x40
.byte   \a, \b, \c, \d
.hword  \e
.endm

.macro	Cmd_42 a, b
.hword  0x42
.byte   \a, \b
.endm

.macro	CloseMulti
.hword  0x43
.endm

.macro	PlayFanfare	nr=0
.hword  0x49, \nr
.endm

.macro	WaitFanfare	a=0
.hword  0x4b, \a
.endm

.macro	PlayCry	a, b
.hword  0x4c, \a, \b
.endm

.macro	WaitCry
.hword  0x4d
.endm

.macro	PlaySound a
.hword  0x50, \a
.endm

.macro	ApplyMovement a, adr
.hword  0x5e, \a
.word   \adr - 1f
1:
.endm

.macro	WaitMovement
.hword  0x5f
.endm

.macro	LockAll
.hword  0x60
.endm

.macro	ReleaseAll
.hword  0x61
.endm

.macro	Lock a
.hword  0x62, \a
.endm

.macro	AddPeople a
.hword  0x64, \a
.endm

.macro	RemovePeople a
.hword  0x65, \a
.endm

.macro	FacePlayer
.hword  0x68
.endm

.macro	CheckSpritePosition a, b
.hword  0x69, \a, \b
.endm

.macro	ContinueFollow a, b
.hword  0x6c, \a
.byte   \b
.endm

.macro	FollowHero a, b
.hword  0x6d, \a, \b
.endm

.macro	CheckStoreItem a, b, c
.hword  0x7d, \a, \b, \c
.endm

.macro	CheckItem a, b, c
.hword  0x7e, \a, \b, \c
.endm

.macro	GivePokemon	pkmn=0, lvl=0, item=0, res=0
.hword  0x96, \pkmn, \lvl, \item, \res
.endm

.macro	CallEnd
.hword  0xa1
.endm

.macro	Cmd_A2
.hword  0xa2
.endm

.macro	OpenSinnohMaps
.hword  0xaa
.endm

.macro	ChooseStarter
.hword  0xb4
.endm

.macro	BattleStarter
.hword  0xb5
.endm

.macro	FadeScreen a, b, c, d
.hword  0xbc, \a, \b, \c, \d
.endm

.macro	ResetScreen
.hword  0xbd
.endm

.macro	Warp a, b, c, d, e
.hword  0xbe, \a, \b, \c, \d, \e
.endm

.macro SetVarHero a
.hword  0xcd
.byte \a
.endm

.macro SetVariableRival a
.hword  0xce
.byte \a
.endm

.macro SetVarAlter a
.hword  0xcf
.byte \a
.endm

.macro	SetVariableNumber a, b
.hword  0xd5
.byte   \a
.hword  \b
.endm

.macro	SetVarPokeNick a, b
.hword  0xd6
.byte   \a
.hword  \b
.endm

.macro	SetVarStrHero a
.hword  0xdb
.byte \a
.endm

.macro	SetVarStrRival a
.hword  0xdc
.byte \a
.endm

.macro	StoreStarter a
.hword  0xde, \a
.endm

.macro	TrainerBattle a, b
.hword  0xe5, \a, \b
.endm

.macro	EndtrainerBattle a, b
.hword  0xe6, \a, \b
.endm

.macro	CheckTrainerLost a
.hword  0xec, \a
.endm

.macro	WarpMapElevator a, b, c, d, e
.hword  0x11b, \a, \b, \c, \d, \e
.endm

.macro	CheckFloor a
.hword  0x11c, \a
.endm

.macro	StartLift a, b, c, d
.hword  0x11d
.byte   \a, \b
.hword  \c, \d
.endm

.macro	StarterBattle a, b
.hword  0x125, \a, \b
.endm

.macro	StorePoketchApp a, b
.hword  0x134, \a, \b
.endm

.macro	FriendBT nr
.hword  0x135, \nr
.endm

.macro	Pokemart a
.hword  0x147, \a
.endm

.macro	Pokemart1 a
.hword  0x148, \a
.endm

.macro	Pokemart2 a
.hword  0x149, \a
.endm

.macro	Pokemart3 a
.hword  0x14a, \a
.endm

.macro	CheckGender a
.hword  0x14d, \a
.endm

.macro	HealPokemon
.hword  0x14e
.endm

.macro	Cmd_151
.hword  0x151
.endm

.macro	DisableBadge a
.hword  0x15d, \a
.endm

.macro	StartFollow
.hword  0x161
.endm

.macro	StopFollow
.hword  0x162
.endm

.macro	Cmd_164
.hword  0x164
.endm

.macro	PrepareDoorAnimation a, b, c, d, e
.hword  0x168, \a, \b, \c, \d
.byte   \e
.endm

.macro	WaitAction a
.hword  0x169
.byte   \a
.endm

.macro	WaitClose a
.hword  0x16a
.byte   \a
.endm

.macro	OpenDoor a
.hword  0x16b
.byte   \a
.endm

.macro	CloseDoor a
.hword  0x16c
.byte   \a
.endm

.macro	SunishoreGymFunction a
.hword  0x175
.byte   \a
.endm

.macro	SunishoreGymFunction2 a
.hword  0x176
.byte   \a
.endm

.macro	ChangeOwMovement a, b
.hword  0x188, \a, \b
.endm

.macro	ShowRecordList a
.hword  0x1b5, \a
.endm

.macro	CheckIdPlayer a, b
.hword  0x1b7, \a, \b
.endm

.macro	CheckFacePosition a
.hword  0x1bd, \a
.endm

.macro	CheckPokeParty a, b
.hword  0x1c0, \a, \b
.endm

.macro	CheckSinPokedex a
.hword  0x1e8, \a
.endm

.macro	CheckNatPokedex a
.hword  0x1e9, \a
.endm

.macro	WarpLastElevator
.hword  0x204
.endm

.macro	CheckNatPokedexStatus a, b
.hword  0x22d
.byte   \a
.hword  \b
.endm

.macro	CheckStatusPhraseBox a, b
.hword  0x238, \a, \b
.endm

.macro	StoreElevatorDirection a, b
.hword  0x23c, \a, \b
.endm

.macro	StorePhraseBox2W a, b, c, d
.hword  0x244, \a, \b, \c, \d
.endm

.macro	CheckPhraseBoxImput2 a, b, c, d, e
.hword  0x249, \a, \b, \c, \d, \e
.endm

.macro	CheckLotoNumber a
.hword  0x24e, \a
.endm

.macro	CompareLotoNumber a, b, c, d
.hword  0x24f, \a, \b, \c, \d
.endm

.macro	SetvarIdPokeBoxes a, b
.hword  0x251
.byte   \a
.hword  \b
.endm

.macro	CheckAccessories a, b
.hword  0x261
.byte   \a
.hword  \b
.endm

.macro	SetvarIdNumber a, b, c, d
.hword  0x280
.byte   \a
.hword  \b
.byte   \c, \d
.endm

.macro	SetvarUnk a
.hword  0x282, \a
.endm

.macro	CheckRuinManiac a
.hword  0x284, \a
.endm

.macro	ComparePhraseBoxImput a, b, c, d, e
.hword  0x2aa, \a, \b, \c, \d, \e
.endm

.macro	ActMisteryGift
.hword  0x2ac
.endm

.macro	Cmd_2BB
.hword  0x2bb
.endm

.macro	Cmd_31c a, b
.hword  0x31c, \a, \b
.endm

.macro	Cmd_343 a, b
.hword  0x343
.byte   \a
.hword  \b
.endm

.macro	Cmd_347 a, b
.hword  0x347
.byte   \a, \b
.endm



.macro	SeeUp a
.hword  0x0, \a
.endm

.macro	SeeDown a
.hword  0x1, \a
.endm

.macro	SeeLeft a
.hword  0x2, \a
.endm

.macro	SeeRight a
.hword  0x3, \a
.endm

.macro	WalkUpFast a
.hword  0xc, \a
.endm

.macro	WalkDownFast a
.hword  0xd, \a
.endm

.macro	WalkLeftFast a
.hword  0xe, \a
.endm

.macro	WalkRightFast a
.hword  0xf, \a
.endm

.macro	WalkUpVeryFast a
.hword  0x10, \a
.endm

.macro	WalkDownVeryFast a
.hword  0x11, \a
.endm

.macro	WalkLeftVeryFast a
.hword  0x12, \a
.endm

.macro	WalkRightVeryFast a
.hword  0x13, \a
.endm

.macro	MoveUpFast a
.hword  0x20, \a
.endm

.macro	MoveDownFast a
.hword  0x21, \a
.endm

.macro	MoveLeftFast a
.hword  0x22, \a
.endm

.macro	MoveRightFast a
.hword  0x23, \a
.endm

.macro	MoveUpVeryFast a
.hword  0x24, \a
.endm

.macro	MoveDownVeryFast a
.hword  0x25, \a
.endm

.macro	MoveLeftVeryFast a
.hword  0x26, \a
.endm

.macro	MoveRightVeryFast a
.hword  0x27, \a
.endm

.macro	Move_3e a
.hword  0x3e, \a
.endm

.macro	Move_3f a
.hword  0x3f, \a
.endm

.macro	Move_41 a
.hword  0x41, \a
.endm

.macro	WaitDisappear a
.hword  0x45, \a
.endm

.macro	Move_47 a
.hword  0x47, \a
.endm

.macro	Move_48 a
.hword  0x48, \a
.endm

.macro	Exclamation a
.hword  0x4b, \a
.endm

.macro	EndMovement a
.hword  0xfe, \a
.endm
