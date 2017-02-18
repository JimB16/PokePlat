.include "constants/ability_constants.s"
.include "constants/item_constants.s"
.include "constants/type_constants.s"

@ ConditionParam
.equ Eq,                0x0
.equ Ne,                0x1
.equ Gt,                0x2
.equ Le,                0x3
.equ TstNe,             0x4
.equ TstEq,             0x5
.equ AndEq,             0x6

@ ChangeValueParam
.equ Store,             0x7
.equ Add,               0x8
.equ Sub,               0x9
.equ Orr,               0xa
.equ Bic,               0xb

@ VariableParam
.equ Var_0,                 0x0
.equ Var_1,                 0x1
.equ Var_MoveEffect_SubSeq, 0x2
.equ Var_3,                 0x3
.equ Var_4,                 0x4
.equ Var_5,                 0x5
.equ Var_6,                 0x6
.equ Var_Weather,           0x7
.equ Var_0x8,               0x8
.equ Var_0x9,               0x9
.equ Var_0xa,               0xa
.equ Var_0xb,               0xb
.equ Var_0xc,               0xc
.equ Var_0xd,               0xd
.equ Var_Damage,            0xe
.equ Var_NrOfPkmn,          0xf
.equ Var_TargetPkmn,        0x10
.equ Var_0x11,              0x11
.equ Var_0x12,              0x12
.equ Var_0x13,              0x13
.equ Var_0x14,              0x14
.equ Var_0x15,              0x15
.equ Var_0x16,              0x16
.equ Var_0x17,              0x17
.equ Var_0x18,              0x18
.equ Var_RoundNr,           0x19
.equ Var_0x1a,              0x1a
.equ Var_0x1b,              0x1b
.equ Var_0x1c,              0x1c
.equ Var_0x1d,              0x1d
.equ Var_0x1e,              0x1e
.equ Var_0x1f,              0x1f
.equ Var_StatusEffectDamage, 0x20
.equ Var_MoveEffectNr,      0x22
.equ Var_0x23,              0x23
.equ Var_UsedItem,          0x24
.equ Var_WeatherCounter,    0x26
.equ Var_0x27,              0x27
.equ Var_0x29,              0x29
.equ Var_0x2a,              0x2a
.equ Var_0x2b,              0x2b
.equ Var_DamageMultiplier,  0x2c
.equ Var_0x2d,              0x2d
.equ Var_0x2e,              0x2e
.equ Var_0x2f,              0x2f
.equ Var_0x32,              0x32
.equ Var_0x33,              0x33
.equ Var_0x34,              0x34
.equ Var_0x35,              0x35
.equ Var_0x36,              0x36
.equ Var_0x37,              0x37
.equ Var_0x38,              0x38
.equ Var_0x39,              0x39
.equ Var_0x3a,              0x3a
.equ Var_0x3b,              0x3b
.equ Var_0x3c,              0x3c
.equ Var_NrOfBattleTextPtrs, 0x3e
.equ Var_0x3f,              0x3f
.equ Var_0x40,              0x40
.equ Var_0x41,              0x41
.equ Var_0x42,              0x42
.equ Var_0x43,              0x43
.equ Var_0x44,              0x44
.equ Var_0x45,              0x45
.equ Var_0xff,              0xff

@ TargetParam
.equ Target_0,              0x0
.equ Target_1,              0x1
.equ Target_2,              0x2
.equ Target_3,              0x3
.equ Target_4,              0x4
.equ Target_5,              0x5
.equ Target_6,              0x6
.equ Target_7,              0x7

@ PkmnBattleDataParam
.equ PkmnBattleData_Species,    0x0
.equ PkmnBattleData_Statlevel,  0x12
.equ PkmnBattleData_13,         0x13
.equ PkmnBattleData_14,         0x14
.equ PkmnBattleData_15,         0x15
.equ PkmnBattleData_16,         0x16
.equ PkmnBattleData_17,         0x17
.equ PkmnBattleData_18,         0x18
.equ PkmnBattleData_Type1,      0x1b
.equ PkmnBattleData_Type2,      0x1c
.equ PkmnBattleData_CurHP,      0x2f
.equ PkmnBattleData_StatusEffect, 0x34
.equ PkmnBattleData_35,         0x35
.equ PkmnBattleData_Item,       0x37
.equ PkmnBattleData_3b,         0x3b

