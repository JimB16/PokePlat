.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 40, 35, 30, 105, 120, 70, PSYCHIC, PSYCHIC, 100, 145, ((0)|(0<<2)|(0<<4)|(0<<6)|(2<<8)|(0<<10)), NO_ITEM, TWISTEDSPOON, 63, 20, 70, 3, 8, 8, SYNCHRONIZE, INNER_FOCUS, 0, 5, 0, 0xb45b8e29, 0x4b91bf03, 0xa763124, 0