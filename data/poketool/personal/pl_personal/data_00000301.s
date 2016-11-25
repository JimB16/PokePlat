.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 70, 65, 65, 70, 55, 55, NORMAL, NORMAL, 60, 138, ((1)|(0<<2)|(0<<4)|(1<<6)|(0<<8)|(0<<10)), NO_ITEM, LEPPA_BERRY, 191, 15, 70, 4, EGGGROUP_FIELD, EGGGROUP_FAIRY, CUTE_CHARM, NORMALIZE, 0, 6, 0, 0xadfb762c, 0x3001e02, 0x8276312a, 2