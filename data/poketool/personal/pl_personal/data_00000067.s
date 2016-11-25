.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 80, 100, 70, 45, 50, 60, FIGHTING, FIGHTING, 90, 146, ((0)|(2<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, NO_ITEM, 63, 20, 70, 3, EGGGROUP_HUMANLIKE, EGGGROUP_HUMANLIKE, GUTS, NO_GUARD, 0, 135, 0, 0xce1306a1, 0x2883e64, 0x824ea002, 10