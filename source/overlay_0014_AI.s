
@.include "source/macros_asm_.s"
.include "macros/script_AI.s"
.include "constants/move_constants.s"
.include "constants/ability_constants.s"
.include "constants/type_constants.s"



.globl Tr_Ai_22248a4
Tr_Ai_22248a4: @ 0x4c84
	AIScript Tr_Ai_22248a4, Script_1
	AIScript Tr_Ai_22248a4, Script_2
	AIScript Tr_Ai_22248a4, Script_3
	AIScript Tr_Ai_22248a4, Script_4
	AIScript Tr_Ai_22248a4, Script_5
	AIScript Tr_Ai_22248a4, Script_6
	AIScript Tr_Ai_22248a4, Script_7
	AIScript Tr_Ai_22248a4, Script_8
	AIScript Tr_Ai_22248a4, Script_9
	AIScript Tr_Ai_22248a4, Script_10
	AIScript Tr_Ai_22248a4, Script_11
	AIScript Tr_Ai_22248a4, Script_12
	AIScript Tr_Ai_22248a4, Script_13
	AIScript Tr_Ai_22248a4, Script_14
	AIScript Tr_Ai_22248a4, Script_15
	AIScript Tr_Ai_22248a4, Script_16
	AIScript Tr_Ai_22248a4, Script_17
	AIScript Tr_Ai_22248a4, Script_18
	AIScript Tr_Ai_22248a4, Script_19
	AIScript Tr_Ai_22248a4, Script_20
	AIScript Tr_Ai_22248a4, Script_21
	AIScript Tr_Ai_22248a4, Script_22
	AIScript Tr_Ai_22248a4, Script_23
	AIScript Tr_Ai_22248a4, Script_24
	AIScript Tr_Ai_22248a4, Script_25
	AIScript Tr_Ai_22248a4, Script_26
	AIScript Tr_Ai_22248a4, Script_27
	AIScript Tr_Ai_22248a4, Script_28
	AIScript Tr_Ai_22248a4, Script_29
	AIScript Tr_Ai_22248a4, Script_30
	AIScript Tr_Ai_22248a4, Script_31
	AIScript Tr_Ai_22248a4, Script_32

Script_1: @ 4d04
	AI_51 Script_branch_f23c
	AI_MoveEq FISSURE, Script_branch_4d38
	AI_MoveEq HORN_DRILL, Script_branch_4d38
	AI_20 0x0
	AI_If35cEq 0x0, Script_branch_4e7c
Script_branch_4d38: @ 4d38
	AI_2b 0x0, Script_branch_73ec
	AI_GetAbility ATTACKER
	AI_If35cEq MOLD_BREAKER, Script_branch_4e68
	AI_GetAbility DEFENDER
	AI_If35cEq VOLT_ABSORB, Script_branch_4dbc
	AI_If35cEq MOTOR_DRIVE, Script_branch_4dbc
	AI_If35cEq WATER_ABSORB, Script_branch_4dd8
	AI_If35cEq FLASH_FIRE, Script_branch_4df4
	AI_If35cEq WONDER_GUARD, Script_branch_4e10
	AI_If35cEq LEVITATE, Script_branch_4e30
	AI_If35cEq LEVITATE, Script_branch_4e4c
	AI_Jump Script_branch_4e68
Script_branch_4dbc: @ 4dbc
	AI_1e 0x4
	AI_22_HasType ELECTRIC, Script_branch_73f8
	AI_Jump Script_branch_4e68
Script_branch_4dd8: @ 4dd8
	AI_1e 0x4
	AI_22_HasType WATER, Script_branch_73f8
	AI_Jump Script_branch_4e68
Script_branch_4df4: @ 4df4
	AI_1e 0x4
	AI_22_HasType FIRE, Script_branch_73f8
	AI_Jump Script_branch_4e68
Script_branch_4e10: @ 4e10
	AI_2b 0x50, Script_branch_4e68
	AI_2b 0xa0, Script_branch_4e68
	AI_Jump Script_branch_73f8
Script_branch_4e30: @ 4e30
	AI_1e 0x4
	AI_22_HasType GROUND, Script_branch_73f8
	AI_Jump Script_branch_4e68
Script_branch_4e4c: @ 4e4c
	AI_1e 0x4
	AI_22_HasType WATER, Script_branch_73f8
	AI_Jump Script_branch_4e68
Script_branch_4e68: @ 4e68
	AI_20 0x0
	AI_If35cEq 0x0, Script_branch_4e7c
Script_branch_4e7c: @ 4e7c
	AI_GetAbility DEFENDER
	AI_If35cNe SOUNDPROOF, Script_branch_4f28
	AI_GetAbility ATTACKER
	AI_If35cEq MOLD_BREAKER, Script_branch_4f28
	AI_MoveEq GROWL, Script_branch_73ec
	AI_MoveEq ROAR, Script_branch_73ec
	AI_MoveEq SING, Script_branch_73ec
	AI_MoveEq SUPERSONIC, Script_branch_73ec
	AI_MoveEq SCREECH, Script_branch_73ec
	AI_MoveEq SNORE, Script_branch_73ec
	AI_MoveEq UPROAR, Script_branch_73ec
	AI_MoveEq METAL_SOUND, Script_branch_73ec
	AI_MoveEq GRASS_WHISTLE, Script_branch_73ec
	AI_MoveEq BUG_BUZZ, Script_branch_73ec
	AI_MoveEq CHATTER, Script_branch_73ec
Script_branch_4f28: @ 4f28
	AI_2f POUND, Script_branch_564c
	AI_2f FIRE_PUNCH, Script_branch_5690
	AI_2f ICE_PUNCH, Script_branch_5730
	AI_2f SCRATCH, Script_branch_5760
	AI_2f VICE_GRIP, Script_branch_57a4
	AI_2f GUILLOTINE, Script_branch_57e8
	AI_2f RAZOR_WIND, Script_branch_5838
	AI_2f SWORDS_DANCE, Script_branch_587c
	AI_2f CUT, Script_branch_58c0
	AI_2f GUST, Script_branch_5924
	AI_2f WHIRLWIND, Script_branch_5988
	AI_2f FLY, Script_branch_59b8
	AI_2f BIND, Script_branch_59d4
	AI_2f SLAM, Script_branch_5a14
	AI_2f VINE_WHIP, Script_branch_5a30
	AI_2f STOMP, Script_branch_5a4c
	AI_2f DOUBLE_KICK, Script_branch_5a9c
	AI_2f MEGA_KICK, Script_branch_5afc
	AI_2f JUMP_KICK, Script_branch_5dc4
	AI_2f SAND_ATTACK, Script_branch_5c20
	AI_2f HORN_DRILL, Script_branch_5c60
	AI_2f TACKLE, Script_branch_5c7c
	AI_2f WRAP, Script_branch_5d4c
	AI_2f DOUBLE_EDGE, Script_branch_5d60
	AI_2f TAIL_WHIP, Script_branch_5dc4
	AI_2f POISON_STING, Script_branch_5dc4
	AI_2f TWINEEDLE, Script_branch_5dc4
	AI_2f ROAR, Script_branch_5e1c
	AI_2f SING, Script_branch_5e30
	AI_2f SONIC_BOOM, Script_branch_5e44
	AI_2f DISABLE, Script_branch_5760
	AI_2f ACID, Script_branch_57a4
	AI_2f EMBER, Script_branch_57e8
	AI_2f FLAMETHROWER, Script_branch_5838
	AI_2f MIST, Script_branch_587c
	AI_2f WATER_GUN, Script_branch_58c0
	AI_2f HYDRO_PUMP, Script_branch_5924
	AI_2f ICE_BEAM, Script_branch_5988
	AI_2f BLIZZARD, Script_branch_59b8
	AI_2f PSYBEAM, Script_branch_59d4
	AI_2f BUBBLE_BEAM, Script_branch_5a14
	AI_2f AURORA_BEAM, Script_branch_5a30
	AI_2f HYPER_BEAM, Script_branch_5a4c
	AI_2f PECK, Script_branch_5a9c
	AI_2f DRILL_PECK, Script_branch_5e7c
	AI_2f SUBMISSION, Script_branch_5c7c
	AI_2f LOW_KICK, Script_branch_5e90
	AI_2f SLEEP_POWDER, Script_branch_5f28
	AI_2f PETAL_DANCE, Script_branch_5dc4
	AI_2f THUNDER_SHOCK, Script_branch_5f4c
	AI_2f THUNDER_WAVE, Script_branch_5f9c
	AI_2f THUNDER, Script_branch_5dc4
	AI_2f ROCK_THROW, Script_branch_5dc4
	AI_2f EARTHQUAKE, Script_branch_5dc4
	AI_2f FISSURE, Script_branch_5fb0
	AI_2f TOXIC, Script_branch_5fc4
	AI_2f PSYCHIC_M, Script_branch_5fd8
	AI_2f AGILITY, Script_branch_5fc4
	AI_2f RAGE, Script_branch_5dc4
	AI_2f HARDEN, Script_branch_6014
	AI_2f MINIMIZE, Script_branch_56f8
	AI_2f SMOKESCREEN, Script_branch_5924
	AI_2f CONFUSE_RAY, Script_branch_6028
	AI_2f BARRIER, Script_branch_60e4
	AI_2f LIGHT_SCREEN, Script_branch_6114
	AI_2f HAZE, Script_branch_6128
	AI_2f REFLECT, Script_branch_613c
	AI_2f METRONOME_M, Script_branch_5e44
	AI_2f SELF_DESTRUCT, Script_branch_6150
	AI_2f EGG_BOMB, Script_branch_5dc4
	AI_2f LICK, Script_branch_5dc4
	AI_2f SMOG, Script_branch_5dc4
	AI_2f SLUDGE, Script_branch_61d8
	AI_2f FIRE_BLAST, Script_branch_5da4
	AI_2f WATERFALL, Script_branch_6260
	AI_2f SKULL_BASH, Script_branch_5dc4
	AI_2f CONSTRICT, Script_branch_5c60
	AI_2f AMNESIA, Script_branch_5c60
	AI_2f KINESIS, Script_branch_5c60
	AI_2f SOFT_BOILED, Script_branch_5dc4
	AI_2f HIGH_JUMP_KICK, Script_branch_6278
	AI_2f GLARE, Script_branch_62d0
	AI_2f LOVELY_KISS, Script_branch_5750
	AI_2f SKY_ATTACK, Script_branch_5afc
	AI_2f TRANSFORM, Script_branch_5dc4
	AI_2f BUBBLE, Script_branch_5dc4
	AI_2f FLASH, Script_branch_6334
	AI_2f EXPLOSION, Script_branch_73ec
	AI_2f REST, Script_branch_57a4
	AI_2f ROCK_SLIDE, Script_branch_5c60
	AI_2f HYPER_FANG, Script_branch_6358
	AI_2f CONVERSION, Script_branch_6370
	AI_2f TRI_ATTACK, Script_branch_6388
	AI_2f SUPER_FANG, Script_branch_6388
	AI_2f SUBSTITUTE, Script_branch_63b8
	AI_2f STRUGGLE, Script_branch_6404
	AI_2f SKETCH, Script_branch_5e44
	AI_2f TRIPLE_KICK, Script_branch_6418
	AI_2f THIEF, Script_branch_61ec
	AI_2f MIND_READER, Script_branch_5dc4
	AI_2f CONVERSION_2, Script_branch_6484
	AI_2f AEROBLAST, Script_branch_6498
	AI_2f POWDER_SNOW, Script_branch_64c4
	AI_2f PROTECT, Script_branch_5dc4
	AI_2f SCARY_FACE, Script_branch_64d8
	AI_2f BELLY_DRUM, Script_branch_564c
	AI_2f SLUDGE_BOMB, Script_branch_6498
	AI_2f MUD_SLAP, Script_branch_5dc4
	AI_2f ZAP_CANNON, Script_branch_64f0
	AI_2f FORESIGHT, Script_branch_6514
	AI_2f ICY_WIND, Script_branch_5dc4
	AI_2f SANDSTORM, Script_branch_6528
	AI_2f ROLLOUT, Script_branch_653c
	AI_2f FALSE_SWIPE, Script_branch_659c
	AI_2f MILK_DRINK, Script_branch_6608
	AI_2f FURY_CUTTER, Script_branch_6674
	AI_2f STEEL_WING, Script_branch_6688
	AI_2f MEAN_LOOK, Script_branch_66f4
	AI_2f ATTRACT, Script_branch_676c
	AI_2f SLEEP_TALK, Script_branch_5c60
	AI_2f HEAL_BELL, Script_branch_6780
	AI_2f RETURN, Script_branch_6790
	AI_2f SAFEGUARD, Script_branch_5dc4
	AI_2f PAIN_SPLIT, Script_branch_67a4
	AI_2f MAGNITUDE, Script_branch_67e8
	AI_2f DRAGON_BREATH, Script_branch_6910
	AI_2f BATON_PASS, Script_branch_6930
	AI_2f ENCORE, Script_branch_6a64
	AI_2f METAL_CLAW, Script_branch_6ac8
	AI_2f VITAL_THROW, Script_branch_6b00
	AI_2f MORNING_SUN, Script_branch_6e04
	AI_2f SYNTHESIS, Script_branch_5dc4
	AI_2f MOONLIGHT, Script_branch_6f5c
	AI_2f HIDDEN_POWER, Script_branch_5dc4
	AI_2f CROSS_CHOP, Script_branch_6f70
	AI_2f TWISTER, Script_branch_6f84
	AI_2f RAIN_DANCE, Script_branch_6ff4
	AI_2f CRUNCH, Script_branch_7008
	AI_2f MIRROR_COAT, Script_branch_7028
	AI_2f PSYCH_UP, Script_branch_7064
	AI_2f EXTREME_SPEED, Script_branch_5dc4
	AI_2f ANCIENT_POWER, Script_branch_70a0
	AI_2f SHADOW_BALL, Script_branch_70b8
	AI_2f ROCK_SMASH, Script_branch_712c
	AI_2f WHIRLPOOL, Script_branch_5afc
	AI_2f BEAT_UP, Script_branch_7160
	AI_2f FAKE_OUT, Script_branch_7174
	AI_2f HAIL, Script_branch_71c4
	AI_2f TORMENT, Script_branch_7258
	AI_2f SMELLING_SALTS, Script_branch_7274
	AI_2f FOLLOW_ME, Script_branch_732c
	AI_2f HELPING_HAND, Script_branch_7354
	AI_4d
@ 564c

Script_branch_564c: @ 564c
	AI_9 DEFENDER, 0xff, Script_branch_73ec
	AI_f DEFENDER, 0x8, Script_branch_73ec
	AI_GetAbility DEFENDER
	AI_If35cEq INSOMNIA, Script_branch_73ec
	AI_If35cEq VITAL_SPIRIT, Script_branch_73ec
	AI_4d
@ 5690

Script_branch_5690: @ 5690
	AI_2b 0x0, Script_branch_73ec
	AI_GetAbility ATTACKER
	AI_If35cEq MOLD_BREAKER, Script_branch_56c4
	AI_GetAbility DEFENDER
	AI_If35cEq DAMP, Script_branch_73ec
Script_branch_56c4: @ 56c4
	AI_26 ATTACKER
	AI_If35cNe 0x0, Script_branch_56f4
	AI_26 DEFENDER
	AI_If35cNe 0x0, Script_branch_73ec
	AI_Jump Script_branch_73a4
Script_branch_56f4: @ 56f4
	AI_4d
@ 56f8

Script_branch_56f8: @ 56f8
	AI_b DEFENDER, 0x8000000, Script_branch_73ec
	AI_a DEFENDER, 0x7, Script_branch_73e0
	AI_GetAbility DEFENDER
	AI_If35cEq MAGIC_GUARD, Script_branch_73ec
	AI_4d
@ 5730

Script_branch_5730: @ 5730
	AI_a DEFENDER, 0x7, Script_branch_73e0
	AI_2b 0x0, Script_branch_73ec
	AI_4d
@ 5750

Script_branch_5750: @ 5750
	AI_HPLt ATTACKER, 51, Script_branch_73ec
Script_branch_5760: @ 5760
	AI_GetAbility ATTACKER
	AI_If35cNe SIMPLE, Script_branch_578c
	AI_StatLvlGt ATTACKER, 0x1, 8, Script_branch_73ec
	AI_4d
@ 578c

Script_branch_578c: @ 578c
	AI_StatLvlEq ATTACKER, 0x1, 12, Script_branch_73ec
	AI_4d
@ 57a4

Script_branch_57a4: @ 57a4
	AI_GetAbility ATTACKER
	AI_If35cNe SIMPLE, Script_branch_57d0
	AI_StatLvlGt ATTACKER, 0x2, 8, Script_branch_73ec
	AI_4d
@ 57d0

Script_branch_57d0: @ 57d0
	AI_StatLvlEq ATTACKER, 0x2, 12, Script_branch_73ec
	AI_4d
@ 57e8

Script_branch_57e8: @ 57e8
	AI_56 0x70000, Script_branch_73ec
	AI_GetAbility ATTACKER
	AI_If35cNe SIMPLE, Script_branch_5820
	AI_StatLvlGt ATTACKER, 0x3, 8, Script_branch_73ec
	AI_4d
@ 5820

Script_branch_5820: @ 5820
	AI_StatLvlEq ATTACKER, 0x3, 12, Script_branch_73ec
	AI_4d
@ 5838

Script_branch_5838: @ 5838
	AI_GetAbility ATTACKER
	AI_If35cNe SIMPLE, Script_branch_5864
	AI_StatLvlGt ATTACKER, 0x4, 8, Script_branch_73ec
	AI_4d
@ 5864

Script_branch_5864: @ 5864
	AI_StatLvlEq ATTACKER, 0x4, 12, Script_branch_73ec
	AI_4d
@ 587c

Script_branch_587c: @ 587c
	AI_GetAbility ATTACKER
	AI_If35cNe SIMPLE, Script_branch_58a8
	AI_StatLvlGt ATTACKER, 0x5, 8, Script_branch_73ec
	AI_4d
@ 58a8

Script_branch_58a8: @ 58a8
	AI_StatLvlEq ATTACKER, 0x5, 12, Script_branch_73ec
	AI_4d
@ 58c0

Script_branch_58c0: @ 58c0
	AI_GetAbility DEFENDER
	AI_If35cEq NO_GUARD, Script_branch_73ec
	AI_GetAbility ATTACKER
	AI_If35cEq NO_GUARD, Script_branch_73ec
	AI_If35cNe SIMPLE, Script_branch_590c
	AI_StatLvlGt ATTACKER, 0x6, 8, Script_branch_73ec
	AI_4d
@ 590c

Script_branch_590c: @ 590c
	AI_StatLvlEq ATTACKER, 0x6, 12, Script_branch_73ec
	AI_4d
@ 5924

Script_branch_5924: @ 5924
	AI_GetAbility DEFENDER
	AI_If35cEq NO_GUARD, Script_branch_73ec
	AI_GetAbility ATTACKER
	AI_If35cEq NO_GUARD, Script_branch_73ec
	AI_If35cNe SIMPLE, Script_branch_5970
	AI_StatLvlGt ATTACKER, 0x7, 8, Script_branch_73ec
	AI_4d
@ 5970

Script_branch_5970: @ 5970
	AI_StatLvlEq ATTACKER, 0x7, 12, Script_branch_73ec
	AI_4d
@ 5988

Script_branch_5988: @ 5988
	AI_StatLvlEq DEFENDER, 0x1, 0, Script_branch_73ec
	AI_GetAbility DEFENDER
	AI_If35cEq HYPER_CUTTER, Script_branch_73ec
	AI_Jump Script_branch_5ad8
Script_branch_59b8: @ 59b8
	AI_StatLvlEq DEFENDER, 0x2, 0, Script_branch_73ec
	AI_Jump Script_branch_5ad8
Script_branch_59d4: @ 59d4
	AI_56 0x70000, Script_branch_73ec
	AI_StatLvlEq DEFENDER, 0x3, 0, Script_branch_73ec
	AI_53 DEFENDER, 0x3
	AI_If35cEq 0x1, Script_branch_73ec
	AI_Jump Script_branch_5ad8
Script_branch_5a14: @ 5a14
	AI_StatLvlEq DEFENDER, 0x4, 0, Script_branch_73ec
	AI_Jump Script_branch_5ad8
Script_branch_5a30: @ 5a30
	AI_StatLvlEq DEFENDER, 0x5, 0, Script_branch_73ec
	AI_Jump Script_branch_5ad8
Script_branch_5a4c: @ 5a4c
	AI_StatLvlEq DEFENDER, 0x6, 0, Script_branch_73ec
	AI_GetAbility ATTACKER
	AI_If35cEq NO_GUARD, Script_branch_73ec
	AI_GetAbility DEFENDER
	AI_If35cEq KEEN_EYE, Script_branch_73ec
	AI_If35cEq NO_GUARD, Script_branch_73ec
	AI_Jump Script_branch_5ad8
Script_branch_5a9c: @ 5a9c
	AI_StatLvlEq DEFENDER, 0x7, 0, Script_branch_73ec
	AI_GetAbility ATTACKER
	AI_If35cEq NO_GUARD, Script_branch_73ec
	AI_GetAbility DEFENDER
	AI_If35cEq NO_GUARD, Script_branch_73ec
Script_branch_5ad8: @ 5ad8
	AI_GetAbility DEFENDER
	AI_If35cEq CLEAR_BODY, Script_branch_73ec
	AI_If35cEq WHITE_SMOKE, Script_branch_73ec
	AI_4d
@ 5afc

Script_branch_5afc: @ 5afc
	AI_StatLvlLt ATTACKER, 0x1, 6, Script_branch_5c1c
	AI_StatLvlLt ATTACKER, 0x2, 6, Script_branch_5c1c
	AI_StatLvlLt ATTACKER, 0x3, 6, Script_branch_5c1c
	AI_StatLvlLt ATTACKER, 0x4, 6, Script_branch_5c1c
	AI_StatLvlLt ATTACKER, 0x5, 6, Script_branch_5c1c
	AI_StatLvlLt ATTACKER, 0x6, 6, Script_branch_5c1c
	AI_StatLvlLt ATTACKER, 0x7, 6, Script_branch_5c1c
	AI_StatLvlGt DEFENDER, 0x1, 6, Script_branch_5c1c
	AI_StatLvlGt DEFENDER, 0x2, 6, Script_branch_5c1c
	AI_StatLvlGt DEFENDER, 0x3, 6, Script_branch_5c1c
	AI_StatLvlGt DEFENDER, 0x4, 6, Script_branch_5c1c
	AI_StatLvlGt DEFENDER, 0x5, 6, Script_branch_5c1c
	AI_StatLvlGt DEFENDER, 0x6, 6, Script_branch_5c1c
	AI_StatLvlGt DEFENDER, 0x7, 6, Script_branch_5c1c
	AI_Jump Script_branch_73ec
Script_branch_5c1c: @ 5c1c
	AI_4d
@ 5c20

Script_branch_5c20: @ 5c20
	AI_26 DEFENDER
	AI_If35cEq 0x0, Script_branch_73ec
	AI_GetAbility ATTACKER
	AI_If35cEq MOLD_BREAKER, Script_branch_5c5c
	AI_GetAbility DEFENDER
	AI_If35cEq SUCTION_CUPS, Script_branch_73ec
Script_branch_5c5c: @ 5c5c
	AI_4d
@ 5c60

Script_branch_5c60: @ 5c60
	AI_HPNe ATTACKER, 100, Script_branch_5c78
	AI_AddScore -8
Script_branch_5c78: @ 5c78
	AI_4d
@ 5c7c

Script_branch_5c7c: @ 5c7c
	AI_1e 0x0
	AI_If35cEq 0x8, Script_branch_73ec
	AI_If35cEq 0x3, Script_branch_73ec
	AI_1e 0x2
	AI_If35cEq 0x8, Script_branch_73ec
	AI_If35cEq 0x3, Script_branch_73ec
	AI_GetAbility DEFENDER
	AI_If35cEq IMMUNITY, Script_branch_73ec
	AI_If35cEq MAGIC_GUARD, Script_branch_73ec
	AI_If35cEq POISON_HEAL, Script_branch_73ec
	AI_If35cNe LEAF_GUARD, Script_branch_5d04
	AI_2e
	AI_If35cEq STENCH, Script_branch_73ec
Script_branch_5d04: @ 5d04
	AI_GetAbility DEFENDER
	AI_If35cNe HYDRATION, Script_branch_5d28
	AI_2e
	AI_If35cEq DRIZZLE, Script_branch_73ec
Script_branch_5d28: @ 5d28
	AI_9 DEFENDER, 0xff, Script_branch_73ec
	AI_f DEFENDER, 0x8, Script_branch_73ec
	AI_4d
@ 5d4c

Script_branch_5d4c: @ 5d4c
	AI_f ATTACKER, 0x2, Script_branch_73e0
	AI_4d
@ 5d60

Script_branch_5d60: @ 5d60
	AI_2b 0x0, Script_branch_73ec
	AI_GetAbility ATTACKER
	AI_If35cEq MOLD_BREAKER, Script_branch_5d94
	AI_GetAbility DEFENDER
	AI_If35cEq STURDY, Script_branch_73ec
Script_branch_5d94: @ 5d94
	AI_4e 0x1, Script_branch_73ec
	AI_4d
@ 5da4

Script_branch_5da4: @ 5da4
	AI_If35cEq 0x68, Script_branch_5dc4
	AI_GetAbility DEFENDER
	AI_If35cEq LEVITATE, Script_branch_73ec
Script_branch_5dc4: @ 5dc4
	AI_2b 0x0, Script_branch_73ec
	AI_GetAbility DEFENDER
	AI_If35cNe WONDER_GUARD, Script_branch_5e18
	AI_GetAbility ATTACKER
	AI_If35cEq MOLD_BREAKER, Script_branch_5e18
	AI_2b 0x50, Script_branch_5e18
	AI_2b 0xa0, Script_branch_5e18
	AI_Jump Script_branch_73ec
Script_branch_5e18: @ 5e18
	AI_4d
@ 5e1c

Script_branch_5e1c: @ 5e1c
	AI_f ATTACKER, 0x40, Script_branch_73e0
	AI_4d
@ 5e30

Script_branch_5e30: @ 5e30
	AI_b ATTACKER, 0x100000, Script_branch_73ec
	AI_4d
@ 5e44

Script_branch_5e44: @ 5e44
	AI_b DEFENDER, 0x7, Script_branch_73c8
	AI_GetAbility DEFENDER
	AI_If35cEq OWN_TEMPO, Script_branch_73ec
	AI_f DEFENDER, 0x8, Script_branch_73ec
	AI_4d
@ 5e7c

Script_branch_5e7c: @ 5e7c
	AI_f ATTACKER, 0x1, Script_branch_73e0
	AI_4d
@ 5e90

Script_branch_5e90: @ 5e90
	AI_2b 0x0, Script_branch_73ec
	AI_GetAbility DEFENDER
	AI_If35cEq LIMBER, Script_branch_73ec
	AI_If35cEq MAGIC_GUARD, Script_branch_73ec
	AI_GetAbility ATTACKER
	AI_If35cEq MOLD_BREAKER, Script_branch_5f04
	AI_MoveEq THUNDER_WAVE, Script_branch_5ee4
	AI_Jump Script_branch_5f04
Script_branch_5ee4: @ 5ee4
	AI_GetAbility DEFENDER
	AI_If35cEq MOTOR_DRIVE, Script_branch_73ec
	AI_If35cEq VOLT_ABSORB, Script_branch_73ec
Script_branch_5f04: @ 5f04
	AI_9 DEFENDER, 0xff, Script_branch_73ec
	AI_f DEFENDER, 0x8, Script_branch_73ec
	AI_4d
@ 5f28

Script_branch_5f28: @ 5f28
	AI_b ATTACKER, 0x1000000, Script_branch_73e0
	AI_HPLt ATTACKER, 26, Script_branch_73ec
	AI_4d
@ 5f4c

Script_branch_5f4c: @ 5f4c
	AI_d DEFENDER, 0x4, Script_branch_73ec
	AI_1e 0x0
	AI_If35cEq 0xc, Script_branch_73ec
	AI_1e 0x2
	AI_If35cEq 0xc, Script_branch_73ec
	AI_GetAbility DEFENDER
	AI_If35cEq MAGIC_GUARD, Script_branch_73ec
	AI_4d
@ 5f9c

Script_branch_5f9c: @ 5f9c
	AI_3b DEFENDER, 0x0, Script_branch_73e0
	AI_4d
@ 5fb0

