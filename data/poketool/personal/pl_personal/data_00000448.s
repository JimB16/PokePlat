.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 70, 110, 70, 90, 115, 70, FIGHTING, STEEL, 45, 204, ((0)|(1<<2)|(0<<4)|(0<<6)|(1<<8)|(0<<10)), NO_ITEM, NO_ITEM, 31, 25, 70, 3, EGGGROUP_FIELD, EGGGROUP_HUMANLIKE, STEADFAST, INNER_FOCUS, 0, 1, 0, 0xfe5346bd, 0xe881e40, 0x864ee44b, 10