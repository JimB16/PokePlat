
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

.macro	ExitStandard
.hword  0x15
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

.macro	Cmd_21 a, b
.hword  0x21, \a, \b
.endm

.macro	Cmd_22 a
.hword  0x22, \a
.endm

.macro	SetTrainerId a
.hword  0x23, \a
.endm

.macro	Cmd_24 a
.hword  0x24, \a
.endm

.macro	ClearTrainerId a
.hword  0x25, \a
.endm

.macro	SetValue a, b
.hword  0x26, \a, \b
.endm

.macro	CopyValue a, b
.hword  0x27, \a, \b
.endm

.macro	SetVar a, b
.hword  0x28, \a, \b
.endm

.macro	CopyVar a, b
.hword  0x29, \a, \b
.endm

.macro	Message2 nr=0
.hword  0x2b
.byte   \nr
.endm

.macro	Message nr=0
.hword  0x2c
.byte   \nr
.endm

.macro	Message3 nr=0
.hword  0x2d, \nr
.endm

.macro	Message4 nr=0
.hword  0x2e, \nr
.endm

.macro	Message5 nr=0
.hword  0x2f
.byte   \nr
.endm

.macro	Cmd_30
.hword  0x30
.endm

.macro	WaitButton
.hword  0x31
.endm

.macro	Cmd_32
.hword  0x32
.endm

.macro	Cmd_33
.hword  0x33
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

.macro	ShowMenu
.hword  0x3c
.endm

.macro	YesNoBox nr=0
.hword  0x3e, \nr
.endm

.macro	Multi a, b, c, d, e
.hword  0x40
.byte   \a, \b, \c, \d
.hword  \e
.endm

.macro	Multi2 a, b, c, d, e
.hword  0x41
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

.macro	Multi4 a, b, c, d, e
.hword  0x45
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

.macro	MultiRow a
.hword  0x48
.byte   \a
.endm

.macro	PlayFanfare2	nr=0
.hword  0x4a, \nr
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

.macro	Stop a
.hword  0x51, \a
.endm

.macro	Restart
.hword  0x52
.endm

.macro	Cmd_53 a
.hword  0x53, \a
.endm

.macro	SwitchMusic a, b
.hword  0x54, \a, \b
.endm

.macro	StoreSayingLearned a
.hword  0x55, \a
.endm

.macro	PlaySound2 a
.hword  0x57, \a
.endm

.macro	Cmd_58 a
.hword  0x58
.byte   \a
.endm

.macro	CheckSayingLearned a
.hword  0x59, \a
.endm

.macro	SwithMusic2 a
.hword  0x5a, \a
.endm

.macro	ActMicrophone
.hword  0x5b
.endm

.macro	DeactMicrophone
.hword  0x5c
.endm

.macro	Cmd_5d
.hword  0x5d
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

.macro	Release a
.hword  0x63, \a
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

.macro	TakeMoney a
.hword  0x70
.word   \a
.endm

.macro	CheckMoney a, b
.hword  0x71, \a
.word   \b
.endm

.macro	ShowMoney a, b
.hword  0x72, \a, \b
.endm

.macro	HideMoney
.hword  0x73
.endm

.macro	UpdateMoney
.hword  0x74
.endm

.macro	ShowCoins a, b
.hword  0x75, \a, \b
.endm

.macro	HideCoins
.hword  0x76
.endm

.macro	UpdateCoins
.hword  0x77
.endm

.macro	CheckCoins a
.hword  0x78, \a
.endm

.macro	GiveCoins a
.hword  0x79, \a
.endm

.macro	TakeCoins a
.hword  0x7a, \a
.endm

.macro	TakeItem a, b, c
.hword  0x7b, \a, \b, \c
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

.macro	StoreItemTaken a, b
.hword  0x7f, \a, \b
.endm

.macro	StoreItemType a, b
.hword  0x80, \a, \b
.endm

.macro	SendItemType1 a, b, c
.hword  0x83, \a, \b, \c
.endm

.macro	Cmd_84 a, b, c
.hword  0x84, \a, \b, \c
.endm

.macro	CheckUndergroundPcStatus a, b, c
.hword  0x85, \a, \b, \c
.endm

.macro	Cmd_86 a, b, c
.hword  0x86, \a, \b, \c
.endm

.macro	SendItemType2 a, b, c
.hword  0x87, \a, \b, \c
.endm

.macro	Cmd_88 a, b, c
.hword  0x88, \a, \b, \c
.endm

.macro	Cmd_89 a, b, c
.hword  0x89, \a, \b, \c
.endm

.macro	Cmd_8a a, b, c
.hword  0x8a, \a, \b, \c
.endm

.macro	Cmd_8b a, b, c
.hword  0x8b, \a, \b, \c
.endm

.macro	Cmd_8c a, b, c
.hword  0x8c, \a, \b, \c
.endm

.macro	Cmd_8d a, b, c
.hword  0x8d, \a, \b, \c
.endm

.macro	Cmd_8e a, b, c
.hword  0x8e, \a, \b, \c
.endm

.macro	SendItemType3 a, b, c
.hword  0x8f, \a, \b, \c
.endm

.macro	CheckPokemonParty a, b
.hword  0x93, \a, \b
.endm

.macro	StorePokemonParty a, b
.hword  0x94, \a, \b
.endm

.macro	SetPokemonPartyStored a, b
.hword  0x95, \a, \b
.endm

.macro	GivePokemon	pkmn=0, lvl=0, item=0, res=0
.hword  0x96, \pkmn, \lvl, \item, \res
.endm

.macro	GiveEgg	a, b
.hword  0x97, \a, \b
.endm

.macro	CheckMove a, b, c
.hword  0x99, \a, \b, \c
.endm

.macro	CheckPlaceStored a, b
.hword  0x9a, \a, \b
.endm

.macro	Cmd_9b a, b
.hword  0x9b, \a, \b
.endm

.macro	Cmd_9c
.hword  0x9c
.endm

.macro	Cmd_9d
.hword  0x9d
.endm

.macro	Cmd_9e
.hword  0x9e
.endm

.macro	Cmd_9f
.hword  0x9f
.endm

.macro	Cmd_a0
.hword  0xa0
.endm

.macro	CallEnd
.hword  0xa1
.endm

.macro	Cmd_A2
.hword  0xa2
.endm

.macro	Wfc_
.hword  0xa3
.endm

.macro	Cmd_a4 a
.hword  0xa4, \a
.endm

.macro	Interview
.hword  0xa5
.endm

.macro	DressPokemon a, b, c
.hword  0xa6, \a, \b, \c
.endm

