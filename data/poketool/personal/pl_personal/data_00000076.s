.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 80, 110, 130, 45, 55, 65, ROCK, GROUND, 45, 177, ((0)|(0<<2)|(3<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, EVERSTONE, 127, 15, 70, 3, 10, 10, ROCK_HEAD, STURDY, 0, 5, 0, 0xce114631, 0x82881e74, 0x8246aa58, 10