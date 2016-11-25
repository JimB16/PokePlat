.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 75, 100, 66, 115, 60, 66, NORMAL, NORMAL, 45, 186, ((0)|(0<<2)|(0<<4)|(2<<6)|(0<<8)|(0<<10)), NO_ITEM, NO_ITEM, 127, 20, 100, 4, EGGGROUP_FIELD, EGGGROUP_FIELD, TECHNICIAN, PICKUP, 0, 6, 0, 0xedf34e25, 0x2813e82, 0x9376210b, 2