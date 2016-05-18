
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

.macro	If2 var=0, nr=0
.hword  0x12, \var, \nr
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

.macro	SetTrainerId a
.hword  0x23, \a
.endm

.macro	SetValue a, b
.hword  0x26, \a, \b
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

.macro	Cmd_30
.hword  0x30
.endm

.macro	Message3 a
.hword  0x2d, \a
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

.macro	Multi3 a, b, c, d, e
.hword  0x44
.byte   \a, \b, \c, \d
.hword  \e
.endm

.macro	TxtMsgScrpMulti	a, b, c
.hword  0x46, \a, \b, \c
.endm

.macro	CloseMulti4
.hword  0x47
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

.macro	Soundfr a
.hword  0x4e, \a
.endm

.macro	Cmd_4f
.hword  0x4f
.endm

.macro	PlaySound a
.hword  0x50, \a
.endm

.macro	Restart
.hword  0x52
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

.macro	LockCam a, b
.hword  0x66, \a, \b
.endm

.macro	ZoomCam
.hword  0x67
.endm

.macro	FacePlayer
.hword  0x68
.endm

.macro	CheckSpritePosition a, b
.hword  0x69, \a, \b
.endm

.macro	CheckPersonPosition a, b, c
.hword  0x6b, \a, \b, \c
.endm

.macro	ContinueFollow a, b
.hword  0x6c, \a
.byte   \b
.endm

.macro	FollowHero a, b
.hword  0x6d, \a, \b
.endm

.macro	GiveItem a, b, c
.hword  0x7c, \a, \b, \c
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

.macro	GiveEgg	a, b
.hword  0x97, \a, \b
.endm

.macro	CallEnd
.hword  0xa1
.endm

.macro	Cmd_A2
.hword  0xa2
.endm

.macro	DisplayDressedPokemon a, b
.hword  0xa7, \a, \b
.endm

.macro	OpenSinnohMaps
.hword  0xaa
.endm

.macro	StartWfc a
.hword  0xb3, \a
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

.macro CheckBike a
.hword  0xc7, \a
.endm

.macro RideBike a
.hword  0xc8
.byte   \a
.endm

.macro RideBike2 a
.hword  0xc9
.byte   \a
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

.macro	SetVarPoke a, b
.hword  0xd0
.byte   \a
.hword  \b
.endm

.macro	SetVarItem a, b
.hword  0xd1
.byte   \a
.hword  \b
.endm

.macro	SetVarAtkItem a, b
.hword  0xd3
.byte   \a
.hword  \b
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

.macro	SetVarObj a, b
.hword  0xd7
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

.macro	StoreLeagueTrainer a
.hword  0xea, \a
.endm

.macro	LostGoPc
.hword  0xeb
.endm

.macro	CheckTrainerLost a
.hword  0xec, \a
.endm

.macro	ChsFriend a, b, c, d
.hword  0xf2, \a, \b, \c, \d
.endm

.macro	WireBattleWait a, b, c, d
.hword  0xf3, \a, \b, \c, \d
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

.macro	ExplanationBattle
.hword  0x126
.endm

.macro	CheckSaveData a
.hword  0x12d, \a
.endm

.macro	CheckDress a, b
.hword  0x12e, \a, \b
.endm

.macro	GivePoketch
.hword  0x131
.endm

.macro	CheckPtchAppl a
.hword  0x132, \a
.endm

.macro	ActPktchAppl a
.hword  0x133, \a
.endm

.macro	StorePoketchApp a, b
.hword  0x134, \a, \b
.endm

.macro	FriendBT nr
.hword  0x135, \nr
.endm

.macro	FriendBT2
.hword  0x136
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

.macro	ActBike a
.hword  0x14c, \a
.endm

.macro	CheckGender a
.hword  0x14d, \a
.endm

.macro	HealPokemon
.hword  0x14e
.endm

.macro	DeleteEntry
.hword  0x150
.endm

.macro	Cmd_151
.hword  0x151
.endm

.macro	GiveRunningShoes
.hword  0x15a
.endm

.macro	CheckBadge a, b
.hword  0x15b, \a, \b
.endm

.macro	EnableBadge a
.hword  0x15c, \a
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

.macro	CheckPartyNumber a
.hword  0x177, \a
.endm

.macro	ChangeOwPosition a, b, c
.hword  0x186, \a, \b, \c
.endm

.macro	SetOwPosition a, b, c, d, e
.hword  0x187, \a, \b, \c, \d, \e
.endm

.macro	ChangeOwMovement a, b
.hword  0x188, \a, \b
.endm

.macro	ReleaseOw a, b
.hword  0x189, \a, \b
.endm

.macro	SetOwsFollow a, b
.hword  0x18c, \a, \b
.endm

.macro	ShowClockSave
.hword  0x18d
.endm

.macro	HideClockSave
.hword  0x18e
.endm

.macro	SetSaveData a
.hword  0x190, \a
.endm

.macro	ChsPokemenu
.hword  0x191
.endm

.macro	ChsPokemenu2
.hword  0x192
.endm

.macro	StorePokeMenu2 a
.hword  0x193, \a
.endm

