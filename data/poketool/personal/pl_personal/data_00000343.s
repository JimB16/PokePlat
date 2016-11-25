.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 40, 40, 55, 55, 40, 70, GROUND, PSYCHIC, 255, 58, ((0)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(1<<10)), NO_ITEM, NO_ITEM, 255, 20, 70, 0, 10, 10, LEVITATE, CACOPHONY, 0, 5, 0, 0xbe3b9628, 0x83008e51, 0xa769a34, 0