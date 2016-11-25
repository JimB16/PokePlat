.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 52, 65, 55, 60, 58, 62, NORMAL, FLYING, 45, 94, ((0)|(1<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, STICK, 127, 20, 70, 0, EGGGROUP_FLYING, EGGGROUP_FIELD, KEEN_EYE, INNER_FOCUS, 0, 5, 0, 0x84510620, 0x2247e80, 0x33ce3400, 1