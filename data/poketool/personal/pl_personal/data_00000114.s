.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 65, 55, 115, 60, 100, 40, GRASS, GRASS, 45, 166, ((0)|(0<<2)|(1<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, NO_ITEM, 127, 20, 70, 0, EGGGROUP_GRASS, EGGGROUP_GRASS, CHLOROPHYLL, LEAF_GUARD, 90, 1, 0, 0x84354720, 0x2103e0b, 0x12663428, 2