.macro	DisplayDressedPokemon a, b
.hword  0xa7, \a, \b
.endm

.macro	DisplayContestPokemon a, b
.hword  0xa8, \a, \b
.endm

.macro	OpenBallCapsule
.hword  0xa9
.endm

.macro	OpenSinnohMaps
.hword  0xaa
.endm

.macro	OpenPcFunction a
.hword  0xab
.byte   \a
.endm

.macro	DrawUnion
.hword  0xac
.endm

.macro	TrainerCaseUnion
.hword  0xad
.endm

.macro	TradeUnion
.hword  0xae
.endm

.macro	RecordMixingUnion
.hword  0xaf
.endm

.macro	EndGame
.hword  0xb0
.endm

.macro	HallFameAnm
.hword  0xb1
.endm

.macro	StoreWfcStatus a, b
.hword  0xb2, \a, \b
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

.macro	BattleId a
.hword  0xb6, \a
.endm

.macro	SetVarBattle a, b
.hword  0xb7, \a, \b
.endm

.macro	CheckBattleType a
.hword  0xb8, \a
.endm

.macro	SetVarBattle2 a, b
.hword  0xb9, \a, \b
.endm

.macro	ChoosePokeNick a, b
.hword  0xbb, \a, \b
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

.macro RockClimbAnimation a
.hword  0xbf, \a
.endm

.macro SurfAnimation a
.hword  0xc0, \a
.endm

.macro WaterfallAnimation a
.hword  0xc1, \a
.endm

.macro FlashAnimation
.hword  0xc3
.endm

.macro DefogAnimation
.hword  0xc4
.endm

.macro PrepHmEffect a
.hword  0xc5, \a
.endm

.macro	Tuxedo
.hword  0xc6
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

.macro GivePokeHiroAnm a
.hword  0xcb, \a
.endm

.macro StopGivePokeHiroAnm
.hword  0xcc
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

.macro	SetVarItemNum a, b
.hword  0xd2
.byte   \a
.hword  \b
.endm

.macro	SetVarAtkItem a, b
.hword  0xd3
.byte   \a
.hword  \b
.endm

.macro	SetVarAtk a, b
.hword  0xd4
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

.macro	SetVarTrainer a, b
.hword  0xd8
.byte   \a
.hword  \b
.endm

.macro	SetVarWiFiSprite a
.hword  0xd9
.byte   \a
.endm

.macro	SetVarPokeStored a, b, c, d
.hword  0xda
.byte   \a
.hword  \b, \c
.byte   \d
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

.macro	Cmd_df a, b
.hword  0xdf
.byte   \a
.hword  \b
.endm

.macro	SetVarItemStored a, b
.hword  0xe0
.byte   \a
.hword  \b
.endm

.macro	SetVarItemStored2 a, b
.hword  0xe1
.byte   \a
.hword  \b
.endm

.macro	SetVarSwarmPoke a, b
.hword  0xe2
.byte   \a
.hword  \b
.endm

.macro	CheckSwarmPoke a, b
.hword  0xe3, \a, \b
.endm

.macro	StartBattleAnalysis a
.hword  0xe4, \a
.endm

.macro	TrainerBattle a, b
.hword  0xe5, \a, \b
.endm

.macro	EndtrainerBattle a, b
.hword  0xe6, \a, \b
.endm

.macro	TrainerBattleStored a, b, c
.hword  0xe7, \a, \b, \c
.endm

.macro	TrainerBattleStored2 a, b, c
.hword  0xe8, \a, \b, \c
.endm

.macro	CheckTrainerStatus a
.hword  0xe9, \a
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

.macro	CheckTrainerStatus2 a
.hword  0xed, \a
.endm

.macro	StorePokePartyDefeated a
.hword  0xee, \a
.endm

.macro	ChsFriend a, b, c, d
.hword  0xf2, \a, \b, \c, \d
.endm

.macro	WireBattleWait a, b, c, d
.hword  0xf3, \a, \b, \c, \d
.endm

.macro	Cmd_f6
.hword  0xf6
.endm

.macro	Pokecontest
.hword  0xf7
.endm

.macro	StartOvation a
.hword  0xf8, \a
.endm

.macro	StopOvation a
.hword  0xf9, \a
.endm

.macro	Cmd_fa a, b, c, d
.hword  0xfa, \a, \b, \c, \d
.endm

.macro	Cmd_fb a
.hword  0xfb, \a
.endm

.macro	Cmd_fc a, b
.hword  0xfc, \a, \b
.endm

.macro	SetvarOtherEntry a, b
.hword  0xfd, \a, \b
.endm

.macro	Cmd_fe a, b
.hword  0xfe, \a, \b
.endm

.macro	SetvatHiroEntry a, b
.hword  0xff, \a, \b
.endm

.macro	Cmd_100
.hword  0x100
.endm

.macro	BlackFlashEffect
.hword  0x101
.endm

.macro	SetvarTypeContest a
.hword  0x102, \a
.endm

.macro	SetvarRankContest a
.hword  0x103, \a
.endm

.macro	Cmd_104 a
.hword  0x104, \a
.endm

.macro	Cmd_105 a
.hword  0x105, \a
.endm

.macro	Cmd_106 a
.hword  0x106, \a
.endm

.macro	Cmd_107 a
.hword  0x107, \a
.endm

.macro	StorePeopleIdContest a
.hword  0x108, \a
.endm

.macro	Cmd_109 a
.hword  0x109, \a
.endm

.macro	SetvatHiroEntry2 a, b
.hword  0x10a, \a, \b
.endm

.macro	ActPeopleContest a, b
.hword  0x10b, \a, \b
.endm

.macro	Cmd_10c a
.hword  0x10c, \a
.endm

.macro	Cmd_10d a
.hword  0x10d, \a
.endm

.macro	Cmd_10e a
.hword  0x10e, \a
.endm

.macro	Cmd_10f a
.hword  0x10f, \a
.endm

.macro	Cmd_110 a, b, c, d
.hword  0x110, \a, \b, \c, \d
.endm

.macro	FlashContest a
.hword  0x111, \a
.endm

.macro	EndFlash
.hword  0x112
.endm

.macro	CarpetAnm
.hword  0x113
.endm

.macro	Cmd_114
.hword  0x114
.endm

.macro	Cmd_115 a
.hword  0x115, \a
.endm

.macro	ShowLnkCntRecord
.hword  0x116
.endm

.macro	Cmd_117
.hword  0x117
.endm

.macro	Cmd_118
.hword  0x118
.endm

.macro	StorePokerus a
.hword  0x119, \a
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

.macro	StoreSinPokemonSeen a
.hword  0x11e, \a
.endm