Script_branch_5fb0: @ 5fb0
	AI_3b DEFENDER, 0x1, Script_branch_73e0
	AI_4d
@ 5fc4

Script_branch_5fc4: @ 5fc4
	AI_a ATTACKER, 0x7, Script_branch_73e0
	AI_4d
@ 5fd8

Script_branch_5fd8: @ 5fd8
	AI_d DEFENDER, 0x18, Script_branch_73ec
	AI_GetAbility ATTACKER
	AI_If35cEq NO_GUARD, Script_branch_73ec
	AI_GetAbility DEFENDER
	AI_If35cEq NO_GUARD, Script_branch_73ec
	AI_4d
@ 6014

Script_branch_6014: @ 6014
	AI_b DEFENDER, 0x4000000, Script_branch_73ec
	AI_4d
@ 6028

Script_branch_6028: @ 6028
	AI_1e 0x1
	AI_If35cEq 0x7, Script_branch_60bc
	AI_1e 0x3
	AI_If35cEq 0x7, Script_branch_60bc
	AI_GetAbility ATTACKER
	AI_If35cNe SIMPLE, Script_branch_6090
	AI_StatLvlGt ATTACKER, 0x1, 8, Script_branch_73ec
	AI_StatLvlGt ATTACKER, 0x2, 8, Script_branch_73ec
	AI_4d
@ 6090

Script_branch_6090: @ 6090
	AI_StatLvlEq ATTACKER, 0x1, 12, Script_branch_73ec
	AI_StatLvlEq ATTACKER, 0x2, 12, Script_branch_73e0
	AI_4d
@ 60bc

Script_branch_60bc: @ 60bc
	AI_b DEFENDER, 0x10000000, Script_branch_73ec
	AI_GetAbility DEFENDER
	AI_If35cEq MAGIC_GUARD, Script_branch_73ec
	AI_4d
@ 60e4

Script_branch_60e4: @ 60e4
	AI_57 DEFENDER, 0x4
	AI_If35cEq 0x3, Script_branch_73ec
	AI_26 DEFENDER
	AI_If35cEq 0x0, Script_branch_73ec
	AI_4d
@ 6114

Script_branch_6114: @ 6114
	AI_b DEFENDER, 0x20000000, Script_branch_73ec
	AI_4d
@ 6128

Script_branch_6128: @ 6128
	AI_d DEFENDER, 0x20, Script_branch_73ec
	AI_4d
@ 613c

Script_branch_613c: @ 613c
	AI_2e
	AI_If35cEq 0x3, Script_branch_73e0
	AI_4d
@ 6150

Script_branch_6150: @ 6150
	AI_b DEFENDER, 0xf0000, Script_branch_73ec
	AI_GetAbility DEFENDER
	AI_If35cEq OBLIVIOUS, Script_branch_73ec
	AI_42 0x1
	AI_If35cEq 0x0, Script_branch_619c
	AI_If35cEq 0x1, Script_branch_61b8
	AI_Jump Script_branch_73ec
Script_branch_619c: @ 619c
	AI_42 0x0
	AI_If35cEq 0x1, Script_branch_61d4
	AI_Jump Script_branch_73ec
Script_branch_61b8: @ 61b8
	AI_42 0x0
	AI_If35cEq 0x0, Script_branch_61d4
	AI_Jump Script_branch_73ec
Script_branch_61d4: @ 61d4
	AI_4d
@ 61d8

Script_branch_61d8: @ 61d8
	AI_f ATTACKER, 0x8, Script_branch_73e0
	AI_4d
@ 61ec

Script_branch_61ec: @ 61ec
	AI_GetAbility ATTACKER
	AI_If35cEq MOLD_BREAKER, Script_branch_6220
	AI_GetAbility DEFENDER
	AI_If35cEq CLEAR_BODY, Script_branch_73ec
	AI_If35cEq WHITE_SMOKE, Script_branch_73ec
Script_branch_6220: @ 6220
	AI_StatLvlEq DEFENDER, 0x1, 0, Script_branch_73ec
	AI_StatLvlEq DEFENDER, 0x4, 0, Script_branch_73e0
	AI_26 ATTACKER
	AI_If35cEq 0x0, Script_branch_73ec
	AI_4d
@ 6260

Script_branch_6260: @ 6260
	AI_26 ATTACKER
	AI_If35cEq 0x0, Script_branch_73ec
	AI_4d
@ 6278

Script_branch_6278: @ 6278
	AI_GetAbility ATTACKER
	AI_If35cEq SWIFT_SWIM, Script_branch_62bc
	AI_If35cEq HYDRATION, Script_branch_62bc
	AI_GetAbility DEFENDER
	AI_If35cNe HYDRATION, Script_branch_62bc
	AI_9 DEFENDER, 0xff, Script_branch_73e0
Script_branch_62bc: @ 62bc
	AI_2e
	AI_If35cEq 0x2, Script_branch_73e0
	AI_4d
@ 62d0

Script_branch_62d0: @ 62d0
	AI_GetAbility ATTACKER
	AI_If35cEq FLOWER_GIFT, Script_branch_6320
	AI_If35cEq LEAF_GUARD, Script_branch_6320
	AI_If35cEq SOLAR_POWER, Script_branch_6320
	AI_GetAbility DEFENDER
	AI_If35cNe HYDRATION, Script_branch_6320
	AI_9 DEFENDER, 0xff, Script_branch_73ec
Script_branch_6320: @ 6320
	AI_2e
	AI_If35cEq 0x1, Script_branch_73e0
	AI_4d
@ 6334

Script_branch_6334: @ 6334
	AI_f DEFENDER, 0x10, Script_branch_73f8
	AI_f ATTACKER, 0x10, Script_branch_73f8
	AI_4d
@ 6358

Script_branch_6358: @ 6358
	AI_43 0x1
	AI_If35cEq 0x0, Script_branch_73ec
	AI_4d
@ 6370

Script_branch_6370: @ 6370
	AI_44 0x1
	AI_If35cEq 0x3, Script_branch_73ec
	AI_4d
@ 6388

Script_branch_6388: @ 6388
	AI_2b 0x0, Script_branch_73ec
	AI_44 0x1
	AI_If35cEq 0x0, Script_branch_73ec
	AI_2f SUPER_FANG, Script_branch_5c60
	AI_4d
@ 63b8

Script_branch_63b8: @ 63b8
	AI_2e
	AI_If35cEq 0x4, Script_branch_73e0
	AI_GetAbility DEFENDER
	AI_If35cNe ICE_BODY, Script_branch_6400
	AI_AddScore -8
	AI_GetAbility ATTACKER
	AI_If35cNe ICE_BODY, Script_branch_6400
	AI_AddScore 8
Script_branch_6400: @ 6400
	AI_4d
@ 6404

Script_branch_6404: @ 6404
	AI_b DEFENDER, 0x80000000, Script_branch_73ec
	AI_4d
@ 6418

Script_branch_6418: @ 6418
	AI_GetAbility DEFENDER
	AI_If35cEq WATER_VEIL, Script_branch_73ec
	AI_If35cEq MAGIC_GUARD, Script_branch_73ec
	AI_9 DEFENDER, 0xff, Script_branch_73ec
	AI_1e 0x0
	AI_If35cEq 0xa, Script_branch_73ec
	AI_1e 0x2
	AI_If35cEq 0xa, Script_branch_73ec
	AI_f DEFENDER, 0x8, Script_branch_73ec
	AI_4d
@ 6484

Script_branch_6484: @ 6484
	AI_45
	AI_16_If35cTstEq 0x2, Script_branch_73ec
	AI_4d
@ 6498

Script_branch_6498: @ 6498
	AI_GetAbility DEFENDER
	AI_If35cEq STICKY_HOLD, Script_branch_73ec
	AI_40 DEFENDER
	AI_If35cEq 0x0, Script_branch_73ec
	AI_4d
@ 64c4

Script_branch_64c4: @ 64c4
	AI_d ATTACKER, 0x400, Script_branch_73ec
	AI_4d
@ 64d8

Script_branch_64d8: @ 64d8
	AI_46 0x1
	AI_If35cEq 0x0, Script_branch_73ec
	AI_4d
@ 64f0

Script_branch_64f0: @ 64f0
	AI_d ATTACKER, 0x2000, Script_branch_73ec
	AI_d DEFENDER, 0x40000000, Script_branch_73ec
	AI_4d
@ 6514

Script_branch_6514: @ 6514
	AI_a ATTACKER, 0xd8, Script_branch_73ec
	AI_4d
@ 6528

Script_branch_6528: @ 6528
	AI_d ATTACKER, 0x10000, Script_branch_73ec
	AI_4d
@ 653c

Script_branch_653c: @ 653c
	AI_GetAbility ATTACKER
	AI_If35cEq MOLD_BREAKER, Script_branch_6570
	AI_GetAbility DEFENDER
	AI_If35cEq CLEAR_BODY, Script_branch_73ec
	AI_If35cEq WHITE_SMOKE, Script_branch_73ec
Script_branch_6570: @ 6570
	AI_StatLvlEq DEFENDER, 0x1, 0, Script_branch_73ec
	AI_StatLvlEq DEFENDER, 0x2, 0, Script_branch_73e0
	AI_4d
@ 659c

Script_branch_659c: @ 659c
	AI_GetAbility ATTACKER
	AI_If35cNe SIMPLE, Script_branch_65dc
	AI_StatLvlGt ATTACKER, 0x2, 8, Script_branch_73ec
	AI_StatLvlGt ATTACKER, 0x5, 8, Script_branch_73ec
	AI_4d
@ 65dc

Script_branch_65dc: @ 65dc
	AI_StatLvlEq ATTACKER, 0x2, 12, Script_branch_73ec
	AI_StatLvlEq ATTACKER, 0x5, 12, Script_branch_73e0
	AI_4d
@ 6608

Script_branch_6608: @ 6608
	AI_GetAbility ATTACKER
	AI_If35cNe SIMPLE, Script_branch_6648
	AI_StatLvlGt ATTACKER, 0x1, 8, Script_branch_73ec
	AI_StatLvlGt ATTACKER, 0x2, 8, Script_branch_73ec
	AI_4d
@ 6648

Script_branch_6648: @ 6648
	AI_StatLvlEq ATTACKER, 0x1, 12, Script_branch_73ec
	AI_StatLvlEq ATTACKER, 0x2, 12, Script_branch_73e0
	AI_4d
@ 6674

Script_branch_6674: @ 6674
	AI_d ATTACKER, 0x20000, Script_branch_73ec
	AI_4d
@ 6688

Script_branch_6688: @ 6688
	AI_GetAbility ATTACKER
	AI_If35cNe SIMPLE, Script_branch_66c8
	AI_StatLvlGt ATTACKER, 0x4, 8, Script_branch_73ec
	AI_StatLvlGt ATTACKER, 0x5, 8, Script_branch_73ec
	AI_4d
@ 66c8

Script_branch_66c8: @ 66c8
	AI_StatLvlEq ATTACKER, 0x4, 12, Script_branch_73ec
	AI_StatLvlEq ATTACKER, 0x5, 12, Script_branch_73e0
	AI_4d
@ 66f4

Script_branch_66f4: @ 66f4
	AI_56 0x70000, Script_branch_73ec
	AI_GetAbility ATTACKER
	AI_If35cNe SIMPLE, Script_branch_6740
	AI_StatLvlGt ATTACKER, 0x1, 8, Script_branch_73ec
	AI_StatLvlGt ATTACKER, 0x3, 8, Script_branch_73ec
	AI_4d
@ 6740

Script_branch_6740: @ 6740
	AI_StatLvlEq ATTACKER, 0x1, 12, Script_branch_73ec
	AI_StatLvlEq ATTACKER, 0x3, 12, Script_branch_73e0
	AI_4d
@ 676c

Script_branch_676c: @ 676c
	AI_d ATTACKER, 0x10000000, Script_branch_73ec
	AI_4d
@ 6780

Script_branch_6780: @ 6780
	AI_56 0x7000, Script_branch_73ec
	AI_4d
@ 6790

Script_branch_6790: @ 6790
	AI_d DEFENDER, 0x400000, Script_branch_73ec
	AI_4d
@ 67a4

Script_branch_67a4: @ 67a4
	AI_AddScore -20
	AI_26 ATTACKER
	AI_If35cEq 0x0, Script_branch_73ec
	AI_2c ATTACKER, 0xff, 0x5
	AI_58 ATTACKER, Script_branch_67e4
	AI_Jump Script_branch_73ec
Script_branch_67e4: @ 67e4
	AI_4d
@ 67e8

Script_branch_67e8: @ 67e8
	AI_40 ATTACKER
	AI_1a 0x4, Script_branch_73ec
	AI_2b 0x0, Script_branch_73ec
	AI_4d
@ 680c


.incbin "./baserom/overlay/overlay_0014.bin", 0x680c, 0x6910 - 0x680c


Script_branch_6910: @ 6910
	AI_56 0x70000, Script_branch_73ec
	AI_f ATTACKER, 0x300, Script_branch_73ec
	AI_4d
@ 6930

Script_branch_6930: @ 6930
	AI_GetAbility ATTACKER
	AI_If35cEq SIMPLE, Script_branch_69d4
	AI_StatLvlEq ATTACKER, 0x1, 12, Script_branch_73ec
	AI_StatLvlEq ATTACKER, 0x2, 12, Script_branch_73ec
	AI_StatLvlEq ATTACKER, 0x3, 12, Script_branch_73ec
	AI_StatLvlEq ATTACKER, 0x4, 12, Script_branch_73ec
	AI_StatLvlEq ATTACKER, 0x5, 12, Script_branch_73ec
	AI_StatLvlEq ATTACKER, 0x7, 12, Script_branch_73ec
	AI_StatLvlEq ATTACKER, 0x6, 12, Script_branch_73ec
	AI_4d
@ 69d4

Script_branch_69d4: @ 69d4
	AI_StatLvlGt ATTACKER, 0x1, 8, Script_branch_73ec
	AI_StatLvlGt ATTACKER, 0x2, 8, Script_branch_73ec
	AI_StatLvlGt ATTACKER, 0x3, 8, Script_branch_73ec
	AI_StatLvlGt ATTACKER, 0x4, 8, Script_branch_73ec
	AI_StatLvlGt ATTACKER, 0x5, 8, Script_branch_73ec
	AI_StatLvlGt ATTACKER, 0x7, 8, Script_branch_73ec
	AI_StatLvlGt ATTACKER, 0x6, 8, Script_branch_73ec
	AI_4d
@ 6a64

Script_branch_6a64: @ 6a64
	AI_2b 0x0, Script_branch_73ec
	AI_GetAbility DEFENDER
	AI_If35cEq STALL, Script_branch_73ec
	AI_55 DEFENDER, 0x6b, Script_branch_73ec
	AI_GetAbility ATTACKER
	AI_If35cEq STALL, Script_branch_6ac4
	AI_55 ATTACKER, 0x6b, Script_branch_6ac4
	AI_24 0x0, Script_branch_73ec
Script_branch_6ac4: @ 6ac4
	AI_4d
@ 6ac8

Script_branch_6ac8: @ 6ac8
	AI_d DEFENDER, 0x4000000, Script_branch_73ec
	AI_46 0x0
	AI_If35cEq 0x0, Script_branch_6afc
	AI_45
	AI_15_If35cTstNe 0x80, Script_branch_73ec
Script_branch_6afc: @ 6afc
	AI_4d
@ 6b00

Script_branch_6b00: @ 6b00
	AI_2b 0x0, Script_branch_73ec
	AI_5a ATTACKER
	AI_11_If35cLt 0xa, Script_branch_73ec
	AI_GetAbility ATTACKER
	AI_If35cEq MULTITYPE, Script_branch_73ec
	AI_41 ATTACKER
	AI_19 0xa8, Script_branch_6b64
	AI_19 0xa8, Script_branch_6cb8
	AI_19 0xa7, Script_branch_6db0
	AI_4d
@ 6b64

Script_branch_6b64: @ 6b64
	AI_f DEFENDER, 0x8, Script_branch_6c08
	AI_9 DEFENDER, 0xff, Script_branch_6c08
	AI_GetAbility ATTACKER
	AI_If35cEq POISON_HEAL, Script_branch_6c08
	AI_1e 0x0
	AI_If35cEq 0x3, Script_branch_6c08
	AI_If35cEq 0x8, Script_branch_6c08
	AI_1e 0x2
	AI_If35cEq 0x3, Script_branch_6c08
	AI_If35cEq 0x8, Script_branch_6c08
	AI_GetAbility DEFENDER
	AI_If35cEq IMMUNITY, Script_branch_6c08
	AI_If35cEq POISON_HEAL, Script_branch_6c08
	AI_If35cEq MAGIC_GUARD, Script_branch_6c08
	AI_4d
@ 6c08

Script_branch_6c08: @ 6c08
	AI_f ATTACKER, 0x8, Script_branch_73c8
	AI_9 ATTACKER, 0xff, Script_branch_73c8
	AI_1e 0x1
	AI_If35cEq 0x3, Script_branch_73c8
	AI_If35cEq 0x8, Script_branch_73c8
	AI_1e 0x3
	AI_If35cEq 0x3, Script_branch_73c8
	AI_If35cEq 0x8, Script_branch_73c8
	AI_GetAbility ATTACKER
	AI_If35cEq KLUTZ, Script_branch_73c8
	AI_If35cEq IMMUNITY, Script_branch_73c8
	AI_If35cEq POISON_HEAL, Script_branch_73c8
	AI_If35cEq MAGIC_GUARD, Script_branch_73c8
	AI_If35cEq GUTS, Script_branch_73c8
	AI_AddScore 3
	AI_4d
@ 6cb8

Script_branch_6cb8: @ 6cb8
	AI_f DEFENDER, 0x8, Script_branch_6d24
	AI_9 DEFENDER, 0xff, Script_branch_6d24
	AI_1e 0x0
	AI_If35cEq 0xa, Script_branch_6d24
	AI_1e 0x2
	AI_If35cEq 0xa, Script_branch_6d24
	AI_GetAbility DEFENDER
	AI_If35cEq MAGIC_GUARD, Script_branch_6d24
	AI_If35cEq WATER_VEIL, Script_branch_6d24
	AI_4d
@ 6d24

Script_branch_6d24: @ 6d24
	AI_f ATTACKER, 0x8, Script_branch_73c8
	AI_9 ATTACKER, 0xff, Script_branch_73c8
	AI_1e 0x1
	AI_If35cEq 0xa, Script_branch_73c8
	AI_1e 0x3
	AI_If35cEq 0xa, Script_branch_73c8
	AI_GetAbility ATTACKER
	AI_If35cEq KLUTZ, Script_branch_73c8
	AI_If35cEq MAGIC_GUARD, Script_branch_73c8
	AI_If35cEq WATER_VEIL, Script_branch_73c8
	AI_If35cEq GUTS, Script_branch_73c8
	AI_AddScore 3
	AI_4d
@ 6db0

Script_branch_6db0: @ 6db0
	AI_f DEFENDER, 0x8, Script_branch_73c8
	AI_9 DEFENDER, 0xff, Script_branch_73c8
	AI_GetAbility DEFENDER
	AI_If35cEq LIMBER, Script_branch_73c8
	AI_4d
@ 6de8


.incbin "./baserom/overlay/overlay_0014.bin", 0x6de8, 0x6e04 - 0x6de8


Script_branch_6e04: @ 6e04
	AI_a ATTACKER, 0xff, Script_branch_73ec
	AI_9 DEFENDER, 0xff, Script_branch_73ec
	AI_f DEFENDER, 0x8, Script_branch_73ec
	AI_9 ATTACKER, 0xf88, Script_branch_6e6c
	AI_9 ATTACKER, 0x10, Script_branch_6ef4
	AI_9 ATTACKER, 0x40, Script_branch_6f44
	AI_Jump Script_branch_6f58
Script_branch_6e6c: @ 6e6c
	AI_GetAbility ATTACKER
	AI_If35cEq POISON_HEAL, Script_branch_73ec
	AI_1e 0x0
	AI_If35cEq 0x3, Script_branch_73ec
	AI_If35cEq 0x8, Script_branch_73ec
	AI_1e 0x2
	AI_If35cEq 0x3, Script_branch_73ec
	AI_If35cEq 0x8, Script_branch_73ec
	AI_GetAbility DEFENDER
	AI_If35cEq IMMUNITY, Script_branch_73ec
	AI_If35cEq POISON_HEAL, Script_branch_73ec
	AI_If35cEq MAGIC_GUARD, Script_branch_73ec
	AI_Jump Script_branch_6f58
Script_branch_6ef4: @ 6ef4
	AI_1e 0x0
	AI_If35cEq 0xa, Script_branch_73ec
	AI_1e 0x2
	AI_If35cEq 0xa, Script_branch_73ec
	AI_GetAbility DEFENDER
	AI_If35cEq MAGIC_GUARD, Script_branch_73ec
	AI_If35cEq WATER_VEIL, Script_branch_73ec
	AI_Jump Script_branch_6f58
Script_branch_6f44: @ 6f44
	AI_GetAbility DEFENDER
	AI_If35cEq LIMBER, Script_branch_73ec
Script_branch_6f58: @ 6f58
	AI_4d
@ 6f5c

Script_branch_6f5c: @ 6f5c
	AI_d DEFENDER, 0x2000000, Script_branch_73ec
	AI_4d
@ 6f70

Script_branch_6f70: @ 6f70
	AI_d ATTACKER, 0x800000, Script_branch_73ec
	AI_4d
@ 6f84

Script_branch_6f84: @ 6f84
	AI_d DEFENDER, 0x200000, Script_branch_73ec
	AI_GetAbility DEFENDER
	AI_If35cEq MULTITYPE, Script_branch_73ec
	AI_If35cEq TRUANT, Script_branch_73ec
	AI_If35cEq SLOW_START, Script_branch_73ec
	AI_If35cEq STENCH, Script_branch_73ec
	AI_If35cEq RUN_AWAY, Script_branch_73ec
	AI_If35cEq PICKUP, Script_branch_73ec
	AI_If35cEq HONEY_GATHER, Script_branch_73ec
	AI_4d
@ 6ff4

Script_branch_6ff4: @ 6ff4
	AI_f ATTACKER, 0x7000, Script_branch_73ec
	AI_4d
@ 7008

Script_branch_7008: @ 7008
	AI_GetRoundNr
	AI_If35cNe 0x0, Script_branch_7024
	AI_24 0x0, Script_branch_73ec
Script_branch_7024: @ 7024
	AI_4d
@ 7028

Script_branch_7028: @ 7028
	AI_65 DEFENDER, 0x1
	AI_11_If35cLt 0x1, Script_branch_7048
	AI_Jump Script_branch_7060
Script_branch_7048: @ 7048
	AI_65 DEFENDER, 0x4
	AI_11_If35cLt 0x1, Script_branch_73ec
Script_branch_7060: @ 7060
	AI_4d
@ 7064

Script_branch_7064: @ 7064
	AI_65 DEFENDER, 0x2
	AI_11_If35cLt 0x1, Script_branch_7084
	AI_Jump Script_branch_709c
Script_branch_7084: @ 7084
	AI_65 DEFENDER, 0x5
	AI_11_If35cLt 0x1, Script_branch_73ec
Script_branch_709c: @ 709c
	AI_4d
@ 70a0

Script_branch_70a0: @ 70a0
	AI_5c ATTACKER, Script_branch_70b4
	AI_AddScore -10
Script_branch_70b4: @ 70b4
	AI_4d
@ 70b8

Script_branch_70b8: @ 70b8
	AI_GetAbility DEFENDER
	AI_If35cEq TRUANT, Script_branch_73ec
	AI_If35cEq INSOMNIA, Script_branch_73ec
	AI_If35cEq VITAL_SPIRIT, Script_branch_73ec
	AI_If35cEq MULTITYPE, Script_branch_73ec
	AI_a DEFENDER, 0x7, Script_branch_7128
	AI_37 DEFENDER, SLEEP_TALK, Script_branch_7128
	AI_37 DEFENDER, SNORE, Script_branch_7128
	AI_AddScore -10
Script_branch_7128: @ 7128
	AI_4d
@ 712c

Script_branch_712c: @ 712c
	AI_57 DEFENDER, 0x400
	AI_If35cEq 0x2, Script_branch_73ec
	AI_26 DEFENDER
	AI_If35cEq 0x0, Script_branch_73ec
	AI_4d
@ 715c


.incbin "./baserom/overlay/overlay_0014.bin", 0x715c, 0x7160 - 0x715c


Script_branch_7160: @ 7160
	AI_d ATTACKER, 0x1000000, Script_branch_73ec
	AI_4d
@ 7174

Script_branch_7174: @ 7174
	AI_d ATTACKER, 0x8000000, Script_branch_73ec
	AI_GetAbility ATTACKER
	AI_If35cEq LEVITATE, Script_branch_73ec
	AI_1e 0x1
	AI_If35cEq 0x2, Script_branch_73ec
	AI_1e 0x3
	AI_If35cEq 0x2, Script_branch_73ec
	AI_4d
@ 71c4

Script_branch_71c4: @ 71c4
	AI_StatLvlNe DEFENDER, 0x7, 0, Script_branch_7254
	AI_f DEFENDER, 0x2, Script_branch_7254
	AI_f DEFENDER, 0x1, Script_branch_7254
	AI_2e
	AI_If35cEq 0x5, Script_branch_7254
	AI_26 DEFENDER
	AI_If35cEq 0x0, Script_branch_73ec
	AI_f DEFENDER, 0x4, Script_branch_7254
	AI_f DEFENDER, 0x80, Script_branch_7254
	AI_f DEFENDER, 0x400, Script_branch_7254
	AI_Jump Script_branch_73ec
Script_branch_7254: @ 7254
	AI_4d
@ 7258

Script_branch_7258: @ 7258
	AI_24 0x0, Script_branch_73ec
	AI_24 0x2, Script_branch_73ec
	AI_4d
@ 7274

Script_branch_7274: @ 7274
	AI_GetAbility ATTACKER
	AI_If35cEq MOLD_BREAKER, Script_branch_72b4
	AI_GetAbility DEFENDER
	AI_If35cEq OBLIVIOUS, Script_branch_73ec
	AI_If35cEq CLEAR_BODY, Script_branch_73ec
	AI_If35cEq WHITE_SMOKE, Script_branch_73ec
Script_branch_72b4: @ 72b4
	AI_42 0x1
	AI_If35cEq 0x0, Script_branch_72dc
	AI_If35cEq 0x1, Script_branch_72f8
	AI_Jump Script_branch_73ec
Script_branch_72dc: @ 72dc
	AI_42 0x0
	AI_If35cEq 0x1, Script_branch_7314
	AI_Jump Script_branch_73ec
Script_branch_72f8: @ 72f8
	AI_42 0x0
	AI_If35cEq 0x0, Script_branch_7314
	AI_Jump Script_branch_73ec
Script_branch_7314: @ 7314
	AI_StatLvlLt DEFENDER, 0x4, 1, Script_branch_73ec
	AI_4d
@ 732c

Script_branch_732c: @ 732c
	AI_f DEFENDER, 0x80, Script_branch_73ec
	AI_26 DEFENDER
	AI_If35cEq 0x0, Script_branch_73ec
	AI_4d
@ 7354

Script_branch_7354: @ 7354
	AI_AddScore -20
	AI_26 ATTACKER
	AI_If35cEq 0x0, Script_branch_73ec
	AI_58 ATTACKER, Script_branch_73a0
	AI_2c ATTACKER, 0xff, 0x5
	AI_59 ATTACKER, Script_branch_73a0
	AI_Jump Script_branch_73ec
Script_branch_73a0: @ 73a0
	AI_4d
@ 73a4

Script_branch_73a4: @ 73a4
	AI_AddScore -1
	AI_4d
@ 73b0

Script_branch_73b0: @ 73b0
	AI_AddScore -2
	AI_4d
@ 73bc

Script_branch_73bc: @ 73bc
	AI_AddScore -3
	AI_4d
@ 73c8

Script_branch_73c8: @ 73c8
	AI_AddScore -5
	AI_4d
@ 73d4


.incbin "./baserom/overlay/overlay_0014.bin", 0x73d4, 0x73e0 - 0x73d4


Script_branch_73e0: @ 73e0
	AI_AddScore -8
	AI_4d
@ 73ec

Script_branch_73ec: @ 73ec
	AI_AddScore -10
	AI_4d
@ 73f8

Script_branch_73f8: @ 73f8
	AI_AddScore -12
	AI_4d
@ 7404

Script_branch_7404: @ 7404
	AI_AddScore -30
	AI_4d
@ 7410

