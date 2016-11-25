.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 35, 46, 34, 20, 35, 45, NORMAL, NORMAL, 255, 57, ((0)|(1<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, ORAN_BERRY, 127, 15, 70, 0, EGGGROUP_FIELD, EGGGROUP_FIELD, RUN_AWAY, KEEN_EYE, 0, 5, 0, 0xecf31625, 0x3803e06, 0x53662001, 0