.macro	Cmd_11f a
.hword  0x11f, \a
.endm

.macro	StoreTotPokemonSeen a
.hword  0x120, \a
.endm

.macro	StoreNatPokemonSeen a
.hword  0x121, \a
.endm

.macro	SetVarTextPokedex a, b
.hword  0x123
.byte   \a
.hword  \b
.endm

.macro	WildBattle a, b
.hword  0x124, \a, \b
.endm

.macro	StarterBattle a, b
.hword  0x125, \a, \b
.endm

.macro	ExplanationBattle
.hword  0x126
.endm

.macro	HoneyTreeBattle
.hword  0x127
.endm

.macro	CheckIfHoneySlathered a
.hword  0x128, \a
.endm

.macro	RandomBattle
.hword  0x129
.endm

.macro	StopRandomBattle
.hword  0x12a
.endm

.macro	WriteAutograph
.hword  0x12b
.endm

.macro	StoreSaveData a
.hword  0x12c, \a
.endm

.macro	CheckSaveData a
.hword  0x12d, \a
.endm

.macro	CheckDress a, b
.hword  0x12e, \a, \b
.endm

.macro	CheckContestWin a, b
.hword  0x12f, \a, \b
.endm

.macro	StorePhotoName a
.hword  0x130, \a
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

.macro	Cmd_138 a
.hword  0x138, \a
.endm

.macro	OpenUnionFunction2 a
.hword  0x139, \a
.endm

.macro	StartUnion
.hword  0x13a
.endm

.macro	LinkClosed
.hword  0x13b
.endm

.macro	SetUnionFunctionId a
.hword  0x13c, \a
.endm

.macro	CloseUnionFunction
.hword  0x13d
.endm

.macro	CloseUnionFunction2
.hword  0x13e
.endm

.macro	SetVarUnionMessage a, b
.hword  0x13f, \a, \b
.endm

.macro	StoreYourDecisionUnion a
.hword  0x140, \a
.endm

.macro	StoreOtherDecisionUnion a
.hword  0x141, \a
.endm

.macro	Cmd_142
.hword  0x142
.endm

.macro	CheckOtherDecisionUnion a, b
.hword  0x143, \a, \b
.endm

.macro	StoreYourDecisionUnion2 a
.hword  0x144, \a
.endm

.macro	StoreOtherDecisionUnion2 a
.hword  0x145, \a
.endm

.macro	CheckOtherDecisionUnion2 a, b
.hword  0x146, \a, \b
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

.macro	DefeatGoPokecenter
.hword  0x14b
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

.macro	DeactWireless
.hword  0x14f
.endm

.macro	DeleteEntry
.hword  0x150
.endm

.macro	Cmd_151
.hword  0x151
.endm

.macro	UndergroundId a
.hword  0x152, \a
.endm

.macro	UnionRoom
.hword  0x153
.endm

.macro	OpenWiFiSprite
.hword  0x154
.endm

.macro	StoreWiFiSprite a, b
.hword  0x155, \a, \b
.endm

.macro	ActWiFiSprite a
.hword  0x156, \a
.endm

.macro	Cmd_157 a
.hword  0x157, \a
.endm

.macro	ActivatePokedex
.hword  0x158
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

.macro	CheckFollow a
.hword  0x160, \a
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

.macro	Cmd_166 a
.hword  0x166, \a
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

.macro	ActDcareFunction
.hword  0x16d
.endm

.macro	StorePDCareNum a
.hword  0x16e, \a
.endm

.macro	PastoriaCityFunction
.hword  0x16f
.endm

.macro	PastoriaCityFunction2
.hword  0x170
.endm

.macro	HearthromeGymFunction
.hword  0x171
.endm

.macro	HearthromeGymFunction2
.hword  0x172
.endm

.macro	CanalaveGymFunction
.hword  0x173
.endm

.macro	VeilstoneGymFunction
.hword  0x174
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

.macro	OpenBerryPouch a
.hword  0x178
.byte   \a
.endm

.macro	Cmd_179 a
.hword  0x179, \a
.endm

.macro	Cmd_17a a, b
.hword  0x17a, \a, \b
.endm

.macro	Cmd_17b a, b, c
.hword  0x17b
.byte   \a
.hword  \b, \c
.endm

.macro	SetNaturePokemon a, b
.hword  0x17c
.byte   \a
.hword  \b
.endm

.macro	Cmd_17d a
.hword  0x17d, \a
.endm

.macro	Cmd_17e a
.hword  0x17e, \a
.endm

.macro	Cmd_17f a
.hword  0x17f, \a
.endm

.macro	Cmd_180 a
.hword  0x180, \a
.endm

.macro	Cmd_181 a
.hword  0x181, \a
.endm

.macro	CheckDeoxis a
.hword  0x182, \a
.endm

.macro	Cmd_183 a
.hword  0x183, \a
.endm

.macro	Cmd_184 a
.hword  0x184, \a
.endm

.macro	Cmd_185
.hword  0x185
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

.macro	SetTilePassable a, b, c
.hword  0x18a, \a, \b, \c
.endm

.macro	SetTileLocked a, b, c
.hword  0x18b, \a, \b, \c
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

.macro	Cmd_18f a
.hword  0x18f, \a
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

.macro	ChsPokeContest a, b, c, d
.hword  0x194, \a, \b, \c, \d
.endm

.macro	StorePokeContest a, b
.hword  0x195, \a, \b
.endm

.macro	ShowPokeInfo a
.hword  0x196, \a
.endm

.macro	StorePokeMove a
.hword  0x197, \a
.endm

.macro	CheckPokeEgg a, b
.hword  0x198, \a, \b
.endm

.macro	ComparePokeNick a, b
.hword  0x199, \a, \b
.endm

.macro	CheckPartyNumberUnion a
.hword  0x19a, \a
.endm

.macro	CheckPokePartyHealth a, b
.hword  0x19b, \a, \b
.endm

.macro	CheckPokePartyNumDCare a
.hword  0x19c, \a
.endm

.macro	CheckEggUnion a
.hword  0x19d, \a
.endm

.macro	UndergroundFunction a, b
.hword  0x19e, \a, \b
.endm

.macro	UndergroundFunction2 a
.hword  0x19f, \a
.endm

.macro	UndergroundStart
.hword  0x1a0
.endm

.macro	TakeMoneyDCare a
.hword  0x1a3, \a
.endm

.macro	TakePokemonDCare a, b
.hword  0x1a4, \a, \b
.endm

.macro	ActEggDayCMan
.hword  0x1a8
.endm

.macro	DeactEggDayCMan
.hword  0x1a9
.endm

