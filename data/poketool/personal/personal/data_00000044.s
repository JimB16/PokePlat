.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 60, 65, 70, 40, 85, 75, GRASS, POISON, 120, 132, ((0)|(0<<2)|(0<<4)|(0<<6)|(2<<8)|(0<<10)), NO_ITEM, NO_ITEM, 127, 20, 70, 3, EGGGROUP_GRASS, EGGGROUP_GRASS, CHLOROPHYLL, CACOPHONY, 0, 1, 0, 0x84350720, 0xa901e08, 0x12662420, 0