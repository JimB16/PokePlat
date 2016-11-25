.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 95, 75, 110, 30, 100, 80, WATER, PSYCHIC, 75, 164, ((0)|(0<<2)|(2<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, KINGS_ROCK, 127, 20, 70, 0, EGGGROUP_MONSTER, EGGGROUP_WATER1, OBLIVIOUS, OWN_TEMPO, 0, 9, 0, 0xfe5bf66d, 0xac89e24, 0xca7631ac, 2