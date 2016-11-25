.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 48, 61, 40, 50, 61, 40, POISON, FIGHTING, 140, 83, ((0)|(1<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, BLACK_SLUDGE, 127, 10, 100, 0, EGGGROUP_HUMANLIKE, EGGGROUP_HUMANLIKE, ANTICIPATION, DRY_SKIN, 150, 1, 0, 0xee130ea1, 0x42893f48, 0x824fe002, 10