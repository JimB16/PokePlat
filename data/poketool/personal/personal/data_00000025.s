.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 35, 55, 30, 90, 50, 40, ELECTRIC, ELECTRIC, 190, 82, ((0)|(0<<2)|(0<<4)|(2<<6)|(0<<8)|(0<<10)), ORAN_BERRY, LIGHT_BALL, 127, 10, 70, 0, EGGGROUP_FIELD, EGGGROUP_FAIRY, STATIC, CACOPHONY, 0, 2, 0, 0xcdd38221, 0x3801e02, 0x82662120, 2