.macro	SetVarPokeAndMoneyDCare a, b
.hword  0x1aa, \a, \b
.endm

.macro	CheckMoneyDCare a, b
.hword  0x1ab, \a, \b
.endm

.macro	EggAnm
.hword  0x1ac
.endm

.macro	SetVarPokeAndLevelDCare a, b
.hword  0x1ae, \a, \b
.endm

.macro	SetVarPokeChosenDCare a, b, c
.hword  0x1af, \a, \b, \c
.endm

.macro	GivePokeDCare a
.hword  0x1b0, \a
.endm

.macro	AddPeople2 a
.hword  0x1b1, \a
.endm

.macro	RemovePeople2 a
.hword  0x1b2, \a
.endm

.macro	MailBox
.hword  0x1b3
.endm

.macro	CheckMail a
.hword  0x1b4, \a
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

.macro	RandomTextStored a, b
.hword  0x1b8, \a, \b
.endm

.macro	StoreHappyPoke a, b
.hword  0x1b9, \a, \b
.endm

.macro	StoreHappyStatus a, b
.hword  0x1ba, \a, \b
.endm

.macro	SetVarDataDayCare a, b, c, d
.hword  0x1bc, \a, \b, \c, \d
.endm

.macro	CheckFacePosition a
.hword  0x1bd, \a
.endm

.macro	StorePokeDCareLove a
.hword  0x1be, \a
.endm

.macro	CheckStatusSolaceonEvent a
.hword  0x1bf, \a
.endm

.macro	CheckPokeParty a, b
.hword  0x1c0, \a, \b
.endm

.macro	CopyPokeHeight a, b
.hword  0x1c1, \a, \b
.endm

.macro	SetvarPokeHeight a
.hword  0x1c2, \a
.endm

.macro	ComparePokeHeight a, b, c
.hword  0x1c3, \a, \b, \c
.endm

.macro	CheckPokeHeight a, b, c
.hword  0x1c4, \a, \b, \c
.endm

.macro	ShowMoveInfo
.hword  0x1c5
.endm

.macro	StorePokeDelete a
.hword  0x1c6, \a
.endm

.macro	StoreMoveDelete a
.hword  0x1c7, \a
.endm

.macro	CheckMoveNumDelete a, b
.hword  0x1c8, \a, \b
.endm

.macro	StoreDeleteMove a, b
.hword  0x1c9, \a, \b
.endm

.macro	CheckDeleteMove a, b, c
.hword  0x1ca, \a, \b, \c
.endm

.macro	SetvarMoveDelete a, b, c
.hword  0x1cb
.byte   \a
.hword  \b, \c
.endm

.macro	Cmd_1cc
.hword  0x1cc
.endm

.macro	DeActivateLeader a, b, c, d, e
.hword  0x1cd, \a, \b, \c, \d, \e
.endm

.macro	HmFunctions a, b=0
.hword  0x1cf
.byte   \a
.ifeq \a-2
.hword  \b
.endif
.endm

.macro	FlashDuration a
.hword  0x1d0
.byte   \a
.endm

.macro	DefogDuration a
.hword  0x1d1
.byte   \a
.endm

.macro	GiveAccessories a, b
.hword  0x1d2, \a, \b
.endm

.macro	CheckAccessories a, b, c
.hword  0x1d3, \a, \b, \c
.endm

.macro	Cmd_1d4 a, b
.hword  0x1d4, \a, \b, \c
.endm

.macro	GiveAccessories2 a
.hword  0x1d5, \a
.endm

.macro	CheckAccessories2 a, b
.hword  0x1d6, \a, \b
.endm

.macro	Berrypoffin a
.hword  0x1d7, \a
.endm

.macro	SetVarBTowerChs a
.hword  0x1d8, \a
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

.macro	RandomTeamBTower a, b, c, d
.hword  0x1de, \a, \b, \c, \d
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

.macro	ShowSinSheet
.hword  0x1ea
.endm

.macro	ShowNatSheet
.hword  0x1eb
.endm

.macro	Cmd_1ec
.hword  0x1ec
.endm

.macro	StoreTrophyPokemon a
.hword  0x1ed, \a
.endm

.macro	Cmd_1ef a
.hword  0x1ef, \a
.endm

.macro	Cmd_1f0 a
.hword  0x1f0, \a
.endm

.macro	CheckActFossil a
.hword  0x1f1, \a
.endm

.macro	Cmd_1f2
.hword  0x1f2
.endm

.macro	Cmd_1f3
.hword  0x1f3
.endm

.macro	CheckItemChosen a, b
.hword  0x1f4, \a, \b
.endm

.macro	CompareItemPokeFossil a, b, c
.hword  0x1f5, \a, \b, \c
.endm

.macro	CheckPokeLevel a, b
.hword  0x1f6, \a, \b
.endm

.macro	CheckPokemonPoisoned a, b
.hword  0x1f7, \a, \b
.endm

.macro	PreWfc
.hword  0x1f8
.endm

.macro	StoreFurniture a
.hword  0x1f9, \a
.endm

.macro	CopyFurniture a, b
.hword  0x1fb, \a, \b
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

.macro	CheckEffectHm a
.hword  0x201, \a
.endm

.macro	GreatMarshFunction a
.hword  0x202
.byte   \a
.endm

.macro	BattlePokeColosseum a, b, c, d, e
.hword  0x203, \a, \b, \c, \d, \e
.endm

.macro	WarpLastElevator
.hword  0x204
.endm

.macro	OpenGeoNet
.hword  0x205
.endm

.macro	Gmbynocule
.hword  0x206
.endm

.macro	StorePokeColosseumLost a
.hword  0x207, \a
.endm

.macro	Pokepic a, b
.hword  0x208, \a, \b
.endm

.macro	Hidepic
.hword  0x209
.endm

.macro	Cmd_20a a
.hword  0x20a, \a
.endm

.macro	Cmd_20b
.hword  0x20b
.endm

.macro	Cmd_20c
.hword  0x20c
.endm

.macro	SetvarMtCoronet a, b
.hword  0x20d
.byte   \a
.hword  \b
.endm

.macro	Cmd_20e
.hword  0x20e
.endm

.macro	CheckQuicTrineCoordinates a, b
.hword  0x20f, \a, \b
.endm

.macro	SetvarQuickTrainCoordinates a, b
.hword  0x210, \a, \b
.endm

.macro	MoveTrainAnm a
.hword  0x211
.byte   \a
.endm

.macro	StorePokeNature a, b
.hword  0x212, \a, \b
.endm

.macro	CheckPokeNature a, b
.hword  0x213, \a, \b
.endm

.macro	RandomHallowes a
.hword  0x214, \a
.endm