@ Values of PkmnBattleData_StatusEffect
.equ Poisond,                   1<<3
.equ Burned,                    1<<4
.equ Frozen,                    1<<5
.equ Paralyzed,                 1<<6
.equ Toxic,                     1<<7

.equ Rain_Dance,                1<<0
.equ Drizzle,                   1<<1
.equ Sandstorm,                 1<<2
.equ Sand_Stream,               1<<3
.equ Sunny_Day,                 1<<4
.equ Drought,                   1<<5
.equ Hail,                      1<<6
.equ Snow_Warning,              1<<7

@ MoveDataParam
.equ MoveData_Effect,           0x0
.equ MoveData_Category,         0x1
.equ MoveData_Power,            0x2
.equ MoveData_Type,             0x3
.equ MoveData_Accuracy,         0x4
.equ MoveData_PP,               0x5
.equ MoveData_EffectChance,     0x6
.equ MoveData_Flag1,            0x7
.equ MoveData_Priority,         0x8
.equ MoveData_Flag2,            0x9
.equ MoveData_ContestEffect,    0xa
.equ MoveData_ContestType,      0xb


.macro	Cmd_0
.word   0x0
.endm

.macro	Cmd_1, a
.word   0x1, \a
.endm

.macro	Cmd_2, a
.word   0x2, \a
.endm

.macro	Cmd_3, a
.word   0x3, \a
.endm

.macro	Cmd_4, a
.word   0x4, \a
.endm

.macro	Cmd_5, a, b=-1, c=-1
.word   0x5, \a
.ifge \b
.word   \b
.endif
.ifge \c
.word   \c
.endif
.endm

.macro	Cmd_6, a
.word   0x6, \a
.endm

.macro	Cmd_9, a, b
.word   0x9, \a, \b
.endm

.macro	Cmd_b, a
.word   0xb, \a
.endm

.macro	Cmd_c, a
.word   0xc, \a
.endm

.macro	Cmd_d, a
.word   0xd, \a
.endm

.macro	Cmd_e
.word   0xe
.endm

.macro	Cmd_f
.word   0xf
.endm

.macro	Cmd_10
.word   0x10
.endm

.macro	Cmd_11
.word   0x11
.endm

.macro	Cmd_12, a, b, c=-1, d=-1, e=-1, f=-1, g=-1, h=-1
.word   0x12, \a, \b
.ifge \c
.word   \c
.endif
.ifge \d
.word   \d
.endif
.ifge \e
.word   \e
.endif
.ifge \f
.word   \f
.endif
.ifge \g
.word   \g, \h
.endif
.endm

.macro	Cmd_13, a, b, c=-1, d=-1, e=-1, f=-1, g=-1, h=-1
.word   0x13, \a, \b
.ifge \c
.word   \c
.endif
.ifge \d
.word   \d
.endif
.ifge \e
.word   \e
.endif
.ifge \f
.word   \f
.endif
.ifge \g
.word   \g, \h
.endif
.endm

.macro	Cmd_14
.word   0x14
.endm

.macro	Cmd_15, a, b, c=-1, d=-1, e=-1, f=-1, g=-1, h=-1
.word   0x15, \a, \b
.ifge \c
.word   \c
.endif
.ifge \d
.word   \d
.endif
.ifge \e
.word   \e
.endif
.ifge \f
.word   \f
.endif
.ifge \g
.word   \g, \h
.endif
.endm

.macro	Cmd_16, a, b, c=-1, d=-1, e=-1, f=-1, g=-1, h=-1
.word   0x16, \a, \b
.ifge \c
.word   \c
.endif
.ifge \d
.word   \d
.endif
.ifge \e
.word   \e
.endif
.ifge \f
.word   \f
.endif
.ifge \g
.word   \g, \h
.endif
.endm

