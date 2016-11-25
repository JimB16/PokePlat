.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 55, 81, 60, 97, 50, 70, NORMAL, NORMAL, 127, 116, ((0)|(0<<2)|(0<<4)|(2<<6)|(0<<8)|(0<<10)), NO_ITEM, CHILAN_BERRY, 127, 15, 70, 0, EGGGROUP_FIELD, EGGGROUP_FIELD, RUN_AWAY, GUTS, 0, 5, 0, 0xadd37e30, 0x3003e02, 0x93e62508, 2