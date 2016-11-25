.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 65, 75, 70, 95, 95, 70, PSYCHIC, FLYING, 75, 171, ((0)|(0<<2)|(0<<4)|(1<<6)|(1<<8)|(0<<10)), NO_ITEM, NO_ITEM, 127, 20, 70, 0, EGGGROUP_FLYING, EGGGROUP_FLYING, SYNCHRONIZE, EARLY_BIRD, 0, 3, 0, 0xb437c628, 0x2204fe81, 0x2bf63128, 1