.macro	Cmd_17, a
.word   0x17, \a
.endm

.macro	Cmd_18, a, b, c
.word   0x18, \a, \b, \c
.endm

.macro	Cmd_19, a
.word   0x19, \a
.endm

.macro	Cmd_1a, a
.word   0x1a, \a
.endm

.macro	Cmd_1b, a
.word   0x1b, \a
.endm

.macro	Cmd_1c, a
.word   0x1c, \a
.endm

.macro	Cmd_1d
.word   0x1d
.endm

.macro	Cmd_1e@, a
.word   0x1e@, \a
.endm

.macro	Cmd_1f, a, b
.word   0x1f, \a, \b
.endm

.macro	JumpIf, cond, variable, value, adr
.word   0x20, \cond, \variable, \value
.word   (\adr - 1f)>>2
1:
.endm

.macro	JumpIfPkmnBattleData, cond, target, pkmnbattledata, pkmnbattledatavalue, adr
.word   0x21, \cond, \target, \pkmnbattledata, \pkmnbattledatavalue
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_22
.word   0x22
.endm

.macro	Cmd_23_LoadSubSeq
.word   0x23
.endm

.macro	Cmd_24
.word   0x24
.endm

.macro	Cmd_25, a
.word   0x25, \a
.endm

.macro	Cmd_26
.word   0x26
.endm

.macro	Cmd_27, adr
.word   0x27
.word   (\adr - 1f)>>2
1:
.endm

.macro	PkmnGainsExpPts
.word   0x28
.endm

.macro	Cmd_29
.word   0x29
.endm

.macro	Cmd_2a_dummy, a
.word   0x2a, \a
.endm

.macro	Cmd_2b
.word   0x2b
.endm

.macro	Cmd_2c
.word   0x2c
.endm

.macro	Cmd_2d, a
.word   0x2d, \a
.endm

.macro	Cmd_31, a, b
.word   0x31, \a, \b
.endm

.macro	Cmd_32, changevalue, variable, value
.word   0x32, \changevalue, \variable, \value
.endm

.macro	Cmd_33, adr, adr2, adr3
.word   0x33
.word   (\adr - 1f)>>2
1:
.word   (\adr2 - 1f)>>2
1:
.word   (\adr3 - 1f)>>2
1:
.endm

.macro	ChangePkmnBattleData, changevalue, target, pkmnbattledata, pkmnbattledatavalue
.word   0x34, \changevalue, \target, \pkmnbattledata, \pkmnbattledatavalue
.endm

.macro	Cmd_36, a, b
.word   0x36, \a, \b
.endm

.macro	Cmd_37, a, target, ability, adr
.word   0x37, \a, \target, \ability
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_38, a, b
.word   0x38, \a, \b
.endm

.macro	Cmd_39, changevalue, variable, variable2
.word   0x39, \changevalue, \variable, \variable2
.endm

.macro	Cmd_3a, a, b, c, d
.word   0x3a, \a, \b, \c, \d
.endm

.macro	Jump adr
.word   0x3b
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_3c_AddNewScript, a
.word   0x3c, \a
.endm

.macro	Cmd_3d, variable
.word   0x3d, \variable
.endm

.macro	Cmd_3f
.word   0x3f
.endm

.macro	Cmd_40, a
.word   0x40, \a
.endm

.macro	Cmd_41, a
.word   0x41, \a
.endm

.macro	Cmd_42, a, b
.word   0x42, \a, \b
.endm

.macro	Cmd_43, a, b
.word   0x43, \a, \b
.endm

.macro	Cmd_45, a, b
.word   0x45, \a, \b
.endm

.macro	Cmd_46, a, b, c
.word   0x46, \a, \b, \c
.endm

.macro	Cmd_47, a, variable
.word   0x47, \a, \variable
.endm

.macro	Cmd_48, a
.word   0x48, \a
.endm

