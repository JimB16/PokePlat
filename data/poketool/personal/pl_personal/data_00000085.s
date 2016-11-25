.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 60, 110, 70, 100, 60, 60, NORMAL, FLYING, 45, 158, ((0)|(2<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, SHARP_BEAK, 127, 20, 70, 0, EGGGROUP_FLYING, EGGGROUP_FLYING, RUN_AWAY, EARLY_BIRD, 0, 5, 0, 0x84114e20, 0x2047f80, 0x22c6200a, 0