Script_branch_7410: @ 7410
	AI_AddScore 1
	AI_4d
@ 741c

Script_branch_741c: @ 741c
	AI_AddScore 2
	AI_4d
@ 7428

Script_branch_7428: @ 7428
	AI_AddScore 3
	AI_4d
@ 7434

Script_branch_7434: @ 7434
	AI_AddScore 5
	AI_4d
@ 7440

Script_branch_7440: @ 7440
	AI_AddScore 10
	AI_4d
@ 744c

Script_3: @ 744c
	AI_51 Script_branch_f23c
	AI_2f POUND, Script_branch_7cb0
	AI_2f DOUBLE_SLAP, Script_branch_7cf0
	AI_2f FIRE_PUNCH, Script_branch_7d34
	AI_2f ICE_PUNCH, Script_branch_7e10
	AI_2f THUNDER_PUNCH, Script_branch_7e74
	AI_2f SCRATCH, Script_branch_7f9c
	AI_2f VICE_GRIP, Script_branch_8028
	AI_2f GUILLOTINE, Script_branch_811c
	AI_2f RAZOR_WIND, Script_branch_8150
	AI_2f SWORDS_DANCE, Script_branch_81dc
	AI_2f CUT, Script_branch_82d0
	AI_2f GUST, Script_branch_8314
	AI_2f WING_ATTACK, Script_branch_849c
	AI_2f WHIRLWIND, Script_branch_8514
	AI_2f FLY, Script_branch_85cc
	AI_2f BIND, Script_branch_8670
	AI_2f SLAM, Script_branch_86a4
	AI_2f VINE_WHIP, Script_branch_8764
	AI_2f STOMP, Script_branch_87b8
	AI_2f DOUBLE_KICK, Script_branch_892c
	AI_2f MEGA_KICK, Script_branch_8980
	AI_2f JUMP_KICK, Script_branch_8b60
	AI_2f SAND_ATTACK, Script_branch_8b7c
	AI_2f HORN_ATTACK, Script_branch_8c60
	AI_2f HORN_DRILL, Script_branch_8cd0
	AI_2f TACKLE, Script_branch_8d98
	AI_2f WRAP, Script_branch_8e28
	AI_2f THRASH, Script_branch_8eb8
	AI_2f DOUBLE_EDGE, Script_branch_8f90
	AI_2f TAIL_WHIP, Script_branch_a46c
	AI_2f POISON_STING, Script_branch_8fa8
	AI_2f PIN_MISSILE, Script_branch_8fc4
	AI_2f LEER, Script_branch_9024
	AI_2f SUPERSONIC, Script_branch_cddc
	AI_2f SONIC_BOOM, Script_branch_90a8
	AI_2f DISABLE, Script_branch_7f9c
	AI_2f ACID, Script_branch_8028
	AI_2f EMBER, Script_branch_811c
	AI_2f FLAMETHROWER, Script_branch_8150
	AI_2f MIST, Script_branch_81dc
	AI_2f WATER_GUN, Script_branch_82d0
	AI_2f HYDRO_PUMP, Script_branch_8314
	AI_2f ICE_BEAM, Script_branch_8514
	AI_2f BLIZZARD, Script_branch_85cc
	AI_2f PSYBEAM, Script_branch_8670
	AI_2f BUBBLE_BEAM, Script_branch_86a4
	AI_2f AURORA_BEAM, Script_branch_8764
	AI_2f HYPER_BEAM, Script_branch_87b8
	AI_2f PECK, Script_branch_892c
	AI_2f DRILL_PECK, Script_branch_9148
	AI_2f SUBMISSION, Script_branch_91dc
	AI_2f LOW_KICK, Script_branch_9208
	AI_2f METRONOME_M, Script_branch_9084
	AI_2f STRENGTH, Script_branch_8620
	AI_2f RAZOR_LEAF, Script_branch_a46c
	AI_2f STUN_SPORE, Script_branch_924c
	AI_2f SLEEP_POWDER, Script_branch_929c
	AI_2f PETAL_DANCE, Script_branch_93f8
	AI_2f THUNDER_SHOCK, Script_branch_8d98
	AI_2f THUNDER_WAVE, Script_branch_948c
	AI_2f EARTHQUAKE, Script_branch_94d8
	AI_2f FISSURE, Script_branch_965c
	AI_2f DIG, Script_branch_9804
	AI_2f TOXIC, Script_branch_986c
	AI_2f PSYCHIC_M, Script_branch_9878
	AI_2f AGILITY, Script_branch_9890
	AI_2f QUICK_ATTACK, Script_branch_98ac
	AI_2f RAGE, Script_branch_9930
	AI_2f MIMIC, Script_branch_99cc
	AI_2f RECOVER, Script_branch_99f8
	AI_2f HARDEN, Script_branch_8fc4
	AI_2f SMOKESCREEN, Script_branch_8314
	AI_2f CONFUSE_RAY, Script_branch_9a9c
	AI_2f DEFENSE_CURL, Script_branch_9b9c
	AI_2f BARRIER, Script_branch_9d70
	AI_2f LIGHT_SCREEN, Script_branch_9dc4
	AI_2f FOCUS_ENERGY, Script_branch_9e34
	AI_2f WATERFALL, Script_branch_9e7c
	AI_2f CLAMP, Script_branch_9fe4
	AI_2f CONSTRICT, Script_branch_8c98
	AI_2f AMNESIA, Script_branch_8c98
	AI_2f KINESIS, Script_branch_8c98
	AI_2f HIGH_JUMP_KICK, Script_branch_a08c
	AI_2f GLARE, Script_branch_a138
	AI_2f LOVELY_KISS, Script_branch_a1c4
	AI_2f SKY_ATTACK, Script_branch_a1e8
	AI_2f TRANSFORM, Script_branch_a2ec
	AI_2f BUBBLE, Script_branch_a46c
	AI_2f ACID_ARMOR, Script_branch_a46c
	AI_2f ACID_ARMOR, Script_branch_a528
	AI_2f BONEMERANG, Script_branch_a590
	AI_2f ROCK_SLIDE, Script_branch_8cd0
	AI_2f HYPER_FANG, Script_branch_a720
	AI_2f TRI_ATTACK, Script_branch_a72c
	AI_2f SUPER_FANG, Script_branch_8cd0
	AI_2f SUBSTITUTE, Script_branch_a758
	AI_2f SKETCH, Script_branch_9094
	AI_2f THIEF, Script_branch_7d34
	AI_2f SPIDER_WEB, Script_branch_a7e8
	AI_2f MIND_READER, Script_branch_a804
	AI_2f NIGHTMARE, Script_branch_a8c0
	AI_2f AEROBLAST, Script_branch_a8e4
	AI_2f COTTON_SPORE, Script_branch_adac
	AI_2f POWDER_SNOW, Script_branch_ae64
	AI_2f PROTECT, Script_branch_ae68
	AI_2f MACH_PUNCH, Script_branch_aee0
	AI_2f SCARY_FACE, Script_branch_af58
	AI_2f FEINT_ATTACK, Script_branch_afa4
	AI_2f SWEET_KISS, Script_branch_affc
	AI_2f SLUDGE_BOMB, Script_branch_b030
	AI_2f MUD_SLAP, Script_branch_b06c
	AI_2f OCTAZOOKA, Script_branch_b0d4
	AI_2f SPIKES, Script_branch_adac
	AI_2f ZAP_CANNON, Script_branch_b138
	AI_2f FORESIGHT, Script_branch_b164
	AI_2f PERISH_SONG, Script_branch_b188
	AI_2f BONE_RUSH, Script_branch_cddc
	AI_2f OUTRAGE, Script_branch_9024
	AI_2f SANDSTORM, Script_branch_b270
	AI_2f CHARM, Script_branch_b2cc
	AI_2f ROLLOUT, Script_branch_85cc
	AI_2f FALSE_SWIPE, Script_branch_81dc
	AI_2f MILK_DRINK, Script_branch_8028
	AI_2f SPARK, Script_branch_9024
	AI_2f FURY_CUTTER, Script_branch_b330
	AI_2f STEEL_WING, Script_branch_81dc
	AI_2f MEAN_LOOK, Script_branch_b38c
	AI_2f SLEEP_TALK, Script_branch_8cd0
	AI_2f HEAL_BELL, Script_branch_b3dc
	AI_2f RETURN, Script_branch_b464
	AI_2f PRESENT, Script_branch_b4d0
	AI_2f FRUSTRATION, Script_branch_b528
	AI_2f SAFEGUARD, Script_branch_b578
	AI_2f PAIN_SPLIT, Script_branch_ce34
	AI_2f SACRED_FIRE, Script_branch_b57c
	AI_2f DYNAMIC_PUNCH, Script_branch_b5e0
	AI_2f MEGAHORN, Script_branch_b718
	AI_2f DRAGON_BREATH, Script_branch_b78c
	AI_2f BATON_PASS, Script_branch_b7ec
	AI_2f ENCORE, Script_branch_b840
	AI_2f PURSUIT, Script_branch_b960
	AI_2f RAPID_SPIN, Script_branch_ba74
	AI_2f SWEET_SCENT, Script_branch_bad8
	AI_2f IRON_TAIL, Script_branch_bb3c
	AI_2f METAL_CLAW, Script_branch_bbdc
	AI_2f VITAL_THROW, Script_branch_bbf4
	AI_2f MORNING_SUN, Script_branch_bd00
	AI_2f SYNTHESIS, Script_branch_bd38
	AI_2f MOONLIGHT, Script_branch_be44
	AI_2f HIDDEN_POWER, Script_branch_bf70
	AI_2f CROSS_CHOP, Script_branch_c010
	AI_2f TWISTER, Script_branch_c0a0
	AI_2f RAIN_DANCE, Script_branch_c10c
	AI_2f SUNNY_DAY, Script_branch_c17c
	AI_2f CRUNCH, Script_branch_c200
	AI_2f MIRROR_COAT, Script_branch_c364
	AI_2f PSYCH_UP, Script_branch_c518
	AI_2f EXTREME_SPEED, Script_branch_c6cc
	AI_2f ANCIENT_POWER, Script_branch_c790
	AI_2f SHADOW_BALL, Script_branch_c7e4
	AI_2f FUTURE_SIGHT, Script_branch_c840
	AI_2f ROCK_SMASH, Script_branch_c88c
	AI_2f WHIRLPOOL, Script_branch_c8e0
	AI_2f BEAT_UP, Script_branch_ca04
	AI_2f FAKE_OUT, Script_branch_ca2c
	AI_2f UPROAR, Script_branch_cddc
	AI_2f SPIT_UP, Script_branch_a590
	AI_2f SWALLOW, Script_branch_a590
	AI_2f HAIL, Script_branch_cacc
	AI_2f TORMENT, Script_branch_cc1c
	AI_2f FLATTER, Script_branch_cc84
	AI_2f MEMENTO, Script_branch_cddc
	AI_2f FACADE, Script_branch_a590
	AI_2f SMELLING_SALTS, Script_branch_cce4
	AI_2f FOLLOW_ME, Script_branch_cd80
	AI_2f TAUNT, Script_branch_cddc
	AI_2f HELPING_HAND, Script_branch_ce34
	AI_2f ROLE_PLAY, Script_branch_a5c0
	AI_4d
@ 7cb0

Script_branch_7cb0: @ 7cb0
	AI_39 ATTACKER, ICE_PUNCH, Script_branch_7cd8
	AI_39 ATTACKER, MINIMIZE, Script_branch_7cd8
	AI_Jump Script_branch_7cec
Script_branch_7cd8: @ 7cd8
	AI_RandomJumpLt 0x80, Script_branch_7cec
	AI_AddScore 1
Script_branch_7cec: @ 7cec
	AI_4d
@ 7cf0

Script_branch_7cf0: @ 7cf0
	AI_2b 0x0, Script_branch_7d1c
	AI_2b 0x14, Script_branch_7d1c
	AI_2b 0xa, Script_branch_7d1c
	AI_Jump Script_branch_7d30
Script_branch_7d1c: @ 7d1c
	AI_RandomJumpLt 0x32, Script_branch_7d30
	AI_AddScore -3
Script_branch_7d30: @ 7d30
	AI_4d
@ 7d34

Script_branch_7d34: @ 7d34
	AI_StatLvlLt DEFENDER, 0x7, 7, Script_branch_7d78
	AI_AddScore -1
	AI_StatLvlLt DEFENDER, 0x7, 10, Script_branch_7d78
	AI_RandomJumpLt 0x80, Script_branch_7d78
	AI_AddScore -1
Script_branch_7d78: @ 7d78
	AI_HPLt ATTACKER, 80, Script_branch_7da8
	AI_24 0x1, Script_branch_7da8
	AI_RandomJumpLt 0x32, Script_branch_7e0c
	AI_Jump Script_branch_73bc
Script_branch_7da8: @ 7da8
	AI_HPGt ATTACKER, 50, Script_branch_7df8
	AI_RandomJumpLt 0x80, Script_branch_7dcc
	AI_AddScore 1
Script_branch_7dcc: @ 7dcc
	AI_HPGt ATTACKER, 30, Script_branch_7e0c
	AI_RandomJumpLt 0x32, Script_branch_7e0c
	AI_AddScore 1
	AI_Jump Script_branch_7e0c
Script_branch_7df8: @ 7df8
	AI_RandomJumpLt 0x32, Script_branch_7e0c
	AI_AddScore -1
Script_branch_7e0c: @ 7e0c
	AI_4d
@ 7e10

Script_branch_7e10: @ 7e10
	AI_2b 0x0, Script_branch_7e68
	AI_2b 0xa, Script_branch_7e68
	AI_2b 0x14, Script_branch_7e68
	AI_9 DEFENDER, 0x7, Script_branch_7e4c
	AI_Jump Script_branch_7e70
Script_branch_7e4c: @ 7e4c
	AI_RandomJumpLt 0x33, Script_branch_7e70
	AI_AddScore 3
	AI_Jump Script_branch_7e70
Script_branch_7e68: @ 7e68
	AI_AddScore -1
Script_branch_7e70: @ 7e70
	AI_4d
@ 7e74

Script_branch_7e74: @ 7e74
	AI_24 0x1, Script_branch_7eb0
	AI_21 DEFENDER
	AI_1a 0x12, Script_branch_7eb0
	AI_RandomJumpLt 0x80, Script_branch_7ed8
	AI_AddScore 2
	AI_Jump Script_branch_7ed8
Script_branch_7eb0: @ 7eb0
	AI_21 DEFENDER
	AI_19 0x6, Script_branch_7ed8
	AI_RandomJumpLt 0x50, Script_branch_7ed8
	AI_AddScore -1
Script_branch_7ed8: @ 7ed8
	AI_4d
@ 7edc


.incbin "./baserom/overlay/overlay_0014.bin", 0x7edc, 0x7f9c - 0x7edc


Script_branch_7f9c: @ 7f9c
	AI_StatLvlLt ATTACKER, 0x1, 9, Script_branch_7fcc
	AI_RandomJumpLt 0x64, Script_branch_7ff0
	AI_AddScore -1
	AI_Jump Script_branch_7ff0
Script_branch_7fcc: @ 7fcc
	AI_HPNe ATTACKER, 100, Script_branch_7ff0
	AI_RandomJumpLt 0x80, Script_branch_7ff0
	AI_AddScore 2
Script_branch_7ff0: @ 7ff0
	AI_HPGt ATTACKER, 70, Script_branch_8024
	AI_HPLt ATTACKER, 40, Script_branch_801c
	AI_RandomJumpLt 0x28, Script_branch_8024
Script_branch_801c: @ 801c
	AI_AddScore -2
Script_branch_8024: @ 8024
	AI_4d
@ 8028

Script_branch_8028: @ 8028
	AI_StatLvlLt ATTACKER, 0x2, 9, Script_branch_8058
	AI_RandomJumpLt 0x64, Script_branch_807c
	AI_AddScore -1
	AI_Jump Script_branch_807c
Script_branch_8058: @ 8058
	AI_HPNe ATTACKER, 100, Script_branch_807c
	AI_RandomJumpLt 0x80, Script_branch_807c
	AI_AddScore 2
Script_branch_807c: @ 807c
	AI_HPLt ATTACKER, 70, Script_branch_8098
	AI_RandomJumpLt 0xc8, Script_branch_80f0
Script_branch_8098: @ 8098
	AI_HPLt ATTACKER, 40, Script_branch_80e8
	AI_21 DEFENDER
	AI_48
	AI_If35cEq 0x0, Script_branch_80dc
	AI_5e
	AI_If35cEq 0x1, Script_branch_80e8
	AI_RandomJumpLt 0x3c, Script_branch_80f0
Script_branch_80dc: @ 80dc
	AI_RandomJumpLt 0x3c, Script_branch_80f0
Script_branch_80e8: @ 80e8
	AI_AddScore -2
Script_branch_80f0: @ 80f0
	AI_4d
@ 80f4


.incbin "./baserom/overlay/overlay_0014.bin", 0x80f4, 0x811c - 0x80f4


Script_branch_811c: @ 811c
	AI_24 0x1, Script_branch_8138
	AI_AddScore -3
	AI_Jump Script_branch_814c
Script_branch_8138: @ 8138
	AI_RandomJumpLt 0x46, Script_branch_814c
	AI_AddScore 3
Script_branch_814c: @ 814c
	AI_4d
@ 8150

Script_branch_8150: @ 8150
	AI_StatLvlLt ATTACKER, 0x4, 9, Script_branch_8180
	AI_RandomJumpLt 0x64, Script_branch_81a4
	AI_AddScore -1
	AI_Jump Script_branch_81a4
Script_branch_8180: @ 8180
	AI_HPNe ATTACKER, 100, Script_branch_81a4
	AI_RandomJumpLt 0x80, Script_branch_81a4
	AI_AddScore 2
Script_branch_81a4: @ 81a4
	AI_HPGt ATTACKER, 70, Script_branch_81d8
	AI_HPLt ATTACKER, 40, Script_branch_81d0
	AI_RandomJumpLt 0x46, Script_branch_81d8
Script_branch_81d0: @ 81d0
	AI_AddScore -2
Script_branch_81d8: @ 81d8
	AI_4d
@ 81dc

Script_branch_81dc: @ 81dc
	AI_StatLvlLt ATTACKER, 0x5, 9, Script_branch_820c
	AI_RandomJumpLt 0x64, Script_branch_8230
	AI_AddScore -1
	AI_Jump Script_branch_8230
Script_branch_820c: @ 820c
	AI_HPNe ATTACKER, 100, Script_branch_8230
	AI_RandomJumpLt 0x80, Script_branch_8230
	AI_AddScore 2
Script_branch_8230: @ 8230
	AI_HPLt ATTACKER, 70, Script_branch_824c
	AI_RandomJumpLt 0xc8, Script_branch_82a4
Script_branch_824c: @ 824c
	AI_HPLt ATTACKER, 40, Script_branch_829c
	AI_21 DEFENDER
	AI_48
	AI_If35cEq 0x0, Script_branch_8290
	AI_5e
	AI_If35cEq 0x0, Script_branch_829c
	AI_RandomJumpLt 0x3c, Script_branch_82a4
Script_branch_8290: @ 8290
	AI_RandomJumpLt 0x3c, Script_branch_82a4
Script_branch_829c: @ 829c
	AI_AddScore -2
Script_branch_82a4: @ 82a4
	AI_4d
@ 82a8


.incbin "./baserom/overlay/overlay_0014.bin", 0x82a8, 0x82d0 - 0x82a8


Script_branch_82d0: @ 82d0
	AI_StatLvlLt ATTACKER, 0x6, 9, Script_branch_82f8
	AI_RandomJumpLt 0x32, Script_branch_82f8
	AI_AddScore -2
Script_branch_82f8: @ 82f8
	AI_HPGt ATTACKER, 70, Script_branch_8310
	AI_AddScore -2
Script_branch_8310: @ 8310
	AI_4d
@ 8314

Script_branch_8314: @ 8314
	AI_HPLt ATTACKER, 90, Script_branch_8338
	AI_RandomJumpLt 0x64, Script_branch_8338
	AI_AddScore 3
Script_branch_8338: @ 8338
	AI_StatLvlLt ATTACKER, 0x7, 9, Script_branch_8360
	AI_RandomJumpLt 0x80, Script_branch_8360
	AI_AddScore -1
Script_branch_8360: @ 8360
	AI_a DEFENDER, 0x80, Script_branch_83a0
	AI_HPGt ATTACKER, 50, Script_branch_838c
	AI_RandomJumpLt 0x50, Script_branch_83a0
Script_branch_838c: @ 838c
	AI_RandomJumpLt 0x32, Script_branch_83a0
	AI_AddScore 3
Script_branch_83a0: @ 83a0
	AI_e DEFENDER, 0x4, Script_branch_83c4
	AI_RandomJumpLt 0x46, Script_branch_83c4
	AI_AddScore 3
Script_branch_83c4: @ 83c4
	AI_e ATTACKER, 0x400, Script_branch_83f0
	AI_RandomJumpLt 0x80, Script_branch_841c
	AI_AddScore 2
	AI_Jump Script_branch_841c
Script_branch_83f0: @ 83f0
	AI_e ATTACKER, 0x1000000, Script_branch_841c
	AI_RandomJumpLt 0x80, Script_branch_841c
	AI_AddScore 2
	AI_Jump Script_branch_841c
Script_branch_841c: @ 841c
	AI_c DEFENDER, 0x10000000, Script_branch_8440
	AI_RandomJumpLt 0x46, Script_branch_8440
	AI_AddScore 3
Script_branch_8440: @ 8440
	AI_HPGt ATTACKER, 70, Script_branch_8498
	AI_StatLvlEq ATTACKER, 0x7, 6, Script_branch_8498
	AI_HPLt ATTACKER, 40, Script_branch_8490
	AI_HPLt DEFENDER, 40, Script_branch_8490
	AI_RandomJumpLt 0x46, Script_branch_8498
Script_branch_8490: @ 8490
	AI_AddScore -2
Script_branch_8498: @ 8498
	AI_4d
@ 849c

Script_branch_849c: @ 849c
	AI_StatLvlGt DEFENDER, 0x7, 10, Script_branch_84f4
	AI_StatLvlLt ATTACKER, 0x6, 2, Script_branch_84f4
	AI_StatLvlGt DEFENDER, 0x7, 8, Script_branch_84fc
	AI_StatLvlLt ATTACKER, 0x6, 4, Script_branch_84fc
	AI_Jump Script_branch_8510
Script_branch_84f4: @ 84f4
	AI_AddScore 1
Script_branch_84fc: @ 84fc
	AI_RandomJumpLt 0x64, Script_branch_8510
	AI_AddScore 1
Script_branch_8510: @ 8510
	AI_4d
@ 8514

Script_branch_8514: @ 8514
	AI_StatLvlEq DEFENDER, 0x1, 6, Script_branch_8570
	AI_AddScore -1
	AI_HPGt ATTACKER, 90, Script_branch_8548
	AI_AddScore -1
Script_branch_8548: @ 8548
	AI_StatLvlGt DEFENDER, 0x1, 3, Script_branch_8570
	AI_RandomJumpLt 0x32, Script_branch_8570
	AI_AddScore -2
Script_branch_8570: @ 8570
	AI_HPGt DEFENDER, 70, Script_branch_8588
	AI_AddScore -2
Script_branch_8588: @ 8588
	AI_5e
	AI_If35cNe 0x1, Script_branch_85ac
	AI_RandomJumpLt 0x80, Script_branch_85ac
	AI_AddScore -2
Script_branch_85ac: @ 85ac
	AI_4d
@ 85b0


.incbin "./baserom/overlay/overlay_0014.bin", 0x85b0, 0x85cc - 0x85b0


Script_branch_85cc: @ 85cc
	AI_HPLt ATTACKER, 70, Script_branch_85f0
	AI_StatLvlGt DEFENDER, 0x2, 3, Script_branch_8604
Script_branch_85f0: @ 85f0
	AI_RandomJumpLt 0x32, Script_branch_8604
	AI_AddScore -2
Script_branch_8604: @ 8604
	AI_HPGt DEFENDER, 70, Script_branch_861c
	AI_AddScore -2
Script_branch_861c: @ 861c
	AI_4d
@ 8620

Script_branch_8620: @ 8620
	AI_2b 0x0, Script_branch_866c
	AI_2b 0xa, Script_branch_866c
	AI_2b 0x14, Script_branch_866c
	AI_MoveEq ICY_WIND, Script_branch_8670
	AI_MoveEq ROCK_TOMB, Script_branch_8670
	AI_MoveEq MUD_SHOT, Script_branch_8670
	AI_4d
@ 866c

Script_branch_866c: @ 866c
	AI_4d
@ 8670

Script_branch_8670: @ 8670
	AI_24 0x1, Script_branch_868c
	AI_AddScore -3
	AI_Jump Script_branch_86a0
Script_branch_868c: @ 868c
	AI_RandomJumpLt 0x46, Script_branch_86a0
	AI_AddScore 2
Script_branch_86a0: @ 86a0
	AI_4d
@ 86a4

Script_branch_86a4: @ 86a4
	AI_StatLvlEq DEFENDER, 0x4, 6, Script_branch_8700
	AI_AddScore -1
	AI_HPGt ATTACKER, 90, Script_branch_86d8
	AI_AddScore -1
Script_branch_86d8: @ 86d8
	AI_StatLvlGt DEFENDER, 0x4, 3, Script_branch_8700
	AI_RandomJumpLt 0x32, Script_branch_8700
	AI_AddScore -2
Script_branch_8700: @ 8700
	AI_HPGt DEFENDER, 70, Script_branch_8718
	AI_AddScore -2
Script_branch_8718: @ 8718
	AI_5e
	AI_If35cNe 0x0, Script_branch_873c
	AI_RandomJumpLt 0x80, Script_branch_873c
	AI_AddScore -2
Script_branch_873c: @ 873c
	AI_4d
@ 8740


.incbin "./baserom/overlay/overlay_0014.bin", 0x8740, 0x8764 - 0x8740


Script_branch_8764: @ 8764
	AI_HPLt ATTACKER, 70, Script_branch_8788
	AI_StatLvlGt DEFENDER, 0x5, 3, Script_branch_879c
Script_branch_8788: @ 8788
	AI_RandomJumpLt 0x32, Script_branch_879c
	AI_AddScore -2
Script_branch_879c: @ 879c
	AI_HPGt DEFENDER, 70, Script_branch_87b4
	AI_AddScore -2
Script_branch_87b4: @ 87b4
	AI_4d
@ 87b8

Script_branch_87b8: @ 87b8
	AI_HPLt ATTACKER, 70, Script_branch_87d8
	AI_HPGt DEFENDER, 70, Script_branch_87ec
Script_branch_87d8: @ 87d8
	AI_RandomJumpLt 0x64, Script_branch_87ec
	AI_AddScore -1
Script_branch_87ec: @ 87ec
	AI_StatLvlGt ATTACKER, 0x6, 4, Script_branch_8814
	AI_RandomJumpLt 0x50, Script_branch_8814
	AI_AddScore -2
Script_branch_8814: @ 8814
	AI_a DEFENDER, 0x80, Script_branch_8838
	AI_RandomJumpLt 0x46, Script_branch_8838
	AI_AddScore 2
Script_branch_8838: @ 8838
	AI_e DEFENDER, 0x4, Script_branch_885c
	AI_RandomJumpLt 0x46, Script_branch_885c
	AI_AddScore 2
Script_branch_885c: @ 885c
	AI_e ATTACKER, 0x400, Script_branch_8888
	AI_RandomJumpLt 0x80, Script_branch_88ac
	AI_AddScore 1
	AI_Jump Script_branch_88ac
Script_branch_8888: @ 8888
	AI_e ATTACKER, 0x1000000, Script_branch_88ac
	AI_RandomJumpLt 0x80, Script_branch_88ac
	AI_AddScore 1
Script_branch_88ac: @ 88ac
	AI_c DEFENDER, 0x10000000, Script_branch_88d0
	AI_RandomJumpLt 0x46, Script_branch_88d0
	AI_AddScore 2
Script_branch_88d0: @ 88d0
	AI_HPGt ATTACKER, 70, Script_branch_8928
	AI_StatLvlEq DEFENDER, 0x6, 6, Script_branch_8928
	AI_HPLt ATTACKER, 40, Script_branch_8920
	AI_HPLt DEFENDER, 40, Script_branch_8920
	AI_RandomJumpLt 0x46, Script_branch_8928
Script_branch_8920: @ 8920
	AI_AddScore -2
Script_branch_8928: @ 8928
	AI_4d
@ 892c