.macro	Cmd_49, a
.word   0x49, \a
.endm

.macro	Cmd_4a, a
.word   0x4a, \a
.endm

.macro	Cmd_4b, a
.word   0x4b, \a
.endm

.macro	Cmd_4c, a
.word   0x4c, \a
.endm

.macro	Cmd_4d, adr
.word   0x4d
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_4e a, variable, c, adr
.word   0x4e, \a, \variable, \c
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_4f a, variable, c, d, adr
.word   0x4f, \a, \variable, \c, \d
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_50
.word   0x50
.endm

.macro	Cmd_51, adr
.word   0x51
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_52, adr
.word   0x52
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_53, adr
.word   0x53
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_54
.word   0x54
.endm

.macro	Cmd_55 a, b
.word   0x55, \a, \b
.endm

.macro	Cmd_56 variable, b
.word   0x56, \variable, \b
.endm

.macro	Cmd_57, adr
.word   0x57
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_58
.word   0x58
.endm

.macro	Cmd_59, adr
.word   0x59
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_5a
.word   0x5a
.endm

.macro	Cmd_5b
.word   0x5b
.endm

.macro	Cmd_5c, adr
.word   0x5c
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_5d, adr
.word   0x5d
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_5e, adr
.word   0x5e
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_5f, a
.word   0x5f, \a
.endm

.macro	Cmd_60
.word   0x60
.endm

.macro	Cmd_61, adr
.word   0x61
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_62
.word   0x62
.endm

.macro	Cmd_63, a, adr
.word   0x63, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_64, adr
.word   0x64
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_65, adr
.word   0x65
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_66, adr
.word   0x66
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_67
.word   0x67
.endm

.macro	Cmd_68, adr
.word   0x68
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_69, a, adr
.word   0x69, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_6a, adr
.word   0x6a
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_6b, variable
.word   0x6b, \variable
.endm

.macro	Cmd_6c, variable, adr
.word   0x6c, \variable
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_6e
.word   0x6e
.endm

.macro	Cmd_6f
.word   0x6f
.endm

.macro	Cmd_70, adr
.word   0x70
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_71, adr
.word   0x71
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_72, adr
.word   0x72
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_73
.word   0x73
.endm

.macro	Cmd_74, a, b, adr
.word   0x74, \a, \b
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_75
.word   0x75
.endm

.macro	Cmd_76
.word   0x76
.endm

.macro	Cmd_77
.word   0x77
.endm

.macro	Cmd_78
.word   0x78
.endm

.macro	Cmd_79, adr
.word   0x79
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_7b, adr
.word   0x7b
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_7c
.word   0x7c
.endm

.macro	Cmd_7d
.word   0x7d
.endm

.macro	Cmd_7e, adr
.word   0x7e
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_7f, adr, adr2
.word   0x7f
.word   (\adr - 1f)>>2
1:
.word   (\adr2 - 1f)>>2
1:
.endm

.macro	Cmd_80, adr
.word   0x80
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_81, adr
.word   0x81
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_82, adr
.word   0x82
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_84
.word   0x84
.endm

.macro	Cmd_85, adr
.word   0x85
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_86, adr
.word   0x86
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_87, adr
.word   0x87
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_88
.word   0x88
.endm

.macro	Cmd_89, adr
.word   0x89
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_8a, adr
.word   0x8a
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_8b, adr
.word   0x8b
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_8c
.word   0x8c
.endm

.macro	Cmd_8d
.word   0x8d
.endm

.macro	Cmd_8e, adr
.word   0x8e
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_8f
.word   0x8f
.endm

.macro	Cmd_90, a, b, c, adr
.word   0x90, \a, \b, \c
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_91, a, b, c
.word   0x91, \a, \b, \c
.endm

.macro	Cmd_92
.word   0x92
.endm

.macro	Cmd_93, adr
.word   0x93
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_94
.word   0x94
.endm

.macro	Cmd_95
.word   0x95
.endm

.macro	Cmd_96, a
.word   0x96, \a
.endm

