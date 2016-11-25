.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 70, 55, 65, 70, 95, 85, ROCK, PSYCHIC, 45, 150, ((0)|(0<<2)|(0<<4)|(0<<6)|(2<<8)|(0<<10)), NO_ITEM, MOON_STONE, 255, 25, 70, 4, EGGGROUP_MINERAL, EGGGROUP_MINERAL, LEVITATE, CACOPHONY, 0, 2, 0, 0xb61bf228, 0xc3008e51, 0xa769a7c, 0