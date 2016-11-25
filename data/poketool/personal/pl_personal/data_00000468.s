.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 85, 50, 95, 80, 120, 115, NORMAL, FLYING, 30, 220, ((0)|(0<<2)|(0<<4)|(0<<6)|(2<<8)|(1<<10)), NO_ITEM, NO_ITEM, 31, 10, 70, 4, EGGGROUP_FLYING, EGGGROUP_FAIRY, HUSTLE, SERENE_GRACE, 0, 136, 0, 0xf43bc625, 0x2a845ea7, 0x22f63128, 3