Script_branch_892c: @ 892c
	AI_HPLt ATTACKER, 70, Script_branch_8950
	AI_StatLvlGt DEFENDER, 0x7, 3, Script_branch_8964
Script_branch_8950: @ 8950
	AI_RandomJumpLt 0x32, Script_branch_8964
	AI_AddScore -2
Script_branch_8964: @ 8964
	AI_HPGt DEFENDER, 70, Script_branch_897c
	AI_AddScore -2
Script_branch_897c: @ 897c
	AI_4d
@ 8980

Script_branch_8980: @ 8980
	AI_StatLvlGt ATTACKER, 0x1, 8, Script_branch_8a50
	AI_StatLvlGt ATTACKER, 0x2, 8, Script_branch_8a50
	AI_StatLvlGt ATTACKER, 0x4, 8, Script_branch_8a50
	AI_StatLvlGt ATTACKER, 0x5, 8, Script_branch_8a50
	AI_StatLvlGt ATTACKER, 0x7, 8, Script_branch_8a50
	AI_StatLvlLt DEFENDER, 0x1, 4, Script_branch_8a50
	AI_StatLvlLt DEFENDER, 0x2, 4, Script_branch_8a50
	AI_StatLvlLt DEFENDER, 0x4, 4, Script_branch_8a50
	AI_StatLvlLt DEFENDER, 0x5, 4, Script_branch_8a50
	AI_StatLvlLt DEFENDER, 0x6, 4, Script_branch_8a50
	AI_Jump Script_branch_8a64
Script_branch_8a50: @ 8a50
	AI_RandomJumpLt 0x32, Script_branch_8a64
	AI_AddScore -3
Script_branch_8a64: @ 8a64
	AI_StatLvlGt DEFENDER, 0x1, 8, Script_branch_8b48
	AI_StatLvlGt DEFENDER, 0x2, 8, Script_branch_8b48
	AI_StatLvlGt DEFENDER, 0x4, 8, Script_branch_8b48
	AI_StatLvlGt DEFENDER, 0x5, 8, Script_branch_8b48
	AI_StatLvlGt DEFENDER, 0x7, 8, Script_branch_8b48
	AI_StatLvlLt ATTACKER, 0x1, 4, Script_branch_8b48
	AI_StatLvlLt ATTACKER, 0x2, 4, Script_branch_8b48
	AI_StatLvlLt ATTACKER, 0x4, 4, Script_branch_8b48
	AI_StatLvlLt ATTACKER, 0x5, 4, Script_branch_8b48
	AI_StatLvlLt ATTACKER, 0x6, 4, Script_branch_8b48
	AI_RandomJumpLt 0x32, Script_branch_8b5c
	AI_AddScore -1
	AI_Jump Script_branch_8b5c
Script_branch_8b48: @ 8b48
	AI_RandomJumpLt 0x32, Script_branch_8b5c
	AI_AddScore 3
Script_branch_8b5c: @ 8b5c
	AI_4d
@ 8b60

Script_branch_8b60: @ 8b60
	AI_HPGt ATTACKER, 90, Script_branch_8b78
	AI_AddScore -2
Script_branch_8b78: @ 8b78
	AI_4d
@ 8b7c

Script_branch_8b7c: @ 8b7c
	AI_60 DEFENDER
	AI_12_If35cGt 0x3, Script_branch_8c34
	AI_f DEFENDER, 0x4, Script_branch_8c48
	AI_f DEFENDER, 0x80, Script_branch_8c48
	AI_f DEFENDER, 0x400, Script_branch_8c48
	AI_StatLvlGt DEFENDER, 0x1, 8, Script_branch_8c48
	AI_StatLvlGt DEFENDER, 0x2, 8, Script_branch_8c48
	AI_StatLvlGt DEFENDER, 0x4, 8, Script_branch_8c48
	AI_StatLvlGt DEFENDER, 0x5, 8, Script_branch_8c48
	AI_StatLvlGt DEFENDER, 0x7, 8, Script_branch_8c48
	AI_AddScore -3
	AI_Jump Script_branch_8c5c
Script_branch_8c34: @ 8c34
	AI_RandomJumpLt 0x40, Script_branch_8c48
	AI_AddScore 2
Script_branch_8c48: @ 8c48
	AI_RandomJumpLt 0x80, Script_branch_8c5c
	AI_AddScore 2
Script_branch_8c5c: @ 8c5c
	AI_4d
@ 8c60

Script_branch_8c60: @ 8c60
	AI_HPGt ATTACKER, 90, Script_branch_8c78
	AI_AddScore -2
Script_branch_8c78: @ 8c78
	AI_GetRoundNr
	AI_If35cEq 0x0, Script_branch_8c94
	AI_RandomJumpLt 0xc8, Script_branch_73b0
Script_branch_8c94: @ 8c94
	AI_4d
@ 8c98

Script_branch_8c98: @ 8c98
	AI_2e
	AI_If35cEq 0x4, Script_branch_8cc8
	AI_If35cEq 0x2, Script_branch_8cc8
	AI_If35cEq 0x3, Script_branch_8cc8
	AI_Jump Script_branch_8cd0
Script_branch_8cc8: @ 8cc8
	AI_AddScore -2
Script_branch_8cd0: @ 8cd0
	AI_HPEq ATTACKER, 100, Script_branch_8d28
	AI_24 0x1, Script_branch_8d38
	AI_AddScore -8
	AI_Jump Script_branch_8d94
	AI_HPLt ATTACKER, 50, Script_branch_8d64
	AI_HPGt ATTACKER, 80, Script_branch_8d28
	AI_RandomJumpLt 0x46, Script_branch_8d64
Script_branch_8d28: @ 8d28
	AI_AddScore -3
	AI_Jump Script_branch_8d94
Script_branch_8d38: @ 8d38
	AI_HPLt ATTACKER, 70, Script_branch_8d64
	AI_RandomJumpLt 0x1e, Script_branch_8d64
	AI_AddScore -3
	AI_Jump Script_branch_8d94
Script_branch_8d64: @ 8d64
	AI_3a DEFENDER, PERISH_SONG, Script_branch_8d80
	AI_RandomJumpLt 0x64, Script_branch_8d94
Script_branch_8d80: @ 8d80
	AI_RandomJumpLt 0x14, Script_branch_8d94
	AI_AddScore 2
Script_branch_8d94: @ 8d94
	AI_4d
@ 8d98

Script_branch_8d98: @ 8d98
	AI_1c Script_branch_8de8
	AI_HPGt ATTACKER, 50, Script_branch_8dc4
	AI_RandomJumpLt 0x32, Script_branch_8dc4
	AI_AddScore -3
Script_branch_8dc4: @ 8dc4
	AI_HPGt DEFENDER, 50, Script_branch_8de8
	AI_RandomJumpLt 0x32, Script_branch_8de8
	AI_AddScore -3
Script_branch_8de8: @ 8de8
	AI_39 ATTACKER, SWORDS_DANCE, Script_branch_8e10
	AI_39 ATTACKER, DEFENSE_CURL, Script_branch_8e10
	AI_Jump Script_branch_8e24
Script_branch_8e10: @ 8e10
	AI_RandomJumpLt 0x3c, Script_branch_8e24
	AI_AddScore 2
Script_branch_8e24: @ 8e24
	AI_4d
@ 8e28

Script_branch_8e28: @ 8e28
	AI_HPLt ATTACKER, 50, Script_branch_8e88
	AI_HPLt ATTACKER, 90, Script_branch_8e5c
	AI_RandomJumpLt 0x80, Script_branch_8e5c
	AI_AddScore 1
Script_branch_8e5c: @ 8e5c
	AI_5e
	AI_If35cNe 0x1, Script_branch_8e90
	AI_RandomJumpLt 0x40, Script_branch_8e90
	AI_AddScore 1
	AI_Jump Script_branch_8e90
Script_branch_8e88: @ 8e88
	AI_AddScore -2
Script_branch_8e90: @ 8e90
	AI_4d
@ 8e94


.incbin "./baserom/overlay/overlay_0014.bin", 0x8e94, 0x8eb8 - 0x8e94


Script_branch_8eb8: @ 8eb8
	AI_24 0x1, Script_branch_8f20
	AI_HPNe ATTACKER, 100, Script_branch_8ee4
	AI_AddScore -8
	AI_Jump Script_branch_8f8c
Script_branch_8ee4: @ 8ee4
	AI_HPLt ATTACKER, 40, Script_branch_8f5c
	AI_HPGt ATTACKER, 50, Script_branch_8f10
	AI_RandomJumpLt 0x46, Script_branch_8f5c
Script_branch_8f10: @ 8f10
	AI_AddScore -3
	AI_Jump Script_branch_8f8c
Script_branch_8f20: @ 8f20
	AI_HPLt ATTACKER, 60, Script_branch_8f5c
	AI_HPGt ATTACKER, 70, Script_branch_8f4c
	AI_RandomJumpLt 0x32, Script_branch_8f5c
Script_branch_8f4c: @ 8f4c
	AI_AddScore -3
	AI_Jump Script_branch_8f8c
Script_branch_8f5c: @ 8f5c
	AI_3a DEFENDER, PERISH_SONG, Script_branch_8f78
	AI_RandomJumpLt 0x32, Script_branch_8f8c
Script_branch_8f78: @ 8f78
	AI_RandomJumpLt 0xa, Script_branch_8f8c
	AI_AddScore 3
Script_branch_8f8c: @ 8f8c
	AI_4d
@ 8f90

Script_branch_8f90: @ 8f90
	AI_RandomJumpLt 0xc0, Script_branch_8fa4
	AI_AddScore 1
Script_branch_8fa4: @ 8fa4
	AI_4d
@ 8fa8

Script_branch_8fa8: @ 8fa8
	AI_HPGt DEFENDER, 50, Script_branch_8fc0
	AI_AddScore -1
Script_branch_8fc0: @ 8fc0
	AI_4d
@ 8fc4

Script_branch_8fc4: @ 8fc4
	AI_9 DEFENDER, 0x80, Script_branch_900c
	AI_b DEFENDER, 0x10000000, Script_branch_900c
	AI_d DEFENDER, 0x20, Script_branch_900c
	AI_b DEFENDER, 0xf0000, Script_branch_900c
	AI_Jump Script_branch_9020
Script_branch_900c: @ 900c
	AI_RandomJumpLt 0x80, Script_branch_9020
	AI_AddScore 1
Script_branch_9020: @ 9020
	AI_4d
@ 9024

Script_branch_9024: @ 9024
	AI_2b 0x0, Script_branch_9080
	AI_2b 0xa, Script_branch_9080
	AI_2b 0x14, Script_branch_9080
	AI_2b 0x50, Script_branch_906c
	AI_2b 0xa0, Script_branch_906c
	AI_RandomJumpLt 0x80, Script_branch_9080
Script_branch_906c: @ 906c
	AI_RandomJumpLt 0x80, Script_branch_9080
	AI_AddScore 1
Script_branch_9080: @ 9080
	AI_4d
@ 9084

Script_branch_9084: @ 9084
	AI_37 ATTACKER, PSYCH_UP, Script_branch_9100
Script_branch_9094: @ 9094
	AI_RandomJumpLt 0x80, Script_branch_90a8
	AI_AddScore 1
Script_branch_90a8: @ 90a8
	AI_HPGt DEFENDER, 70, Script_branch_90fc
	AI_RandomJumpLt 0x80, Script_branch_90cc
	AI_AddScore -1
Script_branch_90cc: @ 90cc
	AI_HPGt DEFENDER, 50, Script_branch_90fc
	AI_AddScore -1
	AI_HPGt DEFENDER, 30, Script_branch_90fc
	AI_AddScore -1
Script_branch_90fc: @ 90fc
	AI_4d
@ 9100

Script_branch_9100: @ 9100
	AI_StatLvlGt DEFENDER, 0x1, 3, Script_branch_913c
	AI_AddScore 3
	AI_GetRoundNr
	AI_If35cNe 0x0, Script_branch_9144
	AI_AddScore 2
	AI_Jump Script_branch_9144
Script_branch_913c: @ 913c
	AI_AddScore -5
Script_branch_9144: @ 9144
	AI_4d
@ 9148

Script_branch_9148: @ 9148
	AI_HPLt ATTACKER, 50, Script_branch_91a8
	AI_HPLt ATTACKER, 90, Script_branch_917c
	AI_RandomJumpLt 0x80, Script_branch_917c
	AI_AddScore 1
Script_branch_917c: @ 917c
	AI_5e
	AI_If35cNe 0x0, Script_branch_91b0
	AI_RandomJumpLt 0x40, Script_branch_91b0
	AI_AddScore 1
	AI_Jump Script_branch_91b0
Script_branch_91a8: @ 91a8
	AI_AddScore -2
Script_branch_91b0: @ 91b0
	AI_4d
@ 91b4


.incbin "./baserom/overlay/overlay_0014.bin", 0x91b4, 0x91dc - 0x91b4


Script_branch_91dc: @ 91dc
	AI_HPLt ATTACKER, 50, Script_branch_91fc
	AI_HPGt DEFENDER, 50, Script_branch_9204
Script_branch_91fc: @ 91fc
	AI_AddScore -1
Script_branch_9204: @ 9204
	AI_4d
@ 9208

Script_branch_9208: @ 9208
	AI_24 0x1, Script_branch_9234
	AI_HPGt ATTACKER, 70, Script_branch_9248
	AI_AddScore -1
	AI_Jump Script_branch_9248
Script_branch_9234: @ 9234
	AI_RandomJumpLt 0x14, Script_branch_9248
	AI_AddScore 3
Script_branch_9248: @ 9248
	AI_4d
@ 924c

Script_branch_924c: @ 924c
	AI_24 0x1, Script_branch_9298
	AI_HPGt ATTACKER, 60, Script_branch_9298
	AI_HPLt ATTACKER, 40, Script_branch_9284
	AI_RandomJumpLt 0xb4, Script_branch_9298
Script_branch_9284: @ 9284
	AI_RandomJumpLt 0x32, Script_branch_9298
	AI_AddScore -1
Script_branch_9298: @ 9298
	AI_4d
@ 929c

Script_branch_929c: @ 929c
	AI_38 ATTACKER, FOCUS_PUNCH, Script_branch_92c0
	AI_RandomJumpLt 0x60, Script_branch_92c0
	AI_AddScore 1
Script_branch_92c0: @ 92c0
	AI_HPGt ATTACKER, 90, Script_branch_932c
	AI_HPGt ATTACKER, 70, Script_branch_9318
	AI_HPGt ATTACKER, 50, Script_branch_9304
	AI_RandomJumpLt 0x64, Script_branch_9304
	AI_AddScore -1
Script_branch_9304: @ 9304
	AI_RandomJumpLt 0x64, Script_branch_9318
	AI_AddScore -1
Script_branch_9318: @ 9318
	AI_RandomJumpLt 0x64, Script_branch_932c
	AI_AddScore -1
Script_branch_932c: @ 932c
	AI_24 0x1, Script_branch_93f4
	AI_21 DEFENDER
	AI_49
	AI_If35cEq 0x1, Script_branch_93a0
	AI_If35cEq 0x21, Script_branch_93a0
	AI_If35cEq 0x42, Script_branch_93a0
	AI_If35cEq 0x43, Script_branch_93a0
	AI_If35cEq 0xa7, Script_branch_93a0
	AI_If35cEq 0x31, Script_branch_93b8
	AI_If35cEq 0x54, Script_branch_93d0
	AI_Jump Script_branch_93f4
Script_branch_93a0: @ 93a0
	AI_a DEFENDER, 0xff, Script_branch_93e0
	AI_Jump Script_branch_93f4
Script_branch_93b8: @ 93b8
	AI_c DEFENDER, 0x7, Script_branch_93e0
	AI_Jump Script_branch_93f4
Script_branch_93d0: @ 93d0
	AI_d DEFENDER, 0x4, Script_branch_93f4
Script_branch_93e0: @ 93e0
	AI_RandomJumpLt 0x64, Script_branch_93f4
	AI_AddScore 1
Script_branch_93f4: @ 93f4
	AI_4d
@ 93f8

Script_branch_93f8: @ 93f8
	AI_2b 0x0, Script_branch_9480
	AI_2b 0xa, Script_branch_9480
	AI_2b 0x14, Script_branch_9480
	AI_GetAbility ATTACKER
	AI_If35cEq TRUANT, Script_branch_9454
	AI_24 0x1, Script_branch_9470
	AI_HPGt ATTACKER, 40, Script_branch_9480
	AI_Jump Script_branch_9488
Script_branch_9454: @ 9454
	AI_RandomJumpLt 0x50, Script_branch_9488
	AI_AddScore 1
	AI_Jump Script_branch_9488
Script_branch_9470: @ 9470
	AI_HPLt ATTACKER, 60, Script_branch_9488
Script_branch_9480: @ 9480
	AI_AddScore -1
Script_branch_9488: @ 9488
	AI_4d
@ 948c

Script_branch_948c: @ 948c
	AI_24 0x1, Script_branch_94d4
	AI_21 DEFENDER
	AI_48
	AI_If35cEq 0x0, Script_branch_94c0
	AI_AddScore 1
	AI_Jump Script_branch_94d4
Script_branch_94c0: @ 94c0
	AI_RandomJumpLt 0x64, Script_branch_94d4
	AI_AddScore -1
Script_branch_94d4: @ 94d4
	AI_4d
@ 94d8

Script_branch_94d8: @ 94d8
	AI_9 DEFENDER, 0x7, Script_branch_9628
	AI_b DEFENDER, 0xf0000, Script_branch_9628
	AI_b DEFENDER, 0x7, Script_branch_9628
	AI_HPGt ATTACKER, 30, Script_branch_952c
	AI_RandomJumpLt 0xa, Script_branch_952c
	AI_AddScore -1
Script_branch_952c: @ 952c
	AI_HPGt ATTACKER, 50, Script_branch_9550
	AI_RandomJumpLt 0x64, Script_branch_9550
	AI_AddScore -1
Script_branch_9550: @ 9550
	AI_37 ATTACKER, MIRROR_COAT, Script_branch_9610
	AI_21 DEFENDER
	AI_48
	AI_If35cEq 0x0, Script_branch_95c0
	AI_50 Script_branch_9594
	AI_RandomJumpLt 0x64, Script_branch_9594
	AI_AddScore 1
Script_branch_9594: @ 9594
	AI_5e
	AI_If35cNe 0x0, Script_branch_9628
	AI_RandomJumpLt 0x64, Script_branch_9630
	AI_AddScore 1
	AI_Jump Script_branch_9630
Script_branch_95c0: @ 95c0
	AI_50 Script_branch_95dc
	AI_RandomJumpLt 0x64, Script_branch_95dc
	AI_AddScore 1
Script_branch_95dc: @ 95dc
	AI_1e 0x0
	AI_19 0x11, Script_branch_9630
	AI_1e 0x2
	AI_19 0xc, Script_branch_9630
	AI_RandomJumpLt 0x32, Script_branch_9630
Script_branch_9610: @ 9610
	AI_RandomJumpLt 0x64, Script_branch_9624
	AI_AddScore 4
Script_branch_9624: @ 9624
	AI_4d
@ 9628

Script_branch_9628: @ 9628
	AI_AddScore -1
Script_branch_9630: @ 9630
	AI_4d
@ 9634


.incbin "./baserom/overlay/overlay_0014.bin", 0x9634, 0x965c - 0x9634


Script_branch_965c: @ 965c
	AI_3b DEFENDER, 0x0, Script_branch_9690
	AI_24 0x1, Script_branch_96ac
	AI_21 DEFENDER
	AI_49
	AI_1a 0xa, Script_branch_96ac
Script_branch_9690: @ 9690
	AI_RandomJumpLt 0x1e, Script_branch_96b4
	AI_AddScore 3
	AI_Jump Script_branch_96b4
Script_branch_96ac: @ 96ac
	AI_AddScore -2
Script_branch_96b4: @ 96b4
	AI_4d
@ 96b8


.incbin "./baserom/overlay/overlay_0014.bin", 0x96b8, 0x9804 - 0x96b8


Script_branch_9804: @ 9804
	AI_HPLt DEFENDER, 80, Script_branch_9860
	AI_24 0x1, Script_branch_9840
	AI_HPGt ATTACKER, 40, Script_branch_9860
	AI_AddScore 1
	AI_Jump Script_branch_9868
Script_branch_9840: @ 9840
	AI_HPGt ATTACKER, 60, Script_branch_9860
	AI_AddScore 1
	AI_Jump Script_branch_9868
Script_branch_9860: @ 9860
	AI_AddScore -1
Script_branch_9868: @ 9868
	AI_4d
@ 986c

Script_branch_986c: @ 986c
	AI_AddScore 2
	AI_4d
@ 9878

Script_branch_9878: @ 9878
	AI_RandomJumpLt 0x80, Script_branch_988c
	AI_AddScore 2
Script_branch_988c: @ 988c
	AI_4d
@ 9890

Script_branch_9890: @ 9890
	AI_9 ATTACKER, 0x7, Script_branch_7440
	AI_AddScore -5
	AI_4d
@ 98ac

Script_branch_98ac: @ 98ac
	AI_AddScore -1
	AI_24 0x1, Script_branch_992c
	AI_HPGt ATTACKER, 70, Script_branch_992c
	AI_RandomJumpLt 0x80, Script_branch_98e4
	AI_AddScore 1
Script_branch_98e4: @ 98e4
	AI_HPGt ATTACKER, 50, Script_branch_992c
	AI_RandomJumpLt 0x80, Script_branch_9908
	AI_AddScore 1
Script_branch_9908: @ 9908
	AI_HPGt ATTACKER, 30, Script_branch_992c
	AI_RandomJumpLt 0x64, Script_branch_992c
	AI_AddScore 2
Script_branch_992c: @ 992c
	AI_4d
@ 9930

Script_branch_9930: @ 9930
	AI_24 0x1, Script_branch_9974
	AI_HPGt ATTACKER, 33, Script_branch_99c0
	AI_HPGt ATTACKER, 20, Script_branch_99c8
	AI_HPLt ATTACKER, 8, Script_branch_999c
	AI_Jump Script_branch_99a4
Script_branch_9974: @ 9974
	AI_HPGt ATTACKER, 60, Script_branch_99c0
	AI_HPGt ATTACKER, 40, Script_branch_99c8
	AI_Jump Script_branch_99a4
Script_branch_999c: @ 999c
	AI_AddScore 1
Script_branch_99a4: @ 99a4
	AI_RandomJumpLt 0x64, Script_branch_99c8
	AI_AddScore 1
	AI_Jump Script_branch_99c8
Script_branch_99c0: @ 99c0
	AI_AddScore -1
Script_branch_99c8: @ 99c8
	AI_4d
@ 99cc

Script_branch_99cc: @ 99cc
	AI_9 ATTACKER, 0xff, Script_branch_99f4
	AI_2c ATTACKER, 0xff, 0x2
	AI_AddScore -5
Script_branch_99f4: @ 99f4
	AI_4d
@ 99f8

Script_branch_99f8: @ 99f8
	AI_41 DEFENDER
	AI_1a 0xa, Script_branch_9a28
	AI_RandomJumpLt 0x32, Script_branch_9a30
	AI_AddScore 1
	AI_Jump Script_branch_9a30
Script_branch_9a28: @ 9a28
	AI_AddScore -2
Script_branch_9a30: @ 9a30
	AI_4d
@ 9a34


.incbin "./baserom/overlay/overlay_0014.bin", 0x9a34, 0x9a9c - 0x9a34


Script_branch_9a9c: @ 9a9c
	AI_1e 0x1
	AI_If35cEq 0x7, Script_branch_9b80
	AI_1e 0x3
	AI_If35cEq 0x7, Script_branch_9b80
	AI_StatLvlGt ATTACKER, 0x2, 9, Script_branch_9b98
	AI_37 ATTACKER, GYRO_BALL, Script_branch_9b00
	AI_37 ATTACKER, TRICK_ROOM, Script_branch_9b00
	AI_Jump Script_branch_9b14
Script_branch_9b00: @ 9b00
	AI_RandomJumpLt 0x20, Script_branch_9b28
	AI_AddScore 1
Script_branch_9b14: @ 9b14
	AI_RandomJumpLt 0x80, Script_branch_9b28
	AI_AddScore 1
Script_branch_9b28: @ 9b28
	AI_StatLvlGt ATTACKER, 0x2, 7, Script_branch_9b98
	AI_RandomJumpLt 0x80, Script_branch_9b50
	AI_AddScore 1
Script_branch_9b50: @ 9b50
	AI_StatLvlGt ATTACKER, 0x2, 6, Script_branch_9b98
	AI_RandomJumpLt 0x80, Script_branch_9b98
	AI_AddScore 1
	AI_Jump Script_branch_9b98
Script_branch_9b80: @ 9b80
	AI_HPGt ATTACKER, 80, Script_branch_9b98
	AI_AddScore -1
Script_branch_9b98: @ 9b98
	AI_4d
@ 9b9c

Script_branch_9b9c: @ 9b9c
	AI_37 DEFENDER, FEINT, Script_branch_9bc4
	AI_37 DEFENDER, SHADOW_FORCE, Script_branch_9bc4
	AI_Jump Script_branch_9bd8
Script_branch_9bc4: @ 9bc4
	AI_RandomJumpLt 0x80, Script_branch_9bd8
	AI_AddScore -2
Script_branch_9bd8: @ 9bd8
	AI_4a 0x1
	AI_12_If35cGt 0x1, Script_branch_9d64
	AI_9 ATTACKER, 0x80, Script_branch_9d54
	AI_b ATTACKER, 0x10000000, Script_branch_9d54
	AI_d ATTACKER, 0x20, Script_branch_9d54
	AI_b ATTACKER, 0xf0000, Script_branch_9d54
	AI_d ATTACKER, 0x4, Script_branch_9d54
	AI_d ATTACKER, 0x1800, Script_branch_9d54
	AI_39 DEFENDER, HORN_DRILL, Script_branch_9d54
	AI_39 DEFENDER, REST, Script_branch_9d54
	AI_9 DEFENDER, 0x80, Script_branch_9d00
	AI_b DEFENDER, 0x10000000, Script_branch_9d00
	AI_d DEFENDER, 0x20, Script_branch_9d00
	AI_b DEFENDER, 0xf0000, Script_branch_9d00
	AI_d DEFENDER, 0x4, Script_branch_9d00
	AI_d DEFENDER, 0x1800, Script_branch_9d00
	AI_45
	AI_15_If35cTstNe 0x2, Script_branch_9d00
	AI_d ATTACKER, 0x18, Script_branch_9d00
	AI_RandomJumpLt 0x55, Script_branch_9d00
	AI_Jump Script_branch_9d08
Script_branch_9d00: @ 9d00
	AI_AddScore 2
Script_branch_9d08: @ 9d08
	AI_RandomJumpLt 0x80, Script_branch_9d1c
	AI_AddScore -1
Script_branch_9d1c: @ 9d1c
	AI_4a 0x1
	AI_If35cEq 0x0, Script_branch_9d6c
	AI_AddScore -1
	AI_RandomJumpLt 0x80, Script_branch_9d6c
	AI_AddScore -1
	AI_Jump Script_branch_9d6c
Script_branch_9d54: @ 9d54
	AI_d ATTACKER, 0x18, Script_branch_9d6c
Script_branch_9d64: @ 9d64
	AI_AddScore -2
Script_branch_9d6c: @ 9d6c
	AI_4d
@ 9d70

Script_branch_9d70: @ 9d70
	AI_RandomJumpLt 0x80, Script_branch_9dc0
	AI_AddScore 1
	AI_37 ATTACKER, ROAR, Script_branch_9dac
	AI_37 ATTACKER, WHIRLWIND, Script_branch_9dac
	AI_Jump Script_branch_9dc0
Script_branch_9dac: @ 9dac
	AI_RandomJumpLt 0x40, Script_branch_9dc0
	AI_AddScore 1
Script_branch_9dc0: @ 9dc0
	AI_4d
@ 9dc4

Script_branch_9dc4: @ 9dc4
	AI_1e 0x1
	AI_If35cEq 0x7, Script_branch_9e10
	AI_1e 0x3
	AI_If35cEq 0x7, Script_branch_9e10
	AI_StatLvlGt DEFENDER, 0x7, 8, Script_branch_9e1c
	AI_AddScore -2
	AI_Jump Script_branch_9e30
Script_branch_9e10: @ 9e10
	AI_RandomJumpLt 0x50, Script_branch_9e30
Script_branch_9e1c: @ 9e1c
	AI_RandomJumpLt 0x50, Script_branch_9e30
	AI_AddScore 2
