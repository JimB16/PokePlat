.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 30, 30, 42, 70, 30, 42, BUG, FLYING, 120, 63, ((0)|(0<<2)|(0<<4)|(1<<6)|(0<<8)|(0<<10)), HONEY, HONEY, 31, 15, 70, 3, 3, 3, HONEY_GATHER, CACOPHONY, 0, 2, 0, 0x0, 0x0, 0x0, 0