.macro	StartAmity
.hword  0x215
.endm

.macro	Cmd_216 a
.hword  0x216, \a
.endm

.macro	Cmd_217 a, b
.hword  0x217, \a, \b
.endm

.macro	ChsRSPoke a
.hword  0x218, \a
.endm

.macro	SetSPoke a
.hword  0x219, \a
.endm

.macro	CheckSPoke a
.hword  0x21a, \a
.endm

.macro	Cmd_21b
.hword  0x21b
.endm

.macro	ActSwarmPoke a
.hword  0x21c
.byte   \a
.endm

.macro	Cmd_21d a, b=0, c=0
.hword  0x21d, \a
.ifeq \a-4
.hword  \b
.endif
.ifeq \a-5
.hword  \b
.endif
.ifeq \a-0
.hword  \b
.hword  \c
.endif
.ifeq \a-1
.hword  \b
.hword  \c
.endif
.ifeq \a-2
.hword  \b
.hword  \c
.endif
.ifeq \a-3
.hword  \b
.hword  \c
.endif
.endm

.macro	Cmd_21e
.hword  0x21e
.endm

.macro	CheckMoveRemember a, b
.hword  0x21f, \a, \b
.endm

.macro	Cmd_220
.hword  0x220
.endm

.macro	StorePokeRemember a
.hword  0x221, \a
.endm

.macro	Cmd_222
.hword  0x222
.endm

.macro	StoreRememberMove a
.hword  0x223, \a
.endm

.macro	CopyMoveRemember a, b
.hword  0x224, \a, \b
.endm

.macro	StoreMoveRemember a
.hword  0x225, \a
.endm

.macro	SetTradeId a
.hword  0x226
.byte   \a
.endm

.macro	CheckPokeTrade a
.hword  0x228, \a
.endm

.macro	TradeChsPoke a
.hword  0x229, \a
.endm

.macro	StopTrade
.hword  0x22a
.endm

.macro	Cmd_22b
.hword  0x22b
.endm

.macro	CloseOakAssistantEvent
.hword  0x22c
.endm

.macro	CheckNatPokedexStatus a, b
.hword  0x22d
.byte   \a
.hword  \b
.endm

.macro	CheckRibbonNumber a
.hword  0x22f, \a
.endm

.macro	CheckRibbon a, b, c
.hword  0x230, \a, \b, \c
.endm

.macro	GiveRibbon a, b
.hword  0x231, \a, \b
.endm

.macro	SetvarRibbon a, b
.hword  0x232
.byte   \a
.hword  \b
.endm

.macro	CheckHappyRibbon a, b
.hword  0x233, \a, \b
.endm

.macro	CheckPokemart a
.hword  0x234, \a
.endm

.macro	CheckFurniture a, b=0, c=0, d=0
.hword  0x235, \a
.ifeq \a-0
.hword  \b
.endif
.ifeq \a-1
.hword  \b, \c, \d
.endif
.ifeq \a-2
.endif
.ifeq \a-3
.hword  \b, \c, \d
.endif
.ifeq \a-4
.hword  \b, \c
.endif
.ifeq \a-5
.hword  \b, \c, \d
.endif
.ifeq \a-6
.hword  \b
.endif
.endm

.macro	Cmd_236 a
.hword  0x236, \a
.endm

.macro	CheckPhraseBoxInput a, b, c, d
.hword  0x237, \a, \b, \c, \d
.endm

.macro	CheckStatusPhraseBox a, b
.hword  0x238, \a, \b
.endm

.macro	Deciderules a
.hword  0x239, \a
.endm

.macro	CheckFootStep a, b, c
.hword  0x23a, \a, \b, \c
.endm

.macro	HealpcAnm a
.hword  0x23b, \a
.endm

.macro	StoreElevatorDirection a, b
.hword  0x23c, \a, \b
.endm

.macro	ShipAnm a, b, c, d, e
.hword  0x23d
.byte   \a, \b
.hword  \c, \d, \e
.endm

.macro	Cmd_23e a, b=0, c=0
.hword  0x23e, \a
.ifeq \a-1
.hword  \b
.endif
.ifeq \a-2
.hword  \b
.endif
.ifeq \a-3
.hword  \b
.endif
.ifeq \a-5
.hword  \b
.hword  \c
.endif
.ifeq \a-6
.hword  \b
.hword  \c
.endif
.endm

.macro	StorePhraseBox1W a, b, c
.hword  0x243, \a, \b, \c
.endm

.macro	StorePhraseBox2W a, b, c, d
.hword  0x244, \a, \b, \c, \d
.endm

.macro	SetvarPhraseBox1W a, b
.hword  0x245, \a, \b
.endm

.macro	StoreMtCoronet a
.hword  0x246, \a
.endm

.macro	CheckFirstPokeParty a
.hword  0x247, \a
.endm

.macro	CheckPokeType a, b, c
.hword  0x248, \a, \b, \c
.endm

.macro	CheckPhraseBoxImput2 a, b, c, d, e
.hword  0x249, \a, \b, \c, \d, \e
.endm

.macro	StoreUndTime a
.hword  0x24a, \a
.endm

.macro	PrpPcAnm a
.hword  0x24b
.byte   \a
.endm

.macro	PcOpnAnm a
.hword  0x24c
.byte   \a
.endm

.macro	PcClsAnm a
.hword  0x24d
.byte   \a
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

.macro	Cmd_250
.hword  0x250
.endm

.macro	CheckBoxesNumber a
.hword  0x252, \a
.endm

.macro	StopGreatMarsh a
.hword  0x253, \a
.endm

.macro	CheckPokeCatchingShow a
.hword  0x254, \a
.endm

.macro	CloseCatchingShow
.hword  0x255
.endm

.macro	CheckCatchingShowRecords a, b
.hword  0x256, \a, \b
.endm

.macro	SprtSave
.hword  0x257
.endm

.macro	RetSprtSave
.hword  0x258
.endm

.macro	ElevLgAnm
.hword  0x259
.endm

.macro	CheckElevLgAnm a
.hword  0x25a, \a
.endm

.macro	ElevIrAnm
.hword  0x25b
.endm

.macro	StopElevAnm
.hword  0x25c
.endm

.macro	CheckElevPosition a
.hword  0x25d, \a
.endm

.macro	GalactAnm
.hword  0x25e
.endm

.macro	GalactAnm2
.hword  0x25f
.endm

.macro	MainEvent a
.hword  0x260, \a
.endm

.macro	CheckAccessories3 a, b
.hword  0x261
.byte   \a
.hword  \b
.endm

.macro	ActDeoxisFormChange a, b
.hword  0x262, \a, \b
.endm

