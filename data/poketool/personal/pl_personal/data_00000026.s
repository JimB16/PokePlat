.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 60, 90, 55, 100, 90, 80, ELECTRIC, ELECTRIC, 75, 122, ((0)|(0<<2)|(0<<4)|(3<<6)|(0<<8)|(0<<10)), NO_ITEM, ORAN_BERRY, 127, 10, 70, 0, EGGGROUP_FIELD, EGGGROUP_FAIRY, STATIC, CACOPHONY, 0, 2, 0, 0xcdd3c221, 0x3883e02, 0x82662128, 2