Script_branch_9e30: @ 9e30
	AI_4d
@ 9e34

Script_branch_9e34: @ 9e34
	AI_HPLt ATTACKER, 4, Script_branch_9e54
	AI_HPLt ATTACKER, 35, Script_branch_9e64
Script_branch_9e54: @ 9e54
	AI_AddScore -1
	AI_Jump Script_branch_9e78
Script_branch_9e64: @ 9e64
	AI_RandomJumpLt 0x46, Script_branch_9e78
	AI_AddScore 1
Script_branch_9e78: @ 9e78
	AI_4d
@ 9e7c

Script_branch_9e7c: @ 9e7c
	AI_StatLvlGt ATTACKER, 0x1, 8, Script_branch_9ee8
	AI_StatLvlGt ATTACKER, 0x2, 8, Script_branch_9ee8
	AI_StatLvlGt ATTACKER, 0x4, 8, Script_branch_9ee8
	AI_StatLvlGt ATTACKER, 0x5, 8, Script_branch_9ee8
	AI_StatLvlGt ATTACKER, 0x7, 8, Script_branch_9ee8
	AI_Jump Script_branch_9f38
Script_branch_9ee8: @ 9ee8
	AI_24 0x1, Script_branch_9f0c
	AI_HPGt ATTACKER, 60, Script_branch_9fe0
	AI_Jump Script_branch_9f1c
Script_branch_9f0c: @ 9f0c
	AI_HPGt ATTACKER, 70, Script_branch_9fe0
Script_branch_9f1c: @ 9f1c
	AI_RandomJumpLt 0x50, Script_branch_9fe0
	AI_AddScore 2
	AI_Jump Script_branch_9fe0
Script_branch_9f38: @ 9f38
	AI_StatLvlGt ATTACKER, 0x1, 7, Script_branch_9fa4
	AI_StatLvlGt ATTACKER, 0x2, 7, Script_branch_9fa4
	AI_StatLvlGt ATTACKER, 0x4, 7, Script_branch_9fa4
	AI_StatLvlGt ATTACKER, 0x5, 7, Script_branch_9fa4
	AI_StatLvlGt ATTACKER, 0x7, 7, Script_branch_9fa4
	AI_Jump Script_branch_9fd8
Script_branch_9fa4: @ 9fa4
	AI_24 0x1, Script_branch_9fc8
	AI_HPGt ATTACKER, 60, Script_branch_9fd8
	AI_Jump Script_branch_9fe0
Script_branch_9fc8: @ 9fc8
	AI_HPLt ATTACKER, 70, Script_branch_9fe0
Script_branch_9fd8: @ 9fd8
	AI_AddScore -2
Script_branch_9fe0: @ 9fe0
	AI_4d
@ 9fe4

Script_branch_9fe4: @ 9fe4
	AI_43 0x1
	AI_If35cNe 0x0, Script_branch_a050
	AI_1e 0x0
	AI_If35cEq 0x7, Script_branch_a050
	AI_1e 0x0
	AI_If35cEq 0xe, Script_branch_a050
	AI_1e 0x2
	AI_If35cEq 0x7, Script_branch_a050
	AI_1e 0x2
	AI_If35cEq 0xe, Script_branch_a050
	AI_Jump Script_branch_a064
Script_branch_a050: @ a050
	AI_RandomJumpLt 0x80, Script_branch_a064
	AI_AddScore 1
Script_branch_a064: @ a064
	AI_38 DEFENDER, U_TURN, Script_branch_a088
	AI_RandomJumpLt 0x80, Script_branch_a088
	AI_AddScore 1
Script_branch_a088: @ a088
	AI_4d
@ a08c

Script_branch_a08c: @ a08c
	AI_24 0x0, Script_branch_a0ac
	AI_GetAbility ATTACKER
	AI_If35cEq SWIFT_SWIM, Script_branch_a11c
Script_branch_a0ac: @ a0ac
	AI_HPLt ATTACKER, 40, Script_branch_a12c
	AI_2e
	AI_If35cEq 0x4, Script_branch_a11c
	AI_If35cEq 0x1, Script_branch_a11c
	AI_If35cEq 0x3, Script_branch_a11c
	AI_GetAbility ATTACKER
	AI_If35cEq RAIN_DISH, Script_branch_a11c
	AI_If35cNe HYDRATION, Script_branch_a134
	AI_9 ATTACKER, 0xff, Script_branch_a11c
	AI_Jump Script_branch_a134
Script_branch_a11c: @ a11c
	AI_AddScore 1
	AI_Jump Script_branch_a134
Script_branch_a12c: @ a12c
	AI_AddScore -1
Script_branch_a134: @ a134
	AI_4d
@ a138

Script_branch_a138: @ a138
	AI_HPLt ATTACKER, 40, Script_branch_a1b8
	AI_2e
	AI_If35cEq 0x4, Script_branch_a1a8
	AI_If35cEq 0x2, Script_branch_a1a8
	AI_If35cEq 0x3, Script_branch_a1a8
	AI_GetAbility ATTACKER
	AI_If35cEq FLOWER_GIFT, Script_branch_a1a8
	AI_If35cNe LEAF_GUARD, Script_branch_a1c0
	AI_9 ATTACKER, 0xff, Script_branch_a1a8
	AI_Jump Script_branch_a1c0
Script_branch_a1a8: @ a1a8
	AI_AddScore 1
	AI_Jump Script_branch_a1c0
Script_branch_a1b8: @ a1b8
	AI_AddScore -1
Script_branch_a1c0: @ a1c0
	AI_4d
@ a1c4

Script_branch_a1c4: @ a1c4
	AI_HPLt ATTACKER, 90, Script_branch_a1dc
	AI_Jump Script_branch_a1e4
Script_branch_a1dc: @ a1dc
	AI_AddScore -2
Script_branch_a1e4: @ a1e4
	AI_4d
@ a1e8

Script_branch_a1e8: @ a1e8
	AI_StatLvlGt DEFENDER, 0x1, 8, Script_branch_a254
	AI_StatLvlGt DEFENDER, 0x2, 8, Script_branch_a254
	AI_StatLvlGt DEFENDER, 0x4, 8, Script_branch_a254
	AI_StatLvlGt DEFENDER, 0x5, 8, Script_branch_a254
	AI_StatLvlGt DEFENDER, 0x7, 8, Script_branch_a254
	AI_Jump Script_branch_a2e0
Script_branch_a254: @ a254
	AI_StatLvlLt ATTACKER, 0x1, 7, Script_branch_a2d4
	AI_StatLvlLt ATTACKER, 0x2, 7, Script_branch_a2d4
	AI_StatLvlLt ATTACKER, 0x4, 7, Script_branch_a2d4
	AI_StatLvlLt ATTACKER, 0x5, 7, Script_branch_a2d4
	AI_StatLvlLt ATTACKER, 0x7, 7, Script_branch_a2cc
	AI_RandomJumpLt 0x32, Script_branch_a2e8
	AI_Jump Script_branch_a2e0
Script_branch_a2cc: @ a2cc
	AI_AddScore 1
Script_branch_a2d4: @ a2d4
	AI_AddScore 1
	AI_4d
@ a2e0

Script_branch_a2e0: @ a2e0
	AI_AddScore -2
Script_branch_a2e8: @ a2e8
	AI_4d
@ a2ec

Script_branch_a2ec: @ a2ec
	AI_9 DEFENDER, 0x7, Script_branch_a43c
	AI_b DEFENDER, 0xf0000, Script_branch_a43c
	AI_b DEFENDER, 0x7, Script_branch_a43c
	AI_HPGt ATTACKER, 30, Script_branch_a340
	AI_RandomJumpLt 0xa, Script_branch_a340
	AI_AddScore -1
Script_branch_a340: @ a340
	AI_HPGt ATTACKER, 50, Script_branch_a364
	AI_RandomJumpLt 0x64, Script_branch_a364
	AI_AddScore -1
Script_branch_a364: @ a364
	AI_37 ATTACKER, COUNTER, Script_branch_a424
	AI_21 DEFENDER
	AI_48
	AI_If35cEq 0x0, Script_branch_a3d4
	AI_50 Script_branch_a3a8
	AI_RandomJumpLt 0x64, Script_branch_a3a8
	AI_AddScore 1
Script_branch_a3a8: @ a3a8
	AI_5e
	AI_If35cNe 0x1, Script_branch_a43c
	AI_RandomJumpLt 0x64, Script_branch_a444
	AI_AddScore 1
	AI_Jump Script_branch_a444
Script_branch_a3d4: @ a3d4
	AI_50 Script_branch_a3f0
	AI_RandomJumpLt 0x64, Script_branch_a3f0
	AI_AddScore 1
Script_branch_a3f0: @ a3f0
	AI_1e 0x0
	AI_19 0x11, Script_branch_a444
	AI_1e 0x2
	AI_19 0xc, Script_branch_a444
	AI_RandomJumpLt 0x32, Script_branch_a444
Script_branch_a424: @ a424
	AI_RandomJumpLt 0x64, Script_branch_a438
	AI_AddScore 4
Script_branch_a438: @ a438
	AI_4d
@ a43c

Script_branch_a43c: @ a43c
	AI_AddScore -1
Script_branch_a444: @ a444
	AI_4d
@ a448


.incbin "./baserom/overlay/overlay_0014.bin", 0xa448, 0xa46c - 0xa448


Script_branch_a46c: @ a46c
	AI_2b 0x0, Script_branch_a51c
	AI_2b 0xa, Script_branch_a51c
	AI_2b 0x14, Script_branch_a51c
	AI_2f ACID_ARMOR, Script_branch_a4a4
	AI_Jump Script_branch_a4c4
Script_branch_a4a4: @ a4a4
	AI_2e
	AI_If35cNe 0x1, Script_branch_a4c4
	AI_AddScore 2
	AI_Jump Script_branch_a524
Script_branch_a4c4: @ a4c4
	AI_55 ATTACKER, 0x10f, Script_branch_a4dc
	AI_Jump Script_branch_a4ec
Script_branch_a4dc: @ a4dc
	AI_AddScore 2
	AI_Jump Script_branch_a524
Script_branch_a4ec: @ a4ec
	AI_39 DEFENDER, DEFENSE_CURL, Script_branch_a51c
	AI_HPGt ATTACKER, 38, Script_branch_a524
	AI_AddScore -1
	AI_Jump Script_branch_a524
Script_branch_a51c: @ a51c
	AI_AddScore -2
Script_branch_a524: @ a524
	AI_4d
@ a528

Script_branch_a528: @ a528
	AI_2b 0x0, Script_branch_a578
	AI_2b 0x14, Script_branch_a578
	AI_2b 0xa, Script_branch_a578
	AI_2e
	AI_If35cEq 0x1, Script_branch_a578
	AI_If35cNe 0x2, Script_branch_a58c
	AI_AddScore 1
	AI_Jump Script_branch_a58c
Script_branch_a578: @ a578
	AI_RandomJumpLt 0x32, Script_branch_a58c
	AI_AddScore -3
Script_branch_a58c: @ a58c
	AI_4d
@ a590

Script_branch_a590: @ a590
	AI_55 ATTACKER, 0x10f, Script_branch_a4dc
	AI_3a DEFENDER, DEFENSE_CURL, Script_branch_a5c0
	AI_AddScore -1
	AI_Jump Script_branch_a700
Script_branch_a5c0: @ a5c0
	AI_2b 0x0, Script_branch_a704
	AI_2b 0xa, Script_branch_a704
	AI_2b 0x14, Script_branch_a704
	AI_55 ATTACKER, 0x10f, Script_branch_a5fc
	AI_Jump Script_branch_a60c
Script_branch_a5fc: @ a5fc
	AI_AddScore 1
	AI_Jump Script_branch_a700
Script_branch_a60c: @ a60c
	AI_9 DEFENDER, 0x80, Script_branch_a6ec
	AI_b DEFENDER, 0x10000000, Script_branch_a6ec
	AI_d DEFENDER, 0x4, Script_branch_a6ec
	AI_2e
	AI_If35cEq 0x3, Script_branch_a660
	AI_If35cEq 0x4, Script_branch_a690
	AI_Jump Script_branch_a6c0
Script_branch_a660: @ a660
	AI_1e 0x1
	AI_19 0x27, Script_branch_a6ec
	AI_1e 0x3
	AI_19 0x22, Script_branch_a6ec
	AI_Jump Script_branch_a6c0
Script_branch_a690: @ a690
	AI_1e 0x1
	AI_If35cEq 0xf, Script_branch_a6ec
	AI_1e 0x3
	AI_If35cEq 0xf, Script_branch_a6ec
	AI_Jump Script_branch_a6c0
Script_branch_a6c0: @ a6c0
	AI_24 0x1, Script_branch_a700
	AI_21 DEFENDER
	AI_49
	AI_If35cNe 0x5e, Script_branch_a6ec
	AI_Jump Script_branch_a700
Script_branch_a6ec: @ a6ec
	AI_RandomJumpLt 0x50, Script_branch_a700
	AI_AddScore 1
Script_branch_a700: @ a700
	AI_4d
@ a704

Script_branch_a704: @ a704
	AI_AddScore 1
	AI_4d
@ a710


.incbin "./baserom/overlay/overlay_0014.bin", 0xa710, 0xa720 - 0xa710


Script_branch_a720: @ a720
	AI_AddScore 2
	AI_4d
@ a72c

Script_branch_a72c: @ a72c
	AI_44 0x1
	AI_11_If35cLt 0x2, Script_branch_a754
	AI_RandomJumpLt 0x50, Script_branch_a754
	AI_AddScore 2
Script_branch_a754: @ a754
	AI_4d
@ a758

Script_branch_a758: @ a758
	AI_HPLt ATTACKER, 40, Script_branch_a7dc
	AI_2e
	AI_If35cEq 0x1, Script_branch_a798
	AI_If35cEq 0x2, Script_branch_a798
	AI_If35cEq 0x3, Script_branch_a798
	AI_Jump Script_branch_a7e4
Script_branch_a798: @ a798
	AI_AddScore 1
	AI_38 ATTACKER, BLIZZARD, Script_branch_a7b8
	AI_AddScore 2
Script_branch_a7b8: @ a7b8
	AI_GetAbility ATTACKER
	AI_If35cNe ICE_BODY, Script_branch_a7e4
	AI_AddScore 2
	AI_Jump Script_branch_a7e4
Script_branch_a7dc: @ a7dc
	AI_AddScore -1
Script_branch_a7e4: @ a7e4
	AI_4d
@ a7e8

Script_branch_a7e8: @ a7e8
	AI_a DEFENDER, 0xd8, Script_branch_a800
	AI_AddScore 1
Script_branch_a800: @ a800
	AI_4d
@ a804

Script_branch_a804: @ a804
	AI_2b 0x0, Script_branch_a898
	AI_2b 0xa, Script_branch_a898
	AI_2b 0x14, Script_branch_a898
	AI_b ATTACKER, 0x1000000, Script_branch_7434
	AI_9 DEFENDER, 0x7, Script_branch_a8b4
	AI_b DEFENDER, 0xf0000, Script_branch_a8a8
	AI_b DEFENDER, 0x7, Script_branch_a8a8
	AI_43 0x1
	AI_If35cNe 0x0, Script_branch_a8bc
	AI_RandomJumpLt 0xc8, Script_branch_a8bc
	AI_AddScore 1
	AI_Jump Script_branch_a8bc
Script_branch_a898: @ a898
	AI_AddScore -1
	AI_Jump Script_branch_a8bc
Script_branch_a8a8: @ a8a8
	AI_RandomJumpLt 0x64, Script_branch_a8bc
Script_branch_a8b4: @ a8b4
	AI_AddScore 1
Script_branch_a8bc: @ a8bc
	AI_4d
@ a8c0

Script_branch_a8c0: @ a8c0
	AI_9 DEFENDER, 0x40, Script_branch_a8d8
	AI_Jump Script_branch_a8e0
Script_branch_a8d8: @ a8d8
	AI_AddScore 1
Script_branch_a8e0: @ a8e0
	AI_4d
@ a8e4

Script_branch_a8e4: @ a8e4
	AI_41 ATTACKER
	AI_19 0xf2, Script_branch_a938
	AI_19 0xfd, Script_branch_a95c
	AI_19 0xfc, Script_branch_aab4
	AI_19 0xfb, Script_branch_abc4
	AI_19 0xe0, Script_branch_ac7c
Script_branch_a928: @ a928
	AI_AddScore -3
	AI_Jump Script_branch_aca4
Script_branch_a938: @ a938
	AI_41 DEFENDER
	AI_19 0x107, Script_branch_a928
	AI_AddScore 5
	AI_Jump Script_branch_aca4
Script_branch_a95c: @ a95c
	AI_41 DEFENDER
	AI_19 0xfe, Script_branch_a928
	AI_9 DEFENDER, 0xff, Script_branch_aa0c
	AI_f DEFENDER, 0x8, Script_branch_aa0c
	AI_1e 0x0
	AI_If35cEq 0x8, Script_branch_aa0c
	AI_If35cEq 0x3, Script_branch_aa0c
	AI_1e 0x2
	AI_If35cEq 0x8, Script_branch_aa0c
	AI_If35cEq 0x3, Script_branch_aa0c
	AI_GetAbility DEFENDER
	AI_If35cEq IMMUNITY, Script_branch_aa0c
	AI_If35cEq MAGIC_GUARD, Script_branch_aa0c
	AI_If35cEq POISON_HEAL, Script_branch_aa0c
	AI_AddScore 5
	AI_Jump Script_branch_aca4
Script_branch_aa0c: @ aa0c
	AI_9 ATTACKER, 0xff, Script_branch_a928
	AI_f ATTACKER, 0x8, Script_branch_a928
	AI_1e 0x1
	AI_If35cEq 0x8, Script_branch_a928
	AI_If35cEq 0x3, Script_branch_a928
	AI_1e 0x3
	AI_If35cEq 0x8, Script_branch_a928
	AI_If35cEq 0x3, Script_branch_a928
	AI_GetAbility ATTACKER
	AI_If35cEq IMMUNITY, Script_branch_a928
	AI_If35cEq MAGIC_GUARD, Script_branch_a928
	AI_If35cEq POISON_HEAL, Script_branch_a928
	AI_If35cEq KLUTZ, Script_branch_a928
	AI_AddScore 5
	AI_Jump Script_branch_aca4
Script_branch_aab4: @ aab4
	AI_41 DEFENDER
	AI_19 0xa8, Script_branch_a928
	AI_GetAbility DEFENDER
	AI_If35cEq WATER_VEIL, Script_branch_ab40
	AI_If35cEq MAGIC_GUARD, Script_branch_ab40
	AI_9 DEFENDER, 0xff, Script_branch_ab40
	AI_f DEFENDER, 0x8, Script_branch_ab40
	AI_1e 0x0
	AI_If35cEq 0xa, Script_branch_ab40
	AI_1e 0x2
	AI_If35cEq 0xa, Script_branch_ab40
	AI_AddScore 5
	AI_Jump Script_branch_aca4
Script_branch_ab40: @ ab40
	AI_GetAbility ATTACKER
	AI_If35cEq WATER_VEIL, Script_branch_a928
	AI_If35cEq MAGIC_GUARD, Script_branch_a928
	AI_If35cEq KLUTZ, Script_branch_73c8
	AI_9 ATTACKER, 0xff, Script_branch_a928
	AI_f ATTACKER, 0x8, Script_branch_a928
	AI_1e 0x1
	AI_If35cEq 0xa, Script_branch_a928
	AI_1e 0x3
	AI_If35cEq 0xa, Script_branch_a928
	AI_AddScore 5
	AI_Jump Script_branch_aca4
Script_branch_abc4: @ abc4
	AI_41 DEFENDER
	AI_19 0x64, Script_branch_a928
	AI_1e 0x0
	AI_If35cEq 0x3, Script_branch_ac24
	AI_1e 0x2
	AI_If35cEq 0x3, Script_branch_ac24
	AI_GetAbility DEFENDER
	AI_If35cEq MAGIC_GUARD, Script_branch_aa0c
	AI_AddScore 5
	AI_Jump Script_branch_aca4
Script_branch_ac24: @ ac24
	AI_1e 0x1
	AI_If35cEq 0x3, Script_branch_a928
	AI_1e 0x3
	AI_If35cEq 0x3, Script_branch_a928
	AI_GetAbility ATTACKER
	AI_If35cEq MAGIC_GUARD, Script_branch_a928
	AI_If35cEq KLUTZ, Script_branch_a928
	AI_AddScore 5
	AI_Jump Script_branch_aca4
Script_branch_ac7c: @ ac7c
	AI_41 DEFENDER
	AI_19 0x20, Script_branch_a928
	AI_RandomJumpLt 0x32, Script_branch_aca4
	AI_AddScore 2
Script_branch_aca4: @ aca4
	AI_4d
@ aca8


.incbin "./baserom/overlay/overlay_0014.bin", 0xaca8, 0xadac - 0xaca8


Script_branch_adac: @ adac
	AI_GetAbility ATTACKER
	AI_19 0xf, Script_branch_add4
	AI_GetAbility DEFENDER
	AI_19 0xa, Script_branch_ade4
Script_branch_add4: @ add4
	AI_AddScore -1
	AI_Jump Script_branch_adf8
Script_branch_ade4: @ ade4
	AI_RandomJumpLt 0x32, Script_branch_adf8
	AI_AddScore 2
Script_branch_adf8: @ adf8
	AI_4d
@ adfc


.incbin "./baserom/overlay/overlay_0014.bin", 0xadfc, 0xae64 - 0xadfc


Script_branch_ae64: @ ae64
	AI_4d
@ ae68

Script_branch_ae68: @ ae68
	AI_2b 0x0, Script_branch_aed4
	AI_2b 0xa, Script_branch_aed4
	AI_2b 0x14, Script_branch_aed4
	AI_StatLvlLt ATTACKER, 0x1, 6, Script_branch_aed4
	AI_24 0x1, Script_branch_aec4
	AI_HPGt ATTACKER, 40, Script_branch_aed4
	AI_Jump Script_branch_aedc
Script_branch_aec4: @ aec4
	AI_HPLt ATTACKER, 60, Script_branch_aedc
Script_branch_aed4: @ aed4
	AI_AddScore -1
Script_branch_aedc: @ aedc
	AI_4d
@ aee0

Script_branch_aee0: @ aee0
	AI_HPGt DEFENDER, 30, Script_branch_af04
	AI_RandomJumpLt 0x64, Script_branch_af04
	AI_AddScore -1
Script_branch_af04: @ af04
	AI_43 0x1
	AI_If35cEq 0x0, Script_branch_af40
	AI_RandomJumpLt 0x96, Script_branch_af54
	AI_AddScore 1
	AI_Jump Script_branch_af54
	AI_RandomJumpLt 0x32, Script_branch_af54
Script_branch_af40: @ af40
	AI_RandomJumpLt 0x1e, Script_branch_af54
	AI_AddScore -1
Script_branch_af54: @ af54
	AI_4d
@ af58

Script_branch_af58: @ af58
	AI_46 0x1
	AI_1a 0xa, Script_branch_af88
	AI_RandomJumpLt 0x32, Script_branch_af90
	AI_AddScore 1
	AI_Jump Script_branch_af90
Script_branch_af88: @ af88
	AI_AddScore -2
Script_branch_af90: @ af90
	AI_4d
@ af94


.incbin "./baserom/overlay/overlay_0014.bin", 0xaf94, 0xafa4 - 0xaf94


Script_branch_afa4: @ afa4
	AI_9 DEFENDER, 0x7, Script_branch_aff0
	AI_b DEFENDER, 0xf0000, Script_branch_aff0
	AI_b DEFENDER, 0x7, Script_branch_aff0
	AI_RandomJumpLt 0xb4, Script_branch_aff0
	AI_AddScore 2
	AI_Jump Script_branch_aff8
Script_branch_aff0: @ aff0
	AI_AddScore -2
Script_branch_aff8: @ aff8
	AI_4d
@ affc

Script_branch_affc: @ affc
	AI_f DEFENDER, 0x1, Script_branch_b024
	AI_f DEFENDER, 0x2, Script_branch_b024
	AI_Jump Script_branch_b02c
Script_branch_b024: @ b024
	AI_AddScore 1
Script_branch_b02c: @ b02c
	AI_4d
@ b030

Script_branch_b030: @ b030
	AI_HPLt DEFENDER, 30, Script_branch_b068
	AI_43 0x1
	AI_12_If35cGt 0x0, Script_branch_b068
	AI_RandomJumpLt 0xb4, Script_branch_b068
	AI_AddScore 1
Script_branch_b068: @ b068
	AI_4d
@ b06c

Script_branch_b06c: @ b06c
	AI_HPLt DEFENDER, 70, Script_branch_b0c8
	AI_24 0x1, Script_branch_b0a8
	AI_HPGt ATTACKER, 40, Script_branch_b0c8
	AI_AddScore 1
	AI_Jump Script_branch_b0d0
Script_branch_b0a8: @ b0a8
	AI_HPGt ATTACKER, 50, Script_branch_b0c8
	AI_AddScore 1
	AI_Jump Script_branch_b0d0
Script_branch_b0c8: @ b0c8
	AI_AddScore -1
Script_branch_b0d0: @ b0d0
	AI_4d
@ b0d4

Script_branch_b0d4: @ b0d4
	AI_2b 0x0, Script_branch_b12c
	AI_2b 0xa, Script_branch_b12c
	AI_2b 0x14, Script_branch_b12c
	AI_24 0x1, Script_branch_b11c
	AI_HPGt DEFENDER, 50, Script_branch_b134
	AI_Jump Script_branch_b12c
Script_branch_b11c: @ b11c
	AI_HPGt DEFENDER, 70, Script_branch_b134
Script_branch_b12c: @ b12c
	AI_AddScore -1
Script_branch_b134: @ b134
	AI_4d
@ b138

Script_branch_b138: @ b138
	AI_43 0x1
	AI_12_If35cGt 0x0, Script_branch_b160
	AI_RandomJumpLt 0x64, Script_branch_b160
	AI_AddScore 2
Script_branch_b160: @ b160
	AI_4d
@ b164

Script_branch_b164: @ b164
	AI_HPLt DEFENDER, 50, Script_branch_b17c
	AI_Jump Script_branch_b184
Script_branch_b17c: @ b17c
	AI_AddScore -1
Script_branch_b184: @ b184
	AI_4d
@ b188

Script_branch_b188: @ b188
	AI_43 0x1
	AI_If35cEq 0x1, Script_branch_b220
	AI_RandomJumpLt 0x1e, Script_branch_b26c
	AI_24 0x1, Script_branch_b1e8
	AI_HPNe ATTACKER, 100, Script_branch_b258
	AI_HPLt DEFENDER, 70, Script_branch_b258
	AI_RandomJumpLt 0x3c, Script_branch_b26c
	AI_Jump Script_branch_b258
Script_branch_b1e8: @ b1e8
	AI_HPGt DEFENDER, 25, Script_branch_b258
	AI_39 DEFENDER, HORN_DRILL, Script_branch_b220
	AI_39 DEFENDER, REST, Script_branch_b220
	AI_Jump Script_branch_b23c
Script_branch_b220: @ b220
	AI_RandomJumpLt 0x96, Script_branch_b26c
	AI_AddScore 2
	AI_Jump Script_branch_b26c
Script_branch_b23c: @ b23c
	AI_RandomJumpLt 0xe6, Script_branch_b258
	AI_AddScore 1
	AI_Jump Script_branch_b26c
Script_branch_b258: @ b258
	AI_RandomJumpLt 0x1e, Script_branch_b26c
	AI_AddScore -2
Script_branch_b26c: @ b26c
	AI_4d
@ b270

Script_branch_b270: @ b270
	AI_HPLt ATTACKER, 50, Script_branch_b2c0
	AI_1e 0x0
	AI_If35cEq 0xd, Script_branch_b2b0
	AI_1e 0x2
	AI_If35cEq 0xd, Script_branch_b2b0
	AI_Jump Script_branch_b2c0
Script_branch_b2b0: @ b2b0
	AI_AddScore 1
	AI_Jump Script_branch_b2c8
Script_branch_b2c0: @ b2c0
	AI_AddScore -1
Script_branch_b2c8: @ b2c8
	AI_4d
@ b2cc

Script_branch_b2cc: @ b2cc
	AI_2b 0x0, Script_branch_b324
	AI_2b 0xa, Script_branch_b324
	AI_2b 0x14, Script_branch_b324
	AI_24 0x1, Script_branch_b314
	AI_HPGt ATTACKER, 60, Script_branch_b32c
	AI_Jump Script_branch_b324