.macro	ChangeFormDeoxis a
.hword  0x263, \a
.endm

.macro	CheckCoombeEvent a
.hword  0x264, \a
.endm

.macro	ActContestMap
.hword  0x265
.endm

.macro	Cmd_266
.hword  0x266
.endm

.macro	Pokecasino a
.hword  0x267, \a
.endm

.macro	CheckTime2 a
.hword  0x268, \a
.endm

.macro	RegigigasAnm a, b, c, d, e
.hword  0x269, \a, \b, \c, \d, \e
.endm

.macro	CresseliaAnm a, b, c
.hword  0x26a, \a, \b, \c
.endm

.macro	CheckRegi a
.hword  0x26b, \a
.endm

.macro	CheckMassage a
.hword  0x26c, \a
.endm

.macro	Unownmsgbox a
.hword  0x26d, \a
.endm

.macro	CheckPCatchingShow a
.hword  0x26e, \a
.endm

.macro	Cmd_26f
.hword  0x26f
.endm

.macro	ShayminAnm a, b
.hword  0x270, \a
.byte   \b
.endm

.macro	Thanknameins a
.hword  0x271, \a
.endm

.macro	SetvarShaymin a
.hword  0x272
.byte   \a
.endm

.macro	SetvarAccessories2 a, b
.hword  0x273
.byte   \a
.hword  \b
.endm

.macro	Cmd_274 a, b
.hword  0x274, \a
.word   \b
.endm

.macro	CheckRecordCasino a
.hword  0x275, \a
.endm

.macro	CheckCoinsCasino a, b
.hword  0x276, \a, \b
.endm

.macro	SrtRandomNum a
.hword  0x277, \a
.endm

.macro	CheckPokeLevel2 a, b
.hword  0x278, \a, \b
.endm

.macro	Cmd_279 a, b
.hword  0x279, \a, \b
.endm

.macro	LgCstlView
.hword  0x27a
.endm

.macro	Cmd_27b
.hword  0x27b
.endm

.macro	SetvarAmityPokemon a, b
.hword  0x27c, \a, \b
.endm

.macro	Cmd_27d a, b
.hword  0x27d, \a, \b
.endm

.macro	CheckFirstTimeVShop a
.hword  0x27e, \a
.endm

.macro	Cmd_27f a
.hword  0x27f, \a
.endm

.macro	SetvarIdNumber a, b, c, d
.hword  0x280
.byte   \a
.hword  \b
.byte   \c, \d
.endm

.macro	Cmd_281 a, b, c
.hword  0x281, \a, \b, \c
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

.macro	CheckTurnBack a, b
.hword  0x285, \a, \b
.endm

.macro	CheckUgPeopleNum a
.hword  0x286, \a
.endm

.macro	CheckUgFossilNum a
.hword  0x287, \a
.endm

.macro	CheckUgTrapsNum a
.hword  0x288, \a
.endm

.macro	CheckPoffinItem a, b, c, d, e, f, g
.hword  0x289, \a, \b, \c, \d, \e, \f, \g
.endm

.macro	CheckPoffinCaseStatus a
.hword  0x28a, \a
.endm

.macro	UnkFunct2 a, b
.hword  0x28b
.byte   \a
.hword  \b
.endm

.macro	Pokepartypic a
.hword  0x28c, \a
.endm

.macro	ActLearning
.hword  0x28d
.endm

.macro	SetSoundLearning a
.hword  0x28e, \a
.endm

.macro	CheckFirstTimeChampion a
.hword  0x28f, \a
.endm

.macro	ChoosePokeDCare a
.hword  0x290, \a
.endm

.macro	StorePokeDCare a, b
.hword  0x291, \a, \b
.endm

.macro	Cmd_292 a, b
.hword  0x292
.byte   \a
.hword  \b
.endm

.macro	CheckMasterRank a
.hword  0x293, \a
.endm

.macro	ShowBPntsbox a, b
.hword  0x294
.byte   \a, \b
.endm

.macro	HideBPointsbox
.hword  0x295
.endm

.macro	UpdateBPointsbox
.hword  0x296
.endm

.macro	TakeBPoints a
.hword  0x299, \a
.endm

.macro	CheckBPoints a, b
.hword  0x29a, \a, \b
.endm

.macro	Cmd_29c a, b
.hword  0x29c, \a, \b
.endm

.macro	ChoiceMulti a, b
.hword  0x29d
.hword  \a, \b
.endm

.macro	HmEffect a, b
.hword  0x29e
.hword  \a, \b
.endm

.macro	CmrBmpEffect a
.hword  0x29f
.hword  \a
.endm

.macro	DoubleBattle a, b, c
.hword  0x2a0, \a, \b, \c
.endm

.macro	Cmd_2a2 a
.hword  0x2a2, \a
.endm

.macro	StoreActHeroFriendCode a
.hword  0x2a3, \a
.endm

.macro	StoreActOtherFriendCode a
.hword  0x2a4, \a
.endm

.macro	TradeChosenPoke
.hword  0x2a5
.endm

.macro	ChsPrizeCasino a, b, c
.hword  0x2a6, \a, \b, \c
.endm

.macro	CheckPlate a, b
.hword  0x2a7, \a, \b
.endm

.macro	TakeCoinsCasino a
.hword  0x2a8, \a
.endm

.macro	CheckCoinsCasino2 a, b
.hword  0x2a9, \a, \b
.endm

.macro	ComparePhraseBoxImput a, b, c, d, e
.hword  0x2aa, \a, \b, \c, \d, \e
.endm

.macro	StoreSealNum a
.hword  0x2ab, \a
.endm

.macro	ActMisteryGift
.hword  0x2ac
.endm

.macro	CheckFollowBattle a, b
.hword  0x2ad, \a, \b
.endm

.macro	Cmd_2af a
.hword  0x2af, \a
.endm

.macro	Cmd_2b0
.hword  0x2b0
.endm

.macro	Cmd_2b1
.hword  0x2b1
.endm

.macro	Cmd_2b2
.hword  0x2b2
.endm

.macro	SetvarSealRandom a, b
.hword  0x2b3
.byte   \a
.hword  \b
.endm

.macro	DarkraiFunction a, b, c
.hword  0x2b5
.hword  \a, \b, \c
.endm

.macro	Cmd_2b6 a, b
.hword  0x2b6
.hword  \a
.byte   \b
.endm

.macro	StorePokeNumParty a
.hword  0x2b7, \a
.endm

.macro	StorePokeNickname a
.hword  0x2b8, \a
.endm

.macro	CloseMultiUnion
.hword  0x2b9
.endm

