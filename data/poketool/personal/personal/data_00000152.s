.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 45, 49, 65, 45, 49, 65, GRASS, GRASS, 45, 64, ((0)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(1<<10)), NO_ITEM, NO_ITEM, 31, 20, 70, 3, 1, 7, OVERGROW, CACOPHONY, 0, 3, 0, 0x847d8720, 0x2101e01, 0x12662420, 0