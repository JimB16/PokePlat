.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 110, 85, 95, 50, 80, 95, NORMAL, NORMAL, 30, 193, ((3)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, LAGGING_TAIL, 127, 20, 70, 0, EGGGROUP_MONSTER, EGGGROUP_MONSTER, OWN_TEMPO, OBLIVIOUS, 0, 9, 0, 0xeff37625, 0x82883e76, 0xd256b608, 10