.macro	CheckPokeEgg a, b
.hword  0x198, \a, \b
.endm

.macro	AddPeople2 a
.hword  0x1b1, \a
.endm

.macro	RemovePeople2 a
.hword  0x1b2, \a
.endm

.macro	ShowRecordList a
.hword  0x1b5, \a
.endm

.macro	CheckTime a
.hword  0x1b6, \a
.endm

.macro	CheckIdPlayer a, b
.hword  0x1b7, \a, \b
.endm

.macro	StoreHappyPoke a, b
.hword  0x1b9, \a, \b
.endm

.macro	CheckFacePosition a
.hword  0x1bd, \a
.endm

.macro	CheckPokeParty a, b
.hword  0x1c0, \a, \b
.endm

.macro	Cmd_1cc
.hword  0x1cc
.endm

.macro	DeActivateLeader a, b, c, d, e
.hword  0x1cd, \a, \b, \c, \d, \e
.endm

.macro	GiveAccessories a, b
.hword  0x1d2, \a, \b
.endm

.macro	GiveAccessories2 a
.hword  0x1d5, \a
.endm

.macro	BattleRmResult a, b
.hword  0x1d9, \a, \b
.endm

.macro	ActivateBTower
.hword  0x1da
.endm

.macro	StoreBTowerData a, b
.hword  0x1db, \a, \b
.endm

.macro	CloseBTower
.hword  0x1dc
.endm

.macro	CallBTowerFunctions a, b, c
.hword  0x1dd, \a, \b, \c
.endm

.macro	StorePrizeNumBTower a
.hword  0x1df, \a
.endm

.macro	StorePeopleIdBTower a
.hword  0x1e0, \a
.endm

.macro	CallBTowerWireFunction a, b, c
.hword  0x1e1, \a, \b, \c
.endm

.macro	StorePChosenWireBTower a, b
.hword  0x1e2, \a, \b
.endm

.macro	StoreRankDataWireBTower a, b
.hword  0x1e3, \a, \b
.endm

.macro	Cmd_1e4 a
.hword  0x1e4, \a
.endm

.macro	RandomEvent a
.hword  0x1e5, \a
.endm

.macro	CheckSinPokedex a
.hword  0x1e8, \a
.endm

.macro	CheckNatPokedex a
.hword  0x1e9, \a
.endm

.macro	PreWfc
.hword  0x1f8
.endm

.macro	SetBCastleFunctionId a
.hword  0x1fe
.byte   \a
.endm

.macro	BCastleFunctReturn a, b, c, d
.hword  0x1ff
.byte   \a
.hword  \b, \c
.byte   \d
.endm

.macro	Cmd_200 a
.hword  0x200, \a
.endm

.macro	WarpLastElevator
.hword  0x204
.endm

.macro	StorePokeColosseumLost a
.hword  0x207, \a
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

.macro	CheckFirstPokeParty a
.hword  0x247, \a
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

.macro	MainEvent a
.hword  0x260, \a
.endm

.macro	CheckAccessories a, b
.hword  0x261
.byte   \a
.hword  \b
.endm

.macro	ActContestMap
.hword  0x265
.endm

.macro	Cmd_266
.hword  0x266
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

.macro	Cmd_283 a, b
.hword  0x283, \a, \b
.endm

.macro	CheckRuinManiac a
.hword  0x284, \a
.endm

.macro	UnkFunct2 a, b
.hword  0x28b
.byte   \a
.hword  \b
.endm

.macro	ChoiceMulti a, b
.hword  0x29d
.hword  \a, \b
.endm

.macro	DoubleBattle a, b, c
.hword  0x2a0, \a, \b, \c
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

.macro	Bikeride
.hword  0x2bf
.endm

.macro	ShowBTowerSome, a
.hword  0x2c4
.byte   \a
.endm

.macro	EternaGymAnm
.hword  0x2c9
.endm

.macro	FlorarClckAnm
.hword  0x2ca
.endm

.macro	Cmd_2ee a, b, c, d
.hword  0x2ee, \a, \b, \c, \d
.endm

.macro	Cmd_308 a, b
.hword  0x308, \a, \b
.endm

.macro	Cmd_309
.hword  0x309
.endm

.macro	Cmd_31c a, b
.hword  0x31c, \a, \b
.endm

.macro	Cmd_31e a, b
.hword  0x31e, \a, \b
.endm

.macro	Cmd_32d
.hword  0x32d
.endm

.macro	Cmd_32e
.hword  0x32e
.endm

.macro	Cmd_330
.hword  0x330
.endm

.macro	Cmd_331
.hword  0x331
.endm

.macro	Cmd_332
.hword  0x332
.endm

.macro	Cmd_33a a
.hword  0x33a
.byte   \a
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

.macro	WalkUp a
.hword  0x8, \a
.endm

.macro	WalkDown a
.hword  0x9, \a
.endm

.macro	WalkLeft a
.hword  0xa, \a
.endm

.macro	WalkRight a
.hword  0xb, \a
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

.macro	MoveLeft a
.hword  0x1e, \a
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

.macro	Move_3c a
.hword  0x3c, \a
.endm

.macro	Move_3d a
.hword  0x3d, \a
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