Script_branch_b314: @ b314
	AI_HPGt ATTACKER, 80, Script_branch_b32c
Script_branch_b324: @ b324
	AI_AddScore -1
Script_branch_b32c: @ b32c
	AI_4d
@ b330

Script_branch_b330: @ b330
	AI_HPLt ATTACKER, 50, Script_branch_b380
	AI_1e 0x0
	AI_If35cEq 0xa, Script_branch_b370
	AI_1e 0x2
	AI_If35cEq 0xa, Script_branch_b370
	AI_Jump Script_branch_b380
Script_branch_b370: @ b370
	AI_AddScore 1
	AI_Jump Script_branch_b388
Script_branch_b380: @ b380
	AI_AddScore -1
Script_branch_b388: @ b388
	AI_4d
@ b38c

Script_branch_b38c: @ b38c
	AI_24 0x1, Script_branch_b3c4
	AI_HPGt ATTACKER, 50, Script_branch_b3d8
	AI_RandomJumpLt 0x46, Script_branch_b3d8
	AI_AddScore -1
	AI_Jump Script_branch_b3d8
Script_branch_b3c4: @ b3c4
	AI_RandomJumpLt 0x80, Script_branch_b3d8
	AI_AddScore 1
Script_branch_b3d8: @ b3d8
	AI_4d
@ b3dc

Script_branch_b3dc: @ b3dc
	AI_GetAbility DEFENDER
	AI_If35cEq LEVITATE, Script_branch_b44c
	AI_d DEFENDER, 0x8000000, Script_branch_b44c
	AI_1e 0x0
	AI_If35cEq 0x2, Script_branch_b44c
	AI_1e 0x2
	AI_If35cEq 0x2, Script_branch_b44c
	AI_HPLt ATTACKER, 60, Script_branch_b460
	AI_RandomJumpLt 0x80, Script_branch_b44c
	AI_Jump Script_branch_b460
Script_branch_b44c: @ b44c
	AI_RandomJumpLt 0x40, Script_branch_b460
	AI_AddScore 1
Script_branch_b460: @ b460
	AI_4d
@ b464

Script_branch_b464: @ b464
	AI_1e 0x0
	AI_If35cEq 0x11, Script_branch_b4ac
	AI_1e 0x2
	AI_If35cEq 0x11, Script_branch_b4ac
	AI_StatLvlGt DEFENDER, 0x7, 8, Script_branch_b4b8
	AI_AddScore -2
	AI_4d
@ b4ac

Script_branch_b4ac: @ b4ac
	AI_RandomJumpLt 0x50, Script_branch_b4cc
Script_branch_b4b8: @ b4b8
	AI_RandomJumpLt 0x50, Script_branch_b4cc
	AI_AddScore 2
Script_branch_b4cc: @ b4cc
	AI_4d
@ b4d0

Script_branch_b4d0: @ b4d0
	AI_2b 0x0, Script_branch_b50c
	AI_2b 0x14, Script_branch_b50c
	AI_2b 0xa, Script_branch_b50c
	AI_9 DEFENDER, 0x7, Script_branch_b51c
	AI_Jump Script_branch_b524
Script_branch_b50c: @ b50c
	AI_AddScore -1
	AI_Jump Script_branch_b524
Script_branch_b51c: @ b51c
	AI_AddScore 1
Script_branch_b524: @ b524
	AI_4d
@ b528

Script_branch_b528: @ b528
	AI_2b 0x0, Script_branch_b560
	AI_2b 0x14, Script_branch_b560
	AI_2b 0xa, Script_branch_b560
	AI_24 0x1, Script_branch_b56c
	AI_Jump Script_branch_b574
Script_branch_b560: @ b560
	AI_AddScore -1
	AI_4d
@ b56c

Script_branch_b56c: @ b56c
	AI_AddScore 1
Script_branch_b574: @ b574
	AI_4d
@ b578

Script_branch_b578: @ b578
	AI_4d
@ b57c

Script_branch_b57c: @ b57c
	AI_2b 0x0, Script_branch_b5d4
	AI_2b 0x14, Script_branch_b5d4
	AI_2b 0xa, Script_branch_b5d4
	AI_HPGt DEFENDER, 50, Script_branch_b5dc
	AI_AddScore 1
	AI_RandomJumpLt 0x80, Script_branch_b5dc
	AI_AddScore 1
	AI_Jump Script_branch_b5dc
Script_branch_b5d4: @ b5d4
	AI_AddScore -1
Script_branch_b5dc: @ b5dc
	AI_4d
@ b5e0

Script_branch_b5e0: @ b5e0
	AI_39 DEFENDER, DEFENSE_CURL, Script_branch_b604
	AI_RandomJumpLt 0x40, Script_branch_b604
	AI_Jump Script_branch_b708
Script_branch_b604: @ b604
	AI_9 ATTACKER, 0x80, Script_branch_b688
	AI_b ATTACKER, 0x10000000, Script_branch_b688
	AI_d ATTACKER, 0x20, Script_branch_b688
	AI_b ATTACKER, 0xf0000, Script_branch_b688
	AI_d ATTACKER, 0x4, Script_branch_b688
	AI_d ATTACKER, 0x1800, Script_branch_b688
	AI_HPEq DEFENDER, 100, Script_branch_b69c
	AI_41 DEFENDER
	AI_1a 0x21, Script_branch_b69c
Script_branch_b688: @ b688
	AI_RandomJumpLt 0x80, Script_branch_b69c
	AI_AddScore 1
Script_branch_b69c: @ b69c
	AI_4a 0x0
	AI_If35cEq 0x0, Script_branch_b6c8
	AI_If35cEq 0x1, Script_branch_b6e4
	AI_12_If35cGt 0x2, Script_branch_b700
Script_branch_b6c8: @ b6c8
	AI_RandomJumpLt 0x80, Script_branch_b708
	AI_AddScore 1
	AI_Jump Script_branch_b708
Script_branch_b6e4: @ b6e4
	AI_RandomJumpLt 0xc0, Script_branch_b708
	AI_AddScore 1
	AI_Jump Script_branch_b708
Script_branch_b700: @ b700
	AI_AddScore -2
Script_branch_b708: @ b708
	AI_4d
@ b70c


.incbin "./baserom/overlay/overlay_0014.bin", 0xb70c, 0xb718 - 0xb70c


Script_branch_b718: @ b718
	AI_2b 0x0, Script_branch_b780
	AI_2b 0x14, Script_branch_b780
	AI_2b 0xa, Script_branch_b780
	AI_43 0x1
	AI_If35cEq 0x0, Script_branch_b764
	AI_RandomJumpLt 0x40, Script_branch_b764
	AI_AddScore 1
Script_branch_b764: @ b764
	AI_RandomJumpLt 0x80, Script_branch_b788
	AI_AddScore 1
	AI_Jump Script_branch_b788
Script_branch_b780: @ b780
	AI_AddScore -1
Script_branch_b788: @ b788
	AI_4d
@ b78c

Script_branch_b78c: @ b78c
	AI_RandomJumpLt 0x40, Script_branch_b7e8
	AI_24 0x0, Script_branch_b7e0
	AI_HPLt ATTACKER, 31, Script_branch_b7e0
	AI_HPGt ATTACKER, 75, Script_branch_b7d0
	AI_RandomJumpLt 0x40, Script_branch_b7e8
Script_branch_b7d0: @ b7d0
	AI_AddScore 1
	AI_Jump Script_branch_b7e8
Script_branch_b7e0: @ b7e0
	AI_AddScore -1
Script_branch_b7e8: @ b7e8
	AI_4d
@ b7ec

Script_branch_b7ec: @ b7ec
	AI_HPLt ATTACKER, 51, Script_branch_b834
	AI_HPGt ATTACKER, 90, Script_branch_b818
	AI_RandomJumpLt 0x80, Script_branch_b83c
Script_branch_b818: @ b818
	AI_RandomJumpLt 0x40, Script_branch_b83c
	AI_AddScore 1
	AI_Jump Script_branch_b83c
Script_branch_b834: @ b834
	AI_AddScore -1
Script_branch_b83c: @ b83c
	AI_4d
@ b840

Script_branch_b840: @ b840
	AI_9 DEFENDER, 0x7, Script_branch_b954
	AI_b DEFENDER, 0xf0000, Script_branch_b954
	AI_b DEFENDER, 0x7, Script_branch_b954
	AI_39 DEFENDER, FEINT_ATTACK, Script_branch_b954
	AI_39 DEFENDER, MIND_READER, Script_branch_b954
	AI_39 DEFENDER, STUN_SPORE, Script_branch_b954
	AI_HPGt ATTACKER, 30, Script_branch_b8c4
	AI_RandomJumpLt 0xa, Script_branch_b8c4
	AI_AddScore -1
Script_branch_b8c4: @ b8c4
	AI_HPGt ATTACKER, 50, Script_branch_b8e8
	AI_RandomJumpLt 0x64, Script_branch_b8e8
	AI_AddScore -1
Script_branch_b8e8: @ b8e8
	AI_RandomJumpLt 0xc0, Script_branch_b8fc
	AI_AddScore 1
Script_branch_b8fc: @ b8fc
	AI_21 DEFENDER
	AI_48
	AI_If35cEq 0x0, Script_branch_b930
	AI_50 Script_branch_b930
	AI_RandomJumpLt 0x64, Script_branch_b930
	AI_AddScore 1
Script_branch_b930: @ b930
	AI_50 Script_branch_b95c
	AI_RandomJumpLt 0x64, Script_branch_b95c
	AI_AddScore 1
	AI_Jump Script_branch_b95c
Script_branch_b954: @ b954
	AI_AddScore -1
Script_branch_b95c: @ b95c
	AI_4d
@ b960

Script_branch_b960: @ b960
	AI_2b 0x0, Script_branch_b9a8
	AI_2b 0xa, Script_branch_b9a8
	AI_2b 0x14, Script_branch_b9a8
	AI_26 ATTACKER
	AI_If35cEq 0x0, Script_branch_ba70
	AI_62 Script_branch_b9b8
	AI_Jump Script_branch_b9cc
Script_branch_b9a8: @ b9a8
	AI_AddScore -1
	AI_Jump Script_branch_ba70
Script_branch_b9b8: @ b9b8
	AI_RandomJumpLt 0x40, Script_branch_b9cc
	AI_AddScore -2
Script_branch_b9cc: @ b9cc
	AI_61 0x0, Script_branch_b9f4
	AI_RandomJumpLt 0x40, Script_branch_b9f4
	AI_AddScore -2
	AI_Jump Script_branch_ba70
Script_branch_b9f4: @ b9f4
	AI_HPGt DEFENDER, 70, Script_branch_ba28
	AI_HPGt DEFENDER, 30, Script_branch_ba3c
	AI_RandomJumpLt 0x80, Script_branch_ba50
	AI_Jump Script_branch_ba3c
Script_branch_ba28: @ ba28
	AI_RandomJumpLt 0x40, Script_branch_ba3c
	AI_AddScore 1
Script_branch_ba3c: @ ba3c
	AI_RandomJumpLt 0x80, Script_branch_ba50
	AI_AddScore 1
Script_branch_ba50: @ ba50
	AI_24 0x0, Script_branch_ba68
	AI_RandomJumpLt 0x80, Script_branch_ba70
Script_branch_ba68: @ ba68
	AI_AddScore 1
Script_branch_ba70: @ ba70
	AI_4d
@ ba74

Script_branch_ba74: @ ba74
	AI_2b 0x0, Script_branch_bacc
	AI_2b 0xa, Script_branch_bacc
	AI_2b 0x14, Script_branch_bacc
	AI_24 0x1, Script_branch_babc
	AI_HPGt ATTACKER, 60, Script_branch_bad4
	AI_Jump Script_branch_bacc
Script_branch_babc: @ babc
	AI_HPGt ATTACKER, 80, Script_branch_bad4
Script_branch_bacc: @ bacc
	AI_AddScore -1
Script_branch_bad4: @ bad4
	AI_4d
@ bad8

Script_branch_bad8: @ bad8
	AI_2b 0x0, Script_branch_bb30
	AI_2b 0x14, Script_branch_bb30
	AI_2b 0xa, Script_branch_bb30
	AI_24 0x0, Script_branch_bb38
	AI_HPLt ATTACKER, 30, Script_branch_bb38
	AI_RandomJumpLt 0x40, Script_branch_bb38
	AI_AddScore 1
	AI_4d
@ bb30

Script_branch_bb30: @ bb30
	AI_AddScore -1
Script_branch_bb38: @ bb38
	AI_4d
@ bb3c

Script_branch_bb3c: @ bb3c
	AI_2b 0x0, Script_branch_bba8
	AI_2b 0x14, Script_branch_bba8
	AI_2b 0xa, Script_branch_bba8
	AI_24 0x0, Script_branch_bbcc
	AI_GetAbility ATTACKER
	AI_If35cEq ROUGH_SKIN, Script_branch_bbb8
	AI_41 ATTACKER
	AI_19 0xf, Script_branch_bbb8
	AI_RandomJumpLt 0x80, Script_branch_bbb8
	AI_Jump Script_branch_bbcc
Script_branch_bba8: @ bba8
	AI_AddScore -1
	AI_Jump Script_branch_bbcc
Script_branch_bbb8: @ bbb8
	AI_RandomJumpLt 0x80, Script_branch_bbcc
	AI_AddScore 1
Script_branch_bbcc: @ bbcc
	AI_4d
@ bbd0


.incbin "./baserom/overlay/overlay_0014.bin", 0xbbd0, 0xbbdc - 0xbbd0


Script_branch_bbdc: @ bbdc
	AI_RandomJumpLt 0x80, Script_branch_bbf0
	AI_AddScore 1
Script_branch_bbf0: @ bbf0
	AI_4d
@ bbf4

Script_branch_bbf4: @ bbf4
	AI_2b 0x0, Script_branch_bcc8
	AI_2b 0x14, Script_branch_bcc8
	AI_2b 0xa, Script_branch_bcc8
	AI_5a ATTACKER
	AI_11_If35cLt 0x1e, Script_branch_bc60
	AI_12_If35cGt 0x5a, Script_branch_bc70
	AI_12_If35cGt 0x3c, Script_branch_bcac
	AI_RandomJumpLt 0x80, Script_branch_bce4
	AI_AddScore -1
	AI_Jump Script_branch_bce4
Script_branch_bc60: @ bc60
	AI_AddScore -2
	AI_Jump Script_branch_bce4
Script_branch_bc70: @ bc70
	AI_2b 0x50, Script_branch_bca4
	AI_2b 0xa0, Script_branch_bca4
	AI_RandomJumpLt 0x80, Script_branch_bcac
	AI_AddScore 1
	AI_Jump Script_branch_bcac
Script_branch_bca4: @ bca4
	AI_AddScore 4
Script_branch_bcac: @ bcac
	AI_RandomJumpLt 0x40, Script_branch_bce4
	AI_AddScore 1
	AI_Jump Script_branch_bce4
Script_branch_bcc8: @ bcc8
	AI_41 ATTACKER
	AI_19 0x3, Script_branch_bce4
	AI_AddScore -1
Script_branch_bce4: @ bce4
	AI_4d
@ bce8


.incbin "./baserom/overlay/overlay_0014.bin", 0xbce8, 0xbd00 - 0xbce8


Script_branch_bd00: @ bd00
	AI_a ATTACKER, 0xff, Script_branch_73ec
	AI_RandomJumpLt 0x80, Script_branch_bd34
	AI_HPLt DEFENDER, 30, Script_branch_bd34
	AI_AddScore 1
Script_branch_bd34: @ bd34
	AI_4d
@ bd38

Script_branch_bd38: @ bd38
	AI_2b 0x0, Script_branch_be38
	AI_2b 0x14, Script_branch_be38
	AI_2b 0xa, Script_branch_be38
	AI_5b
	AI_If35cEq 0x1, Script_branch_be28
	AI_If35cEq 0x2, Script_branch_be04
	AI_If35cEq 0x3, Script_branch_be0c
	AI_GetAbility DEFENDER
	AI_If35cNe PRESSURE, Script_branch_bdac
	AI_RandomJumpLt 0x1e, Script_branch_bdac
	AI_AddScore 1
Script_branch_bdac: @ bdac
	AI_StatLvlGt DEFENDER, 0x7, 10, Script_branch_be04
	AI_StatLvlLt ATTACKER, 0x6, 2, Script_branch_be04
	AI_StatLvlGt DEFENDER, 0x7, 8, Script_branch_be0c
	AI_StatLvlLt ATTACKER, 0x6, 4, Script_branch_be0c
	AI_Jump Script_branch_be40
Script_branch_be04: @ be04
	AI_AddScore 1
Script_branch_be0c: @ be0c
	AI_RandomJumpLt 0x64, Script_branch_be40
	AI_AddScore 1
	AI_Jump Script_branch_be40
Script_branch_be28: @ be28
	AI_AddScore 3
	AI_Jump Script_branch_be40
Script_branch_be38: @ be38
	AI_AddScore -1
Script_branch_be40: @ be40
	AI_4d
@ be44

Script_branch_be44: @ be44
	AI_39 DEFENDER, ICE_PUNCH, Script_branch_bf58
	AI_39 DEFENDER, HORN_DRILL, Script_branch_bf58
	AI_39 DEFENDER, SLEEP_TALK, Script_branch_bf58
	AI_39 DEFENDER, ROCK_SLIDE, Script_branch_bf58
	AI_39 DEFENDER, CONSTRICT, Script_branch_bf58
	AI_39 DEFENDER, THRASH, Script_branch_bf58
	AI_39 DEFENDER, SUPER_FANG, Script_branch_bf58
	AI_39 DEFENDER, DOUBLE_SLAP, Script_branch_bf58
	AI_39 DEFENDER, POWDER_SNOW, Script_branch_bf58
	AI_39 DEFENDER, BEAT_UP, Script_branch_bf58
	AI_39 DEFENDER, THUNDER_SHOCK, Script_branch_bf58
	AI_39 DEFENDER, PAIN_SPLIT, Script_branch_bf58
	AI_39 DEFENDER, HELPING_HAND, Script_branch_bf58
	AI_d ATTACKER, 0x4, Script_branch_bf58
	AI_d DEFENDER, 0x1000000, Script_branch_bf58
	AI_d DEFENDER, 0x400, Script_branch_bf58
	AI_RandomJumpLt 0x60, Script_branch_bf58
	AI_Jump Script_branch_bf6c
Script_branch_bf58: @ bf58
	AI_RandomJumpLt 0x19, Script_branch_bf6c
	AI_AddScore 1
Script_branch_bf6c: @ bf6c
	AI_4d
@ bf70

Script_branch_bf70: @ bf70
	AI_2b 0x0, Script_branch_c004
	AI_2b 0x14, Script_branch_c004
	AI_2b 0xa, Script_branch_c004
	AI_HPLt DEFENDER, 50, Script_branch_c004
	AI_HPEq DEFENDER, 100, Script_branch_bfcc
	AI_HPGt DEFENDER, 85, Script_branch_bfe8
	AI_Jump Script_branch_c00c
Script_branch_bfcc: @ bfcc
	AI_24 0x1, Script_branch_bfe0
	AI_AddScore 1
Script_branch_bfe0: @ bfe0
	AI_AddScore 1
Script_branch_bfe8: @ bfe8
	AI_RandomJumpLt 0x19, Script_branch_c00c
	AI_AddScore 1
	AI_Jump Script_branch_c00c
Script_branch_c004: @ c004
	AI_AddScore -1
Script_branch_c00c: @ c00c
	AI_4d
@ c010

Script_branch_c010: @ c010
	AI_HPGt ATTACKER, 90, Script_branch_c048
	AI_HPGt ATTACKER, 60, Script_branch_c064
	AI_HPGt ATTACKER, 30, Script_branch_c080
	AI_Jump Script_branch_73b0
Script_branch_c048: @ c048
	AI_RandomJumpLt 0x60, Script_branch_c09c
	AI_AddScore 1
	AI_Jump Script_branch_c09c
Script_branch_c064: @ c064
	AI_RandomJumpLt 0x80, Script_branch_c09c
	AI_AddScore 1
	AI_Jump Script_branch_c09c
Script_branch_c080: @ c080
	AI_RandomJumpLt 0xa4, Script_branch_c09c
	AI_AddScore 1
	AI_Jump Script_branch_c09c
Script_branch_c09c: @ c09c
	AI_4d
@ c0a0

Script_branch_c0a0: @ c0a0
	AI_RandomJumpLt 0x40, Script_branch_c108
	AI_AddScore 1
	AI_HPGt DEFENDER, 70, Script_branch_c108
	AI_RandomJumpLt 0x80, Script_branch_c0d8
	AI_AddScore -1
Script_branch_c0d8: @ c0d8
	AI_HPGt DEFENDER, 50, Script_branch_c108
	AI_AddScore -1
	AI_HPGt DEFENDER, 30, Script_branch_c108
	AI_AddScore -1
Script_branch_c108: @ c108
	AI_4d
@ c10c

Script_branch_c10c: @ c10c
	AI_HPLt ATTACKER, 70, Script_branch_c170
	AI_39 DEFENDER, LEER, Script_branch_c160
	AI_39 DEFENDER, OUTRAGE, Script_branch_c160
	AI_39 DEFENDER, SPARK, Script_branch_c160
	AI_RandomJumpLt 0x40, Script_branch_c160
	AI_Jump Script_branch_c178
Script_branch_c160: @ c160
	AI_AddScore 1
	AI_Jump Script_branch_c178
Script_branch_c170: @ c170
	AI_AddScore -1
Script_branch_c178: @ c178
	AI_4d
@ c17c

Script_branch_c17c: @ c17c
	AI_24 0x1, Script_branch_c1f4
	AI_63 0x0, 0x0, Script_branch_c1a0
	AI_Jump Script_branch_c1b4
Script_branch_c1a0: @ c1a0
	AI_RandomJumpLt 0x20, Script_branch_c1b4
	AI_AddScore 1
Script_branch_c1b4: @ c1b4
	AI_5e
	AI_If35cEq 0x2, Script_branch_c1d8
	AI_RandomJumpLt 0x80, Script_branch_c1fc
	AI_AddScore 1
Script_branch_c1d8: @ c1d8
	AI_RandomJumpLt 0x40, Script_branch_c1fc
	AI_AddScore 1
	AI_Jump Script_branch_c1fc
Script_branch_c1f4: @ c1f4
	AI_AddScore -2
Script_branch_c1fc: @ c1fc
	AI_4d
@ c200

Script_branch_c200: @ c200
	AI_24 0x1, Script_branch_c268
	AI_63 0x0, 0x0, Script_branch_c24c
	AI_21 DEFENDER
	AI_1a 0x1d, Script_branch_c268
	AI_RandomJumpLt 0x80, Script_branch_c2a0
	AI_AddScore 2
	AI_Jump Script_branch_c2a0
Script_branch_c24c: @ c24c
	AI_RandomJumpLt 0x20, Script_branch_c2a0
	AI_AddScore 2
	AI_Jump Script_branch_c2a0
Script_branch_c268: @ c268
	AI_63 0x0, 0x0, Script_branch_c2a0
	AI_21 DEFENDER
	AI_19 0x6, Script_branch_c2a0
	AI_RandomJumpLt 0x50, Script_branch_c2a0
	AI_AddScore -1
Script_branch_c2a0: @ c2a0
	AI_4d
@ c2a4


.incbin "./baserom/overlay/overlay_0014.bin", 0xc2a4, 0xc364 - 0xc2a4


Script_branch_c364: @ c364
	AI_65 DEFENDER, 0x1
	AI_12_If35cGt 0x3, Script_branch_c3a8
	AI_12_If35cGt 0x1, Script_branch_c3e0
	AI_12_If35cGt 0x0, Script_branch_c418
	AI_If35cEq 0x0, Script_branch_c450
	AI_Jump Script_branch_c514
Script_branch_c3a8: @ c3a8
	AI_65 DEFENDER, 0x4
	AI_12_If35cGt 0x3, Script_branch_c488
	AI_12_If35cGt 0x1, Script_branch_c4a4
	AI_If35cEq 0x0, Script_branch_c4c0
	AI_Jump Script_branch_c514
Script_branch_c3e0: @ c3e0
	AI_65 DEFENDER, 0x4
	AI_12_If35cGt 0x3, Script_branch_c4a4
	AI_12_If35cGt 0x1, Script_branch_c4c0
	AI_If35cEq 0x0, Script_branch_c4dc
	AI_Jump Script_branch_c514
Script_branch_c418: @ c418
	AI_65 DEFENDER, 0x4
	AI_12_If35cGt 0x3, Script_branch_c4c0
	AI_12_If35cGt 0x1, Script_branch_c4dc
	AI_If35cEq 0x0, Script_branch_c4f8
	AI_Jump Script_branch_c514
Script_branch_c450: @ c450
	AI_65 DEFENDER, 0x4
	AI_12_If35cGt 0x3, Script_branch_c4c0
	AI_12_If35cGt 0x1, Script_branch_c4dc
	AI_12_If35cGt 0x0, Script_branch_c4f8
	AI_Jump Script_branch_c514
Script_branch_c488: @ c488
	AI_RandomJumpLt 0x80, Script_branch_c4a4
	AI_AddScore 5
	AI_Jump Script_branch_c514
Script_branch_c4a4: @ c4a4
	AI_RandomJumpLt 0x80, Script_branch_c4c0
	AI_AddScore 4
	AI_Jump Script_branch_c514
Script_branch_c4c0: @ c4c0
	AI_RandomJumpLt 0x80, Script_branch_c4dc
	AI_AddScore 3
	AI_Jump Script_branch_c514
Script_branch_c4dc: @ c4dc
	AI_RandomJumpLt 0x80, Script_branch_c4f8
	AI_AddScore 2
	AI_Jump Script_branch_c514
Script_branch_c4f8: @ c4f8
	AI_RandomJumpLt 0x80, Script_branch_c514
	AI_AddScore 1
	AI_Jump Script_branch_c514
Script_branch_c514: @ c514
	AI_4d
@ c518

Script_branch_c518: @ c518
	AI_65 DEFENDER, 0x2
	AI_12_If35cGt 0x3, Script_branch_c55c
	AI_12_If35cGt 0x1, Script_branch_c594
	AI_12_If35cGt 0x0, Script_branch_c5cc
	AI_If35cEq 0x0, Script_branch_c604
	AI_Jump Script_branch_c6c8
Script_branch_c55c: @ c55c
	AI_65 DEFENDER, 0x5
	AI_12_If35cGt 0x3, Script_branch_c63c
	AI_12_If35cGt 0x1, Script_branch_c658
	AI_If35cEq 0x0, Script_branch_c674
	AI_Jump Script_branch_c6c8
Script_branch_c594: @ c594
	AI_65 DEFENDER, 0x5
	AI_12_If35cGt 0x3, Script_branch_c658
	AI_12_If35cGt 0x1, Script_branch_c674
	AI_If35cEq 0x0, Script_branch_c690
	AI_Jump Script_branch_c6c8
Script_branch_c5cc: @ c5cc
	AI_65 DEFENDER, 0x5
	AI_12_If35cGt 0x3, Script_branch_c674
	AI_12_If35cGt 0x1, Script_branch_c690
	AI_If35cEq 0x0, Script_branch_c6ac
	AI_Jump Script_branch_c6c8
Script_branch_c604: @ c604
	AI_65 DEFENDER, 0x5
	AI_12_If35cGt 0x3, Script_branch_c674
	AI_12_If35cGt 0x1, Script_branch_c690
	AI_12_If35cGt 0x0, Script_branch_c6ac
	AI_Jump Script_branch_c6c8
Script_branch_c63c: @ c63c
	AI_RandomJumpLt 0x80, Script_branch_c658
	AI_AddScore 5
	AI_Jump Script_branch_c6c8
Script_branch_c658: @ c658
	AI_RandomJumpLt 0x80, Script_branch_c674
	AI_AddScore 4
	AI_Jump Script_branch_c6c8
Script_branch_c674: @ c674
	AI_RandomJumpLt 0x80, Script_branch_c690
	AI_AddScore 3
	AI_Jump Script_branch_c6c8
Script_branch_c690: @ c690
	AI_RandomJumpLt 0x80, Script_branch_c6ac
	AI_AddScore 2
	AI_Jump Script_branch_c6c8
Script_branch_c6ac: @ c6ac
	AI_RandomJumpLt 0x80, Script_branch_c6c8
	AI_AddScore 1
	AI_Jump Script_branch_c6c8
Script_branch_c6c8: @ c6c8
	AI_4d
@ c6cc

