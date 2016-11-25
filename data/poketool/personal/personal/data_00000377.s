.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 80, 100, 200, 50, 50, 100, ROCK, ROCK, 3, 217, ((0)|(0<<2)|(3<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, NO_ITEM, 255, 80, 35, 5, 15, 15, CLEAR_BODY, CACOPHONY, 0, 5, 0, 0xcf994621, 0x8b880e52, 0x82469958, 10