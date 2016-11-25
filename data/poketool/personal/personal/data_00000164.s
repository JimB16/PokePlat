.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 100, 50, 50, 70, 76, 96, NORMAL, FLYING, 90, 162, ((2)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, NO_ITEM, 127, 15, 70, 0, EGGGROUP_FLYING, EGGGROUP_FLYING, INSOMNIA, KEEN_EYE, 60, 5, 0, 0xb4134620, 0x22047e81, 0x22d6300c, 1