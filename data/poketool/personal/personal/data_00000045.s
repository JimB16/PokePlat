.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 75, 80, 85, 50, 100, 90, GRASS, POISON, 45, 184, ((0)|(0<<2)|(0<<4)|(0<<6)|(3<<8)|(0<<10)), NO_ITEM, NO_ITEM, 127, 20, 70, 3, EGGGROUP_GRASS, EGGGROUP_GRASS, CHLOROPHYLL, CACOPHONY, 0, 0, 0, 0x84354720, 0xa901e08, 0x12662428, 0