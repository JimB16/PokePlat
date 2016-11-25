.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 90, 85, 95, 70, 70, 90, WATER, FIGHTING, 45, 185, ((0)|(0<<2)|(3<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, KINGS_ROCK, 127, 20, 70, 3, 2, 2, WATER_ABSORB, DAMP, 0, 129, 0, 0xde1372e5, 0x2883e40, 0xc24ea00a, 14