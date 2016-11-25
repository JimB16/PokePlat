.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 95, 95, 85, 55, 125, 65, GRASS, PSYCHIC, 45, 212, ((0)|(0<<2)|(0<<4)|(0<<6)|(2<<8)|(0<<10)), NO_ITEM, NO_ITEM, 127, 20, 70, 5, EGGGROUP_GRASS, EGGGROUP_GRASS, CHLOROPHYLL, CACOPHONY, 0, 2, 0, 0x9435c720, 0x8210be09, 0x8a763428, 0