Script_branch_c6cc: @ c6cc
	AI_2b 0x0, Script_branch_c78c
	AI_2b 0x14, Script_branch_c78c
	AI_2b 0xa, Script_branch_c78c
	AI_64 0x0
	AI_12_If35cGt 0x6, Script_branch_c73c
	AI_12_If35cGt 0x5, Script_branch_c750
	AI_12_If35cGt 0x4, Script_branch_c764
	AI_12_If35cGt 0x3, Script_branch_c778
	AI_12_If35cGt 0x2, Script_branch_c778
	AI_Jump Script_branch_c78c
Script_branch_c73c: @ c73c
	AI_RandomJumpLt 0x80, Script_branch_c750
	AI_AddScore 4
Script_branch_c750: @ c750
	AI_RandomJumpLt 0x80, Script_branch_c764
	AI_AddScore 3
Script_branch_c764: @ c764
	AI_RandomJumpLt 0x80, Script_branch_c778
	AI_AddScore 2
Script_branch_c778: @ c778
	AI_RandomJumpLt 0x80, Script_branch_c78c
	AI_AddScore 1
Script_branch_c78c: @ c78c
	AI_4d
@ c790

Script_branch_c790: @ c790
	AI_2b 0x0, Script_branch_c7c8
	AI_2b 0x14, Script_branch_c7c8
	AI_2b 0xa, Script_branch_c7c8
	AI_5c ATTACKER, Script_branch_c7d8
	AI_Jump Script_branch_c7e0
Script_branch_c7c8: @ c7c8
	AI_AddScore -1
	AI_Jump Script_branch_c7e0
Script_branch_c7d8: @ c7d8
	AI_AddScore 1
Script_branch_c7e0: @ c7e0
	AI_4d
@ c7e4

Script_branch_c7e4: @ c7e4
	AI_38 DEFENDER, REST, Script_branch_c7fc
	AI_AddScore 1
Script_branch_c7fc: @ c7fc
	AI_HPLt ATTACKER, 50, Script_branch_c820
	AI_RandomJumpLt 0x80, Script_branch_c820
	AI_AddScore 1
Script_branch_c820: @ c820
	AI_RandomJumpLt 0x40, Script_branch_c83c
	AI_AddScore 1
	AI_Jump Script_branch_c83c
Script_branch_c83c: @ c83c
	AI_4d
@ c840

Script_branch_c840: @ c840
	AI_2b 0x0, Script_branch_c880
	AI_2b 0x14, Script_branch_c880
	AI_2b 0xa, Script_branch_c880
	AI_RandomJumpLt 0x40, Script_branch_c888
	AI_AddScore 1
	AI_Jump Script_branch_c888
Script_branch_c880: @ c880
	AI_AddScore -1
Script_branch_c888: @ c888
	AI_4d
@ c88c

Script_branch_c88c: @ c88c
	AI_RandomJumpLt 0x80, Script_branch_c8dc
	AI_AddScore 1
	AI_37 ATTACKER, ROAR, Script_branch_c8c8
	AI_37 ATTACKER, WHIRLWIND, Script_branch_c8c8
	AI_Jump Script_branch_c8dc
Script_branch_c8c8: @ c8c8
	AI_RandomJumpLt 0x40, Script_branch_c8dc
	AI_AddScore 1
Script_branch_c8dc: @ c8dc
	AI_4d
@ c8e0

Script_branch_c8e0: @ c8e0
	AI_StatLvlGt DEFENDER, 0x1, 7, Script_branch_c95c
	AI_StatLvlGt DEFENDER, 0x2, 7, Script_branch_c95c
	AI_StatLvlGt DEFENDER, 0x4, 7, Script_branch_c95c
	AI_StatLvlGt DEFENDER, 0x5, 7, Script_branch_c95c
	AI_StatLvlGt DEFENDER, 0x7, 7, Script_branch_c95c
	AI_b DEFENDER, 0x100000, Script_branch_c95c
	AI_Jump Script_branch_c9f8
Script_branch_c95c: @ c95c
	AI_StatLvlLt ATTACKER, 0x1, 7, Script_branch_c9ec
	AI_StatLvlLt ATTACKER, 0x2, 7, Script_branch_c9ec
	AI_StatLvlLt ATTACKER, 0x4, 7, Script_branch_c9ec
	AI_StatLvlLt ATTACKER, 0x5, 7, Script_branch_c9ec
	AI_StatLvlLt ATTACKER, 0x7, 7, Script_branch_c9e4
	AI_c ATTACKER, 0x100000, Script_branch_c9ec
	AI_RandomJumpLt 0x32, Script_branch_ca00
	AI_Jump Script_branch_c9f8
Script_branch_c9e4: @ c9e4
	AI_AddScore 1
Script_branch_c9ec: @ c9ec
	AI_AddScore 1
	AI_4d
@ c9f8

Script_branch_c9f8: @ c9f8
	AI_AddScore -2
Script_branch_ca00: @ ca00
	AI_4d
@ ca04

Script_branch_ca04: @ ca04
	AI_HPLt ATTACKER, 30, Script_branch_ca28
	AI_RandomJumpLt 0x80, Script_branch_ca28
	AI_AddScore 1
Script_branch_ca28: @ ca28
	AI_4d
@ ca2c

Script_branch_ca2c: @ ca2c
	AI_HPLt ATTACKER, 50, Script_branch_cab8
	AI_37 DEFENDER, EARTHQUAKE, Script_branch_ca74
	AI_37 DEFENDER, EARTH_POWER, Script_branch_ca74
	AI_37 DEFENDER, FISSURE, Script_branch_ca74
	AI_Jump Script_branch_ca7c
Script_branch_ca74: @ ca74
	AI_AddScore 1
Script_branch_ca7c: @ ca7c
	AI_1e 0x0
	AI_If35cEq 0x4, Script_branch_cab0
	AI_1e 0x2
	AI_If35cEq 0x4, Script_branch_cab0
	AI_RandomJumpLt 0x80, Script_branch_cab8
Script_branch_cab0: @ cab0
	AI_AddScore 1
Script_branch_cab8: @ cab8
	AI_4d
@ cabc


.incbin "./baserom/overlay/overlay_0014.bin", 0xcabc, 0xcacc - 0xcabc


Script_branch_cacc: @ cacc
	AI_f DEFENDER, 0x2, Script_branch_cb24
	AI_f DEFENDER, 0x1, Script_branch_cb24
	AI_f DEFENDER, 0x4, Script_branch_cb9c
	AI_f DEFENDER, 0x80, Script_branch_cb9c
	AI_f DEFENDER, 0x400, Script_branch_cb9c
	AI_Jump Script_branch_cbc8
Script_branch_cb24: @ cb24
	AI_HPGt ATTACKER, 30, Script_branch_cb48
	AI_26 ATTACKER
	AI_If35cEq 0x0, Script_branch_cbec
Script_branch_cb48: @ cb48
	AI_AddScore 1
	AI_26 DEFENDER
	AI_If35cEq 0x0, Script_branch_cc18
	AI_f DEFENDER, 0x4, Script_branch_cbac
	AI_f DEFENDER, 0x80, Script_branch_cbac
	AI_f DEFENDER, 0x400, Script_branch_cbac
	AI_Jump Script_branch_cbc8
Script_branch_cb9c: @ cb9c
	AI_AddScore -2
	AI_Jump Script_branch_cbc8
Script_branch_cbac: @ cbac
	AI_RandomJumpLt 0x80, Script_branch_cbc8
	AI_AddScore -1
	AI_Jump Script_branch_cbc8
Script_branch_cbc8: @ cbc8
	AI_HPLt ATTACKER, 70, Script_branch_cbec
	AI_StatLvlGt DEFENDER, 0x7, 3, Script_branch_cc00
Script_branch_cbec: @ cbec
	AI_RandomJumpLt 0x32, Script_branch_cc00
	AI_AddScore -2
Script_branch_cc00: @ cc00
	AI_HPGt DEFENDER, 70, Script_branch_cc18
	AI_AddScore -2
Script_branch_cc18: @ cc18
	AI_4d
@ cc1c

Script_branch_cc1c: @ cc1c
	AI_45
	AI_15_If35cTstNe 0x2, Script_branch_cc80
	AI_HPGt ATTACKER, 30, Script_branch_cc50
	AI_26 ATTACKER
	AI_If35cEq 0x0, Script_branch_cc80
Script_branch_cc50: @ cc50
	AI_24 0x1, Script_branch_cc6c
	AI_AddScore -1
	AI_Jump Script_branch_cc80
Script_branch_cc6c: @ cc6c
	AI_RandomJumpLt 0x40, Script_branch_cc80
	AI_AddScore 3
Script_branch_cc80: @ cc80
	AI_4d
@ cc84

Script_branch_cc84: @ cc84
	AI_2b 0x0, Script_branch_ccc8
	AI_2b 0x14, Script_branch_ccc8
	AI_2b 0xa, Script_branch_ccc8
	AI_2e
	AI_If35cNe 0x4, Script_branch_ccdc
	AI_AddScore 1
	AI_Jump Script_branch_ccdc
Script_branch_ccc8: @ ccc8
	AI_RandomJumpLt 0x32, Script_branch_ccdc
	AI_AddScore -3
Script_branch_ccdc: @ ccdc
	AI_4d
@ cce0


.incbin "./baserom/overlay/overlay_0014.bin", 0xcce0, 0xcce4 - 0xcce0


Script_branch_cce4: @ cce4
	AI_StatLvlEq DEFENDER, 0x4, 6, Script_branch_cd40
	AI_AddScore -1
	AI_HPGt ATTACKER, 90, Script_branch_cd18
	AI_AddScore -1
Script_branch_cd18: @ cd18
	AI_StatLvlGt DEFENDER, 0x4, 3, Script_branch_cd40
	AI_RandomJumpLt 0x32, Script_branch_cd40
	AI_AddScore -2
Script_branch_cd40: @ cd40
	AI_HPGt DEFENDER, 70, Script_branch_cd58
	AI_AddScore -2
Script_branch_cd58: @ cd58
	AI_5e
	AI_If35cNe 0x0, Script_branch_cd7c
	AI_RandomJumpLt 0x40, Script_branch_cd7c
	AI_AddScore -1
Script_branch_cd7c: @ cd7c
	AI_4d
@ cd80

Script_branch_cd80: @ cd80
	AI_RandomJumpLt 0x80, Script_branch_cdd0
	AI_AddScore 1
	AI_37 ATTACKER, ROAR, Script_branch_cdbc
	AI_37 ATTACKER, WHIRLWIND, Script_branch_cdbc
	AI_Jump Script_branch_cdd0
Script_branch_cdbc: @ cdbc
	AI_RandomJumpLt 0x40, Script_branch_cdd0
	AI_AddScore 1
Script_branch_cdd0: @ cdd0
	AI_4d
@ cdd4


.incbin "./baserom/overlay/overlay_0014.bin", 0xcdd4, 0xcddc - 0xcdd4


Script_branch_cddc: @ cddc
	AI_2b 0x0, Script_branch_ce30
	AI_2b 0x14, Script_branch_ce30
	AI_2b 0xa, Script_branch_ce30
	AI_GetAbility ATTACKER
	AI_If35cEq ROCK_HEAD, Script_branch_ce28
	AI_If35cEq MAGIC_GUARD, Script_branch_ce28
	AI_Jump Script_branch_ce30
Script_branch_ce28: @ ce28
	AI_AddScore 1
Script_branch_ce30: @ ce30
	AI_4d
@ ce34

Script_branch_ce34: @ ce34
	AI_HPLt ATTACKER, 80, Script_branch_ce64
	AI_24 0x1, Script_branch_ce64
	AI_RandomJumpLt 0xc0, Script_branch_cf0c
	AI_Jump Script_branch_73c8
Script_branch_ce64: @ ce64
	AI_HPGt ATTACKER, 50, Script_branch_cef8
	AI_RandomJumpLt 0xc0, Script_branch_cecc
	AI_AddScore 1
	AI_62 Script_branch_cea4
	AI_RandomJumpLt 0xc0, Script_branch_cea4
	AI_AddScore 1
Script_branch_cea4: @ cea4
	AI_61 0x0, Script_branch_ceb8
	AI_Jump Script_branch_cecc
Script_branch_ceb8: @ ceb8
	AI_RandomJumpLt 0x80, Script_branch_cecc
	AI_AddScore 1
Script_branch_cecc: @ cecc
	AI_HPGt ATTACKER, 30, Script_branch_cf0c
	AI_RandomJumpLt 0x80, Script_branch_cf0c
	AI_AddScore 1
	AI_Jump Script_branch_cf0c
Script_branch_cef8: @ cef8
	AI_RandomJumpLt 0x32, Script_branch_cf0c
	AI_AddScore -1
Script_branch_cf0c: @ cf0c
	AI_4d
@ cf10

Script_2: @ cf10
	AI_51 Script_branch_f23c
	AI_35 0x0, Script_branch_cfa0
	AI_20 0x0
	AI_If35cEq 0x1, Script_branch_73a4
	AI_2f FIRE_PUNCH, Script_branch_cf64
	AI_2f MIND_READER, Script_branch_cf64
	AI_2f FUTURE_SIGHT, Script_branch_cf64
	AI_Jump Script_branch_cf78
Script_branch_cf64: @ cf64
	AI_RandomJumpLt 0x33, Script_branch_cf78
	AI_AddScore -2
Script_branch_cf78: @ cf78
	AI_2b 0xa0, Script_branch_cf88
	AI_4d
@ cf88

Script_branch_cf88: @ cf88
	AI_RandomJumpLt 0x50, Script_branch_d008
	AI_AddScore 2
	AI_4d
@ cfa0

Script_branch_cfa0: @ cfa0
	AI_2f FIRE_PUNCH, Script_branch_d008
	AI_2f MIND_READER, Script_branch_cfe4
	AI_2f FUTURE_SIGHT, Script_branch_cfe4
	AI_2f FLASH, Script_branch_cfe4
	AI_2f SCREECH, Script_branch_cff8
	AI_Jump Script_branch_d000
Script_branch_cfe4: @ cfe4
	AI_RandomJumpLt 0xaa, Script_branch_d008
	AI_Jump Script_branch_d000
Script_branch_cff8: @ cff8
	AI_AddScore 2
Script_branch_d000: @ d000
	AI_AddScore 4
Script_branch_d008: @ d008
	AI_4d
@ d00c

Script_4: @ d00c
	AI_51 Script_branch_f23c
	AI_GetRoundNr
	AI_If35cNe 0x0, Script_branch_d048
	AI_28
	AI_1a 0x6, Script_branch_d048
	AI_RandomJumpLt 0x50, Script_branch_d048
	AI_AddScore 2
Script_branch_d048: @ d048
	AI_4d
@ d04c


.incbin "./baserom/overlay/overlay_0014.bin", 0xd04c, 0xd144 - 0xd04c


Script_6: @ d144
	AI_51 Script_branch_f23c
	AI_20 0x0
	AI_If35cNe 0x0, Script_branch_d174
	AI_RandomJumpLt 0x64, Script_branch_d174
	AI_AddScore 2
Script_branch_d174: @ d174
	AI_4d
@ d178

Script_5: @ d178
	AI_51 Script_branch_f23c
	AI_28
	AI_1a 0x6, Script_branch_d1a4
	AI_RandomJumpLt 0x80, Script_branch_d1a4
	AI_AddScore 2
Script_branch_d1a4: @ d1a4
	AI_4d
@ d1a8


.incbin "./baserom/overlay/overlay_0014.bin", 0xd1a8, 0xd210 - 0xd1a8


Script_7: @ d210
	AI_51 Script_branch_f23c
	AI_26 ATTACKER
	AI_If35cEq 0x0, Script_branch_d398
	AI_20 0x0
	AI_If35cNe 0x0, Script_branch_d398
	AI_39 ATTACKER, WATERFALL, Script_branch_d25c
	AI_RandomJumpLt 0x50, Script_branch_d1a4
Script_branch_d25c: @ d25c
	AI_MoveEq SWORDS_DANCE, Script_branch_d2b8
	AI_MoveEq DRAGON_DANCE, Script_branch_d2b8
	AI_MoveEq CALM_MIND, Script_branch_d2b8
	AI_MoveEq NASTY_PLOT, Script_branch_d2b8
	AI_2f DEFENSE_CURL, Script_branch_d2e0
	AI_MoveEq BATON_PASS, Script_branch_d30c
	AI_RandomJumpLt 0x14, Script_branch_d1a4
	AI_AddScore 3
Script_branch_d2b8: @ d2b8
	AI_GetRoundNr
	AI_If35cEq 0x0, Script_branch_7434
	AI_HPLt ATTACKER, 60, Script_branch_73ec
	AI_Jump Script_branch_7410
Script_branch_d2e0: @ d2e0
	AI_21 ATTACKER
	AI_19 0x3, Script_branch_73b0
	AI_AddScore 2
	AI_4d
@ d300


.incbin "./baserom/overlay/overlay_0014.bin", 0xd300, 0xd30c - 0xd300


Script_branch_d30c: @ d30c
	AI_GetRoundNr
	AI_If35cEq 0x0, Script_branch_73b0
	AI_StatLvlGt ATTACKER, 0x1, 8, Script_branch_7428
	AI_StatLvlGt ATTACKER, 0x1, 7, Script_branch_741c
	AI_StatLvlGt ATTACKER, 0x1, 6, Script_branch_7410
	AI_StatLvlGt ATTACKER, 0x4, 8, Script_branch_7428
	AI_StatLvlGt ATTACKER, 0x4, 7, Script_branch_741c
	AI_StatLvlGt ATTACKER, 0x4, 6, Script_branch_7410
	AI_4d
@ d398

Script_branch_d398: @ d398
	AI_4d
@ d39c

Script_8: @ d39c
	AI_51 Script_branch_e36c
	AI_20 0x0
	AI_If35cEq 0x0, Script_branch_d57c
	AI_2f DOUBLE_EDGE, Script_branch_d484
	AI_2f TWINEEDLE, Script_branch_d484
	AI_2f THUNDER, Script_branch_d484
	AI_2f ROCK_THROW, Script_branch_d484
	AI_2f SKULL_BASH, Script_branch_d484
	AI_2b 0x14, Script_branch_d414
	AI_2b 0xa, Script_branch_d44c
	AI_Jump Script_branch_d484
Script_branch_d414: @ d414
	AI_35 0x0, Script_branch_d484
	AI_HPEq DEFENDER2ND, 0, Script_branch_d484
	AI_RandomJumpLt 0x40, Script_branch_d484
	AI_AddScore -1
	AI_Jump Script_branch_d484
Script_branch_d44c: @ d44c
	AI_35 0x0, Script_branch_d484
	AI_HPEq DEFENDER2ND, 0, Script_branch_d484
	AI_RandomJumpLt 0x40, Script_branch_d484
	AI_AddScore -2
	AI_Jump Script_branch_d484
Script_branch_d484: @ d484
	AI_69 0x0
	AI_If35cNe 0x2, Script_branch_d4e8
	AI_2f FIRE_PUNCH, Script_branch_d57c
	AI_2f SCREECH, Script_branch_d4cc
	AI_RandomJumpLt 0x80, Script_branch_d4e8
	AI_AddScore 1
	AI_Jump Script_branch_d57c
Script_branch_d4cc: @ d4cc
	AI_RandomJumpLt 0x32, Script_branch_d4e8
	AI_AddScore 1
	AI_Jump Script_branch_d57c
Script_branch_d4e8: @ d4e8
	AI_2f DOUBLE_EDGE, Script_branch_d57c
	AI_2f TWINEEDLE, Script_branch_d57c
	AI_2f THUNDER, Script_branch_d57c
	AI_2f ROCK_THROW, Script_branch_d57c
	AI_2f SKULL_BASH, Script_branch_d57c
	AI_2b 0x50, Script_branch_d544
	AI_2b 0xa0, Script_branch_d560
	AI_Jump Script_branch_d57c
Script_branch_d544: @ d544
	AI_RandomJumpLt 0x64, Script_branch_d57c
	AI_AddScore 1
	AI_Jump Script_branch_d57c
Script_branch_d560: @ d560
	AI_RandomJumpLt 0x40, Script_branch_d57c
	AI_AddScore 1
	AI_Jump Script_branch_d57c
Script_branch_d57c: @ d57c
	AI_MoveEq SKILL_SWAP, Script_branch_e040
	AI_1e 0x4
	AI_MoveEq EARTHQUAKE, Script_branch_de70
	AI_MoveEq MAGNITUDE, Script_branch_de70
	AI_MoveEq FUTURE_SIGHT, Script_branch_df18
	AI_MoveEq DOOM_DESIRE, Script_branch_df18
	AI_MoveEq RAIN_DANCE, Script_branch_d654
	AI_MoveEq SUNNY_DAY, Script_branch_d6f8
	AI_MoveEq HAIL, Script_branch_d87c
	AI_MoveEq SANDSTORM, Script_branch_d910
	AI_MoveEq GRAVITY, Script_branch_d9b8
	AI_MoveEq TRICK_ROOM, Script_branch_db40
	AI_MoveEq FOLLOW_ME, Script_branch_dc60
	AI_1e 0x4
	AI_If35cEq 0xd, Script_branch_e0d8
	AI_If35cEq 0xa, Script_branch_e2a0
	AI_If35cEq 0xb, Script_branch_e1dc
	AI_37 ATTACKER2ND, HELPING_HAND, Script_branch_dddc
	AI_4d
@ d654

Script_branch_d654: @ d654
	AI_GetAbility ATTACKER
	AI_If35cEq HYDRATION, Script_branch_d67c
	AI_If35cEq DRY_SKIN, Script_branch_d68c
	AI_Jump Script_branch_d69c
Script_branch_d67c: @ d67c
	AI_a ATTACKER, 0xff, Script_branch_d69c
Script_branch_d68c: @ d68c
	AI_AddScore 2
	AI_Jump Script_branch_d69c
Script_branch_d69c: @ d69c
	AI_53 ATTACKER2ND, 0x5d
	AI_If35cEq 0x1, Script_branch_d6d4
	AI_53 ATTACKER2ND, 0x57
	AI_If35cEq 0x1, Script_branch_d6e4
	AI_Jump Script_branch_d6f4
Script_branch_d6d4: @ d6d4
	AI_a ATTACKER2ND, 0xff, Script_branch_d6f4
Script_branch_d6e4: @ d6e4
	AI_AddScore 2
	AI_Jump Script_branch_d6f4
Script_branch_d6f4: @ d6f4
	AI_4d
@ d6f8

Script_branch_d6f8: @ d6f8
	AI_GetAbility ATTACKER
	AI_If35cEq LEAF_GUARD, Script_branch_d738
	AI_If35cEq FLOWER_GIFT, Script_branch_d758
	AI_If35cEq DRY_SKIN, Script_branch_d768
	AI_If35cEq SOLAR_POWER, Script_branch_d778
	AI_Jump Script_branch_d7a4
Script_branch_d738: @ d738
	AI_9 ATTACKER, 0xff, Script_branch_d7a4
	AI_HPLt ATTACKER, 30, Script_branch_d7a4
Script_branch_d758: @ d758
	AI_AddScore 2
	AI_Jump Script_branch_d7a4
Script_branch_d768: @ d768
	AI_AddScore -2
	AI_Jump Script_branch_d7a4
Script_branch_d778: @ d778
	AI_HPLt ATTACKER, 50, Script_branch_d790
	AI_AddScore 1
Script_branch_d790: @ d790
	AI_RandomJumpLt 0x80, Script_branch_d7a4
	AI_AddScore -2
Script_branch_d7a4: @ d7a4
	AI_53 ATTACKER2ND, 0x66
	AI_If35cEq 0x1, Script_branch_d80c
	AI_53 ATTACKER2ND, 0x7a
	AI_If35cEq 0x1, Script_branch_d82c
	AI_53 ATTACKER2ND, 0x57
	AI_If35cEq 0x1, Script_branch_d83c
	AI_53 ATTACKER2ND, 0x5e
	AI_If35cEq 0x1, Script_branch_d84c
	AI_Jump Script_branch_d878
Script_branch_d80c: @ d80c
	AI_9 ATTACKER2ND, 0xff, Script_branch_d878
	AI_HPLt ATTACKER2ND, 30, Script_branch_d878
Script_branch_d82c: @ d82c
	AI_AddScore 2
	AI_Jump Script_branch_d878
Script_branch_d83c: @ d83c
	AI_AddScore -2
	AI_Jump Script_branch_d878
Script_branch_d84c: @ d84c
	AI_HPLt ATTACKER2ND, 50, Script_branch_d864
	AI_AddScore 1
Script_branch_d864: @ d864
	AI_RandomJumpLt 0x80, Script_branch_d878
	AI_AddScore -2
Script_branch_d878: @ d878
	AI_4d
@ d87c

Script_branch_d87c: @ d87c
	AI_GetAbility ATTACKER
	AI_If35cEq ICE_BODY, Script_branch_d8b4
	AI_If35cEq SNOW_CLOAK, Script_branch_d8b4
	AI_37 ATTACKER, BLIZZARD, Script_branch_d8b4
	AI_Jump Script_branch_d8bc
Script_branch_d8b4: @ d8b4
	AI_AddScore 2
Script_branch_d8bc: @ d8bc
	AI_53 ATTACKER2ND, 0x73
	AI_If35cEq 0x1, Script_branch_d904
	AI_53 ATTACKER2ND, 0x51
	AI_If35cEq 0x1, Script_branch_d904
	AI_37 ATTACKER2ND, BLIZZARD, Script_branch_d904
	AI_Jump Script_branch_d90c
Script_branch_d904: @ d904
	AI_AddScore 2
Script_branch_d90c: @ d90c
	AI_4d
@ d910

Script_branch_d910: @ d910
	AI_GetAbility ATTACKER
	AI_If35cEq SAND_VEIL, Script_branch_d954
	AI_1e 0x1
	AI_If35cEq 0x5, Script_branch_d954
	AI_1e 0x3
	AI_If35cEq 0x5, Script_branch_d954
	AI_Jump Script_branch_d964
Script_branch_d954: @ d954
	AI_AddScore 2
	AI_Jump Script_branch_d964
Script_branch_d964: @ d964
	AI_53 ATTACKER2ND, 0x8
	AI_If35cEq 0x1, Script_branch_d9ac
	AI_1e 0x6
	AI_If35cEq 0x5, Script_branch_d9ac
	AI_1e 0x8
	AI_If35cEq 0x5, Script_branch_d9ac
	AI_Jump Script_branch_d9b4
Script_branch_d9ac: @ d9ac
	AI_AddScore 2
Script_branch_d9b4: @ d9b4
	AI_4d
@ d9b8

Script_branch_d9b8: @ d9b8
	AI_56 0x7000, Script_branch_eba0
	AI_53 ATTACKER, 0x1a
	AI_If35cEq 0x1, Script_branch_da0c
	AI_52 ATTACKER, 0x2
	AI_If35cEq 0x1, Script_branch_da0c
	AI_d ATTACKER, 0x8000000, Script_branch_da0c
	AI_Jump Script_branch_da1c
Script_branch_da0c: @ da0c
	AI_AddScore -5
	AI_Jump Script_branch_da1c
Script_branch_da1c: @ da1c
	AI_53 ATTACKER2ND, 0x1a
	AI_If35cEq 0x1, Script_branch_da64
	AI_52 ATTACKER2ND, 0x2
	AI_If35cEq 0x1, Script_branch_da64
	AI_d ATTACKER2ND, 0x8000000, Script_branch_da64
	AI_Jump Script_branch_da74
Script_branch_da64: @ da64
	AI_AddScore -5
	AI_Jump Script_branch_da74
Script_branch_da74: @ da74
	AI_53 DEFENDER, 0x1a
	AI_If35cEq 0x1, Script_branch_dabc
	AI_52 DEFENDER, 0x2
	AI_If35cEq 0x1, Script_branch_dabc
	AI_d DEFENDER, 0x8000000, Script_branch_dabc
	AI_Jump Script_branch_dad8
Script_branch_dabc: @ dabc
	AI_RandomJumpLt 0x40, Script_branch_dad8
	AI_AddScore 3
	AI_Jump Script_branch_dad8
Script_branch_dad8: @ dad8
	AI_53 DEFENDER2ND, 0x1a
	AI_If35cEq 0x1, Script_branch_db20
	AI_52 DEFENDER2ND, 0x2
	AI_If35cEq 0x1, Script_branch_db20
	AI_d DEFENDER2ND, 0x8000000, Script_branch_db20
	AI_Jump Script_branch_db3c
