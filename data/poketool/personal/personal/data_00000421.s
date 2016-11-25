.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 70, 60, 70, 85, 87, 78, GRASS, GRASS, 75, 133, ((0)|(0<<2)|(0<<4)|(0<<6)|(2<<8)|(0<<10)), NO_ITEM, MIRACLE_SEED, 127, 20, 70, 0, EGGGROUP_FAIRY, EGGGROUP_GRASS, FLOWER_GIFT, CACOPHONY, 0, 9, 0, 0x843d4720, 0x2101e00, 0x2662428, 0