.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 20, 10, 230, 5, 10, 230, BUG, ROCK, 190, 80, ((0)|(0<<2)|(1<<4)|(0<<6)|(0<<8)|(1<<10)), ORAN_BERRY, ORAN_BERRY, 127, 20, 70, 3, 3, 3, STURDY, GLUTTONY, 0, 2, 0, 0x8e190620, 0x2001e58, 0x8246aa70, 2