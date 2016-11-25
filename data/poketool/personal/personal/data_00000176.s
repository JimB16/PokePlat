.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 55, 40, 85, 40, 80, 105, NORMAL, FLYING, 75, 114, ((0)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(2<<10)), NO_ITEM, NO_ITEM, 31, 10, 70, 4, EGGGROUP_FLYING, EGGGROUP_FAIRY, HUSTLE, SERENE_GRACE, 0, 8, 0, 0xf43bc625, 0x2a845ea7, 0x22763128, 3