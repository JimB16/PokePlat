.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 75, 38, 38, 67, 56, 56, WATER, ELECTRIC, 190, 90, ((1)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, DEEPSEASCALE, 127, 20, 70, 5, EGGGROUP_WATER2, EGGGROUP_WATER2, VOLT_ABSORB, ILLUMINATE, 0, 1, 0, 0x85933264, 0x3401e02, 0x42462120, 4