.macro	CheckBattleUnion a
.hword  0x2ba, \a
.endm

.macro	Cmd_2BB
.hword  0x2bb
.endm

.macro	CheckWildBattle2 a
.hword  0x2bc, \a
.endm

.macro	WildBattle2 a, b
.hword  0x2bd, \a, \b
.endm

.macro	StoreTrainerCardStar a
.hword  0x2be, \a
.endm

.macro	Bikeride
.hword  0x2bf
.endm

.macro	Cmd_2c0 a
.hword  0x2c0, \a
.endm

.macro	ShowSavebox
.hword  0x2c1
.endm

.macro	HideSavebox
.hword  0x2c2
.endm

.macro	Cmd_2c3 a
.hword  0x2c3
.byte   \a
.endm

.macro	ShowBTowerSome a
.hword  0x2c4
.byte   \a
.endm

.macro	DeleteSavesBFactory a, b
.hword  0x2c5, \a, \b
.endm

.macro	SpinTradeUnion
.hword  0x2c6
.endm

.macro	CheckVersionGame a
.hword  0x2c7, \a
.endm

.macro	ShowBArcadeRecors a, b, c
.hword  0x2c8, \a, \b, \c
.endm

.macro	EternaGymAnm
.hword  0x2c9
.endm

.macro	FlorarClckAnm
.hword  0x2ca
.endm

.macro	CheckPokeParty2 a, b
.hword  0x2cb, \a, \b
.endm

.macro	CheckPokeCastle a, b, c
.hword  0x2cc, \a, \b, \c
.endm

.macro	ActTeamGalacticEvents a, b
.hword  0x2cd
.byte   \a
.hword  \b
.endm

.macro	ChooseWirePokeBCastle a, b
.hword  0x2cf, \a, \b
.endm

.macro	Cmd_2d0 a, b
.hword  0x2d0, \a, \b
.endm

.macro	Cmd_2d1 a
.hword  0x2d1, \a
.endm

.macro	Cmd_2d2 a, b, c
.hword  0x2d2, \a, \b, \c
.endm

.macro	Cmd_2d3 a, b, c
.hword  0x2d3, \a, \b, \c
.endm

.macro	Cmd_2d4 a, b, c
.hword  0x2d4, \a, \b, \c
.endm

.macro	Cmd_2d5 a
.hword  0x2d5, \a
.endm

.macro	Cmd_2d6
.hword  0x2d6
.endm

.macro	Cmd_2d7 a
.hword  0x2d7, \a
.endm

.macro	Cmd_2d8 a
.hword  0x2d8
.byte   \a
.endm

.macro	Cmd_2d9 a, b, c
.hword  0x2d9, \a, \b, \c
.endm

.macro	Cmd_2da a, b, c
.hword  0x2da, \a, \b, \c
.endm

.macro	Cmd_2db a, b, c
.hword  0x2db, \a, \b, \c
.endm

.macro	Cmd_2dc a
.hword  0x2dc, \a
.endm

.macro	Cmd_2dd a, b
.hword  0x2dd, \a, \b
.endm

.macro	Cmd_2de a, b, c, d, e
.hword  0x2de, \a, \b, \c, \d, \e
.endm

.macro	Cmd_2df a
.hword  0x2df, \a
.endm

.macro	Cmd_2e0 a, b
.hword  0x2e0, \a, \b
.endm

.macro	Cmd_2e1 a, b
.hword  0x2e1, \a, \b
.endm

.macro	Cmd_2e2
.hword  0x2e2
.endm

.macro	Cmd_2e3
.hword  0x2e3
.endm

.macro	Cmd_2e4 a, b, c
.hword  0x2e4, \a, \b, \c
.endm

.macro	Cmd_2e5 a, b, c
.hword  0x2e5, \a, \b, \c
.endm

.macro	Cmd_2e6 a, b, c
.hword  0x2e6, \a, \b, \c
.endm

.macro	Cmd_2e7 a, b
.hword  0x2e7, \a, \b
.endm

.macro	Cmd_2e8 a
.hword  0x2e8, \a
.endm

.macro	Cmd_2e9 a, b, c
.hword  0x2e9, \a, \b, \c
.endm

.macro	Cmd_2ea a, b
.hword  0x2ea, \a, \b
.endm

.macro	Cmd_2eb a
.hword  0x2eb, \a
.endm

.macro	Cmd_2ec a, b, c, d
.hword  0x2ec
.byte   \a, \b
.hword  \c, \d
.endm

.macro	Cmd_2ed
.hword  0x2ed
.endm

.macro	Cmd_2ee a, b, c, d
.hword  0x2ee, \a, \b, \c, \d
.endm

.macro	Cmd_2f0
.hword  0x2f0
.endm

.macro	Cmd_2f2
.hword  0x2f2
.endm

.macro	Cmd_2f3 a, b
.hword  0x2f3
.byte   \a
.hword  \b
.endm

.macro	Cmd_2f4 a, b, c, d
.hword  0x2f4, \a, \b, \c, \d
.endm

.macro	Cmd_2f5 a, b, c d
.hword  0x2f5
.byte   \a
.word   \b
.byte   \c, \d
.endm

.macro	Cmd_2f6 a, b, c
.hword  0x2f6, \a, \b, \c
.endm

.macro	Cmd_2f7 a
.hword  0x2f7, \a
.endm

.macro	Cmd_2f8
.hword  0x2f8
.endm

.macro	Cmd_2f9 a
.hword  0x2f9, \a
.endm

.macro	Cmd_2fa a
.hword  0x2fa, \a
.endm

.macro	Cmd_2fb
.hword  0x2fb
.endm

.macro	Cmd_2fc a
.hword  0x2fc, \a
.endm

.macro	Cmd_2fd a, b
.hword  0x2fd
.byte   \a
.hword  \b
.endm

.macro	Cmd_2fe a, b
.hword  0x2fe, \a, \b
.endm

.macro	Cmd_2ff a, b
.hword  0x2ff, \a, \b
.endm

.macro	Cmd_300
.hword  0x300
.endm

.macro	Cmd_302 a, b, c, d, e
.hword  0x302, \a, \b, \c, \d, \e
.endm

.macro	Cmd_303 a, b
.hword  0x303, \a, \b
.endm

.macro	Cmd_304 a, b, c, d
.hword  0x304, \a, \b, \c, \d
.endm

.macro	Cmd_305 a, b
.hword  0x305, \a, \b
.endm

.macro	Cmd_306 a, b
.hword  0x306, \a, \b
.endm

.macro	Cmd_307 a
.hword  0x307, \a
.endm

.macro	Cmd_308 a, b
.hword  0x308, \a, \b
.endm

