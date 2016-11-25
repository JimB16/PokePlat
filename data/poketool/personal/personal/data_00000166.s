.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 55, 35, 50, 85, 55, 110, BUG, FLYING, 90, 134, ((0)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(2<<10)), NO_ITEM, NO_ITEM, 127, 15, 70, 4, 3, 3, SWARM, EARLY_BIRD, 0, 0, 0, 0xcc3dc621, 0x2a8c3e81, 0x83462428, 2