.macro	Cmd_97, adr
.word   0x97
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_98, adr
.word   0x98
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_99
.word   0x99
.endm

.macro	Cmd_9a, adr
.word   0x9a
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_9b, a, b, c, adr
.word   0x9b, \a, \b, \c
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_9c, adr
.word   0x9c
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_9d, adr
.word   0x9d
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_9e, adr
.word   0x9e
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_9f, adr
.word   0x9f
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_a0, a, b
.word   0xa0, \a, \b
.endm

.macro	Cmd_a1, a, target, ability, adr
.word   0xa1, \a, \target, \ability
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_a2, a, b, adr
.word   0xa2, \a, \b
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_a3
.word   0xa3
.endm

.macro	Cmd_a4
.word   0xa4
.endm

.macro	Cmd_a5, a, adr
.word   0xa5, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_a6, a, target, c, adr
.word   0xa6, \a, \target, \c
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_a7, a, variable
.word   0xa7, \a, \variable
.endm

.macro	Cmd_a8, target, variable
.word   0xa8, \target, \variable
.endm

.macro	Cmd_a9, adr
.word   0xa9
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_ab
.word   0xab
.endm

.macro	Cmd_ac, adr
.word   0xac
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_ad, adr, adr2
.word   0xad
.word   (\adr - 1f)>>2
1:
.word   (\adr2 - 1f)>>2
1:
.endm

.macro	Cmd_ae, adr
.word   0xae
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_b0, adr, adr2
.word   0xb0
.word   (\adr - 1f)>>2
1:
.word   (\adr2 - 1f)>>2
1:
.endm

.macro	Cmd_b2, adr
.word   0xb2
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_b3
.word   0xb3
.endm

.macro	Cmd_b4, a, adr
.word   0xb4, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_b5, adr
.word   0xb5
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_b6, adr
.word   0xb6
.word   (\adr - 1f)>>2
1:
.endm

.macro	LoadMoveData, a
.word   0xb7, \a
.endm

.macro	Cmd_b8, a, b, c
.word   0xb8, \a, \b, \c
.endm

.macro	Cmd_b9, a
.word   0xb9, \a
.endm

.macro	Cmd_bd, a
.word   0xbd, \a
.endm

.macro	Cmd_be, a
.word   0xbe, \a
.endm

.macro	Cmd_bf, a
.word   0xbf, \a
.endm

.macro	Cmd_c0, a
.word   0xc0, \a
.endm

.macro	Cmd_c1
.word   0xc1
.endm

.macro	Cmd_c2
.word   0xc2
.endm

.macro	Cmd_c3, a, b, c
.word   0xc3, \a, \b, \c
.endm

.macro	Cmd_c5, adr
.word   0xc5
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_c8, a, adr
.word   0xc8, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_c9, adr
.word   0xc9
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_ca, a
.word   0xca, \a
.endm

.macro	Cmd_cb, a
.word   0xcb, \a
.endm

.macro	Cmd_cd
.word   0xcd
.endm

.macro	Cmd_ce
.word   0xce
.endm

.macro	Cmd_cf
.word   0xcf
.endm

.macro	Cmd_d1, a, b
.word   0xd1, \a, \b
.endm

.macro	Cmd_d2, a, adr
.word   0xd2, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_d3, a
.word   0xd3, \a
.endm

.macro	Cmd_d4, a
.word   0xd4, \a
.endm

.macro	Cmd_d5, adr
.word   0xd5
.word   (\adr - 1f)>>2
1:
.endm

.macro	Cmd_d6, a
.word   0xd6, \a
.endm

.macro	Cmd_d7, a
.word   0xd7, \a
.endm

.macro	Cmd_d8, a, b
.word   0xd8, \a, \b
.endm

.macro	Cmd_da, a
.word   0xda, \a
.endm

.macro	Cmd_dc, a, variable, c
.word   0xdc, \a, \variable, \c
.endm

.macro	Cmd_dd, a
.word   0xdd, \a
.endm

.macro	end
.word   0xde
.endm

