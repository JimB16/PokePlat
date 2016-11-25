.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 75, 75, 130, 95, 75, 130, PSYCHIC, PSYCHIC, 3, 210, ((0)|(0<<2)|(2<<4)|(0<<6)|(0<<8)|(1<<10)), NO_ITEM, NO_ITEM, 255, 80, 140, 5, 15, 15, LEVITATE, CACOPHONY, 0, 2, 0, 0xb5ffc62c, 0x3908e13, 0xb76192c, 0