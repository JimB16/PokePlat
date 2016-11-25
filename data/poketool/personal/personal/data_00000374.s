.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 40, 55, 80, 30, 35, 60, STEEL, PSYCHIC, 3, 103, ((0)|(0<<2)|(1<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, METAL_COAT, 255, 40, 35, 5, EGGGROUP_MINERAL, EGGGROUP_MINERAL, CLEAR_BODY, CACOPHONY, 0, 1, 0, 0x0, 0x0, 0x0, 0