.macro	Cmd_309
.hword  0x309
.endm

.macro	Cmd_30a a
.hword  0x30a, \a
.endm

.macro	Cmd_30b
.hword  0x30b
.endm

.macro	Cmd_30c
.hword  0x30c
.endm

.macro	Cmd_30d a
.hword  0x30d, \a
.endm

.macro	Cmd_30e a
.hword  0x30e, \a
.endm

.macro	Cmd_30f a, b
.hword  0x30f, \a, \b
.endm

.macro	Cmd_310
.hword  0x310
.endm

.macro	Cmd_311 a
.hword  0x311, \a
.endm

.macro	Cmd_312 a
.hword  0x312, \a
.endm

.macro	Cmd_313 a
.hword  0x313, \a
.endm

.macro	Cmd_314 a
.hword  0x314, \a
.endm

.macro	Cmd_315 a
.hword  0x315, \a
.endm

.macro	Cmd_316
.hword  0x316
.endm

.macro	Cmd_317 a, b, c
.hword  0x317, \a, \b, \c
.endm

.macro	Cmd_318 a, b
.hword  0x318, \a, \b
.endm

.macro	Cmd_319 a, b
.hword  0x319, \a, \b
.endm

.macro	Cmd_31a a
.hword  0x31a, \a
.endm

.macro	Cmd_31b a
.hword  0x31b, \a
.endm

.macro	Cmd_31c a, b
.hword  0x31c, \a, \b
.endm

.macro	Cmd_31d a
.hword  0x31d, \a
.endm

.macro	Cmd_31e a, b
.hword  0x31e, \a, \b
.endm

.macro	Cmd_31f
.hword  0x31f
.endm

.macro	Cmd_320
.hword  0x320
.endm

.macro	Cmd_321 a
.hword  0x321, \a
.endm

.macro	Cmd_322
.hword  0x322
.endm

.macro	Cmd_323 a
.hword  0x323, \a
.endm

.macro	Cmd_324 a, b, c, d, e, f
.hword  0x324
.byte   \a, \b, \c, \d
.hword  \e, \f
.endm

.macro	Cmd_325 a
.hword  0x325, \a
.endm

.macro	Cmd_326 a
.hword  0x326, \a
.endm

.macro	Cmd_327 a
.hword  0x327, \a
.endm

.macro	Cmd_328 a
.hword  0x328, \a
.endm

.macro	Cmd_329 a, b, c, d
.hword  0x329, \a, \b, \c, \d
.endm

.macro	Cmd_32a a
.hword  0x32a, \a
.endm

.macro	Cmd_32b a
.hword  0x32b, \a
.endm

.macro	Cmd_32c a, b, c, d
.hword  0x32c, \a, \b, \c, \d
.endm

.macro	Cmd_32d
.hword  0x32d
.endm

.macro	Cmd_32e
.hword  0x32e
.endm

.macro	Cmd_32f a, b
.hword  0x32f, \a, \b
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

.macro	Cmd_333 a
.hword  0x333, \a
.endm

.macro	Cmd_334 a, b
.hword  0x334, \a, \b
.endm

.macro	Cmd_335 a, b
.hword  0x335, \a
.word   \b
.endm

.macro	Cmd_336 a
.hword  0x336, \a
.endm

.macro	Cmd_337 a, b
.hword  0x337, \a, \b
.endm

.macro	Cmd_338
.hword  0x338
.endm

.macro	Cmd_339
.hword  0x339
.endm

.macro	Cmd_33a a
.hword  0x33a
.byte   \a
.endm

.macro	Cmd_33c a, b
.hword  0x33c
.byte   \a
.hword  \b
.endm

.macro	Cmd_33d a, b
.hword  0x33d
.byte   \a
.hword  \b
.endm

.macro	Cmd_33e a, b
.hword  0x33e
.byte   \a
.hword  \b
.endm

.macro	Cmd_33f a, b
.hword  0x33f
.byte   \a
.hword  \b
.endm

.macro	Cmd_340 a, b
.hword  0x340
.byte   \a
.hword  \b
.endm

.macro	Cmd_341 a, b
.hword  0x341
.hword  \a, \b
.endm

.macro	Cmd_342 a
.hword  0x342
.byte   \a
.endm

.macro	Cmd_343 a, b
.hword  0x343
.byte   \a
.hword  \b
.endm

.macro	Cmd_344 a, b
.hword  0x344
.byte   \a
.hword  \b
.endm

.macro	Cmd_345 a, b
.hword  0x345
.byte   \a
.hword  \b
.endm

.macro	Cmd_346 a
.hword  0x346
.byte   \a
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

.macro	RunUp a
.hword  0x14, \a
.endm

.macro	RunDown a
.hword  0x15, \a
.endm

.macro	RunLeft a
.hword  0x16, \a
.endm

.macro	RunRight a
.hword  0x17, \a
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

.macro	Move_28 a
.hword  0x28, \a
.endm

.macro	Move_29 a
.hword  0x29, \a
.endm

.macro	Move_2a a
.hword  0x2a, \a
.endm

.macro	Move_2b a
.hword  0x2b, \a
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

.macro	Move_40 a
.hword  0x40, \a
.endm

.macro	Move_41 a
.hword  0x41, \a
.endm

.macro	Move_42 a
.hword  0x42, \a
.endm

.macro	Move_43 a
.hword  0x43, \a
.endm

.macro	WaitDisappear a
.hword  0x45, \a
.endm

.macro	Move_46 a
.hword  0x46, \a
.endm

.macro	Move_47 a
.hword  0x47, \a
.endm

.macro	Move_48 a
.hword  0x48, \a
.endm

.macro	Move_49 a
.hword  0x49, \a
.endm

.macro	Move_4a a
.hword  0x4a, \a
.endm

.macro	Exclamation a
.hword  0x4b, \a
.endm

.macro	PauseWalkUpSlow a
.hword  0x4c, \a
.endm

.macro	Move_64 a
.hword  0x64, \a
.endm

.macro	Move_65 a
.hword  0x65, \a
.endm

.macro	Move_66 a
.hword  0x66, \a
.endm

.macro	Move_68 a
.hword  0x68, \a
.endm

.macro	Move_6a a
.hword  0x6a, \a
.endm

.macro	Move_6b a
.hword  0x6b, \a
.endm

.macro	Move_75 a
.hword  0x75, \a
.endm

.macro	Move_76 a
.hword  0x76, \a
.endm

.macro	Move_77 a
.hword  0x77, \a
.endm

.macro	Move_99 a
.hword  0x99, \a
.endm

.macro	EndMovement a
.hword  0xfe, \a
.endm
