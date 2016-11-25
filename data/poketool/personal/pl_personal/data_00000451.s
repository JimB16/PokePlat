.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 40, 50, 90, 65, 30, 55, POISON, BUG, 120, 114, ((0)|(0<<2)|(1<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, POISON_BARB, 127, 20, 70, 5, EGGGROUP_BUG, EGGGROUP_WATER3, BATTLE_ARMOR, SNIPER, 120, 6, 0, 0xec530e20, 0x2a03fc8, 0x924f6422, 2