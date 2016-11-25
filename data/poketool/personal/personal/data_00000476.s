.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 60, 55, 145, 40, 75, 150, ROCK, STEEL, 60, 198, ((0)|(0<<2)|(1<<4)|(0<<6)|(0<<8)|(2<<10)), NO_ITEM, HARD_STONE, 127, 20, 70, 0, EGGGROUP_MINERAL, EGGGROUP_MINERAL, STURDY, MAGNET_PULL, 0, 7, 0, 0x87914e20, 0x82001f52, 0x8646a958, 2