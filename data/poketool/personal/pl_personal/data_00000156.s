.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 58, 64, 58, 80, 80, 65, FIRE, FIRE, 45, 142, ((0)|(0<<2)|(0<<4)|(1<<6)|(1<<8)|(0<<10)), NO_ITEM, NO_ITEM, 31, 20, 70, 3, EGGGROUP_FIELD, EGGGROUP_FIELD, BLAZE, CACOPHONY, 0, 2, 0, 0xcc110631, 0x12021ea4, 0x92462000, 2