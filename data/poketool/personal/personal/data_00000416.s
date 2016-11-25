.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 70, 80, 102, 40, 80, 102, BUG, FLYING, 45, 188, ((0)|(0<<2)|(1<<4)|(0<<6)|(0<<8)|(1<<10)), NO_ITEM, POISON_BARB, 254, 15, 70, 3, EGGGROUP_BUG, EGGGROUP_BUG, PRESSURE, CACOPHONY, 0, 2, 0, 0x84134620, 0x22843e88, 0x13472028, 1