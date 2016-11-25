.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 60, 95, 80, 30, 60, 80, BUG, GRASS, 75, 128, ((0)|(2<<2)|(1<<4)|(0<<6)|(0<<8)|(0<<10)), TINYMUSHROOM, BIG_MUSHROOM, 127, 20, 70, 0, EGGGROUP_BUG, EGGGROUP_GRASS, EFFECT_SPORE, DRY_SKIN, 0, 0, 0, 0xcc354720, 0x2303e88, 0x12672428, 2