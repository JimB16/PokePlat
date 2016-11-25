.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 105, 150, 90, 95, 150, 90, DRAGON, FLYING, 3, 220, ((0)|(2<<2)|(0<<4)|(0<<6)|(1<<8)|(0<<10)), NO_ITEM, NO_ITEM, 255, 120, 0, 5, EGGGROUP_UNDISCOVERED, EGGGROUP_UNDISCOVERED, AIR_LOCK, CACOPHONY, 0, 3, 0, 0xc7f376b6, 0x69a0ef6, 0xe24697c9, 6