Script_branch_db20: @ db20
	AI_RandomJumpLt 0x40, Script_branch_db3c
	AI_AddScore 3
	AI_Jump Script_branch_db3c
Script_branch_db3c: @ db3c
	AI_4d
@ db40

Script_branch_db40: @ db40
	AI_HPEq ATTACKER2ND, 0, Script_branch_7404
	AI_HPEq DEFENDER2ND, 0, Script_branch_7404
	AI_HPEq DEFENDER, 0, Script_branch_7404
	AI_5f ATTACKER
	AI_If35cEq 0x0, Script_branch_dbb0
	AI_If35cEq 0x1, Script_branch_dbd8
	AI_If35cEq 0x2, Script_branch_dbf4
	AI_If35cEq 0x3, Script_branch_dc24
	AI_Jump Script_branch_dc5c
Script_branch_dbb0: @ dbb0
	AI_5f ATTACKER2ND
	AI_If35cEq 0x1, Script_branch_7404
	AI_If35cEq 0x0, Script_branch_7404
	AI_Jump Script_branch_dc54
Script_branch_dbd8: @ dbd8
	AI_5f ATTACKER2ND
	AI_If35cEq 0x0, Script_branch_7404
	AI_Jump Script_branch_dc54
Script_branch_dbf4: @ dbf4
	AI_5f ATTACKER2ND
	AI_If35cNe 0x3, Script_branch_dc54
	AI_RandomJumpLt 0x40, Script_branch_dc54
	AI_AddScore 5
	AI_Jump Script_branch_dc5c
Script_branch_dc24: @ dc24
	AI_5f ATTACKER2ND
	AI_If35cNe 0x2, Script_branch_dc54
	AI_RandomJumpLt 0x40, Script_branch_dc54
	AI_AddScore 5
	AI_Jump Script_branch_dc5c
Script_branch_dc54: @ dc54
	AI_AddScore -5
Script_branch_dc5c: @ dc5c
	AI_4d
@ dc60

Script_branch_dc60: @ dc60
	AI_HPGt ATTACKER, 90, Script_branch_dca4
	AI_HPGt ATTACKER, 50, Script_branch_dcdc
	AI_HPGt ATTACKER, 30, Script_branch_dd14
	AI_RandomJumpLt 0x40, Script_branch_ddd8
	AI_Jump Script_branch_73c8
Script_branch_dca4: @ dca4
	AI_HPGt ATTACKER2ND, 90, Script_branch_dd4c
	AI_HPGt ATTACKER2ND, 50, Script_branch_dd84
	AI_HPGt ATTACKER2ND, 30, Script_branch_dda0
	AI_Jump Script_branch_ddbc
Script_branch_dcdc: @ dcdc
	AI_HPGt ATTACKER2ND, 90, Script_branch_dd68
	AI_HPGt ATTACKER2ND, 50, Script_branch_dd4c
	AI_HPGt ATTACKER2ND, 30, Script_branch_dd84
	AI_Jump Script_branch_dda0
Script_branch_dd14: @ dd14
	AI_HPGt ATTACKER2ND, 90, Script_branch_dd68
	AI_HPGt ATTACKER2ND, 50, Script_branch_dd68
	AI_HPGt ATTACKER2ND, 30, Script_branch_dd84
	AI_Jump Script_branch_dda0
Script_branch_dd4c: @ dd4c
	AI_RandomJumpLt 0x40, Script_branch_ddd8
	AI_AddScore -1
	AI_Jump Script_branch_ddd8
Script_branch_dd68: @ dd68
	AI_RandomJumpLt 0x40, Script_branch_ddd8
	AI_AddScore -2
	AI_Jump Script_branch_ddd8
Script_branch_dd84: @ dd84
	AI_RandomJumpLt 0x40, Script_branch_ddd8
	AI_AddScore 1
	AI_Jump Script_branch_ddd8
Script_branch_dda0: @ dda0
	AI_RandomJumpLt 0x40, Script_branch_ddd8
	AI_AddScore 2
	AI_Jump Script_branch_ddd8
Script_branch_ddbc: @ ddbc
	AI_RandomJumpLt 0x40, Script_branch_ddd8
	AI_AddScore 3
	AI_Jump Script_branch_ddd8
Script_branch_ddd8: @ ddd8
	AI_4d
@ dddc

Script_branch_dddc: @ dddc
	AI_2f DOUBLE_EDGE, Script_branch_de2c
	AI_2f TWINEEDLE, Script_branch_de2c
	AI_2f THUNDER, Script_branch_de2c
	AI_2f ROCK_THROW, Script_branch_de2c
	AI_2f SKULL_BASH, Script_branch_de2c
	AI_20 0x0
	AI_If35cNe 0x0, Script_branch_7410
Script_branch_de2c: @ de2c
	AI_4d
@ de30


.incbin "./baserom/overlay/overlay_0014.bin", 0xde30, 0xde70 - 0xde30


Script_branch_de70: @ de70
	AI_d ATTACKER2ND, 0x8000000, Script_branch_741c
	AI_53 ATTACKER2ND, 0x1a
	AI_If35cEq 0x1, Script_branch_741c
	AI_52 ATTACKER2ND, 0x2
	AI_If35cEq 0x1, Script_branch_741c
	AI_52 ATTACKER2ND, 0xa
	AI_If35cEq 0x1, Script_branch_73ec
	AI_52 ATTACKER2ND, 0xd
	AI_If35cEq 0x1, Script_branch_73ec
	AI_52 ATTACKER2ND, 0x3
	AI_If35cEq 0x1, Script_branch_73ec
	AI_52 ATTACKER2ND, 0x5
	AI_If35cEq 0x1, Script_branch_73ec
	AI_Jump Script_branch_73bc
Script_branch_df18: @ df18
	AI_HPEq ATTACKER2ND, 0, Script_branch_e03c
	AI_37 ATTACKER2ND, FUTURE_SIGHT, Script_branch_df50
	AI_37 ATTACKER2ND, DOOM_DESIRE, Script_branch_df50
	AI_Jump Script_branch_e03c
Script_branch_df50: @ df50
	AI_5f ATTACKER
	AI_If35cEq 0x3, Script_branch_73bc
	AI_If35cEq 0x2, Script_branch_df90
	AI_If35cEq 0x1, Script_branch_dfd8
	AI_If35cEq 0x0, Script_branch_e014
	AI_Jump Script_branch_e03c
Script_branch_df90: @ df90
	AI_5f ATTACKER2ND
	AI_If35cEq 0x0, Script_branch_73bc
	AI_If35cEq 0x1, Script_branch_73bc
	AI_RandomJumpLt 0x80, Script_branch_e03c
	AI_5f ATTACKER2ND
	AI_If35cEq 0x2, Script_branch_73bc
	AI_Jump Script_branch_e03c
Script_branch_dfd8: @ dfd8
	AI_5f ATTACKER2ND
	AI_If35cEq 0x0, Script_branch_73bc
	AI_RandomJumpLt 0x80, Script_branch_e03c
	AI_5f ATTACKER2ND
	AI_If35cEq 0x1, Script_branch_73bc
	AI_Jump Script_branch_e03c
Script_branch_e014: @ e014
	AI_RandomJumpLt 0x80, Script_branch_e03c
	AI_5f ATTACKER2ND
	AI_If35cEq 0x0, Script_branch_73bc
	AI_Jump Script_branch_e03c
Script_branch_e03c: @ e03c
	AI_4d
@ e040

Script_branch_e040: @ e040
	AI_GetAbility ATTACKER
	AI_If35cEq TRUANT, Script_branch_7434
	AI_If35cEq SLOW_START, Script_branch_7434
	AI_If35cEq STALL, Script_branch_7434
	AI_If35cEq KLUTZ, Script_branch_7434
	AI_GetAbility DEFENDER
	AI_If35cEq SHADOW_TAG, Script_branch_741c
	AI_If35cEq PURE_POWER, Script_branch_741c
	AI_If35cEq HUGE_POWER, Script_branch_741c
	AI_If35cEq MOLD_BREAKER, Script_branch_741c
	AI_If35cEq SOLID_ROCK, Script_branch_741c
	AI_If35cEq FILTER, Script_branch_741c
	AI_If35cEq FLOWER_GIFT, Script_branch_741c
	AI_4d
@ e0d8

Script_branch_e0d8: @ e0d8
	AI_MoveEq DISCHARGE, Script_branch_e158
	AI_53 DEFENDER2ND, 0x1f
	AI_If35cEq 0x1, Script_branch_e104
	AI_Jump Script_branch_e12c
Script_branch_e104: @ e104
	AI_AddScore -1
	AI_52 DEFENDER2ND, 0x4
	AI_If35cEq 0x0, Script_branch_e12c
	AI_AddScore -8
Script_branch_e12c: @ e12c
	AI_53 ATTACKER2ND, 0x1f
	AI_If35cEq 0x1, Script_branch_73ec
	AI_MoveEq DISCHARGE, Script_branch_e158
	AI_Jump Script_branch_e1d8
Script_branch_e158: @ e158
	AI_53 ATTACKER2ND, 0x4e
	AI_If35cEq 0x1, Script_branch_7428
	AI_53 ATTACKER2ND, 0xa
	AI_If35cEq 0x1, Script_branch_7428
	AI_52 ATTACKER2ND, 0xb
	AI_If35cEq 0x1, Script_branch_73ec
	AI_52 ATTACKER2ND, 0x2
	AI_If35cEq 0x1, Script_branch_73ec
	AI_52 ATTACKER2ND, 0x4
	AI_If35cEq 0x1, Script_branch_7428
	AI_AddScore -3
Script_branch_e1d8: @ e1d8
	AI_4d
@ e1dc

Script_branch_e1dc: @ e1dc
	AI_MoveEq SURF, Script_branch_e234
	AI_53 DEFENDER2ND, 0x72
	AI_If35cEq 0x0, Script_branch_e208
	AI_AddScore -1
Script_branch_e208: @ e208
	AI_53 ATTACKER2ND, 0x72
	AI_If35cEq 0x1, Script_branch_73ec
	AI_MoveEq SURF, Script_branch_e234
	AI_Jump Script_branch_e29c
Script_branch_e234: @ e234
	AI_53 ATTACKER2ND, 0x57
	AI_If35cEq 0x1, Script_branch_7428
	AI_53 ATTACKER2ND, 0xb
	AI_If35cEq 0x1, Script_branch_7428
	AI_52 ATTACKER2ND, 0x4
	AI_If35cEq 0x1, Script_branch_73ec
	AI_52 ATTACKER2ND, 0xa
	AI_If35cEq 0x1, Script_branch_73ec
	AI_AddScore -3
Script_branch_e29c: @ e29c
	AI_4d
@ e2a0

Script_branch_e2a0: @ e2a0
	AI_54 0x1, Script_branch_e2b4
	AI_Jump Script_branch_e2bc
Script_branch_e2b4: @ e2b4
	AI_AddScore 1
Script_branch_e2bc: @ e2bc
	AI_MoveEq LAVA_PLUME, Script_branch_e2d0
	AI_Jump Script_branch_e368
Script_branch_e2d0: @ e2d0
	AI_53 ATTACKER2ND, 0x57
	AI_If35cEq 0x1, Script_branch_73bc
	AI_53 ATTACKER2ND, 0x12
	AI_If35cEq 0x1, Script_branch_7428
	AI_52 ATTACKER2ND, 0xc
	AI_If35cEq 0x1, Script_branch_73ec
	AI_52 ATTACKER2ND, 0x8
	AI_If35cEq 0x1, Script_branch_73ec
	AI_52 ATTACKER2ND, 0xf
	AI_If35cEq 0x1, Script_branch_73ec
	AI_52 ATTACKER2ND, 0x6
	AI_If35cEq 0x1, Script_branch_73ec
	AI_AddScore -3
Script_branch_e368: @ e368
	AI_4d
@ e36c

Script_branch_e36c: @ e36c
	AI_6a 0x3, Script_branch_eba0
	AI_20 0x0
	AI_If35cEq 0x0, Script_branch_e5a8
	AI_1e 0x4
	AI_If35cEq 0xa, Script_branch_e3cc
	AI_If35cEq 0xd, Script_branch_e400
	AI_If35cEq 0xb, Script_branch_e4e8
	AI_MoveEq FLING, Script_branch_e9bc
Script_branch_e3c4: @ e3c4
	AI_Jump Script_branch_7404
Script_branch_e3cc: @ e3cc
	AI_53 ATTACKER2ND, 0x12
	AI_If35cEq 0x1, Script_branch_e3ec
	AI_Jump Script_branch_e3c4
Script_branch_e3ec: @ e3ec
	AI_54 0x3, Script_branch_e3c4
	AI_Jump Script_branch_7428
Script_branch_e400: @ e400
	AI_53 ATTACKER2ND, 0x4e
	AI_If35cEq 0x1, Script_branch_e438
	AI_53 ATTACKER2ND, 0xa
	AI_If35cEq 0x1, Script_branch_e460
	AI_Jump Script_branch_e3c4
Script_branch_e438: @ e438
	AI_RandomJumpLt 0xa0, Script_branch_e4e4
	AI_StatLvlEq ATTACKER2ND, 0x3, 12, Script_branch_e3c4
	AI_Jump Script_branch_7428
Script_branch_e460: @ e460
	AI_HPEq ATTACKER2ND, 100, Script_branch_73ec
	AI_HPGt ATTACKER2ND, 90, Script_branch_e4e4
	AI_HPGt ATTACKER2ND, 75, Script_branch_e4a8
	AI_HPGt ATTACKER2ND, 50, Script_branch_e4bc
	AI_Jump Script_branch_e4d0
Script_branch_e4a8: @ e4a8
	AI_RandomJumpLt 0x40, Script_branch_7428
	AI_Jump Script_branch_e4e4
Script_branch_e4bc: @ e4bc
	AI_RandomJumpLt 0x80, Script_branch_7428
	AI_Jump Script_branch_e4e4
Script_branch_e4d0: @ e4d0
	AI_RandomJumpLt 0xc0, Script_branch_7428
	AI_Jump Script_branch_e4e4
Script_branch_e4e4: @ e4e4
	AI_4d
@ e4e8

Script_branch_e4e8: @ e4e8
	AI_53 ATTACKER2ND, 0xb
	AI_If35cEq 0x1, Script_branch_e520
	AI_53 ATTACKER2ND, 0x57
	AI_If35cEq 0x1, Script_branch_e520
	AI_Jump Script_branch_e3c4
Script_branch_e520: @ e520
	AI_HPEq ATTACKER2ND, 100, Script_branch_73ec
	AI_HPGt ATTACKER2ND, 90, Script_branch_e5a4
	AI_HPGt ATTACKER2ND, 75, Script_branch_e568
	AI_HPGt ATTACKER2ND, 50, Script_branch_e57c
	AI_Jump Script_branch_e590
Script_branch_e568: @ e568
	AI_RandomJumpLt 0x40, Script_branch_7428
	AI_Jump Script_branch_e5a4
Script_branch_e57c: @ e57c
	AI_RandomJumpLt 0x80, Script_branch_7428
	AI_Jump Script_branch_e5a4
Script_branch_e590: @ e590
	AI_RandomJumpLt 0xc0, Script_branch_7428
	AI_Jump Script_branch_e5a4
Script_branch_e5a4: @ e5a4
	AI_4d
@ e5a8

Script_branch_e5a8: @ e5a8
	AI_MoveEq SKILL_SWAP, Script_branch_e634
	AI_MoveEq WILL_O_WISP, Script_branch_e7d0
	AI_MoveEq THUNDER_WAVE, Script_branch_e870
	AI_2f TACKLE, Script_branch_e8d0
	AI_2f SUBMISSION, Script_branch_e8d0
	AI_MoveEq HELPING_HAND, Script_branch_e920
	AI_MoveEq SWAGGER, Script_branch_e974
	AI_MoveEq TRICK, Script_branch_e9bc
	AI_MoveEq SWITCHEROO, Script_branch_e9bc
	AI_MoveEq GASTRO_ACID, Script_branch_e9c0
	AI_MoveEq ACUPRESSURE, Script_branch_ea14
	AI_Jump Script_branch_eba0
Script_branch_e634: @ e634
	AI_GetAbility DEFENDER
	AI_If35cEq TRUANT, Script_branch_7440
	AI_If35cEq SLOW_START, Script_branch_7440
	AI_GetAbility ATTACKER
	AI_If35cNe LEVITATE, Script_branch_e6b8
	AI_GetAbility DEFENDER
	AI_If35cEq LEVITATE, Script_branch_eba0
	AI_1e 0x0
	AI_If35cNe 0xd, Script_branch_e6b8
	AI_AddScore 1
	AI_1e 0x2
	AI_If35cNe 0xd, Script_branch_e6b8
	AI_AddScore 1
	AI_4d
@ e6b8

Script_branch_e6b8: @ e6b8
	AI_GetAbility ATTACKER
	AI_If35cEq COMPOUND_EYES, Script_branch_e6e0
	AI_If35cEq NO_GUARD, Script_branch_e6e0
	AI_Jump Script_branch_eba0
Script_branch_e6e0: @ e6e0
	AI_37 ATTACKER2ND, FIRE_BLAST, Script_branch_e7c8
	AI_37 ATTACKER2ND, THUNDER, Script_branch_e7c8
	AI_37 ATTACKER2ND, CROSS_CHOP, Script_branch_e7c8
	AI_37 ATTACKER2ND, HYDRO_PUMP, Script_branch_e7c8
	AI_37 ATTACKER2ND, DYNAMIC_PUNCH, Script_branch_e7c8
	AI_37 ATTACKER2ND, BLIZZARD, Script_branch_e7c8
	AI_37 ATTACKER2ND, ZAP_CANNON, Script_branch_e7c8
	AI_37 ATTACKER2ND, MEGAHORN, Script_branch_e7c8
	AI_37 ATTACKER2ND, FOCUS_BLAST, Script_branch_e7c8
	AI_37 ATTACKER2ND, GUNK_SHOT, Script_branch_e7c8
	AI_37 ATTACKER2ND, MAGMA_STORM, Script_branch_e7c8
	AI_37 ATTACKER2ND, POWER_WHIP, Script_branch_e7c8
	AI_37 ATTACKER2ND, SEED_FLARE, Script_branch_e7c8
	AI_37 ATTACKER2ND, HEAD_SMASH, Script_branch_e7c8
	AI_Jump Script_branch_eba0
Script_branch_e7c8: @ e7c8
	AI_Jump Script_branch_7428
Script_branch_e7d0: @ e7d0
	AI_53 ATTACKER2ND, 0x12
	AI_If35cEq 0x1, Script_branch_e3cc
	AI_53 ATTACKER2ND, 0x3e
	AI_If35cNe 0x1, Script_branch_eba0
	AI_9 ATTACKER2ND, 0xff, Script_branch_eba0
	AI_1e 0x0
	AI_If35cEq 0xa, Script_branch_eba0
	AI_1e 0x2
	AI_If35cEq 0xa, Script_branch_eba0
	AI_55 ATTACKER2ND, 0x111, Script_branch_eba0
	AI_55 ATTACKER2ND, 0x110, Script_branch_eba0
	AI_HPLt ATTACKER2ND, 81, Script_branch_eba0
	AI_Jump Script_branch_7434
Script_branch_e870: @ e870
	AI_1e 0x0
	AI_If35cEq 0x4, Script_branch_eba0
	AI_1e 0x2
	AI_If35cEq 0x4, Script_branch_eba0
	AI_53 ATTACKER2ND, 0x4e
	AI_If35cEq 0x1, Script_branch_e400
	AI_53 ATTACKER2ND, 0xa
	AI_If35cEq 0x1, Script_branch_e400
	AI_Jump Script_branch_eba0
Script_branch_e8d0: @ e8d0
	AI_53 ATTACKER2ND, 0x5a
	AI_If35cNe 0x1, Script_branch_eba0
	AI_9 DEFENDER, 0xff, Script_branch_eba0
	AI_55 ATTACKER2ND, 0x110, Script_branch_eba0
	AI_HPGt ATTACKER2ND, 91, Script_branch_eba0
	AI_Jump Script_branch_7434
Script_branch_e920: @ e920
	AI_HPEq ATTACKER2ND, 0, Script_branch_7404
	AI_HPGt ATTACKER2ND, 50, Script_branch_e95c
	AI_5f ATTACKER2ND
	AI_11_If35cLt 0x1, Script_branch_e95c
	AI_Jump Script_branch_e970
Script_branch_e95c: @ e95c
	AI_RandomJumpLt 0x40, Script_branch_73a4
	AI_AddScore 2
Script_branch_e970: @ e970
	AI_4d
@ e974

Script_branch_e974: @ e974
	AI_55 DEFENDER, 0x9c, Script_branch_e99c
	AI_55 DEFENDER, 0x9d, Script_branch_e99c
	AI_Jump Script_branch_eba0
Script_branch_e99c: @ e99c
	AI_StatLvlGt DEFENDER, 0x1, 7, Script_branch_e9b8
	AI_AddScore 3
Script_branch_e9b8: @ e9b8
	AI_4d
@ e9bc

Script_branch_e9bc: @ e9bc
	AI_4d
@ e9c0

Script_branch_e9c0: @ e9c0
	AI_d ATTACKER2ND, 0x200000, Script_branch_eba0
	AI_53 ATTACKER2ND, 0x36
	AI_If35cEq 0x1, Script_branch_ea08
	AI_53 ATTACKER2ND, 0x70
	AI_If35cEq 0x1, Script_branch_ea08
	AI_Jump Script_branch_ea10
Script_branch_ea08: @ ea08
	AI_AddScore 5
Script_branch_ea10: @ ea10
	AI_4d
@ ea14

Script_branch_ea14: @ ea14
	AI_53 ATTACKER2ND, 0x56
	AI_If35cEq 0x1, Script_branch_eac0
	AI_StatLvlEq ATTACKER2ND, 0x1, 12, Script_branch_eba0
	AI_StatLvlEq ATTACKER2ND, 0x2, 12, Script_branch_eba0
	AI_StatLvlEq ATTACKER2ND, 0x3, 12, Script_branch_eba0
	AI_StatLvlEq ATTACKER2ND, 0x4, 12, Script_branch_eba0
	AI_StatLvlEq ATTACKER2ND, 0x5, 12, Script_branch_eba0
	AI_StatLvlEq ATTACKER2ND, 0x7, 12, Script_branch_eba0
	AI_StatLvlEq ATTACKER2ND, 0x6, 12, Script_branch_eba0
	AI_Jump Script_branch_eb4c
Script_branch_eac0: @ eac0
	AI_StatLvlGt ATTACKER2ND, 0x1, 8, Script_branch_73ec
	AI_StatLvlGt ATTACKER2ND, 0x2, 8, Script_branch_73ec
	AI_StatLvlGt ATTACKER2ND, 0x3, 8, Script_branch_73ec
	AI_StatLvlGt ATTACKER2ND, 0x4, 8, Script_branch_73ec
	AI_StatLvlGt ATTACKER2ND, 0x5, 8, Script_branch_73ec
	AI_StatLvlGt ATTACKER2ND, 0x7, 8, Script_branch_73ec
	AI_StatLvlGt ATTACKER2ND, 0x6, 8, Script_branch_73ec
Script_branch_eb4c: @ eb4c
	AI_HPLt ATTACKER2ND, 51, Script_branch_eb94
	AI_HPGt ATTACKER2ND, 90, Script_branch_eb78
	AI_RandomJumpLt 0x80, Script_branch_eb9c
Script_branch_eb78: @ eb78
	AI_RandomJumpLt 0x50, Script_branch_eb9c
	AI_AddScore 2
	AI_Jump Script_branch_eb9c
Script_branch_eb94: @ eb94
	AI_AddScore -1
Script_branch_eb9c: @ eb9c
	AI_4d
@ eba0

Script_branch_eba0: @ eba0
	AI_AddScore -30
	AI_4d
@ ebac

Script_9: @ ebac
	AI_51 Script_branch_e36c
	AI_HPGt ATTACKER, 70, Script_branch_ebec
	AI_HPGt ATTACKER, 30, Script_branch_ec04
	AI_28
	AI_19 0x6f, Script_branch_ec1c
	AI_Jump Script_branch_ec30
Script_branch_ebec: @ ebec
	AI_28
	AI_19 0x2d, Script_branch_ec1c
	AI_Jump Script_branch_ec30
Script_branch_ec04: @ ec04
	AI_28
	AI_19 0x34, Script_branch_ec1c
	AI_Jump Script_branch_ec30
Script_branch_ec1c: @ ec1c
	AI_RandomJumpLt 0x32, Script_branch_ec30
	AI_AddScore -2
Script_branch_ec30: @ ec30
	AI_HPGt DEFENDER, 70, Script_branch_ec68
	AI_HPGt DEFENDER, 30, Script_branch_ec80
	AI_28
	AI_19 0xb0, Script_branch_ec98
	AI_Jump Script_branch_ecac
Script_branch_ec68: @ ec68
	AI_28
	AI_19 0x7e, Script_branch_ec98
	AI_Jump Script_branch_ecac
Script_branch_ec80: @ ec80
	AI_28
	AI_19 0x79, Script_branch_ec98
	AI_Jump Script_branch_ecac
Script_branch_ec98: @ ec98
	AI_RandomJumpLt 0x32, Script_branch_ecac
	AI_AddScore -2
Script_branch_ecac: @ ecac
	AI_4d
@ ecb0


.incbin "./baserom/overlay/overlay_0014.bin", 0xecb0, 0xf01c - 0xecb0


Script_10: @ f01c
	AI_51 Script_branch_f23c
	AI_GetRoundNr
	AI_If35cNe 0x0, Script_branch_f0e0
	AI_2f GLARE, Script_branch_f064
	AI_2f HIGH_JUMP_KICK, Script_branch_f07c
	AI_2f REFLECT, Script_branch_f094
	AI_2f SUBSTITUTE, Script_branch_f0ac
Script_branch_f064: @ f064
	AI_2e
	AI_If35cEq 0x1, Script_branch_f0e0
	AI_Jump Script_branch_f0c4
Script_branch_f07c: @ f07c
	AI_2e
	AI_If35cEq 0x2, Script_branch_f0e0
	AI_Jump Script_branch_f0c4
Script_branch_f094: @ f094
	AI_2e
	AI_If35cEq 0x3, Script_branch_f0e0
	AI_Jump Script_branch_f0c4
Script_branch_f0ac: @ f0ac
	AI_2e
	AI_If35cEq 0x4, Script_branch_f0e0
	AI_Jump Script_branch_f0c4
Script_branch_f0c4: @ f0c4
	AI_43 0x1
	AI_If35cEq 0x0, Script_branch_f0e0
	AI_AddScore 5
Script_branch_f0e0: @ f0e0
	AI_4d
@ f0e4

Script_11: @ f0e4
	AI_51 Script_branch_f23c
	AI_28
	AI_1a 0x6, Script_branch_f110
	AI_RandomJumpLt 0x80, Script_branch_f110
	AI_AddScore 2
Script_branch_f110: @ f110
	AI_4d
@ f114


.incbin "./baserom/overlay/overlay_0014.bin", 0xf114, 0xf1a0 - 0xf114


Script_30: @ f1a0
	AI_b ATTACKER, 0xe000, Script_branch_f200
	AI_b ATTACKER, 0x4000000, Script_branch_f200
	AI_6c 0x0
	AI_If35cEq 0x17, Script_branch_f200
	AI_6c 0x1
	AI_If35cEq 0x1a, Script_branch_f1fc
	AI_6c 0x0
	AI_If35cEq 0x47, Script_branch_f200
Script_branch_f1fc: @ f1fc
	AI_3d
Script_branch_f200: @ f200
	AI_4d
@ f204

Script_31: @ f204
	AI_3e_Nop
@ f208


.incbin "./baserom/overlay/overlay_0014.bin", 0xf208, 0xf214 - 0xf208


Script_32: @ f214
	AI_HPEq DEFENDER, 20, Script_branch_f238
	AI_HPLt DEFENDER, 20, Script_branch_f238
	AI_4d
@ f238

Script_branch_f238: @ f238
	AI_3d
Script_12: @ f23c
Script_13: @ f23c
Script_14: @ f23c
Script_15: @ f23c
Script_16: @ f23c
Script_17: @ f23c
Script_18: @ f23c
Script_19: @ f23c
Script_20: @ f23c
Script_21: @ f23c
Script_22: @ f23c
Script_23: @ f23c
Script_24: @ f23c
Script_25: @ f23c
Script_26: @ f23c
Script_27: @ f23c
Script_28: @ f23c
Script_29: @ f23c
Script_branch_f23c: @ f23c
	AI_4d
@ f240

