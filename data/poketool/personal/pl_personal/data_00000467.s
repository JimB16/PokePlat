.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 75, 95, 67, 83, 125, 95, FIRE, FIRE, 30, 199, ((0)|(0<<2)|(0<<4)|(0<<6)|(3<<8)|(0<<10)), NO_ITEM, MAGMARIZER, 63, 25, 70, 0, EGGGROUP_HUMANLIKE, EGGGROUP_HUMANLIKE, FLAME_BODY, CACOPHONY, 0, 128, 0, 0xd6f14e21, 0x128a3f64, 0x8246a008, 10