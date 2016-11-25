.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 75, 123, 67, 95, 95, 85, ELECTRIC, ELECTRIC, 30, 199, ((0)|(3<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, ELECTIRIZER, 63, 25, 70, 0, EGGGROUP_HUMANLIKE, EGGGROUP_HUMANLIKE, MOTOR_DRIVE, CACOPHONY, 0, 2, 0, 0xdfd3ca21, 0x3883f46, 0x8246a128, 10