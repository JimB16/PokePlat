.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 50, 60, 95, 70, 120, 70, ELECTRIC, STEEL, 60, 161, ((0)|(0<<2)|(0<<4)|(0<<6)|(2<<8)|(0<<10)), NO_ITEM, METAL_COAT, 255, 20, 70, 0, EGGGROUP_MINERAL, EGGGROUP_MINERAL, MAGNET_PULL, STURDY, 0, 7, 0, 0x8593c620, 0x83000e03, 0x646132c, 0