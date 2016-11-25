.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 85, 76, 64, 90, 45, 55, NORMAL, NORMAL, 90, 116, ((0)|(0<<2)|(0<<4)|(2<<6)|(0<<8)|(0<<10)), ORAN_BERRY, SITRUS_BERRY, 127, 15, 70, 0, 5, 5, RUN_AWAY, KEEN_EYE, 0, 5, 0, 0xedf37625, 0x3883e06, 0xd3662009, 2